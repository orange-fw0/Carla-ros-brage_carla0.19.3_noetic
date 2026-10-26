;; Auto-generated. Do not edit!


(when (boundp 'sensor_interface_msgs::CameraServiceStatusUpdateRequest)
  (if (not (find-package "SENSOR_INTERFACE_MSGS"))
    (make-package "SENSOR_INTERFACE_MSGS"))
  (shadow 'CameraServiceStatusUpdateRequest (find-package "SENSOR_INTERFACE_MSGS")))
(unless (find-package "SENSOR_INTERFACE_MSGS::CAMERASERVICESTATUSUPDATEREQUEST")
  (make-package "SENSOR_INTERFACE_MSGS::CAMERASERVICESTATUSUPDATEREQUEST"))

(in-package "ROS")
;;//! \htmlinclude CameraServiceStatusUpdateRequest.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sensor_interface_msgs::CameraServiceStatusUpdateRequest
  :super ros::object
  :slots (_header _meta _video_status _additional_info ))

(defmethod sensor_interface_msgs::CameraServiceStatusUpdateRequest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:meta __meta) (instance sensor_interface_msgs::CameraServiceStatusMeta :init))
    ((:video_status __video_status) ())
    ((:additional_info __additional_info) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _meta __meta)
   (setq _video_status __video_status)
   (setq _additional_info (string __additional_info))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:meta
   (&rest __meta)
   (if (keywordp (car __meta))
       (send* _meta __meta)
     (progn
       (if __meta (setq _meta (car __meta)))
       _meta)))
  (:video_status
   (&rest __video_status)
   (if (keywordp (car __video_status))
       (send* _video_status __video_status)
     (progn
       (if __video_status (setq _video_status (car __video_status)))
       _video_status)))
  (:additional_info
   (&optional __additional_info)
   (if __additional_info (setq _additional_info __additional_info)) _additional_info)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; sensor_interface_msgs/CameraServiceStatusMeta _meta
    (send _meta :serialization-length)
    ;; sensor_interface_msgs/VideoStatus[] _video_status
    (apply #'+ (send-all _video_status :serialization-length)) 4
    ;; string _additional_info
    4 (length _additional_info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; sensor_interface_msgs/CameraServiceStatusMeta _meta
       (send _meta :serialize s)
     ;; sensor_interface_msgs/VideoStatus[] _video_status
     (write-long (length _video_status) s)
     (dolist (elem _video_status)
       (send elem :serialize s)
       )
     ;; string _additional_info
       (write-long (length _additional_info) s) (princ _additional_info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; sensor_interface_msgs/CameraServiceStatusMeta _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;; sensor_interface_msgs/VideoStatus[] _video_status
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _video_status (let (r) (dotimes (i n) (push (instance sensor_interface_msgs::VideoStatus :init) r)) r))
     (dolist (elem- _video_status)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _additional_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _additional_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get sensor_interface_msgs::CameraServiceStatusUpdateRequest :md5sum-) "2ca3f9254e207d2bb283878a5ac8e074")
(setf (get sensor_interface_msgs::CameraServiceStatusUpdateRequest :datatype-) "sensor_interface_msgs/CameraServiceStatusUpdateRequest")
(setf (get sensor_interface_msgs::CameraServiceStatusUpdateRequest :definition-)
      "std_msgs/Header header
sensor_interface_msgs/CameraServiceStatusMeta meta
sensor_interface_msgs/VideoStatus[] video_status
string additional_info

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
MSG: sensor_interface_msgs/CameraServiceStatusMeta
uint64 timestamp_us
uint64 seq

================================================================================
MSG: sensor_interface_msgs/VideoStatus
uint8 AVM_SURROUND = 0
uint8 AVM_ARROUND = 1
uint8 DVR = 2
uint8 RESERVED1 = 3
uint8 RESERVED2 = 4
uint8 service
uint16 status
perception_interface_msgs/CameraSourceEnum[] camera_name_list
string reserved_info

================================================================================
MSG: perception_interface_msgs/CameraSourceEnum
uint8 CAMERA_SOURCE_FRONT_FAR = 0
uint8 CAMERA_SOURCE_FRONT_MID = 1
uint8 CAMERA_SOURCE_FRONT_WIDE = 2
uint8 CAMERA_SOURCE_LEFT_FRONT = 3
uint8 CAMERA_SOURCE_LEFT_REAR = 4
uint8 CAMERA_SOURCE_REAR_MID = 5
uint8 CAMERA_SOURCE_REAR_MID_UP = 6
uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7
uint8 CAMERA_SOURCE_RIGHT_FRONT = 8
uint8 CAMERA_SOURCE_RIGHT_REAR = 9
uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10
uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11
uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12
uint8 CAMERA_SOURCE_REAR_FISHEYE = 13
uint8 CAMERA_SOURCE_FISHEYE = 14
uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15
uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16
uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17
uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18
uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19
uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20
uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21
uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22
uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23
uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24
uint8 CAMERA_SOURCE_BEV = 25
uint8 value

")



(provide :sensor_interface_msgs/CameraServiceStatusUpdateRequest "2ca3f9254e207d2bb283878a5ac8e074")


