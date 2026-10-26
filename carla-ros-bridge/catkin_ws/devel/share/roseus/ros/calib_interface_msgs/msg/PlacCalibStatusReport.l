;; Auto-generated. Do not edit!


(when (boundp 'calib_interface_msgs::PlacCalibStatusReport)
  (if (not (find-package "CALIB_INTERFACE_MSGS"))
    (make-package "CALIB_INTERFACE_MSGS"))
  (shadow 'PlacCalibStatusReport (find-package "CALIB_INTERFACE_MSGS")))
(unless (find-package "CALIB_INTERFACE_MSGS::PLACCALIBSTATUSREPORT")
  (make-package "CALIB_INTERFACE_MSGS::PLACCALIBSTATUSREPORT"))

(in-package "ROS")
;;//! \htmlinclude PlacCalibStatusReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass calib_interface_msgs::PlacCalibStatusReport
  :super ros::object
  :slots (_header _calib_status _error_code ))

(defmethod calib_interface_msgs::PlacCalibStatusReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:calib_status __calib_status) (instance calib_interface_msgs::PlacCalibStatusEnum :init))
    ((:error_code __error_code) (instance calib_interface_msgs::PlacTotalErrorCodeEnum :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _calib_status __calib_status)
   (setq _error_code __error_code)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:calib_status
   (&rest __calib_status)
   (if (keywordp (car __calib_status))
       (send* _calib_status __calib_status)
     (progn
       (if __calib_status (setq _calib_status (car __calib_status)))
       _calib_status)))
  (:error_code
   (&rest __error_code)
   (if (keywordp (car __error_code))
       (send* _error_code __error_code)
     (progn
       (if __error_code (setq _error_code (car __error_code)))
       _error_code)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; calib_interface_msgs/PlacCalibStatusEnum _calib_status
    (send _calib_status :serialization-length)
    ;; calib_interface_msgs/PlacTotalErrorCodeEnum _error_code
    (send _error_code :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; calib_interface_msgs/PlacCalibStatusEnum _calib_status
       (send _calib_status :serialize s)
     ;; calib_interface_msgs/PlacTotalErrorCodeEnum _error_code
       (send _error_code :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; calib_interface_msgs/PlacCalibStatusEnum _calib_status
     (send _calib_status :deserialize buf ptr-) (incf ptr- (send _calib_status :serialization-length))
   ;; calib_interface_msgs/PlacTotalErrorCodeEnum _error_code
     (send _error_code :deserialize buf ptr-) (incf ptr- (send _error_code :serialization-length))
   ;;
   self)
  )

(setf (get calib_interface_msgs::PlacCalibStatusReport :md5sum-) "0625ca16d445a3930c2b759a2df5d93d")
(setf (get calib_interface_msgs::PlacCalibStatusReport :datatype-) "calib_interface_msgs/PlacCalibStatusReport")
(setf (get calib_interface_msgs::PlacCalibStatusReport :definition-)
      "std_msgs/Header header
calib_interface_msgs/PlacCalibStatusEnum calib_status
calib_interface_msgs/PlacTotalErrorCodeEnum error_code

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
MSG: calib_interface_msgs/PlacCalibStatusEnum
uint8 CALIB_STATUS_IDLE = 0
uint8 CALIB_STATUS_RUNNING = 1
uint8 CALIB_STATUS_SUCCESS = 2
uint8 CALIB_STATUS_FAIL = 3
uint8 value

================================================================================
MSG: calib_interface_msgs/PlacTotalErrorCodeEnum
uint8 CALIB_NORMAL = 0
uint8 CALIB_INIT_ERROR = 1
uint8 CALIB_FISHEYE_ERROR = 2
uint8 CALIB_NORMAL_ERROR = 3
uint8 CALIB_OPT_ERROR = 4
uint8 value

")



(provide :calib_interface_msgs/PlacCalibStatusReport "0625ca16d445a3930c2b759a2df5d93d")


