;; Auto-generated. Do not edit!


(when (boundp 'sensor_interface_msgs::VideoStatus)
  (if (not (find-package "SENSOR_INTERFACE_MSGS"))
    (make-package "SENSOR_INTERFACE_MSGS"))
  (shadow 'VideoStatus (find-package "SENSOR_INTERFACE_MSGS")))
(unless (find-package "SENSOR_INTERFACE_MSGS::VIDEOSTATUS")
  (make-package "SENSOR_INTERFACE_MSGS::VIDEOSTATUS"))

(in-package "ROS")
;;//! \htmlinclude VideoStatus.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(intern "*AVM_SURROUND*" (find-package "SENSOR_INTERFACE_MSGS::VIDEOSTATUS"))
(shadow '*AVM_SURROUND* (find-package "SENSOR_INTERFACE_MSGS::VIDEOSTATUS"))
(defconstant sensor_interface_msgs::VideoStatus::*AVM_SURROUND* 0)
(intern "*AVM_ARROUND*" (find-package "SENSOR_INTERFACE_MSGS::VIDEOSTATUS"))
(shadow '*AVM_ARROUND* (find-package "SENSOR_INTERFACE_MSGS::VIDEOSTATUS"))
(defconstant sensor_interface_msgs::VideoStatus::*AVM_ARROUND* 1)
(intern "*DVR*" (find-package "SENSOR_INTERFACE_MSGS::VIDEOSTATUS"))
(shadow '*DVR* (find-package "SENSOR_INTERFACE_MSGS::VIDEOSTATUS"))
(defconstant sensor_interface_msgs::VideoStatus::*DVR* 2)
(intern "*RESERVED1*" (find-package "SENSOR_INTERFACE_MSGS::VIDEOSTATUS"))
(shadow '*RESERVED1* (find-package "SENSOR_INTERFACE_MSGS::VIDEOSTATUS"))
(defconstant sensor_interface_msgs::VideoStatus::*RESERVED1* 3)
(intern "*RESERVED2*" (find-package "SENSOR_INTERFACE_MSGS::VIDEOSTATUS"))
(shadow '*RESERVED2* (find-package "SENSOR_INTERFACE_MSGS::VIDEOSTATUS"))
(defconstant sensor_interface_msgs::VideoStatus::*RESERVED2* 4)

(defun sensor_interface_msgs::VideoStatus-to-symbol (const)
  (cond
        ((= const 0) 'sensor_interface_msgs::VideoStatus::*AVM_SURROUND*)
        ((= const 1) 'sensor_interface_msgs::VideoStatus::*AVM_ARROUND*)
        ((= const 2) 'sensor_interface_msgs::VideoStatus::*DVR*)
        ((= const 3) 'sensor_interface_msgs::VideoStatus::*RESERVED1*)
        ((= const 4) 'sensor_interface_msgs::VideoStatus::*RESERVED2*)
        (t nil)))

(defclass sensor_interface_msgs::VideoStatus
  :super ros::object
  :slots (_service _status _camera_name_list _reserved_info ))

(defmethod sensor_interface_msgs::VideoStatus
  (:init
   (&key
    ((:service __service) 0)
    ((:status __status) 0)
    ((:camera_name_list __camera_name_list) ())
    ((:reserved_info __reserved_info) "")
    )
   (send-super :init)
   (setq _service (round __service))
   (setq _status (round __status))
   (setq _camera_name_list __camera_name_list)
   (setq _reserved_info (string __reserved_info))
   self)
  (:service
   (&optional __service)
   (if __service (setq _service __service)) _service)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:camera_name_list
   (&rest __camera_name_list)
   (if (keywordp (car __camera_name_list))
       (send* _camera_name_list __camera_name_list)
     (progn
       (if __camera_name_list (setq _camera_name_list (car __camera_name_list)))
       _camera_name_list)))
  (:reserved_info
   (&optional __reserved_info)
   (if __reserved_info (setq _reserved_info __reserved_info)) _reserved_info)
  (:serialization-length
   ()
   (+
    ;; uint8 _service
    1
    ;; uint16 _status
    2
    ;; perception_interface_msgs/CameraSourceEnum[] _camera_name_list
    (apply #'+ (send-all _camera_name_list :serialization-length)) 4
    ;; string _reserved_info
    4 (length _reserved_info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _service
       (write-byte _service s)
     ;; uint16 _status
       (write-word _status s)
     ;; perception_interface_msgs/CameraSourceEnum[] _camera_name_list
     (write-long (length _camera_name_list) s)
     (dolist (elem _camera_name_list)
       (send elem :serialize s)
       )
     ;; string _reserved_info
       (write-long (length _reserved_info) s) (princ _reserved_info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _service
     (setq _service (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _status
     (setq _status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; perception_interface_msgs/CameraSourceEnum[] _camera_name_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _camera_name_list (let (r) (dotimes (i n) (push (instance perception_interface_msgs::CameraSourceEnum :init) r)) r))
     (dolist (elem- _camera_name_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get sensor_interface_msgs::VideoStatus :md5sum-) "73913f143a4b0d896e90c4c65785af82")
(setf (get sensor_interface_msgs::VideoStatus :datatype-) "sensor_interface_msgs/VideoStatus")
(setf (get sensor_interface_msgs::VideoStatus :definition-)
      "uint8 AVM_SURROUND = 0
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



(provide :sensor_interface_msgs/VideoStatus "73913f143a4b0d896e90c4c65785af82")


