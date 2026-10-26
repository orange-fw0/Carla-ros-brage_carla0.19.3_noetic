;; Auto-generated. Do not edit!


(when (boundp 'calib_interface_msgs::CameraOffcalibInfo)
  (if (not (find-package "CALIB_INTERFACE_MSGS"))
    (make-package "CALIB_INTERFACE_MSGS"))
  (shadow 'CameraOffcalibInfo (find-package "CALIB_INTERFACE_MSGS")))
(unless (find-package "CALIB_INTERFACE_MSGS::CAMERAOFFCALIBINFO")
  (make-package "CALIB_INTERFACE_MSGS::CAMERAOFFCALIBINFO"))

(in-package "ROS")
;;//! \htmlinclude CameraOffcalibInfo.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(defclass calib_interface_msgs::CameraOffcalibInfo
  :super ros::object
  :slots (_camera_name _camera_id _attach_camera_names _attach_camera_ids _error_code ))

(defmethod calib_interface_msgs::CameraOffcalibInfo
  (:init
   (&key
    ((:camera_name __camera_name) (instance perception_interface_msgs::CameraSourceEnum :init))
    ((:camera_id __camera_id) 0)
    ((:attach_camera_names __attach_camera_names) ())
    ((:attach_camera_ids __attach_camera_ids) (make-array 0 :initial-element 0 :element-type :integer))
    ((:error_code __error_code) (instance calib_interface_msgs::CamOffcalibDetailedErrorCodeEnum :init))
    )
   (send-super :init)
   (setq _camera_name __camera_name)
   (setq _camera_id (round __camera_id))
   (setq _attach_camera_names __attach_camera_names)
   (setq _attach_camera_ids __attach_camera_ids)
   (setq _error_code __error_code)
   self)
  (:camera_name
   (&rest __camera_name)
   (if (keywordp (car __camera_name))
       (send* _camera_name __camera_name)
     (progn
       (if __camera_name (setq _camera_name (car __camera_name)))
       _camera_name)))
  (:camera_id
   (&optional __camera_id)
   (if __camera_id (setq _camera_id __camera_id)) _camera_id)
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
    ;; perception_interface_msgs/CameraSourceEnum _camera_name
    (send _camera_name :serialization-length)
    ;; uint32 _camera_id
    4
    ;; perception_interface_msgs/CameraSourceEnum[] _attach_camera_names
    (apply #'+ (send-all _attach_camera_names :serialization-length)) 4
    ;; uint32[] _attach_camera_ids
    (* 4    (length _attach_camera_ids)) 4
    ;; calib_interface_msgs/CamOffcalibDetailedErrorCodeEnum _error_code
    (send _error_code :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; perception_interface_msgs/CameraSourceEnum _camera_name
       (send _camera_name :serialize s)
     ;; uint32 _camera_id
       (write-long _camera_id s)
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
     ;; calib_interface_msgs/CamOffcalibDetailedErrorCodeEnum _error_code
       (send _error_code :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; perception_interface_msgs/CameraSourceEnum _camera_name
     (send _camera_name :deserialize buf ptr-) (incf ptr- (send _camera_name :serialization-length))
   ;; uint32 _camera_id
     (setq _camera_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
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
   ;; calib_interface_msgs/CamOffcalibDetailedErrorCodeEnum _error_code
     (send _error_code :deserialize buf ptr-) (incf ptr- (send _error_code :serialization-length))
   ;;
   self)
  )

(setf (get calib_interface_msgs::CameraOffcalibInfo :md5sum-) "301d3cee4f8cdb9ef459bca0d04d9f3f")
(setf (get calib_interface_msgs::CameraOffcalibInfo :datatype-) "calib_interface_msgs/CameraOffcalibInfo")
(setf (get calib_interface_msgs::CameraOffcalibInfo :definition-)
      "perception_interface_msgs/CameraSourceEnum camera_name
uint32 camera_id
perception_interface_msgs/CameraSourceEnum[] attach_camera_names
uint32[] attach_camera_ids
calib_interface_msgs/CamOffcalibDetailedErrorCodeEnum error_code

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
MSG: calib_interface_msgs/CamOffcalibDetailedErrorCodeEnum
uint16 NORMAL = 0
uint16 EGO_INIT_FAILED = 1
uint16 NEED_CHECKED_CAM_NUM_ZERO = 2
uint16 EGO_POSE_CAM_VALID_UNACCESSABLE = 10
uint16 EGO_POSE_CROSS_CAM_VALID_UNACCESSABLE = 11
uint16 EGO_STATE_CAM_VALID_FREQ_TOO_LOW = 12
uint16 EGO_STATE_CROSS_CAM_VALID_FREQ_TOO_LOW = 13
uint16 CAM_VALID_VISUAL_FEATURE_INFO_NULL = 50
uint16 CAM_VALID_LONG_TIME_VISUAL_FEATURE_NUM_TOO_FEW = 51
uint16 CAM_VALID_VTRACKFRAMEBUFFER_FILL = 52
uint16 CAM_VALID_STATEBUFFER_FILL = 53
uint16 CAM_VALID_VALID_FEATURE_NUM_TOO_FEW = 54
uint16 CROSS_CAM_VALID_VTRACKFRAMEBUFFER_FILL = 100
uint16 CROSS_CAM_VALID_STATEBUFFER_FILL = 101
uint16 UPDATE_CAM_ID_OUT_OF_RANGE = 150
uint16 value

")



(provide :calib_interface_msgs/CameraOffcalibInfo "301d3cee4f8cdb9ef459bca0d04d9f3f")


