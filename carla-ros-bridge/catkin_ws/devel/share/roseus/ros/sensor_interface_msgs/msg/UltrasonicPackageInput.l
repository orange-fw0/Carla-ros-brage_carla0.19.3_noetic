;; Auto-generated. Do not edit!


(when (boundp 'sensor_interface_msgs::UltrasonicPackageInput)
  (if (not (find-package "SENSOR_INTERFACE_MSGS"))
    (make-package "SENSOR_INTERFACE_MSGS"))
  (shadow 'UltrasonicPackageInput (find-package "SENSOR_INTERFACE_MSGS")))
(unless (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICPACKAGEINPUT")
  (make-package "SENSOR_INTERFACE_MSGS::ULTRASONICPACKAGEINPUT"))

(in-package "ROS")
;;//! \htmlinclude UltrasonicPackageInput.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*ULTROSONIC_PACKAGEDATA*" (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICPACKAGEINPUT"))
(shadow '*ULTROSONIC_PACKAGEDATA* (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICPACKAGEINPUT"))
(defconstant sensor_interface_msgs::UltrasonicPackageInput::*ULTROSONIC_PACKAGEDATA* 0)
(intern "*COMMON_USS_OBSTACLE_DATA*" (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICPACKAGEINPUT"))
(shadow '*COMMON_USS_OBSTACLE_DATA* (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICPACKAGEINPUT"))
(defconstant sensor_interface_msgs::UltrasonicPackageInput::*COMMON_USS_OBSTACLE_DATA* 1)

(defun sensor_interface_msgs::UltrasonicPackageInput-to-symbol (const)
  (cond
        ((= const 0) 'sensor_interface_msgs::UltrasonicPackageInput::*ULTROSONIC_PACKAGEDATA*)
        ((= const 1) 'sensor_interface_msgs::UltrasonicPackageInput::*COMMON_USS_OBSTACLE_DATA*)
        (t nil)))

(defclass sensor_interface_msgs::UltrasonicPackageInput
  :super ros::object
  :slots (_header _proc_mode _meta _uss_package _available _uss_echo_info ))

(defmethod sensor_interface_msgs::UltrasonicPackageInput
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:proc_mode __proc_mode) 0)
    ((:meta __meta) (instance sensor_interface_msgs::UltrasonicResultMeta :init))
    ((:uss_package __uss_package) ())
    ((:available __available) 0)
    ((:uss_echo_info __uss_echo_info) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _proc_mode (round __proc_mode))
   (setq _meta __meta)
   (setq _uss_package __uss_package)
   (setq _available (round __available))
   (setq _uss_echo_info __uss_echo_info)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:proc_mode
   (&optional __proc_mode)
   (if __proc_mode (setq _proc_mode __proc_mode)) _proc_mode)
  (:meta
   (&rest __meta)
   (if (keywordp (car __meta))
       (send* _meta __meta)
     (progn
       (if __meta (setq _meta (car __meta)))
       _meta)))
  (:uss_package
   (&rest __uss_package)
   (if (keywordp (car __uss_package))
       (send* _uss_package __uss_package)
     (progn
       (if __uss_package (setq _uss_package (car __uss_package)))
       _uss_package)))
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:uss_echo_info
   (&rest __uss_echo_info)
   (if (keywordp (car __uss_echo_info))
       (send* _uss_echo_info __uss_echo_info)
     (progn
       (if __uss_echo_info (setq _uss_echo_info (car __uss_echo_info)))
       _uss_echo_info)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _proc_mode
    4
    ;; sensor_interface_msgs/UltrasonicResultMeta _meta
    (send _meta :serialization-length)
    ;; sensor_interface_msgs/UltrasonicPackage[] _uss_package
    (apply #'+ (send-all _uss_package :serialization-length)) 4
    ;; uint8 _available
    1
    ;; sensor_interface_msgs/UltrasonicCommonEchoInfo[] _uss_echo_info
    (apply #'+ (send-all _uss_echo_info :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _proc_mode
       (write-long _proc_mode s)
     ;; sensor_interface_msgs/UltrasonicResultMeta _meta
       (send _meta :serialize s)
     ;; sensor_interface_msgs/UltrasonicPackage[] _uss_package
     (write-long (length _uss_package) s)
     (dolist (elem _uss_package)
       (send elem :serialize s)
       )
     ;; uint8 _available
       (write-byte _available s)
     ;; sensor_interface_msgs/UltrasonicCommonEchoInfo[] _uss_echo_info
     (write-long (length _uss_echo_info) s)
     (dolist (elem _uss_echo_info)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _proc_mode
     (setq _proc_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; sensor_interface_msgs/UltrasonicResultMeta _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;; sensor_interface_msgs/UltrasonicPackage[] _uss_package
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _uss_package (let (r) (dotimes (i n) (push (instance sensor_interface_msgs::UltrasonicPackage :init) r)) r))
     (dolist (elem- _uss_package)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; sensor_interface_msgs/UltrasonicCommonEchoInfo[] _uss_echo_info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _uss_echo_info (let (r) (dotimes (i n) (push (instance sensor_interface_msgs::UltrasonicCommonEchoInfo :init) r)) r))
     (dolist (elem- _uss_echo_info)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get sensor_interface_msgs::UltrasonicPackageInput :md5sum-) "389e0842a6dc00e52a7c0dfe1eebb25a")
(setf (get sensor_interface_msgs::UltrasonicPackageInput :datatype-) "sensor_interface_msgs/UltrasonicPackageInput")
(setf (get sensor_interface_msgs::UltrasonicPackageInput :definition-)
      "uint8 ULTROSONIC_PACKAGEDATA = 0
uint8 COMMON_USS_OBSTACLE_DATA = 1
std_msgs/Header header
int32 proc_mode
sensor_interface_msgs/UltrasonicResultMeta meta
sensor_interface_msgs/UltrasonicPackage[] uss_package
uint8 available
sensor_interface_msgs/UltrasonicCommonEchoInfo[] uss_echo_info

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
MSG: sensor_interface_msgs/UltrasonicResultMeta
uint64 timestamp_us
uint64 seq

================================================================================
MSG: sensor_interface_msgs/UltrasonicPackage
uint8 FRONT_LEFT_SIDE = 0
uint8 FRONT_LEFT_CORNER = 1
uint8 FRONT_LEFT_CENTER = 2
uint8 FRONT_RIGHT_CENTER = 3
uint8 FRONT_RIGHT_CORNER = 4
uint8 FRONT_RIGHT_SIDE = 5
uint8 REAR_RIGHT_SIDE = 6
uint8 REAR_RIGHT_CORNER = 7
uint8 REAR_RIGHT_CENTER = 8
uint8 REAR_LEFT_CENTER = 9
uint8 REAR_LEFT_CORNER = 10
uint8 REAR_LEFT_SIDE = 11
sensor_interface_msgs/UltrasonicBaseInfo[] uss_base_info
uint8 rolling_cnt
uint8[] reserved

================================================================================
MSG: sensor_interface_msgs/UltrasonicBaseInfo
sensor_interface_msgs/UltrasonicEhcoInfo[] uss_echo_info
uint16 first_echo_amplitude
int16 uss_temperature
uint64 timestamp_us
uint8 burst_mode
uint8 uss_rt_width
uint8 uss_config_status
string reserved

================================================================================
MSG: sensor_interface_msgs/UltrasonicEhcoInfo
float32 uss_echo_distance
uint64 uss_echo_width

================================================================================
MSG: sensor_interface_msgs/UltrasonicCommonEchoInfo
sensor_interface_msgs/CommonUssEhcoData[] uss_echo_data
sensor_interface_msgs/UltrasonicEchoStatus uss_echo_status
uint64 reserved

================================================================================
MSG: sensor_interface_msgs/CommonUssEhcoData
uint8 available
sensor_interface_msgs/UltrasonicResultMeta meta
float32 uss_echo_distance
float32 uss_echo_prob
uint64 uss_echo_width
uint16 first_echo_amplitude
uint16 uss_rt_width
uint16 uss_echo_quality
uint16 echo_send_id
uint64 reserved

================================================================================
MSG: sensor_interface_msgs/UltrasonicEchoStatus
uint8 uss_status
int16 uss_temperature
uint64 reserved

")



(provide :sensor_interface_msgs/UltrasonicPackageInput "389e0842a6dc00e52a7c0dfe1eebb25a")


