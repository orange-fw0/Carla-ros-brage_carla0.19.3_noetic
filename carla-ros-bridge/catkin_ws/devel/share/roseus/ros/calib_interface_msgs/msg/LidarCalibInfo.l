;; Auto-generated. Do not edit!


(when (boundp 'calib_interface_msgs::LidarCalibInfo)
  (if (not (find-package "CALIB_INTERFACE_MSGS"))
    (make-package "CALIB_INTERFACE_MSGS"))
  (shadow 'LidarCalibInfo (find-package "CALIB_INTERFACE_MSGS")))
(unless (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBINFO")
  (make-package "CALIB_INTERFACE_MSGS::LIDARCALIBINFO"))

(in-package "ROS")
;;//! \htmlinclude LidarCalibInfo.msg.html


(defclass calib_interface_msgs::LidarCalibInfo
  :super ros::object
  :slots (_lidar_name _lidar_id _r_s2b _t_s2b _error_code _r_s2b_diff _t_s2b_diff ))

(defmethod calib_interface_msgs::LidarCalibInfo
  (:init
   (&key
    ((:lidar_name __lidar_name) "")
    ((:lidar_id __lidar_id) 0)
    ((:r_s2b __r_s2b) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:t_s2b __t_s2b) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:error_code __error_code) (instance calib_interface_msgs::LidarCalibDetailedErrorCodeEnum :init))
    ((:r_s2b_diff __r_s2b_diff) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:t_s2b_diff __t_s2b_diff) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _lidar_name (string __lidar_name))
   (setq _lidar_id (round __lidar_id))
   (setq _r_s2b __r_s2b)
   (setq _t_s2b __t_s2b)
   (setq _error_code __error_code)
   (setq _r_s2b_diff __r_s2b_diff)
   (setq _t_s2b_diff __t_s2b_diff)
   self)
  (:lidar_name
   (&optional __lidar_name)
   (if __lidar_name (setq _lidar_name __lidar_name)) _lidar_name)
  (:lidar_id
   (&optional __lidar_id)
   (if __lidar_id (setq _lidar_id __lidar_id)) _lidar_id)
  (:r_s2b
   (&optional __r_s2b)
   (if __r_s2b (setq _r_s2b __r_s2b)) _r_s2b)
  (:t_s2b
   (&optional __t_s2b)
   (if __t_s2b (setq _t_s2b __t_s2b)) _t_s2b)
  (:error_code
   (&rest __error_code)
   (if (keywordp (car __error_code))
       (send* _error_code __error_code)
     (progn
       (if __error_code (setq _error_code (car __error_code)))
       _error_code)))
  (:r_s2b_diff
   (&optional __r_s2b_diff)
   (if __r_s2b_diff (setq _r_s2b_diff __r_s2b_diff)) _r_s2b_diff)
  (:t_s2b_diff
   (&optional __t_s2b_diff)
   (if __t_s2b_diff (setq _t_s2b_diff __t_s2b_diff)) _t_s2b_diff)
  (:serialization-length
   ()
   (+
    ;; string _lidar_name
    4 (length _lidar_name)
    ;; uint32 _lidar_id
    4
    ;; float64[] _r_s2b
    (* 8    (length _r_s2b)) 4
    ;; float64[] _t_s2b
    (* 8    (length _t_s2b)) 4
    ;; calib_interface_msgs/LidarCalibDetailedErrorCodeEnum _error_code
    (send _error_code :serialization-length)
    ;; float64[] _r_s2b_diff
    (* 8    (length _r_s2b_diff)) 4
    ;; float64[] _t_s2b_diff
    (* 8    (length _t_s2b_diff)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _lidar_name
       (write-long (length _lidar_name) s) (princ _lidar_name s)
     ;; uint32 _lidar_id
       (write-long _lidar_id s)
     ;; float64[] _r_s2b
     (write-long (length _r_s2b) s)
     (dotimes (i (length _r_s2b))
       (sys::poke (elt _r_s2b i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _t_s2b
     (write-long (length _t_s2b) s)
     (dotimes (i (length _t_s2b))
       (sys::poke (elt _t_s2b i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; calib_interface_msgs/LidarCalibDetailedErrorCodeEnum _error_code
       (send _error_code :serialize s)
     ;; float64[] _r_s2b_diff
     (write-long (length _r_s2b_diff) s)
     (dotimes (i (length _r_s2b_diff))
       (sys::poke (elt _r_s2b_diff i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _t_s2b_diff
     (write-long (length _t_s2b_diff) s)
     (dotimes (i (length _t_s2b_diff))
       (sys::poke (elt _t_s2b_diff i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _lidar_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _lidar_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _lidar_id
     (setq _lidar_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[] _r_s2b
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _r_s2b (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _r_s2b i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _t_s2b
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _t_s2b (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _t_s2b i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; calib_interface_msgs/LidarCalibDetailedErrorCodeEnum _error_code
     (send _error_code :deserialize buf ptr-) (incf ptr- (send _error_code :serialization-length))
   ;; float64[] _r_s2b_diff
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _r_s2b_diff (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _r_s2b_diff i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _t_s2b_diff
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _t_s2b_diff (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _t_s2b_diff i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get calib_interface_msgs::LidarCalibInfo :md5sum-) "56ff464b1ad82c1724641de8e9add352")
(setf (get calib_interface_msgs::LidarCalibInfo :datatype-) "calib_interface_msgs/LidarCalibInfo")
(setf (get calib_interface_msgs::LidarCalibInfo :definition-)
      "string lidar_name
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



(provide :calib_interface_msgs/LidarCalibInfo "56ff464b1ad82c1724641de8e9add352")


