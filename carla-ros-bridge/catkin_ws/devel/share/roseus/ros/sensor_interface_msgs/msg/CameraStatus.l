;; Auto-generated. Do not edit!


(when (boundp 'sensor_interface_msgs::CameraStatus)
  (if (not (find-package "SENSOR_INTERFACE_MSGS"))
    (make-package "SENSOR_INTERFACE_MSGS"))
  (shadow 'CameraStatus (find-package "SENSOR_INTERFACE_MSGS")))
(unless (find-package "SENSOR_INTERFACE_MSGS::CAMERASTATUS")
  (make-package "SENSOR_INTERFACE_MSGS::CAMERASTATUS"))

(in-package "ROS")
;;//! \htmlinclude CameraStatus.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(defclass sensor_interface_msgs::CameraStatus
  :super ros::object
  :slots (_camera_name _status _reserved_info ))

(defmethod sensor_interface_msgs::CameraStatus
  (:init
   (&key
    ((:camera_name __camera_name) (instance perception_interface_msgs::CameraSourceEnum :init))
    ((:status __status) 0)
    ((:reserved_info __reserved_info) "")
    )
   (send-super :init)
   (setq _camera_name __camera_name)
   (setq _status (round __status))
   (setq _reserved_info (string __reserved_info))
   self)
  (:camera_name
   (&rest __camera_name)
   (if (keywordp (car __camera_name))
       (send* _camera_name __camera_name)
     (progn
       (if __camera_name (setq _camera_name (car __camera_name)))
       _camera_name)))
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:reserved_info
   (&optional __reserved_info)
   (if __reserved_info (setq _reserved_info __reserved_info)) _reserved_info)
  (:serialization-length
   ()
   (+
    ;; perception_interface_msgs/CameraSourceEnum _camera_name
    (send _camera_name :serialization-length)
    ;; uint16 _status
    2
    ;; string _reserved_info
    4 (length _reserved_info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; perception_interface_msgs/CameraSourceEnum _camera_name
       (send _camera_name :serialize s)
     ;; uint16 _status
       (write-word _status s)
     ;; string _reserved_info
       (write-long (length _reserved_info) s) (princ _reserved_info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; perception_interface_msgs/CameraSourceEnum _camera_name
     (send _camera_name :deserialize buf ptr-) (incf ptr- (send _camera_name :serialization-length))
   ;; uint16 _status
     (setq _status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get sensor_interface_msgs::CameraStatus :md5sum-) "22df86038103eb36d9e68eefa54dd6a0")
(setf (get sensor_interface_msgs::CameraStatus :datatype-) "sensor_interface_msgs/CameraStatus")
(setf (get sensor_interface_msgs::CameraStatus :definition-)
      "perception_interface_msgs/CameraSourceEnum camera_name
uint16 status
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



(provide :sensor_interface_msgs/CameraStatus "22df86038103eb36d9e68eefa54dd6a0")


