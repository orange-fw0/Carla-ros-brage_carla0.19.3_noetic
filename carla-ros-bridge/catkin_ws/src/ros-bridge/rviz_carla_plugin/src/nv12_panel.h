#ifndef RVIZ_CARLA_PLUGIN__NV12_PANEL_H
#define RVIZ_CARLA_PLUGIN__NV12_PANEL_H

#include <ros/ros.h>
#include <rviz/panel.h>
#include <sensor_interface_msgs/CompressedVideo.h>
#include <sensor_msgs/Image.h>

#include <QGridLayout>
#include <QLabel>
#include <QImage>
#include <QString>
#include <map>
#include <string>
#include <vector>

namespace rviz_carla_plugin
{

class Nv12Panel : public rviz::Panel
{
  Q_OBJECT
public:
  explicit Nv12Panel(QWidget* parent = nullptr);
  virtual ~Nv12Panel();

Q_SIGNALS:
  // 跨线程安全：ROS 回调 emit，Qt 主线程执行槽
  void imageReceived(const QString& camera, const QImage& image);

private Q_SLOTS:
  void onImageReceived(const QString& camera, const QImage& image);

private:
  struct CameraEntry
  {
    int width;
    int height;
    QLabel* label;
    ros::Subscriber sub;
    ros::Publisher pub;
  };

  void onVideo(const sensor_interface_msgs::CompressedVideo::ConstPtr& msg,
               const std::string& camera);

  ros::NodeHandle nh_;
  std::map<std::string, CameraEntry> cameras_;
  QGridLayout* grid_;
};

} // namespace rviz_carla_plugin

#endif