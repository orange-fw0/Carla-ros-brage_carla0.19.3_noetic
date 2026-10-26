#!/usr/bin/env python3
import rospy
import json
import matplotlib.pyplot as plt
import numpy as np
import os  # 用于创建保存目录
from std_msgs.msg import Header
from collections import deque

# ---------------------- 全局变量配置（存储消息数据，避免回调阻塞） ----------------------
g_header_data_queue = deque(maxlen=50)
g_has_new_data = False

# ---------------------- 配置图片保存路径 ----------------------
IMG_SAVE_DIR = "./pp_inputs_jpg_output"
# 确保保存目录存在，不存在则自动创建
os.makedirs(IMG_SAVE_DIR, exist_ok=True)

# ---------------------- 步骤1：ROS话题回调函数（订阅std_msgs/Header，解析frame_id JSON） ----------------------
def header_callback(msg):
    """
    Subscribe to /msd/planning/pp_inputs (std_msgs/Header), parse JSON in frame_id
    """
    global g_header_data_queue, g_has_new_data
    
    try:
        # 1. Extract fixed fields of std_msgs/Header
        header_fixed_data = {
            "seq": msg.seq,
            "stamp_sec": msg.stamp.secs,
            "stamp_nsec": msg.stamp.nsecs,
            "frame_id_raw": msg.frame_id  # Raw frame_id (JSON string)
        }
        
        # 2. Parse JSON string in frame_id (with error handling)
        try:
            frame_id_json = json.loads(msg.frame_id)
            header_fixed_data["frame_id_parsed"] = frame_id_json
            header_fixed_data["json_parse_success"] = True
        except json.JSONDecodeError as e:
            header_fixed_data["frame_id_parsed"] = None
            header_fixed_data["json_parse_success"] = False
            header_fixed_data["json_error_msg"] = str(e)
            rospy.logwarn(f"frame_id JSON parse failed: {e}, raw content: {msg.frame_id[:100]}...")
        
        # 3. Store data to global queue and mark new data
        g_header_data_queue.append(header_fixed_data)
        g_has_new_data = True
        
        # 4. Print log to terminal
        parse_status = "Success" if header_fixed_data["json_parse_success"] else "Failed"
        rospy.loginfo(f"Received message #{msg.seq}, frame_id JSON parse {parse_status}, current cache: {len(g_header_data_queue)} messages")
    
    except Exception as e:
        rospy.logerr(f"Callback function processing failed: {str(e)}")

