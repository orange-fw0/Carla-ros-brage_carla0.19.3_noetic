;; Auto-generated. Do not edit!


(when (boundp 'calib_interface_msgs::LidarCalibReport)
  (if (not (find-package "CALIB_INTERFACE_MSGS"))
    (make-package "CALIB_INTERFACE_MSGS"))
  (shadow 'LidarCalibReport (find-package "CALIB_INTERFACE_MSGS")))
(unless (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBREPORT")
  (make-package "CALIB_INTERFACE_MSGS::LIDARCALIBREPORT"))

(in-package "ROS")
;;//! \htmlinclude LidarCalibReport.msg.html


(defclass calib_interface_msgs::LidarCalibReport
  :super ros::object
  :slots (_available _lidar_calib_data _travel_distance _post_processing_progress _error_code ))

(defmethod calib_interface_msgs::LidarCalibReport
  (:init
   (&key
    ((:available __available) 0)
    ((:lidar_calib_data __lidar_calib_data) ())
    ((:travel_distance __travel_distance) 0.0)
    ((:post_processing_progress __post_processing_progress) 0.0)
    ((:error_code __error_code) (instance calib_interface_msgs::LidarCalibDetailedErrorCodeEnum :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _lidar_calib_data __lidar_calib_data)
   (setq _travel_distance (float __travel_distance))
   (setq _post_processing_progress (float __post_processing_progress))
   (setq _error_code __error_code)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:lidar_calib_data
   (&rest __lidar_calib_data)
   (if (keywordp (car __lidar_calib_data))
       (send* _lidar_calib_data __lidar_calib_data)
     (progn
       (if __lidar_calib_data (setq _lidar_calib_data (car __lidar_calib_data)))
       _lidar_calib_data)))
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
    ;; calib_interface_msgs/LidarCalibInfo[] _lidar_calib_data
    (apply #'+ (send-all _lidar_calib_data :serialization-length)) 4
    ;; float32 _travel_distance
    4
    ;; float32 _post_processing_progress
    4
    ;; calib_interface_msgs/LidarCalibDetailedErrorCodeEnum _error_code
    (send _error_code :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; calib_interface_msgs/LidarCalibInfo[] _lidar_calib_data
     (write-long (length _lidar_calib_data) s)
     (dolist (elem _lidar_calib_data)
       (send elem :serialize s)
       )
     ;; float32 _travel_distance
       (sys::poke _travel_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _post_processing_progress
       (sys::poke _post_processing_progress (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; calib_interface_msgs/LidarCalibDetailedErrorCodeEnum _error_code
       (send _error_code :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; calib_interface_msgs/LidarCalibInfo[] _lidar_calib_data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lidar_calib_data (let (r) (dotimes (i n) (push (instance calib_interface_msgs::LidarCalibInfo :init) r)) r))
     (dolist (elem- _lidar_calib_data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32 _travel_distance
     (setq _travel_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _post_processing_progress
     (setq _post_processing_progress (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; calib_interface_msgs/LidarCalibDetailedErrorCodeEnum _error_code
     (send _error_code :deserialize buf ptr-) (incf ptr- (send _error_code :serialization-length))
   ;;
   self)
  )

(setf (get calib_interface_msgs::LidarCalibReport :md5sum-) "c62375b4ac7fe54f7c7c32174e72a6e7")
(setf (get calib_interface_msgs::LidarCalibReport :datatype-) "calib_interface_msgs/LidarCalibReport")
(setf (get calib_interface_msgs::LidarCalibReport :definition-)
      "uint8 available
calib_interface_msgs/LidarCalibInfo[] lidar_calib_data
float32 travel_distance
float32 post_processing_progress
calib_interface_msgs/LidarCalibDetailedErrorCodeEnum error_code

================================================================================
MSG: calib_interface_msgs/LidarCalibInfo
string lidar_name
uint32 lidar_id
float64[] r_s2b
float64[] t_s2b
calib_interface_msgs/LidarCalibDetailedErrorCodeEnum error_code
float64[] r_s2b_diff
float64[] t_s2b_diff

================================================================================
MSG: calib_interface_msgs/LidarCalibDetailedErrorCodeEnum
uint16 NORMAL = 0
uint16 CALIB_READ_CONFIG_FAIL = 1
uint16 CALIB_CREATE_RESULT_FILE_FAIL = 2
uint16 LIDAR_NEED_CALIB_NULL = 3
uint16 EGO_POSE_LOSS_FRAME = 4
uint16 BAD_ENVIRONMENT_FOR_CALIB = 5
uint16 VEHICLE_SPEED_TOO_FAST = 6
uint16 VEHICLE_YAW_RATE_TOO_LARGE = 7
uint16 MAX_MILEAGE_CALIB_UNSUCCESS = 8
uint16 CALIB_TIMEOUT = 9
uint16 CAM_RESOLUTION_MISMATCH = 51
uint16 CAM_VIEW_OCCLUSION = 52
uint16 IMAGE_INSUFFICIENT_EDGES = 53
uint16 LIDAR_INSUFFICIENT_EDGE_POINTS = 54
uint16 CALIB_CONTINUOUS_UNCONVERGENCE = 55
uint16 LIDAR_INSUFFICIENT_GEOMETRIC_FEATURES = 56
uint16 INSUFFICIENT_TURNS = 57
uint16 SOLVER_POSE_REFINE_EXCEPTION = 58
uint16 SOLVER_PAIRWISE_REFINE_EXCEPTION = 59
uint16 SOLVER_GLOBAL_REFINE_EXCEPTION = 60
uint16 INIT_CALIB_OUT_OF_ODD = 1001
uint16 LIDAR_LOWER_FREQUENCY = 1002
uint16 LIDAR_MOTION_DISTORTION_CORRECTION_EXCEPTION = 1003
uint16 LIDAR_POINT_MISSING_FIELD_INFO = 1004
uint16 LARGE_DEVIATION_IN_DESIGNED_ROTATION = 1005
uint16 value

")



(provide :calib_interface_msgs/LidarCalibReport "c62375b4ac7fe54f7c7c32174e72a6e7")


