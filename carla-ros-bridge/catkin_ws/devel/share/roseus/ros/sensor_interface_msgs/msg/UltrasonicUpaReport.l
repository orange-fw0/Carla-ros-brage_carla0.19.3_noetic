;; Auto-generated. Do not edit!


(when (boundp 'sensor_interface_msgs::UltrasonicUpaReport)
  (if (not (find-package "SENSOR_INTERFACE_MSGS"))
    (make-package "SENSOR_INTERFACE_MSGS"))
  (shadow 'UltrasonicUpaReport (find-package "SENSOR_INTERFACE_MSGS")))
(unless (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICUPAREPORT")
  (make-package "SENSOR_INTERFACE_MSGS::ULTRASONICUPAREPORT"))

(in-package "ROS")
;;//! \htmlinclude UltrasonicUpaReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sensor_interface_msgs::UltrasonicUpaReport
  :super ros::object
  :slots (_header _uss_upa_distance ))

(defmethod sensor_interface_msgs::UltrasonicUpaReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:uss_upa_distance __uss_upa_distance) (instance sensor_interface_msgs::UltrasonicUpaDistance :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _uss_upa_distance __uss_upa_distance)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:uss_upa_distance
   (&rest __uss_upa_distance)
   (if (keywordp (car __uss_upa_distance))
       (send* _uss_upa_distance __uss_upa_distance)
     (progn
       (if __uss_upa_distance (setq _uss_upa_distance (car __uss_upa_distance)))
       _uss_upa_distance)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; sensor_interface_msgs/UltrasonicUpaDistance _uss_upa_distance
    (send _uss_upa_distance :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; sensor_interface_msgs/UltrasonicUpaDistance _uss_upa_distance
       (send _uss_upa_distance :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; sensor_interface_msgs/UltrasonicUpaDistance _uss_upa_distance
     (send _uss_upa_distance :deserialize buf ptr-) (incf ptr- (send _uss_upa_distance :serialization-length))
   ;;
   self)
  )

(setf (get sensor_interface_msgs::UltrasonicUpaReport :md5sum-) "e005b4d2ebad20d43c80bf152864cbc2")
(setf (get sensor_interface_msgs::UltrasonicUpaReport :datatype-) "sensor_interface_msgs/UltrasonicUpaReport")
(setf (get sensor_interface_msgs::UltrasonicUpaReport :definition-)
      "std_msgs/Header header
sensor_interface_msgs/UltrasonicUpaDistance uss_upa_distance

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
MSG: sensor_interface_msgs/UltrasonicUpaDistance
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
sensor_interface_msgs/UltrasonicUpaData[] sonar

================================================================================
MSG: sensor_interface_msgs/UltrasonicUpaData
uint8 available
sensor_interface_msgs/UltrasonicResultMeta meta
float32 upadistance
string reserved_info

================================================================================
MSG: sensor_interface_msgs/UltrasonicResultMeta
uint64 timestamp_us
uint64 seq

")



(provide :sensor_interface_msgs/UltrasonicUpaReport "e005b4d2ebad20d43c80bf152864cbc2")


