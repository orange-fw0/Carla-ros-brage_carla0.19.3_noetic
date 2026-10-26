;; Auto-generated. Do not edit!


(when (boundp 'sensor_interface_msgs::LidarScan)
  (if (not (find-package "SENSOR_INTERFACE_MSGS"))
    (make-package "SENSOR_INTERFACE_MSGS"))
  (shadow 'LidarScan (find-package "SENSOR_INTERFACE_MSGS")))
(unless (find-package "SENSOR_INTERFACE_MSGS::LIDARSCAN")
  (make-package "SENSOR_INTERFACE_MSGS::LIDARSCAN"))

(in-package "ROS")
;;//! \htmlinclude LidarScan.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*LIDAR_TYPE_VELODYNE*" (find-package "SENSOR_INTERFACE_MSGS::LIDARSCAN"))
(shadow '*LIDAR_TYPE_VELODYNE* (find-package "SENSOR_INTERFACE_MSGS::LIDARSCAN"))
(defconstant sensor_interface_msgs::LidarScan::*LIDAR_TYPE_VELODYNE* 1)
(intern "*LIDAR_TYPE_ROBOSENSE*" (find-package "SENSOR_INTERFACE_MSGS::LIDARSCAN"))
(shadow '*LIDAR_TYPE_ROBOSENSE* (find-package "SENSOR_INTERFACE_MSGS::LIDARSCAN"))
(defconstant sensor_interface_msgs::LidarScan::*LIDAR_TYPE_ROBOSENSE* 2)

(defun sensor_interface_msgs::LidarScan-to-symbol (const)
  (cond
        ((= const 1) 'sensor_interface_msgs::LidarScan::*LIDAR_TYPE_VELODYNE*)
        ((= const 2) 'sensor_interface_msgs::LidarScan::*LIDAR_TYPE_ROBOSENSE*)
        (t nil)))

(defclass sensor_interface_msgs::LidarScan
  :super ros::object
  :slots (_header _available _lidar_type _reserved _velodyne_packets _robosense_packets _reserved_info ))

(defmethod sensor_interface_msgs::LidarScan
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:available __available) 0)
    ((:lidar_type __lidar_type) "")
    ((:reserved __reserved) 0)
    ((:velodyne_packets __velodyne_packets) ())
    ((:robosense_packets __robosense_packets) ())
    ((:reserved_info __reserved_info) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _available (round __available))
   (setq _lidar_type (string __lidar_type))
   (setq _reserved (round __reserved))
   (setq _velodyne_packets __velodyne_packets)
   (setq _robosense_packets __robosense_packets)
   (setq _reserved_info (string __reserved_info))
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
  (:lidar_type
   (&optional __lidar_type)
   (if __lidar_type (setq _lidar_type __lidar_type)) _lidar_type)
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:velodyne_packets
   (&rest __velodyne_packets)
   (if (keywordp (car __velodyne_packets))
       (send* _velodyne_packets __velodyne_packets)
     (progn
       (if __velodyne_packets (setq _velodyne_packets (car __velodyne_packets)))
       _velodyne_packets)))
  (:robosense_packets
   (&rest __robosense_packets)
   (if (keywordp (car __robosense_packets))
       (send* _robosense_packets __robosense_packets)
     (progn
       (if __robosense_packets (setq _robosense_packets (car __robosense_packets)))
       _robosense_packets)))
  (:reserved_info
   (&optional __reserved_info)
   (if __reserved_info (setq _reserved_info __reserved_info)) _reserved_info)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _available
    1
    ;; string _lidar_type
    4 (length _lidar_type)
    ;; uint32 _reserved
    4
    ;; sensor_interface_msgs/VelodynePacket[] _velodyne_packets
    (apply #'+ (send-all _velodyne_packets :serialization-length)) 4
    ;; sensor_interface_msgs/RobosensePacket[] _robosense_packets
    (apply #'+ (send-all _robosense_packets :serialization-length)) 4
    ;; string _reserved_info
    4 (length _reserved_info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _available
       (write-byte _available s)
     ;; string _lidar_type
       (write-long (length _lidar_type) s) (princ _lidar_type s)
     ;; uint32 _reserved
       (write-long _reserved s)
     ;; sensor_interface_msgs/VelodynePacket[] _velodyne_packets
     (write-long (length _velodyne_packets) s)
     (dolist (elem _velodyne_packets)
       (send elem :serialize s)
       )
     ;; sensor_interface_msgs/RobosensePacket[] _robosense_packets
     (write-long (length _robosense_packets) s)
     (dolist (elem _robosense_packets)
       (send elem :serialize s)
       )
     ;; string _reserved_info
       (write-long (length _reserved_info) s) (princ _reserved_info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _lidar_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _lidar_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _reserved
     (setq _reserved (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; sensor_interface_msgs/VelodynePacket[] _velodyne_packets
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velodyne_packets (let (r) (dotimes (i n) (push (instance sensor_interface_msgs::VelodynePacket :init) r)) r))
     (dolist (elem- _velodyne_packets)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; sensor_interface_msgs/RobosensePacket[] _robosense_packets
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _robosense_packets (let (r) (dotimes (i n) (push (instance sensor_interface_msgs::RobosensePacket :init) r)) r))
     (dolist (elem- _robosense_packets)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get sensor_interface_msgs::LidarScan :md5sum-) "22d6444b5c8a1293a27ea13a834d552d")
(setf (get sensor_interface_msgs::LidarScan :datatype-) "sensor_interface_msgs/LidarScan")
(setf (get sensor_interface_msgs::LidarScan :definition-)
      "uint8 LIDAR_TYPE_VELODYNE = 1
uint8 LIDAR_TYPE_ROBOSENSE = 2
std_msgs/Header header
uint8 available
string lidar_type
uint32 reserved
sensor_interface_msgs/VelodynePacket[] velodyne_packets
sensor_interface_msgs/RobosensePacket[] robosense_packets
string reserved_info

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
MSG: sensor_interface_msgs/VelodynePacket
uint64 stamp
int16 id
uint8[] data

================================================================================
MSG: sensor_interface_msgs/RobosensePacket
uint64 stamp
int16 id
uint8[] header
uint8[] data

")



(provide :sensor_interface_msgs/LidarScan "22d6444b5c8a1293a27ea13a834d552d")


