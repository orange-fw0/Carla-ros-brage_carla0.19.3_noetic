#!/usr/bin/env python3
import rospy
import threading
import signal
import sys
import matplotlib.pyplot as plt
import cv2  # 显式导入cv2，用于关闭窗口
from matplotlib.animation import FuncAnimation
# 导入可视化节点类
from Lane_Result import RoadElementsVisualizer
from H264_Rviz_video import H264ViewerNode
from Object_Result import ObjectVisualizer
from Planning_plan import PathVisualizer
from Navigation import NavLineVisualizer
from Traffic_light_Result import TrafficLightVisualizer
from Graph_vel_acc import Graph_vel_acc_Date
# 导入方向盘可视化节点类
from rviz_steering_wheel import RVizSteeringWheel   # 假设方向盘代码在这个文件里

# 设置中文字体支持
plt.rcParams["font.family"] = ["SimHei", "WenQuanYi Micro Hei", "Heiti TC"]

class MainVisualizer:
    def __init__(self):
        # 初始化ROS节点（确保只初始化一次）
        if not rospy.core.is_initialized():
            rospy.init_node('main_visualization_node', anonymous=True)
        rospy.loginfo("主可视化程序启动，准备初始化各组件...")
        
        # 线程管理：用字典存储线程，键为节点名称
        self.threads = {}
        self.running = True  # 全局运行标志
        
        # 存储节点实例，便于资源释放
        self.nodes = {}
        
        # 注册信号处理
        signal.signal(signal.SIGINT, self.signal_handler)
        signal.signal(signal.SIGTERM, self.signal_handler)
        signal.siginterrupt(signal.SIGINT, False)
        
        # 速度加速度图表实例
        self.graph_visualizer = None

    def start_road_elements_visualizer(self):
        try:
            rospy.loginfo("启动车道线可视化节点...")
            self.nodes['lane'] = RoadElementsVisualizer()
            rospy.spin()
        except Exception as e:
            rospy.logerr(f"车道线可视化节点出错: {str(e)}")

    def start_h264_viewer(self):
        try:
            rospy.loginfo("启动图像显示节点...")
            self.nodes['h264'] = H264ViewerNode()
            while self.running and not rospy.is_shutdown():
                self.nodes['h264'].run()
                rospy.sleep(0.01)
            cv2.destroyAllWindows()
        except Exception as e:
            rospy.logerr(f"图像显示节点出错: {str(e)}")
            cv2.destroyAllWindows()

    def start_object_visualizer(self):
        try:
            rospy.loginfo("启动目标检测可视化节点...")
            self.nodes['object'] = ObjectVisualizer()
            rospy.spin()
        except Exception as e:
            rospy.logerr(f"目标检测可视化节点出错: {str(e)}")

    def start_planning(self):
        try:
            rospy.loginfo("启动规划轨迹可视化节点...")
            self.nodes['planning'] = PathVisualizer()
            rospy.spin()
        except Exception as e:
            rospy.logerr(f"规划轨迹线可视化节点出错: {str(e)}")

    def start_navigation(self):
        try:
            rospy.loginfo("启动导航可视化节点...")
            self.nodes['navigation'] = NavLineVisualizer()
            rospy.spin()
        except Exception as e:
            rospy.logerr(f"导航线可视化节点出错: {str(e)}")

    def start_TrafficLigh(self):
        try:
            rospy.loginfo("启动红绿灯可视化节点...")
            self.nodes['traffic_light'] = TrafficLightVisualizer()
            rospy.spin()
        except Exception as e:
            rospy.logerr(f"红绿灯可视化节点出错: {str(e)}")

    def start_steering_wheel_visualizer(self):
        """方向盘可视化节点（map坐标系，左上方50米）"""
        try:
            rospy.loginfo("启动方向盘可视化节点...")
            self.nodes['steering_wheel'] = RVizSteeringWheel()
            rospy.spin()
        except Exception as e:
            rospy.logerr(f"方向盘可视化节点出错: {str(e)}")

    def start_Graph(self):
        """速度/加速度图表（在主线程运行）"""
        try:
            rospy.loginfo("启动速度加速度图表可视化节点...")
            self.graph_visualizer = Graph_vel_acc_Date()
            self.nodes['graph'] = self.graph_visualizer
            
            ani = FuncAnimation(
                self.graph_visualizer.fig,
                self.graph_visualizer.update_plot,
                interval=1000
            )
            
            # 绑定图表关闭事件，触发程序退出
            self.graph_visualizer.fig.canvas.mpl_connect(
                'close_event', 
                lambda _: setattr(self, 'running', False)
            )
            
            # 在主线程直接运行
            plt.show()
        except Exception as e:
            rospy.logerr(f"速度加速度图表可视化节点出错: {str(e)}")
        finally:
            plt.close('all')

    def start_all(self):
        """启动所有可视化节点（图表在主线程运行）"""
        thread_configs = [
            ('lane_thread', self.start_road_elements_visualizer),
            ('h264_thread', self.start_h264_viewer),
            ('object_thread', self.start_object_visualizer),
            ('planning_thread', self.start_planning),
            ('navigation_thread', self.start_navigation),
            ('traffic_light_thread', self.start_TrafficLigh),
            ('steering_wheel_thread', self.start_steering_wheel_visualizer)  # 新增方向盘线程
        ]
        
        # 创建并启动其他子线程
        for name, target in thread_configs:
            self.threads[name] = threading.Thread(target=target, name=name, daemon=False)
            self.threads[name].start()
            rospy.loginfo(f"线程 {name} 已启动")
        
        # 图表在主线程运行
        self.start_Graph()

        # 等待所有子线程退出
        for name, thread in self.threads.items():
            if thread.is_alive():
                thread.join()

    def cleanup(self):
        """强制清理所有资源"""
        rospy.loginfo("开始清理资源...")
        plt.close('all')
        cv2.destroyAllWindows()
        
        for name, thread in self.threads.items():
            if thread.is_alive():
                rospy.loginfo(f"等待线程 {name} 退出...")
                thread.join(timeout=0.5)
                if thread.is_alive():
                    rospy.logwarn(f"线程 {name} 无法正常退出")

    def signal_handler(self, sig, frame):
        """优化信号处理，确保所有组件正确退出"""
        rospy.loginfo("\n收到退出信号，正在关闭所有组件...")
        self.running = False
        
        if rospy.core.is_initialized() and not rospy.is_shutdown():
            rospy.signal_shutdown("用户请求退出")
        
        plt.close('all')
        cv2.destroyAllWindows()


if __name__ == '__main__':
    try:
        # 检查依赖模块
        required_modules = ['rospy', 'cv2', 'numpy', 'tf', 'matplotlib', 'cv_bridge']
        missing_modules = []
        for module in required_modules:
            try:
                __import__(module)
            except ImportError:
                missing_modules.append(module)
        
        if missing_modules:
            rospy.logerr(f"缺少必要的模块: {', '.join(missing_modules)}，请先安装")
            sys.exit(1)
        
        # 启动主程序
        main_visualizer = MainVisualizer()
        main_visualizer.start_all()
        
    except Exception as e:
        rospy.logfatal(f"主程序启动失败: {str(e)}")
        plt.close('all')
        cv2.destroyAllWindows()
        sys.exit(1)