# ---------------------- 步骤2：可视化并保存为JPG图片 ----------------------
def visualize_header_data():
    """
    Visualize parsed Header data and save as JPG (no window popup)
    """
    global g_header_data_queue, g_has_new_data
    
    # Return if no data or no new data
    if not g_header_data_queue or not g_has_new_data:
        return
    
    # Lock data status to avoid overwriting during plotting
    g_has_new_data = False
    latest_data = g_header_data_queue[-1]
    all_data = list(g_header_data_queue)
    
    # ---------------------- Prepare plotting data ----------------------
    # Extract historical data for trend chart
    seq_list = [d["seq"] for d in all_data]
    stamp_sec_list = [d["stamp_sec"] for d in all_data]
    relative_time = [s - stamp_sec_list[0] if stamp_sec_list else 0 for s in stamp_sec_list]
    
    # Extract frame_id JSON parse results
    frame_id_parsed = latest_data.get("frame_id_parsed", {})
    json_parse_success = latest_data.get("json_parse_success", False)
    frame_id_raw = latest_data.get("frame_id_raw", "unknown")
    json_error_msg = latest_data.get("json_error_msg", "None")
    
    # Extract coordinate and lane width from parsed JSON (default if failed)
    map_frame = frame_id_parsed.get("coordinate", "map") if (json_parse_success and frame_id_parsed) else "unknown"
    lane_width = frame_id_parsed.get("lane_width", 8.0) if (json_parse_success and frame_id_parsed) else 8.0
    
    # Generate lane line data (related to lane width from frame_id)
    y_points = np.linspace(0, 100, 50)
    left_lane_x = 0.1 * (y_points / 10) ** 2 - (lane_width / 2)
    right_lane_x = 0.1 * (y_points / 10) ** 2 + (lane_width / 2)
    center_lane_x = (left_lane_x + right_lane_x) / 2
    
    # ---------------------- Create figure (2x2 subplots) ----------------------
    fig, ((ax1, ax2), (ax3, ax4)) = plt.subplots(2, 2, figsize=(20, 16))
    fig.suptitle(f"ROS Topic /msd/planning/pp_inputs Visualization (std_msgs/Header, Latest Seq: {latest_data['seq']})", 
                 fontsize=16, fontweight='bold')
    
    # ---------------------- Subplot 1: Latest Message Core Info ----------------------
    core_info_text = f"""
    === std_msgs/Header Fixed Fields ===
    Message Sequence (seq): {latest_data['seq']}
    Message Timestamp: {latest_data['stamp_sec']}.{latest_data['stamp_nsec']:09d} s
    Raw frame_id (JSON String): {frame_id_raw[:50]}... (Total Length: {len(frame_id_raw)})
    
    === frame_id JSON Parse Status ===
    Parse Result: {"✅ Success" if json_parse_success else "❌ Failed"}
    Error Message: {json_error_msg[:100]}...
    Extracted Coordinate: {map_frame}
    Extracted Lane Width: {lane_width} m
    """
    ax1.text(0.05, 0.95, core_info_text, transform=ax1.transAxes, fontsize=10,
             verticalalignment='top', bbox=dict(boxstyle="round,pad=0.8", facecolor="lightgray"))
    ax1.set_xlim(0, 1)
    ax1.set_ylim(0, 1)
    ax1.axis('off')
    ax1.set_title('Latest Message Core Info', fontsize=12)
    
    # ---------------------- Subplot 2: frame_id JSON Parse Details ----------------------
    if json_parse_success and frame_id_parsed:
        json_detail_text = "=== frame_id JSON Parse Details ===\n"
        for key, value in frame_id_parsed.items():
            json_detail_text += f"{key}: {value}\n"
        ax2.text(0.05, 0.95, json_detail_text, transform=ax2.transAxes, fontsize=11,
                 verticalalignment='top', bbox=dict(boxstyle="round,pad=0.8", facecolor="lightyellow"))
    else:
        json_detail_text = f"=== frame_id JSON Parse Failed ===\nInvalid JSON format\nRaw Content Preview:\n{frame_id_raw[:200]}..."
        ax2.text(0.05, 0.95, json_detail_text, transform=ax2.transAxes, fontsize=10,
                 verticalalignment='top', bbox=dict(boxstyle="round,pad=0.8", facecolor="lightcoral"))
    ax2.set_xlim(0, 1)
    ax2.set_ylim(0, 1)
    ax2.axis('off')
    ax2.set_title('frame_id JSON Parse Details', fontsize=12)
    
    # ---------------------- Subplot 3: Message Sequence & Relative Time Trend ----------------------
    ax3.plot(range(len(seq_list)), seq_list, color='blue', linewidth=2, marker='o', label='Message Sequence (seq)')
    ax3_twin = ax3.twinx()
    ax3_twin.plot(range(len(relative_time)), relative_time, color='red', linewidth=2, marker='x', label='Relative Time (s)')
    ax3.set_xlabel('Message Index (in Cache)', fontsize=10)
    ax3.set_ylabel('Message Sequence', color='blue', fontsize=10)
    ax3_twin.set_ylabel('Relative Time (s)', color='red', fontsize=10)
    ax3.set_title('Message Sequence & Receive Time Trend', fontsize=12)
    ax3.grid(True, alpha=0.3)
    lines1, labels1 = ax3.get_legend_handles_labels()
    lines2, labels2 = ax3_twin.get_legend_handles_labels()
    ax3.legend(lines1 + lines2, labels1 + labels2, loc='best', fontsize=9)
    
    # ---------------------- Subplot 4: Lane Line Visualization ----------------------
    ax4.plot(left_lane_x, y_points, color='white', linewidth=4, label='Left Lane Line')
    ax4.plot(right_lane_x, y_points, color='white', linewidth=4, label='Right Lane Line')
    ax4.plot(center_lane_x, y_points, color='yellow', linewidth=2, linestyle='--', label='Center Lane Line')
    ax4.text(0.05, 0.05, f"Coordinate System: {map_frame}\nLane Width: {lane_width} m", transform=ax4.transAxes, 
             fontsize=9, bbox=dict(boxstyle="round,pad=0.5", facecolor="black", alpha=0.7, color='white'))
    ax4.set_facecolor('#333333')
    ax4.set_xlabel('X Coordinate (m)', fontsize=10)
    ax4.set_ylabel('Y Coordinate (m)', fontsize=10)
    ax4.set_title('Lane Line Visualization (Related to frame_id JSON)', fontsize=12)
    ax4.legend(loc='best', fontsize=9)
    ax4.grid(True, alpha=0.3, color='white')
    ax4.axis('equal')
    
    # ---------------------- Adjust layout to avoid content truncation ----------------------
    plt.subplots_adjust(left=0.05, right=0.95, bottom=0.05, top=0.95, wspace=0.3, hspace=0.3)
    
    # ---------------------- Save as JPG image ----------------------
    # 1. Construct unique file name (avoid overwriting)
    safe_frame_id = map_frame.replace("/", "_").replace("\\", "_").replace(":", "_")
    img_file_name = f"pp_inputs_seq_{latest_data['seq']}_frameid_{safe_frame_id}.jpg"
    img_save_path = os.path.join(IMG_SAVE_DIR, img_file_name)
    
    # 2. Save image with high resolution
    plt.savefig(
        img_save_path,
        format='jpg',
        dpi=300,
        bbox_inches='tight',
        facecolor='white'
    )
    
    # 3. Close figure to release memory
    plt.close(fig)
    
    # 4. Print save log to terminal
    rospy.loginfo(f"Image saved to: {img_save_path}")

# ---------------------- 步骤3：主函数（初始化ROS节点 + 订阅话题 + 循环保存） ----------------------
if __name__ == '__main__':
    try:
        # 1. Initialize ROS node
        rospy.init_node('header_visualizer', anonymous=True)
        rospy.loginfo(f"Header message visualization node started, images will be saved to: {os.path.abspath(IMG_SAVE_DIR)}")
        rospy.loginfo("Waiting for messages on /msd/planning/pp_inputs...")
        
        # 2. Subscribe to /msd/planning/pp_inputs topic
        rospy.Subscriber(
            '/msd/planning/pp_inputs',
            data_class=Header,
            callback=header_callback,
            queue_size=50
        )
        
        # 3. Loop to continuously save images for new data
        while not rospy.is_shutdown():
            if g_has_new_data:
                visualize_header_data()
            rospy.sleep(0.1)
    
    except rospy.ROSInterruptException:
        rospy.logerr("ROS node interrupted by user!")
    except Exception as e:
        rospy.logerr(f"Node running failed: {str(e)}")
