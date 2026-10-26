#!/usr/bin/env python3
import rospy
import numpy as np
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation
from planning_msgs.msg import Planning  # 请确保已正确安装planning_msgs

# 设置中文字体支持
plt.rcParams["font.family"] = ["SimHei", "WenQuanYi Micro Hei", "Heiti TC"]

class Graph_vel_acc_Date:
    def __init__(self):
        
        
        # 订阅规划消息
        self.sub = rospy.Subscriber('/msd/planning/plan', Planning, self.plan_callback)
        
        # 存储数据
        self.velocities = []
        self.accelerations = []
        self.jerks = []
        self.vel_times = []
        self.acc_times = []
        
        # 创建图表
        self.fig, (self.ax1, self.ax2, self.ax3) = plt.subplots(3, 1, figsize=(5, 6))
        self.fig.suptitle('graph', fontsize=5)
        
        # 设置子图标题
        self.ax1.set_title('vel')
        self.ax2.set_title('acc')
        self.ax3.set_title('jerk')
        
        # 设置坐标轴标签
        for ax in [self.ax1, self.ax2, self.ax3]:
            ax.set_xlabel('t (s)')
        
        self.ax1.set_ylabel('vel')
        self.ax2.set_ylabel('acc')
        self.ax3.set_ylabel('jerk')
        
        # 初始化曲线
        self.vel_line, = self.ax1.plot([], [], 'g-', linewidth=2, label='vel')
        self.acc_line, = self.ax2.plot([], [], 'r-', linewidth=2, label='acc')
        self.jerk_line, = self.ax3.plot([], [], 'b-', linewidth=2, label='jerk')
        
        # 添加图例
        self.ax1.legend()
        self.ax1.set_ylim(0,90)
        self.ax1.set_yticks(np.arange(0, 90, 10))
        self.ax2.legend()
        self.ax3.legend()
 

        # 调整布局
        plt.tight_layout()
        
        # 用于存储文本标注对象
        self.vel_annotations = []
        self.acc_annotations = []
        self.jerk_annotations = []
        
        # 启动动画更新
        self.ani = FuncAnimation(self.fig, self.update_plot, interval=1000)
        
        rospy.loginfo("Planning data plotter initialized. Waiting for plan messages...")

    def plan_callback(self, msg):
        """处理接收到的规划消息"""
        # 提取速度数据
        self.velocities = []
        self.vel_times = []
        for vel_point in msg.trajectory.velocity.vel_points:
            self.vel_times.append(vel_point.relative_time)
            self.velocities.append(vel_point.target_velocity*3.6)
        
        # 提取加速度数据
        self.accelerations = []
        self.jerks = []
        self.acc_times = []
        for acc_point in msg.trajectory.acceleration.acc_points:
            self.accelerations.append(acc_point.acc)
            self.jerks.append(acc_point.jerk)
            # 如果加速度点有自己的时间戳，可以在这里提取
            # self.acc_times.append(acc_point.relative_time)
        
        # 处理时间戳
        if not self.acc_times and self.vel_times:
            self.acc_times = self.vel_times[:len(self.accelerations)]
        
        # rospy.loginfo(f"接收数据: 速度点{len(self.velocities)}个, 加速度点{len(self.accelerations)}个, 加加速度点{len(self.jerks)}个")

    def update_plot(self, frame):
        """更新图表数据"""
        # 清除之前的标注
        for ann in self.vel_annotations + self.acc_annotations + self.jerk_annotations:
            ann.remove()
        self.vel_annotations = []
        self.acc_annotations = []
        self.jerk_annotations = []
        
        # 更新速度曲线
        if self.vel_times and self.velocities:
            self.vel_line.set_data(self.vel_times, self.velocities)
            self.ax1.relim()
            self.ax1.autoscale_view()
            
            # # 添加数值标注
            # for t, v in zip(self.vel_times, self.velocities):
            #     ann = self.ax1.annotate(f'{v:.2f}', (t, v), 
            #                            xytext=(5, 5), textcoords='offset points',
            #                            fontsize=8, bbox=dict(boxstyle="round,pad=0.3", fc="white", ec="gray", alpha=0.7))
            #     self.vel_annotations.append(ann)
        
        # 更新加速度曲线
        if self.acc_times and self.accelerations:
            self.acc_line.set_data(self.acc_times, self.accelerations)
            self.ax2.relim()
            self.ax2.autoscale_view()
            
            # 添加数值标注
            # for t, a in zip(self.acc_times, self.accelerations):
            #     ann = self.ax2.annotate(f'{a:.2f}', (t, a), 
            #                            xytext=(5, 5), textcoords='offset points',
            #                            fontsize=8, bbox=dict(boxstyle="round,pad=0.3", fc="white", ec="gray", alpha=0.7))
            #     self.acc_annotations.append(ann)
        
        # 更新加加速度曲线
        if self.acc_times and self.jerks:
            self.jerk_line.set_data(self.acc_times, self.jerks)
            self.ax3.relim()
            self.ax3.autoscale_view()
            
            # 添加数值标注
            # for t, j in zip(self.acc_times, self.jerks):
            #     ann = self.ax3.annotate(f'{j:.2f}', (t, j), 
            #                            xytext=(5, 5), textcoords='offset points',
            #                            fontsize=8, bbox=dict(boxstyle="round,pad=0.3", fc="white", ec="gray", alpha=0.7))
            #     self.jerk_annotations.append(ann)
        
        return self.vel_line, self.acc_line, self.jerk_line

    def run(self):
        """运行节点"""
        try:
            plt.show()
            rospy.spin()
        except rospy.ROSInterruptException:
            pass

if __name__ == '__main__':
    # 初始化节点
    rospy.init_node('planning_data_plotter', anonymous=True)
    plotter = Graph_vel_acc_Date()
    plotter.run()
    