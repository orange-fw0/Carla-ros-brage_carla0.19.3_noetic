#include "nv12_panel.h"

#include <opencv2/opencv.hpp>

#include <QVBoxLayout>
#include <QMetaObject>

namespace rviz_carla_plugin
{

// 7 路相机及分辨率
static const std::vector<std::pair<std::string, std::pair<int, int>>> CAMERAS = {
    // {"camera_front_far",   {3840, 2160}},
    // {"camera_front_wide",  {3840, 2160}},
    {"camera_front_far",   {1920, 1080}},
    {"camera_front_wide",  {1920, 1080}},
    {"camera_left_front",  {1936, 1216}},
    {"camera_left_rear",   {1936, 1216}},
    {"camera_rear_mid",    {1936, 1216}},
    {"camera_right_front", {1936, 1216}},
    {"camera_right_rear",  {1936, 1216}},
};

Nv12Panel::Nv12Panel(QWidget* parent)
  : rviz::Panel(parent)
{
  grid_ = new QGridLayout();
  grid_->setSpacing(4);

  // 2 列 × 4 行的布局，放 7 路
  int idx = 0;
  for (const auto& kv : CAMERAS)
  {
    const std::string& name = kv.first;
    int w = kv.second.first;
    int h = kv.second.second;

    CameraEntry entry;
    entry.width = w;
    entry.height = h;

    // 每路相机一个 QLabel
    QLabel* label = new QLabel();
    label->setMinimumSize(320, 180);
    label->setScaledContents(true);
    label->setStyleSheet("background-color:#202020; border:1px solid #404040;");
    label->setText(QString::fromStdString(name));
    label->setAlignment(Qt::AlignCenter);
    label->setStyleSheet("background-color:#202020; color:#cccccc; border:1px solid #404040;");
    entry.label = label;

    int row = idx / 2;
    int col = idx % 2;
    grid_->addWidget(label, row, col);
    ++idx;

    // 订阅
    std::string in_topic  = "/sensor/" + name + "/video";
    std::string out_topic = "/sensor/" + name + "/image";

    entry.pub = nh_.advertise<sensor_msgs::Image>(out_topic, 1);
    entry.sub = nh_.subscribe<sensor_interface_msgs::CompressedVideo>(
        in_topic, 1,
        [this, name](const sensor_interface_msgs::CompressedVideo::ConstPtr& msg)
        {
            this->onVideo(msg, name);
        });

    cameras_[name] = entry;
    ROS_INFO_STREAM("Nv12Panel: " << in_topic << " -> " << out_topic
                    << " (" << w << "x" << h << ")");
  }

  QVBoxLayout* main_layout = new QVBoxLayout(this);
  main_layout->addLayout(grid_);
  main_layout->setContentsMargins(2, 2, 2, 2);

  // 跨线程信号槽
  connect(this, SIGNAL(imageReceived(QString,QImage)),
          this, SLOT(onImageReceived(QString,QImage)),
          Qt::QueuedConnection);
}

Nv12Panel::~Nv12Panel()
{
  for (auto& kv : cameras_)
  {
    kv.second.sub.shutdown();
  }
}

void Nv12Panel::onVideo(const sensor_interface_msgs::CompressedVideo::ConstPtr& msg,
                        const std::string& camera)
{
  auto it = cameras_.find(camera);
  if (it == cameras_.end())
  {
    return;
  }
  CameraEntry& entry = it->second;

  if (msg->format != "nv12")
  {
    ROS_WARN_THROTTLE(5, "Nv12Panel: unexpected format '%s' on %s",
                      msg->format.c_str(), camera.c_str());
    return;
  }

  const size_t expected = static_cast<size_t>(entry.width) * entry.height * 3 / 2;
  if (msg->data.size() != expected)
  {
    ROS_WARN_THROTTLE(5,
        "Nv12Panel: size mismatch on %s: got %zu, expected %zu",
        camera.c_str(), msg->data.size(), expected);
    return;
  }

  // NV12 -> BGR
  cv::Mat nv12(entry.height * 3 / 2, entry.width, CV_8UC1,
               const_cast<uint8_t*>(msg->data.data()));
  cv::Mat bgr;
  cv::cvtColor(nv12, bgr, cv::COLOR_YUV2BGR_NV12);

  // 同时发布 sensor_msgs/Image，方便 RViz Image Display 也能订阅
  {
    sensor_msgs::Image out;
    out.header = msg->header;
    out.height = static_cast<uint32_t>(entry.height);
    out.width  = static_cast<uint32_t>(entry.width);
    out.encoding = "bgr8";
    out.is_bigendian = 0;
    out.step = static_cast<uint32_t>(entry.width * 3);
    out.data.assign(bgr.data, bgr.data + bgr.total() * bgr.elemSize());
    entry.pub.publish(out);
  }

  // BGR -> QImage（拷贝一份，避免 bgr 离开作用域后数据失效）
  QImage qimg(bgr.data, bgr.cols, bgr.rows, static_cast<int>(bgr.step),
              QImage::Format_RGB888);
  QImage copy = qimg.rgbSwapped().copy();

  // 跨线程发出信号，Qt 主线程槽里更新 UI
  Q_EMIT imageReceived(QString::fromStdString(camera), copy);
}

void Nv12Panel::onImageReceived(const QString& camera, const QImage& image)
{
  auto it = cameras_.find(camera.toStdString());
  if (it == cameras_.end())
  {
    return;
  }
  QLabel* label = it->second.label;
  if (label)
  {
    label->setPixmap(QPixmap::fromImage(image));
  }
}

} // namespace rviz_carla_plugin

#include <pluginlib/class_list_macros.h>
PLUGINLIB_EXPORT_CLASS(rviz_carla_plugin::Nv12Panel, rviz::Panel)