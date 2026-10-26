;; Auto-generated. Do not edit!


(when (boundp 'sensor_interface_msgs::CameraServiceStatusData)
  (if (not (find-package "SENSOR_INTERFACE_MSGS"))
    (make-package "SENSOR_INTERFACE_MSGS"))
  (shadow 'CameraServiceStatusData (find-package "SENSOR_INTERFACE_MSGS")))
(unless (find-package "SENSOR_INTERFACE_MSGS::CAMERASERVICESTATUSDATA")
  (make-package "SENSOR_INTERFACE_MSGS::CAMERASERVICESTATUSDATA"))

(in-package "ROS")
;;//! \htmlinclude CameraServiceStatusData.msg.html


(defclass sensor_interface_msgs::CameraServiceStatusData
  :super ros::object
  :slots (_video_status _camera_status _reserved_infos ))

(defmethod sensor_interface_msgs::CameraServiceStatusData
  (:init
   (&key
    ((:video_status __video_status) ())
    ((:camera_status __camera_status) ())
    ((:reserved_infos __reserved_infos) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _video_status __video_status)
   (setq _camera_status __camera_status)
   (setq _reserved_infos __reserved_infos)
   self)
  (:video_status
   (&rest __video_status)
   (if (keywordp (car __video_status))
       (send* _video_status __video_status)
     (progn
       (if __video_status (setq _video_status (car __video_status)))
       _video_status)))
  (:camera_status
   (&rest __camera_status)
   (if (keywordp (car __camera_status))
       (send* _camera_status __camera_status)
     (progn
       (if __camera_status (setq _camera_status (car __camera_status)))
       _camera_status)))
  (:reserved_infos
   (&optional __reserved_infos)
   (if __reserved_infos (setq _reserved_infos __reserved_infos)) _reserved_infos)
  (:serialization-length
   ()
   (+
    ;; sensor_interface_msgs/VideoStatus[] _video_status
    (apply #'+ (send-all _video_status :serialization-length)) 4
    ;; sensor_interface_msgs/CameraStatus[] _camera_status
    (apply #'+ (send-all _camera_status :serialization-length)) 4
    ;; string[] _reserved_infos
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _reserved_infos)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_interface_msgs/VideoStatus[] _video_status
     (write-long (length _video_status) s)
     (dolist (elem _video_status)
       (send elem :serialize s)
       )
     ;; sensor_interface_msgs/CameraStatus[] _camera_status
     (write-long (length _camera_status) s)
     (dolist (elem _camera_status)
       (send elem :serialize s)
       )
     ;; string[] _reserved_infos
     (write-long (length _reserved_infos) s)
     (dolist (elem _reserved_infos)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_interface_msgs/VideoStatus[] _video_status
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _video_status (let (r) (dotimes (i n) (push (instance sensor_interface_msgs::VideoStatus :init) r)) r))
     (dolist (elem- _video_status)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; sensor_interface_msgs/CameraStatus[] _camera_status
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _camera_status (let (r) (dotimes (i n) (push (instance sensor_interface_msgs::CameraStatus :init) r)) r))
     (dolist (elem- _camera_status)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string[] _reserved_infos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _reserved_infos (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _reserved_infos i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get sensor_interface_msgs::CameraServiceStatusData :md5sum-) "ec7dafc38c3a6a2d38ab63e72412943a")
(setf (get sensor_interface_msgs::CameraServiceStatusData :datatype-) "sensor_interface_msgs/CameraServiceStatusData")
(setf (get sensor_interface_msgs::CameraServiceStatusData :definition-)
      "sensor_interface_msgs/VideoStatus[] video_status
sensor_interface_msgs/CameraStatus[] camera_status
string[] reserved_infos

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

================================================================================
MSG: sensor_interface_msgs/CameraStatus
perception_interface_msgs/CameraSourceEnum camera_name
uint16 status
string reserved_info

")



(provide :sensor_interface_msgs/CameraServiceStatusData "ec7dafc38c3a6a2d38ab63e72412943a")


