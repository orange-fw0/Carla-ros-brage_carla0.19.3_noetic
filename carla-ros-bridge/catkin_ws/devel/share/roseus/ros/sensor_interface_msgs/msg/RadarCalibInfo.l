;; Auto-generated. Do not edit!


(when (boundp 'sensor_interface_msgs::RadarCalibInfo)
  (if (not (find-package "SENSOR_INTERFACE_MSGS"))
    (make-package "SENSOR_INTERFACE_MSGS"))
  (shadow 'RadarCalibInfo (find-package "SENSOR_INTERFACE_MSGS")))
(unless (find-package "SENSOR_INTERFACE_MSGS::RADARCALIBINFO")
  (make-package "SENSOR_INTERFACE_MSGS::RADARCALIBINFO"))

(in-package "ROS")
;;//! \htmlinclude RadarCalibInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sensor_interface_msgs::RadarCalibInfo
  :super ros::object
  :slots (_header _calibinfo ))

(defmethod sensor_interface_msgs::RadarCalibInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:calibinfo __calibinfo) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _calibinfo __calibinfo)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:calibinfo
   (&rest __calibinfo)
   (if (keywordp (car __calibinfo))
       (send* _calibinfo __calibinfo)
     (progn
       (if __calibinfo (setq _calibinfo (car __calibinfo)))
       _calibinfo)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; sensor_interface_msgs/RadarCalib[] _calibinfo
    (apply #'+ (send-all _calibinfo :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; sensor_interface_msgs/RadarCalib[] _calibinfo
     (write-long (length _calibinfo) s)
     (dolist (elem _calibinfo)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; sensor_interface_msgs/RadarCalib[] _calibinfo
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _calibinfo (let (r) (dotimes (i n) (push (instance sensor_interface_msgs::RadarCalib :init) r)) r))
     (dolist (elem- _calibinfo)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get sensor_interface_msgs::RadarCalibInfo :md5sum-) "ab2e19891d1bc9e7557c8467f5e3e49f")
(setf (get sensor_interface_msgs::RadarCalibInfo :datatype-) "sensor_interface_msgs/RadarCalibInfo")
(setf (get sensor_interface_msgs::RadarCalibInfo :definition-)
      "std_msgs/Header header
sensor_interface_msgs/RadarCalib[] calibinfo

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
MSG: sensor_interface_msgs/RadarCalib
int8 state
uint8 radar_id
float64[] r_s2b
float64[] t_s2b

")



(provide :sensor_interface_msgs/RadarCalibInfo "ab2e19891d1bc9e7557c8467f5e3e49f")


