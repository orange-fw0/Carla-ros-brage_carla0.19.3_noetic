;; Auto-generated. Do not edit!


(when (boundp 'calib_interface_msgs::LidarOffcalibInfo)
  (if (not (find-package "CALIB_INTERFACE_MSGS"))
    (make-package "CALIB_INTERFACE_MSGS"))
  (shadow 'LidarOffcalibInfo (find-package "CALIB_INTERFACE_MSGS")))
(unless (find-package "CALIB_INTERFACE_MSGS::LIDAROFFCALIBINFO")
  (make-package "CALIB_INTERFACE_MSGS::LIDAROFFCALIBINFO"))

(in-package "ROS")
;;//! \htmlinclude LidarOffcalibInfo.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(defclass calib_interface_msgs::LidarOffcalibInfo
  :super ros::object
  :slots (_lidar_name _lidar_id _attach_camera_names _attach_camera_ids _error_code ))

(defmethod calib_interface_msgs::LidarOffcalibInfo
  (:init
   (&key
    ((:lidar_name __lidar_name) "")
    ((:lidar_id __lidar_id) 0)
    ((:attach_camera_names __attach_camera_names) ())
    ((:attach_camera_ids __attach_camera_ids) (make-array 0 :initial-element 0 :element-type :integer))
    ((:error_code __error_code) (instance calib_interface_msgs::LidarOffcalibDetailedErrorCodeEnum :init))
    )
   (send-super :init)
   (setq _lidar_name (string __lidar_name))
   (setq _lidar_id (round __lidar_id))
   (setq _attach_camera_names __attach_camera_names)
   (setq _attach_camera_ids __attach_camera_ids)
   (setq _error_code __error_code)
   self)
  (:lidar_name
   (&optional __lidar_name)
   (if __lidar_name (setq _lidar_name __lidar_name)) _lidar_name)
  (:lidar_id
   (&optional __lidar_id)
   (if __lidar_id (setq _lidar_id __lidar_id)) _lidar_id)
  (:attach_camera_names
   (&rest __attach_camera_names)
   (if (keywordp (car __attach_camera_names))
       (send* _attach_camera_names __attach_camera_names)
     (progn
       (if __attach_camera_names (setq _attach_camera_names (car __attach_camera_names)))
       _attach_camera_names)))
  (:attach_camera_ids
   (&optional __attach_camera_ids)
   (if __attach_camera_ids (setq _attach_camera_ids __attach_camera_ids)) _attach_camera_ids)
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
    ;; string _lidar_name
    4 (length _lidar_name)
    ;; uint32 _lidar_id
    4
    ;; perception_interface_msgs/CameraSourceEnum[] _attach_camera_names
    (apply #'+ (send-all _attach_camera_names :serialization-length)) 4
    ;; uint32[] _attach_camera_ids
    (* 4    (length _attach_camera_ids)) 4
    ;; calib_interface_msgs/LidarOffcalibDetailedErrorCodeEnum _error_code
    (send _error_code :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _lidar_name
       (write-long (length _lidar_name) s) (princ _lidar_name s)
     ;; uint32 _lidar_id
       (write-long _lidar_id s)
     ;; perception_interface_msgs/CameraSourceEnum[] _attach_camera_names
     (write-long (length _attach_camera_names) s)
     (dolist (elem _attach_camera_names)
       (send elem :serialize s)
       )
     ;; uint32[] _attach_camera_ids
     (write-long (length _attach_camera_ids) s)
     (dotimes (i (length _attach_camera_ids))
       (write-long (elt _attach_camera_ids i) s)
       )
     ;; calib_interface_msgs/LidarOffcalibDetailedErrorCodeEnum _error_code
       (send _error_code :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _lidar_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _lidar_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _lidar_id
     (setq _lidar_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; perception_interface_msgs/CameraSourceEnum[] _attach_camera_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _attach_camera_names (let (r) (dotimes (i n) (push (instance perception_interface_msgs::CameraSourceEnum :init) r)) r))
     (dolist (elem- _attach_camera_names)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint32[] _attach_camera_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _attach_camera_ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _attach_camera_ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; calib_interface_msgs/LidarOffcalibDetailedErrorCodeEnum _error_code
     (send _error_code :deserialize buf ptr-) (incf ptr- (send _error_code :serialization-length))
   ;;
   self)
  )

(setf (get calib_interface_msgs::LidarOffcalibInfo :md5sum-) "4f954803b35dbf900a63e4757971e44a")
(setf (get calib_interface_msgs::LidarOffcalibInfo :datatype-) "calib_interface_msgs/LidarOffcalibInfo")
(setf (get calib_interface_msgs::LidarOffcalibInfo :definition-)
      "string lidar_name
uint32 lidar_id
perception_interface_msgs/CameraSourceEnum[] attach_camera_names
uint32[] attach_camera_ids
calib_interface_msgs/LidarOffcalibDetailedErrorCodeEnum error_code

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
MSG: calib_interface_msgs/LidarOffcalibDetailedErrorCodeEnum
uint16 NORMAL = 0
uint16 value

")



(provide :calib_interface_msgs/LidarOffcalibInfo "4f954803b35dbf900a63e4757971e44a")


