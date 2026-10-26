; Auto-generated. Do not edit!


(cl:in-package calib_interface_msgs-msg)


;//! \htmlinclude ImuCalibReport.msg.html

(cl:defclass <ImuCalibReport> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (imu_calib_data
    :reader imu_calib_data
    :initarg :imu_calib_data
    :type (cl:vector calib_interface_msgs-msg:ImuCalibInfo)
   :initform (cl:make-array 0 :element-type 'calib_interface_msgs-msg:ImuCalibInfo :initial-element (cl:make-instance 'calib_interface_msgs-msg:ImuCalibInfo)))
   (travel_distance
    :reader travel_distance
    :initarg :travel_distance
    :type cl:float
    :initform 0.0)
   (post_processing_progress
    :reader post_processing_progress
    :initarg :post_processing_progress
    :type cl:float
    :initform 0.0)
   (error_code
    :reader error_code
    :initarg :error_code
    :type calib_interface_msgs-msg:ImuCalibDetailedErrorCodeEnum
    :initform (cl:make-instance 'calib_interface_msgs-msg:ImuCalibDetailedErrorCodeEnum)))
)

(cl:defclass ImuCalibReport (<ImuCalibReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImuCalibReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImuCalibReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name calib_interface_msgs-msg:<ImuCalibReport> is deprecated: use calib_interface_msgs-msg:ImuCalibReport instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <ImuCalibReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:available-val is deprecated.  Use calib_interface_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'imu_calib_data-val :lambda-list '(m))
(cl:defmethod imu_calib_data-val ((m <ImuCalibReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:imu_calib_data-val is deprecated.  Use calib_interface_msgs-msg:imu_calib_data instead.")
  (imu_calib_data m))

(cl:ensure-generic-function 'travel_distance-val :lambda-list '(m))
(cl:defmethod travel_distance-val ((m <ImuCalibReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:travel_distance-val is deprecated.  Use calib_interface_msgs-msg:travel_distance instead.")
  (travel_distance m))

(cl:ensure-generic-function 'post_processing_progress-val :lambda-list '(m))
(cl:defmethod post_processing_progress-val ((m <ImuCalibReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:post_processing_progress-val is deprecated.  Use calib_interface_msgs-msg:post_processing_progress instead.")
  (post_processing_progress m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <ImuCalibReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:error_code-val is deprecated.  Use calib_interface_msgs-msg:error_code instead.")
  (error_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImuCalibReport>) ostream)
  "Serializes a message object of type '<ImuCalibReport>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'imu_calib_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'imu_calib_data))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'travel_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'post_processing_progress))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'error_code) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImuCalibReport>) istream)
  "Deserializes a message object of type '<ImuCalibReport>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'imu_calib_data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'imu_calib_data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'calib_interface_msgs-msg:ImuCalibInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'travel_distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'post_processing_progress) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'error_code) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImuCalibReport>)))
  "Returns string type for a message object of type '<ImuCalibReport>"
  "calib_interface_msgs/ImuCalibReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImuCalibReport)))
  "Returns string type for a message object of type 'ImuCalibReport"
  "calib_interface_msgs/ImuCalibReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImuCalibReport>)))
  "Returns md5sum for a message object of type '<ImuCalibReport>"
  "bf99393d164412e4639df882f0e90cc8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImuCalibReport)))
  "Returns md5sum for a message object of type 'ImuCalibReport"
  "bf99393d164412e4639df882f0e90cc8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImuCalibReport>)))
  "Returns full string definition for message of type '<ImuCalibReport>"
  (cl:format cl:nil "uint8 available~%calib_interface_msgs/ImuCalibInfo[] imu_calib_data~%float32 travel_distance~%float32 post_processing_progress~%calib_interface_msgs/ImuCalibDetailedErrorCodeEnum error_code~%~%================================================================================~%MSG: calib_interface_msgs/ImuCalibInfo~%string imu_name~%uint32 imu_id~%float64[] r_s2b~%float64[] t_s2b~%calib_interface_msgs/ImuCalibDetailedErrorCodeEnum imu_error_code~%float64[] r_s2b_diff~%float64[] t_s2b_diff~%~%================================================================================~%MSG: calib_interface_msgs/ImuCalibDetailedErrorCodeEnum~%uint16 NORMAL = 0~%uint16 IMU_CALIB_READ_CONFIG_FAIL = 1~%uint16 IMU_CALIB_READ_CALIB_FILE_FAIL = 2~%uint16 IMU_CALIB_READ_VEHICLE_PARAM_NO_EXIST = 3~%uint16 IMU_CALIB_READ_NORMAL_PARAM_FAIL = 4~%uint16 IMU_CALIB_CREATE_RESULT_FILE_FAIL = 5~%uint16 IMU_CALIB_IMU_NEED_CALIB_NULL = 6~%uint16 IMU_CALIB_EGO_SOLVER_CREATE_FAIL = 1000~%uint16 IMU_CALIB_EGO_SOLVER_INIT_FAIL = 1001~%uint16 IMU_CALIB_EGO_SOLVER_SET_SAVE_STATUS_LOG_FILES_FAIL = 1002~%uint16 IMU_CALIB_EGO_SOLVER_SET_PUSH_DATA_CALLBACKS_FAIL = 1003~%uint16 IMU_CALIB_EGO_SOLVER_START_PIPELINE_FAIL = 1004~%uint16 IMU_CALIB_INPUT_IMU_DATA_GYRO_ERROR = 2000~%uint16 IMU_CALIB_INPUT_IMU_DATA_ACC_ERROR = 2001~%uint16 IMU_CALIB_INPUT_IMU_DATA_LOWER_FREQUENCY = 2002~%uint16 IMU_CALIB_INPUT_IMU_DATA_DISORDER = 2003~%uint16 IMU_CALIB_INPUT_WHEEL_SPEED_DATA_ERROR = 2004~%uint16 IMU_CALIB_INPUT_WHEEL_SPEED_DATA_LOWER_FREQUENCY = 2005~%uint16 IMU_CALIB_INPUT_WHEEL_SPEED_DATA_DISORDER = 2006~%uint16 IMU_CALIB_INPUT_WHEEL_PULSE_DATA_ERROR = 2007~%uint16 IMU_CALIB_INPUT_WHEEL_PULSE_DATA_LOWER_FREQUENCY = 2008~%uint16 IMU_CALIB_INPUT_WHEEL_PULSE_DATA_DISORDER = 2009~%uint16 IMU_CALIB_INPUT_WHEEL_ANGLE_DATA_ERROR = 2010~%uint16 IMU_CALIB_INPUT_WHEEL_ANGLE_DATA_LOWER_FREQUENCY = 2011~%uint16 IMU_CALIB_INPUT_WHEEL_ANGLE_DATA_DISORDER = 2012~%uint16 IMU_CALIB_INPUT_GNSS_DATA_ERROR = 2013~%uint16 IMU_CALIB_INPUT_GNSS_DATA_LOWER_FREQUENCY = 2014~%uint16 IMU_CALIB_INPUT_GNSS_DATA_DISORDER = 2015~%uint16 IMU_CALIB_INPUT_EGO_SET_IMU_DATA_ERROR = 2016~%uint16 IMU_CALIB_INPUT_EGO_SET_WHEEL_SPEED_DATA_ERROR = 2017~%uint16 IMU_CALIB_INPUT_EGO_SET_WHEEL_PULSE_DATA_ERROR = 2018~%uint16 IMU_CALIB_INPUT_EGO_SET_WHEEL_ANGLE_DATA_ERROR = 2019~%uint16 IMU_CALIB_INPUT_EGO_SET_GNSS_DATA_ERROR = 2020~%uint16 IMU_CALIB_INPUT_EGO_POSE_UNACCESSABLE = 3000~%uint16 IMU_CALIB_INPUT_EGO_POSE_INVALID = 3001~%uint16 IMU_CALIB_INPUT_EGO_POSE_TIMESTAMP_INVALID = 3002~%uint16 IMU_CALIB_INPUT_EGO_POSE_TRANSLATION_INVALID = 3003~%uint16 IMU_CALIB_INPUT_EGO_POSE_ROTATION_INVALID = 3004~%uint16 IMU_CALIB_INPUT_EGO_POSE_GYRO_INVALID = 3005~%uint16 IMU_CALIB_INPUT_EGO_POSE_VELOCITY_INVALID = 3006~%uint16 IMU_CALIB_INPUT_EGO_POSE_TRANSLATION_STD_INVALID = 3007~%uint16 IMU_CALIB_INPUT_EGO_POSE_ROTATION_STD_INVALID = 3008~%uint16 IMU_CALIB_INPUT_EGO_SOLVER_GET_CONVERGENCE_FAIL = 3009~%uint16 IMU_CALIB_INPUT_EGO_SOLVER_GET_EXTRINSICS_FAIL = 3010~%uint16 IMU_CALIB_GNSS_SIGNAL_WEAK = 3011~%uint16 IMU_CALIB_IMU_BIAS_UNESTIMATED = 3012~%uint16 IMU_CALIB_COV_INCREASE_ABNORMALLY = 3013~%uint16 IMU_CALIB_COV_NOT_DECREASE = 3014~%uint16 IMU_CALIB_COV_UNACCESSABLE = 3015~%uint16 IMU_CALIB_MIN_MILEAGE_UNREACHED = 3016~%uint16 IMU_CALIB_MAX_MILEAGE_UNCONVERGED = 3017~%uint16 IMU_CALIB_INSUFFICIENT_SMOOTH_TURNS = 4000~%uint16 IMU_CALIB_INSUFFICIENT_STRIGHT_DRIVE = 4001~%uint16 IMU_CALIB_DRIVE_ACCELERATION_DECELERATION_NOT_STRAIGHT = 4002~%uint16 IMU_CALIB_DRIVE_TURN_NOT_SMOOTH = 4003~%uint16 IMU_CALIB_UNSTATIC_LAUNCH = 4004~%uint16 IMU_CALIB_NOT_BACK_TO_ORIGIN = 4005~%uint16 IMU_CALIB_DRIVE_ROUTE_BUMPY = 4006~%uint16 IMU_CALIB_DRIVE_ROUTE_INCLINED = 4007~%uint16 IMU_CALIB_DRIVE_ROUTE_SLIPPERY = 4008~%uint16 IMU_CALIB_NHC_CHECK_FAIL = 5000~%uint16 IMU_CALIB_ELEVATION_CHECK_FAIL = 5001~%uint16 IMU_CALIB_IMU_UPDATE_PARAM_FAILED = 5002~%uint16 IMU_CALIB_IMU_SAVE_PARAM_FAILED = 5003~%uint16 IMU_CALIB_ABNORMAL_ROTATION_ERROR_WITH_INIT = 5004~%uint16 IMU_CALIB_ABNORMAL_TRANSLATION_ERROR_WITH_INIT = 5005~%uint16 IMU_CALIB_LARGE_DEVIATION_IN_DESIGNED_ROTATION = 5006~%uint16 IMU_CALIB_LARGE_DEVIATION_CALIB_AND_VALIDATOR = 5007~%uint16 IMU_CALIB_PUB_RESULT_FAIL = 5008~%uint16 IMU_CALIB_STOP_ERROR = 5009~%uint16 IMU_LOSS_FRAME = 6001~%uint16 IMU_LARGE_NOISE = 6002~%uint16 IMU_LARGE_BIAS = 6003~%uint16 IMU_READ_INIT_FILE_FAIL = 6004~%uint16 IMU_OUTPUT_FILE_FAIL = 6005~%uint16 IMU_ABNORMAL_ROTATION_WITH_INIT = 6006~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImuCalibReport)))
  "Returns full string definition for message of type 'ImuCalibReport"
  (cl:format cl:nil "uint8 available~%calib_interface_msgs/ImuCalibInfo[] imu_calib_data~%float32 travel_distance~%float32 post_processing_progress~%calib_interface_msgs/ImuCalibDetailedErrorCodeEnum error_code~%~%================================================================================~%MSG: calib_interface_msgs/ImuCalibInfo~%string imu_name~%uint32 imu_id~%float64[] r_s2b~%float64[] t_s2b~%calib_interface_msgs/ImuCalibDetailedErrorCodeEnum imu_error_code~%float64[] r_s2b_diff~%float64[] t_s2b_diff~%~%================================================================================~%MSG: calib_interface_msgs/ImuCalibDetailedErrorCodeEnum~%uint16 NORMAL = 0~%uint16 IMU_CALIB_READ_CONFIG_FAIL = 1~%uint16 IMU_CALIB_READ_CALIB_FILE_FAIL = 2~%uint16 IMU_CALIB_READ_VEHICLE_PARAM_NO_EXIST = 3~%uint16 IMU_CALIB_READ_NORMAL_PARAM_FAIL = 4~%uint16 IMU_CALIB_CREATE_RESULT_FILE_FAIL = 5~%uint16 IMU_CALIB_IMU_NEED_CALIB_NULL = 6~%uint16 IMU_CALIB_EGO_SOLVER_CREATE_FAIL = 1000~%uint16 IMU_CALIB_EGO_SOLVER_INIT_FAIL = 1001~%uint16 IMU_CALIB_EGO_SOLVER_SET_SAVE_STATUS_LOG_FILES_FAIL = 1002~%uint16 IMU_CALIB_EGO_SOLVER_SET_PUSH_DATA_CALLBACKS_FAIL = 1003~%uint16 IMU_CALIB_EGO_SOLVER_START_PIPELINE_FAIL = 1004~%uint16 IMU_CALIB_INPUT_IMU_DATA_GYRO_ERROR = 2000~%uint16 IMU_CALIB_INPUT_IMU_DATA_ACC_ERROR = 2001~%uint16 IMU_CALIB_INPUT_IMU_DATA_LOWER_FREQUENCY = 2002~%uint16 IMU_CALIB_INPUT_IMU_DATA_DISORDER = 2003~%uint16 IMU_CALIB_INPUT_WHEEL_SPEED_DATA_ERROR = 2004~%uint16 IMU_CALIB_INPUT_WHEEL_SPEED_DATA_LOWER_FREQUENCY = 2005~%uint16 IMU_CALIB_INPUT_WHEEL_SPEED_DATA_DISORDER = 2006~%uint16 IMU_CALIB_INPUT_WHEEL_PULSE_DATA_ERROR = 2007~%uint16 IMU_CALIB_INPUT_WHEEL_PULSE_DATA_LOWER_FREQUENCY = 2008~%uint16 IMU_CALIB_INPUT_WHEEL_PULSE_DATA_DISORDER = 2009~%uint16 IMU_CALIB_INPUT_WHEEL_ANGLE_DATA_ERROR = 2010~%uint16 IMU_CALIB_INPUT_WHEEL_ANGLE_DATA_LOWER_FREQUENCY = 2011~%uint16 IMU_CALIB_INPUT_WHEEL_ANGLE_DATA_DISORDER = 2012~%uint16 IMU_CALIB_INPUT_GNSS_DATA_ERROR = 2013~%uint16 IMU_CALIB_INPUT_GNSS_DATA_LOWER_FREQUENCY = 2014~%uint16 IMU_CALIB_INPUT_GNSS_DATA_DISORDER = 2015~%uint16 IMU_CALIB_INPUT_EGO_SET_IMU_DATA_ERROR = 2016~%uint16 IMU_CALIB_INPUT_EGO_SET_WHEEL_SPEED_DATA_ERROR = 2017~%uint16 IMU_CALIB_INPUT_EGO_SET_WHEEL_PULSE_DATA_ERROR = 2018~%uint16 IMU_CALIB_INPUT_EGO_SET_WHEEL_ANGLE_DATA_ERROR = 2019~%uint16 IMU_CALIB_INPUT_EGO_SET_GNSS_DATA_ERROR = 2020~%uint16 IMU_CALIB_INPUT_EGO_POSE_UNACCESSABLE = 3000~%uint16 IMU_CALIB_INPUT_EGO_POSE_INVALID = 3001~%uint16 IMU_CALIB_INPUT_EGO_POSE_TIMESTAMP_INVALID = 3002~%uint16 IMU_CALIB_INPUT_EGO_POSE_TRANSLATION_INVALID = 3003~%uint16 IMU_CALIB_INPUT_EGO_POSE_ROTATION_INVALID = 3004~%uint16 IMU_CALIB_INPUT_EGO_POSE_GYRO_INVALID = 3005~%uint16 IMU_CALIB_INPUT_EGO_POSE_VELOCITY_INVALID = 3006~%uint16 IMU_CALIB_INPUT_EGO_POSE_TRANSLATION_STD_INVALID = 3007~%uint16 IMU_CALIB_INPUT_EGO_POSE_ROTATION_STD_INVALID = 3008~%uint16 IMU_CALIB_INPUT_EGO_SOLVER_GET_CONVERGENCE_FAIL = 3009~%uint16 IMU_CALIB_INPUT_EGO_SOLVER_GET_EXTRINSICS_FAIL = 3010~%uint16 IMU_CALIB_GNSS_SIGNAL_WEAK = 3011~%uint16 IMU_CALIB_IMU_BIAS_UNESTIMATED = 3012~%uint16 IMU_CALIB_COV_INCREASE_ABNORMALLY = 3013~%uint16 IMU_CALIB_COV_NOT_DECREASE = 3014~%uint16 IMU_CALIB_COV_UNACCESSABLE = 3015~%uint16 IMU_CALIB_MIN_MILEAGE_UNREACHED = 3016~%uint16 IMU_CALIB_MAX_MILEAGE_UNCONVERGED = 3017~%uint16 IMU_CALIB_INSUFFICIENT_SMOOTH_TURNS = 4000~%uint16 IMU_CALIB_INSUFFICIENT_STRIGHT_DRIVE = 4001~%uint16 IMU_CALIB_DRIVE_ACCELERATION_DECELERATION_NOT_STRAIGHT = 4002~%uint16 IMU_CALIB_DRIVE_TURN_NOT_SMOOTH = 4003~%uint16 IMU_CALIB_UNSTATIC_LAUNCH = 4004~%uint16 IMU_CALIB_NOT_BACK_TO_ORIGIN = 4005~%uint16 IMU_CALIB_DRIVE_ROUTE_BUMPY = 4006~%uint16 IMU_CALIB_DRIVE_ROUTE_INCLINED = 4007~%uint16 IMU_CALIB_DRIVE_ROUTE_SLIPPERY = 4008~%uint16 IMU_CALIB_NHC_CHECK_FAIL = 5000~%uint16 IMU_CALIB_ELEVATION_CHECK_FAIL = 5001~%uint16 IMU_CALIB_IMU_UPDATE_PARAM_FAILED = 5002~%uint16 IMU_CALIB_IMU_SAVE_PARAM_FAILED = 5003~%uint16 IMU_CALIB_ABNORMAL_ROTATION_ERROR_WITH_INIT = 5004~%uint16 IMU_CALIB_ABNORMAL_TRANSLATION_ERROR_WITH_INIT = 5005~%uint16 IMU_CALIB_LARGE_DEVIATION_IN_DESIGNED_ROTATION = 5006~%uint16 IMU_CALIB_LARGE_DEVIATION_CALIB_AND_VALIDATOR = 5007~%uint16 IMU_CALIB_PUB_RESULT_FAIL = 5008~%uint16 IMU_CALIB_STOP_ERROR = 5009~%uint16 IMU_LOSS_FRAME = 6001~%uint16 IMU_LARGE_NOISE = 6002~%uint16 IMU_LARGE_BIAS = 6003~%uint16 IMU_READ_INIT_FILE_FAIL = 6004~%uint16 IMU_OUTPUT_FILE_FAIL = 6005~%uint16 IMU_ABNORMAL_ROTATION_WITH_INIT = 6006~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImuCalibReport>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'imu_calib_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'error_code))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImuCalibReport>))
  "Converts a ROS message object to a list"
  (cl:list 'ImuCalibReport
    (cl:cons ':available (available msg))
    (cl:cons ':imu_calib_data (imu_calib_data msg))
    (cl:cons ':travel_distance (travel_distance msg))
    (cl:cons ':post_processing_progress (post_processing_progress msg))
    (cl:cons ':error_code (error_code msg))
))
