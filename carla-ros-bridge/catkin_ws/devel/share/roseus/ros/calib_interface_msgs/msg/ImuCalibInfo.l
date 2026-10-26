;; Auto-generated. Do not edit!


(when (boundp 'calib_interface_msgs::ImuCalibInfo)
  (if (not (find-package "CALIB_INTERFACE_MSGS"))
    (make-package "CALIB_INTERFACE_MSGS"))
  (shadow 'ImuCalibInfo (find-package "CALIB_INTERFACE_MSGS")))
(unless (find-package "CALIB_INTERFACE_MSGS::IMUCALIBINFO")
  (make-package "CALIB_INTERFACE_MSGS::IMUCALIBINFO"))

(in-package "ROS")
;;//! \htmlinclude ImuCalibInfo.msg.html


(defclass calib_interface_msgs::ImuCalibInfo
  :super ros::object
  :slots (_imu_name _imu_id _r_s2b _t_s2b _imu_error_code _r_s2b_diff _t_s2b_diff ))

(defmethod calib_interface_msgs::ImuCalibInfo
  (:init
   (&key
    ((:imu_name __imu_name) "")
    ((:imu_id __imu_id) 0)
    ((:r_s2b __r_s2b) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:t_s2b __t_s2b) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:imu_error_code __imu_error_code) (instance calib_interface_msgs::ImuCalibDetailedErrorCodeEnum :init))
    ((:r_s2b_diff __r_s2b_diff) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:t_s2b_diff __t_s2b_diff) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _imu_name (string __imu_name))
   (setq _imu_id (round __imu_id))
   (setq _r_s2b __r_s2b)
   (setq _t_s2b __t_s2b)
   (setq _imu_error_code __imu_error_code)
   (setq _r_s2b_diff __r_s2b_diff)
   (setq _t_s2b_diff __t_s2b_diff)
   self)
  (:imu_name
   (&optional __imu_name)
   (if __imu_name (setq _imu_name __imu_name)) _imu_name)
  (:imu_id
   (&optional __imu_id)
   (if __imu_id (setq _imu_id __imu_id)) _imu_id)
  (:r_s2b
   (&optional __r_s2b)
   (if __r_s2b (setq _r_s2b __r_s2b)) _r_s2b)
  (:t_s2b
   (&optional __t_s2b)
   (if __t_s2b (setq _t_s2b __t_s2b)) _t_s2b)
  (:imu_error_code
   (&rest __imu_error_code)
   (if (keywordp (car __imu_error_code))
       (send* _imu_error_code __imu_error_code)
     (progn
       (if __imu_error_code (setq _imu_error_code (car __imu_error_code)))
       _imu_error_code)))
  (:r_s2b_diff
   (&optional __r_s2b_diff)
   (if __r_s2b_diff (setq _r_s2b_diff __r_s2b_diff)) _r_s2b_diff)
  (:t_s2b_diff
   (&optional __t_s2b_diff)
   (if __t_s2b_diff (setq _t_s2b_diff __t_s2b_diff)) _t_s2b_diff)
  (:serialization-length
   ()
   (+
    ;; string _imu_name
    4 (length _imu_name)
    ;; uint32 _imu_id
    4
    ;; float64[] _r_s2b
    (* 8    (length _r_s2b)) 4
    ;; float64[] _t_s2b
    (* 8    (length _t_s2b)) 4
    ;; calib_interface_msgs/ImuCalibDetailedErrorCodeEnum _imu_error_code
    (send _imu_error_code :serialization-length)
    ;; float64[] _r_s2b_diff
    (* 8    (length _r_s2b_diff)) 4
    ;; float64[] _t_s2b_diff
    (* 8    (length _t_s2b_diff)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _imu_name
       (write-long (length _imu_name) s) (princ _imu_name s)
     ;; uint32 _imu_id
       (write-long _imu_id s)
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
     ;; calib_interface_msgs/ImuCalibDetailedErrorCodeEnum _imu_error_code
       (send _imu_error_code :serialize s)
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
   ;; string _imu_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _imu_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _imu_id
     (setq _imu_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
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
   ;; calib_interface_msgs/ImuCalibDetailedErrorCodeEnum _imu_error_code
     (send _imu_error_code :deserialize buf ptr-) (incf ptr- (send _imu_error_code :serialization-length))
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

(setf (get calib_interface_msgs::ImuCalibInfo :md5sum-) "a11ead7028842d13f003681982d3a7e4")
(setf (get calib_interface_msgs::ImuCalibInfo :datatype-) "calib_interface_msgs/ImuCalibInfo")
(setf (get calib_interface_msgs::ImuCalibInfo :definition-)
      "string imu_name
uint32 imu_id
float64[] r_s2b
float64[] t_s2b
calib_interface_msgs/ImuCalibDetailedErrorCodeEnum imu_error_code
float64[] r_s2b_diff
float64[] t_s2b_diff

================================================================================
MSG: calib_interface_msgs/ImuCalibDetailedErrorCodeEnum
uint16 NORMAL = 0
uint16 IMU_CALIB_READ_CONFIG_FAIL = 1
uint16 IMU_CALIB_READ_CALIB_FILE_FAIL = 2
uint16 IMU_CALIB_READ_VEHICLE_PARAM_NO_EXIST = 3
uint16 IMU_CALIB_READ_NORMAL_PARAM_FAIL = 4
uint16 IMU_CALIB_CREATE_RESULT_FILE_FAIL = 5
uint16 IMU_CALIB_IMU_NEED_CALIB_NULL = 6
uint16 IMU_CALIB_EGO_SOLVER_CREATE_FAIL = 1000
uint16 IMU_CALIB_EGO_SOLVER_INIT_FAIL = 1001
uint16 IMU_CALIB_EGO_SOLVER_SET_SAVE_STATUS_LOG_FILES_FAIL = 1002
uint16 IMU_CALIB_EGO_SOLVER_SET_PUSH_DATA_CALLBACKS_FAIL = 1003
uint16 IMU_CALIB_EGO_SOLVER_START_PIPELINE_FAIL = 1004
uint16 IMU_CALIB_INPUT_IMU_DATA_GYRO_ERROR = 2000
uint16 IMU_CALIB_INPUT_IMU_DATA_ACC_ERROR = 2001
uint16 IMU_CALIB_INPUT_IMU_DATA_LOWER_FREQUENCY = 2002
uint16 IMU_CALIB_INPUT_IMU_DATA_DISORDER = 2003
uint16 IMU_CALIB_INPUT_WHEEL_SPEED_DATA_ERROR = 2004
uint16 IMU_CALIB_INPUT_WHEEL_SPEED_DATA_LOWER_FREQUENCY = 2005
uint16 IMU_CALIB_INPUT_WHEEL_SPEED_DATA_DISORDER = 2006
uint16 IMU_CALIB_INPUT_WHEEL_PULSE_DATA_ERROR = 2007
uint16 IMU_CALIB_INPUT_WHEEL_PULSE_DATA_LOWER_FREQUENCY = 2008
uint16 IMU_CALIB_INPUT_WHEEL_PULSE_DATA_DISORDER = 2009
uint16 IMU_CALIB_INPUT_WHEEL_ANGLE_DATA_ERROR = 2010
uint16 IMU_CALIB_INPUT_WHEEL_ANGLE_DATA_LOWER_FREQUENCY = 2011
uint16 IMU_CALIB_INPUT_WHEEL_ANGLE_DATA_DISORDER = 2012
uint16 IMU_CALIB_INPUT_GNSS_DATA_ERROR = 2013
uint16 IMU_CALIB_INPUT_GNSS_DATA_LOWER_FREQUENCY = 2014
uint16 IMU_CALIB_INPUT_GNSS_DATA_DISORDER = 2015
uint16 IMU_CALIB_INPUT_EGO_SET_IMU_DATA_ERROR = 2016
uint16 IMU_CALIB_INPUT_EGO_SET_WHEEL_SPEED_DATA_ERROR = 2017
uint16 IMU_CALIB_INPUT_EGO_SET_WHEEL_PULSE_DATA_ERROR = 2018
uint16 IMU_CALIB_INPUT_EGO_SET_WHEEL_ANGLE_DATA_ERROR = 2019
uint16 IMU_CALIB_INPUT_EGO_SET_GNSS_DATA_ERROR = 2020
uint16 IMU_CALIB_INPUT_EGO_POSE_UNACCESSABLE = 3000
uint16 IMU_CALIB_INPUT_EGO_POSE_INVALID = 3001
uint16 IMU_CALIB_INPUT_EGO_POSE_TIMESTAMP_INVALID = 3002
uint16 IMU_CALIB_INPUT_EGO_POSE_TRANSLATION_INVALID = 3003
uint16 IMU_CALIB_INPUT_EGO_POSE_ROTATION_INVALID = 3004
uint16 IMU_CALIB_INPUT_EGO_POSE_GYRO_INVALID = 3005
uint16 IMU_CALIB_INPUT_EGO_POSE_VELOCITY_INVALID = 3006
uint16 IMU_CALIB_INPUT_EGO_POSE_TRANSLATION_STD_INVALID = 3007
uint16 IMU_CALIB_INPUT_EGO_POSE_ROTATION_STD_INVALID = 3008
uint16 IMU_CALIB_INPUT_EGO_SOLVER_GET_CONVERGENCE_FAIL = 3009
uint16 IMU_CALIB_INPUT_EGO_SOLVER_GET_EXTRINSICS_FAIL = 3010
uint16 IMU_CALIB_GNSS_SIGNAL_WEAK = 3011
uint16 IMU_CALIB_IMU_BIAS_UNESTIMATED = 3012
uint16 IMU_CALIB_COV_INCREASE_ABNORMALLY = 3013
uint16 IMU_CALIB_COV_NOT_DECREASE = 3014
uint16 IMU_CALIB_COV_UNACCESSABLE = 3015
uint16 IMU_CALIB_MIN_MILEAGE_UNREACHED = 3016
uint16 IMU_CALIB_MAX_MILEAGE_UNCONVERGED = 3017
uint16 IMU_CALIB_INSUFFICIENT_SMOOTH_TURNS = 4000
uint16 IMU_CALIB_INSUFFICIENT_STRIGHT_DRIVE = 4001
uint16 IMU_CALIB_DRIVE_ACCELERATION_DECELERATION_NOT_STRAIGHT = 4002
uint16 IMU_CALIB_DRIVE_TURN_NOT_SMOOTH = 4003
uint16 IMU_CALIB_UNSTATIC_LAUNCH = 4004
uint16 IMU_CALIB_NOT_BACK_TO_ORIGIN = 4005
uint16 IMU_CALIB_DRIVE_ROUTE_BUMPY = 4006
uint16 IMU_CALIB_DRIVE_ROUTE_INCLINED = 4007
uint16 IMU_CALIB_DRIVE_ROUTE_SLIPPERY = 4008
uint16 IMU_CALIB_NHC_CHECK_FAIL = 5000
uint16 IMU_CALIB_ELEVATION_CHECK_FAIL = 5001
uint16 IMU_CALIB_IMU_UPDATE_PARAM_FAILED = 5002
uint16 IMU_CALIB_IMU_SAVE_PARAM_FAILED = 5003
uint16 IMU_CALIB_ABNORMAL_ROTATION_ERROR_WITH_INIT = 5004
uint16 IMU_CALIB_ABNORMAL_TRANSLATION_ERROR_WITH_INIT = 5005
uint16 IMU_CALIB_LARGE_DEVIATION_IN_DESIGNED_ROTATION = 5006
uint16 IMU_CALIB_LARGE_DEVIATION_CALIB_AND_VALIDATOR = 5007
uint16 IMU_CALIB_PUB_RESULT_FAIL = 5008
uint16 IMU_CALIB_STOP_ERROR = 5009
uint16 IMU_LOSS_FRAME = 6001
uint16 IMU_LARGE_NOISE = 6002
uint16 IMU_LARGE_BIAS = 6003
uint16 IMU_READ_INIT_FILE_FAIL = 6004
uint16 IMU_OUTPUT_FILE_FAIL = 6005
uint16 IMU_ABNORMAL_ROTATION_WITH_INIT = 6006
uint16 value

")



(provide :calib_interface_msgs/ImuCalibInfo "a11ead7028842d13f003681982d3a7e4")


