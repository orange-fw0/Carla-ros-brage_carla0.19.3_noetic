;; Auto-generated. Do not edit!


(when (boundp 'calib_interface_msgs::LidarOffcalibReport)
  (if (not (find-package "CALIB_INTERFACE_MSGS"))
    (make-package "CALIB_INTERFACE_MSGS"))
  (shadow 'LidarOffcalibReport (find-package "CALIB_INTERFACE_MSGS")))
(unless (find-package "CALIB_INTERFACE_MSGS::LIDAROFFCALIBREPORT")
  (make-package "CALIB_INTERFACE_MSGS::LIDAROFFCALIBREPORT"))

(in-package "ROS")
;;//! \htmlinclude LidarOffcalibReport.msg.html


(defclass calib_interface_msgs::LidarOffcalibReport
  :super ros::object
  :slots (_available _lidar_offcalib_data _travel_distance _post_processing_progress _error_code ))

(defmethod calib_interface_msgs::LidarOffcalibReport
  (:init
   (&key
    ((:available __available) 0)
    ((:lidar_offcalib_data __lidar_offcalib_data) ())
    ((:travel_distance __travel_distance) 0.0)
    ((:post_processing_progress __post_processing_progress) 0.0)
    ((:error_code __error_code) (instance calib_interface_msgs::LidarOffcalibDetailedErrorCodeEnum :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _lidar_offcalib_data __lidar_offcalib_data)
   (setq _travel_distance (float __travel_distance))
   (setq _post_processing_progress (float __post_processing_progress))
   (setq _error_code __error_code)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:lidar_offcalib_data
   (&rest __lidar_offcalib_data)
   (if (keywordp (car __lidar_offcalib_data))
       (send* _lidar_offcalib_data __lidar_offcalib_data)
     (progn
       (if __lidar_offcalib_data (setq _lidar_offcalib_data (car __lidar_offcalib_data)))
       _lidar_offcalib_data)))
  (:travel_distance
   (&optional __travel_distance)
   (if __travel_distance (setq _travel_distance __travel_distance)) _travel_distance)
  (:post_processing_progress
   (&optional __post_processing_progress)
   (if __post_processing_progress (setq _post_processing_progress __post_processing_progress)) _post_processing_progress)
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
    ;; uint8 _available
    1
    ;; calib_interface_msgs/LidarOffcalibInfo[] _lidar_offcalib_data
    (apply #'+ (send-all _lidar_offcalib_data :serialization-length)) 4
    ;; float32 _travel_distance
    4
    ;; float32 _post_processing_progress
    4
    ;; calib_interface_msgs/LidarOffcalibDetailedErrorCodeEnum _error_code
    (send _error_code :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; calib_interface_msgs/LidarOffcalibInfo[] _lidar_offcalib_data
     (write-long (length _lidar_offcalib_data) s)
     (dolist (elem _lidar_offcalib_data)
       (send elem :serialize s)
       )
     ;; float32 _travel_distance
       (sys::poke _travel_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _post_processing_progress
       (sys::poke _post_processing_progress (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; calib_interface_msgs/LidarOffcalibDetailedErrorCodeEnum _error_code
       (send _error_code :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; calib_interface_msgs/LidarOffcalibInfo[] _lidar_offcalib_data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lidar_offcalib_data (let (r) (dotimes (i n) (push (instance calib_interface_msgs::LidarOffcalibInfo :init) r)) r))
     (dolist (elem- _lidar_offcalib_data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32 _travel_distance
     (setq _travel_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _post_processing_progress
     (setq _post_processing_progress (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; calib_interface_msgs/LidarOffcalibDetailedErrorCodeEnum _error_code
     (send _error_code :deserialize buf ptr-) (incf ptr- (send _error_code :serialization-length))
   ;;
   self)
  )

(setf (get calib_interface_msgs::LidarOffcalibReport :md5sum-) "58dcb83367f2f78ba7b360a036cca333")
(setf (get calib_interface_msgs::LidarOffcalibReport :datatype-) "calib_interface_msgs/LidarOffcalibReport")
(setf (get calib_interface_msgs::LidarOffcalibReport :definition-)
      "uint8 available
calib_interface_msgs/LidarOffcalibInfo[] lidar_offcalib_data
float32 travel_distance
float32 post_processing_progress
calib_interface_msgs/LidarOffcalibDetailedErrorCodeEnum error_code

================================================================================
MSG: calib_interface_msgs/LidarOffcalibInfo
string lidar_name
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



(provide :calib_interface_msgs/LidarOffcalibReport "58dcb83367f2f78ba7b360a036cca333")


