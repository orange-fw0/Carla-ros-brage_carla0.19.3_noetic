;; Auto-generated. Do not edit!


(when (boundp 'sensor_interface_msgs::UltrasonicObstacleReport)
  (if (not (find-package "SENSOR_INTERFACE_MSGS"))
    (make-package "SENSOR_INTERFACE_MSGS"))
  (shadow 'UltrasonicObstacleReport (find-package "SENSOR_INTERFACE_MSGS")))
(unless (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICOBSTACLEREPORT")
  (make-package "SENSOR_INTERFACE_MSGS::ULTRASONICOBSTACLEREPORT"))

(in-package "ROS")
;;//! \htmlinclude UltrasonicObstacleReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*COMMON_USS_OBSTACLE_DATA*" (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICOBSTACLEREPORT"))
(shadow '*COMMON_USS_OBSTACLE_DATA* (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICOBSTACLEREPORT"))
(defconstant sensor_interface_msgs::UltrasonicObstacleReport::*COMMON_USS_OBSTACLE_DATA* 0)
(intern "*KEYPOINT_USS_OBSTACLE_DATA*" (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICOBSTACLEREPORT"))
(shadow '*KEYPOINT_USS_OBSTACLE_DATA* (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICOBSTACLEREPORT"))
(defconstant sensor_interface_msgs::UltrasonicObstacleReport::*KEYPOINT_USS_OBSTACLE_DATA* 1)

(defun sensor_interface_msgs::UltrasonicObstacleReport-to-symbol (const)
  (cond
        ((= const 0) 'sensor_interface_msgs::UltrasonicObstacleReport::*COMMON_USS_OBSTACLE_DATA*)
        ((= const 1) 'sensor_interface_msgs::UltrasonicObstacleReport::*KEYPOINT_USS_OBSTACLE_DATA*)
        (t nil)))

(defclass sensor_interface_msgs::UltrasonicObstacleReport
  :super ros::object
  :slots (_header _available _uss_common_obstacle_result _uss_keypoint_obstacle_result ))

(defmethod sensor_interface_msgs::UltrasonicObstacleReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:available __available) 0)
    ((:uss_common_obstacle_result __uss_common_obstacle_result) (instance sensor_interface_msgs::UssCommonObstacleResult :init))
    ((:uss_keypoint_obstacle_result __uss_keypoint_obstacle_result) (instance sensor_interface_msgs::UssKeyPointObstacleResult :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _available (round __available))
   (setq _uss_common_obstacle_result __uss_common_obstacle_result)
   (setq _uss_keypoint_obstacle_result __uss_keypoint_obstacle_result)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:uss_common_obstacle_result
   (&rest __uss_common_obstacle_result)
   (if (keywordp (car __uss_common_obstacle_result))
       (send* _uss_common_obstacle_result __uss_common_obstacle_result)
     (progn
       (if __uss_common_obstacle_result (setq _uss_common_obstacle_result (car __uss_common_obstacle_result)))
       _uss_common_obstacle_result)))
  (:uss_keypoint_obstacle_result
   (&rest __uss_keypoint_obstacle_result)
   (if (keywordp (car __uss_keypoint_obstacle_result))
       (send* _uss_keypoint_obstacle_result __uss_keypoint_obstacle_result)
     (progn
       (if __uss_keypoint_obstacle_result (setq _uss_keypoint_obstacle_result (car __uss_keypoint_obstacle_result)))
       _uss_keypoint_obstacle_result)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _available
    1
    ;; sensor_interface_msgs/UssCommonObstacleResult _uss_common_obstacle_result
    (send _uss_common_obstacle_result :serialization-length)
    ;; sensor_interface_msgs/UssKeyPointObstacleResult _uss_keypoint_obstacle_result
    (send _uss_keypoint_obstacle_result :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _available
       (write-byte _available s)
     ;; sensor_interface_msgs/UssCommonObstacleResult _uss_common_obstacle_result
       (send _uss_common_obstacle_result :serialize s)
     ;; sensor_interface_msgs/UssKeyPointObstacleResult _uss_keypoint_obstacle_result
       (send _uss_keypoint_obstacle_result :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; sensor_interface_msgs/UssCommonObstacleResult _uss_common_obstacle_result
     (send _uss_common_obstacle_result :deserialize buf ptr-) (incf ptr- (send _uss_common_obstacle_result :serialization-length))
   ;; sensor_interface_msgs/UssKeyPointObstacleResult _uss_keypoint_obstacle_result
     (send _uss_keypoint_obstacle_result :deserialize buf ptr-) (incf ptr- (send _uss_keypoint_obstacle_result :serialization-length))
   ;;
   self)
  )

(setf (get sensor_interface_msgs::UltrasonicObstacleReport :md5sum-) "6f3d7de847364a57cc960d023029c960")
(setf (get sensor_interface_msgs::UltrasonicObstacleReport :datatype-) "sensor_interface_msgs/UltrasonicObstacleReport")
(setf (get sensor_interface_msgs::UltrasonicObstacleReport :definition-)
      "uint8 COMMON_USS_OBSTACLE_DATA = 0
uint8 KEYPOINT_USS_OBSTACLE_DATA = 1
std_msgs/Header header
uint8 available
sensor_interface_msgs/UssCommonObstacleResult uss_common_obstacle_result
sensor_interface_msgs/UssKeyPointObstacleResult uss_keypoint_obstacle_result

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: sensor_interface_msgs/UssCommonObstacleResult
sensor_interface_msgs/CommonUltrasonicObstacleData[] uss_obstacle_data

================================================================================
MSG: sensor_interface_msgs/CommonUltrasonicObstacleData
uint8 available
sensor_interface_msgs/UltrasonicResultMeta meta
sensor_interface_msgs/UltrasonicObjectType obj_type
sensor_interface_msgs/UltrasonicObjectHeiType obj_height
float32 obj_height_probability
float32 obj_probability
float32 obj_start_X
float32 obj_start_Y
float32 obj_end_X
float32 obj_end_Y
float32 obj_height_value
float32 major_axis_error
float32 minor_axis_variance
float32 ellipse_theta_variance
string reserved_info

================================================================================
MSG: sensor_interface_msgs/UltrasonicResultMeta
uint64 timestamp_us
uint64 seq

================================================================================
MSG: sensor_interface_msgs/UltrasonicObjectType
uint8 NONE = 0
uint8 POINT = 1
uint8 STRAIGHT_LINE = 2
uint8 RAYS = 3
uint8 LINE_SEGMENT = 5
uint8 SNA = 7
uint8 RESERVED_INFO = 8
uint8 value

================================================================================
MSG: sensor_interface_msgs/UltrasonicObjectHeiType
uint8 LOW = 0
uint8 HIGH = 1
uint8 TRAVERSIBLE = 2
uint8 UNKONOWN = 3
uint8 value

================================================================================
MSG: sensor_interface_msgs/UssKeyPointObstacleResult
sensor_interface_msgs/UltrasonicResultMeta meta
sensor_interface_msgs/UssKeyPointObstacleData uss_obstacle_data
sensor_interface_msgs/UssRtObstaclePtsData uss_rt_obstacle_pts

================================================================================
MSG: sensor_interface_msgs/UssKeyPointObstacleData
sensor_interface_msgs/UssObstaclePosture uss_obstacle_posture
sensor_interface_msgs/UltrasonicObstacleInfo[] uss_obstacle_info

================================================================================
MSG: sensor_interface_msgs/UssObstaclePosture
uint64 timestamp
float32 posture_x
float32 posture_y
float32 posture_theta

================================================================================
MSG: sensor_interface_msgs/UltrasonicObstacleInfo
uint64 timestamp
float32 key_point_probability
sensor_interface_msgs/ObstacleKeyPointData[] obstacle_key_point_data

================================================================================
MSG: sensor_interface_msgs/ObstacleKeyPointData
float32 point_x
float32 point_y

================================================================================
MSG: sensor_interface_msgs/UssRtObstaclePtsData
sensor_interface_msgs/UssObstaclePosture uss_obstacle_pts_posture
sensor_interface_msgs/ObstacleKeyPointData[] uss_rt_obstacle_pts_data

")



(provide :sensor_interface_msgs/UltrasonicObstacleReport "6f3d7de847364a57cc960d023029c960")


