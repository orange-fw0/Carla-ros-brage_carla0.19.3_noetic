; Auto-generated. Do not edit!


(cl:in-package calib_interface_msgs-msg)


;//! \htmlinclude PlacIMUCalibResults.msg.html

(cl:defclass <PlacIMUCalibResults> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (calib_info
    :reader calib_info
    :initarg :calib_info
    :type (cl:vector calib_interface_msgs-msg:ImuCalibInfo)
   :initform (cl:make-array 0 :element-type 'calib_interface_msgs-msg:ImuCalibInfo :initial-element (cl:make-instance 'calib_interface_msgs-msg:ImuCalibInfo))))
)

(cl:defclass PlacIMUCalibResults (<PlacIMUCalibResults>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlacIMUCalibResults>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlacIMUCalibResults)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name calib_interface_msgs-msg:<PlacIMUCalibResults> is deprecated: use calib_interface_msgs-msg:PlacIMUCalibResults instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PlacIMUCalibResults>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:header-val is deprecated.  Use calib_interface_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'calib_info-val :lambda-list '(m))
(cl:defmethod calib_info-val ((m <PlacIMUCalibResults>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:calib_info-val is deprecated.  Use calib_interface_msgs-msg:calib_info instead.")
  (calib_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlacIMUCalibResults>) ostream)
  "Serializes a message object of type '<PlacIMUCalibResults>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'calib_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'calib_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlacIMUCalibResults>) istream)
  "Deserializes a message object of type '<PlacIMUCalibResults>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'calib_info) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'calib_info)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'calib_interface_msgs-msg:ImuCalibInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlacIMUCalibResults>)))
  "Returns string type for a message object of type '<PlacIMUCalibResults>"
  "calib_interface_msgs/PlacIMUCalibResults")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlacIMUCalibResults)))
  "Returns string type for a message object of type 'PlacIMUCalibResults"
  "calib_interface_msgs/PlacIMUCalibResults")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlacIMUCalibResults>)))
  "Returns md5sum for a message object of type '<PlacIMUCalibResults>"
  "ab50f0657cb776f71b74427727fe334e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlacIMUCalibResults)))
  "Returns md5sum for a message object of type 'PlacIMUCalibResults"
  "ab50f0657cb776f71b74427727fe334e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlacIMUCalibResults>)))
  "Returns full string definition for message of type '<PlacIMUCalibResults>"
  (cl:format cl:nil "std_msgs/Header header~%calib_interface_msgs/ImuCalibInfo[] calib_info~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: calib_interface_msgs/ImuCalibInfo~%string imu_name~%uint32 imu_id~%float64[] r_s2b~%float64[] t_s2b~%calib_interface_msgs/ImuCalibDetailedErrorCodeEnum imu_error_code~%float64[] r_s2b_diff~%float64[] t_s2b_diff~%~%================================================================================~%MSG: calib_interface_msgs/ImuCalibDetailedErrorCodeEnum~%uint16 NORMAL = 0~%uint16 IMU_CALIB_READ_CONFIG_FAIL = 1~%uint16 IMU_CALIB_READ_CALIB_FILE_FAIL = 2~%uint16 IMU_CALIB_READ_VEHICLE_PARAM_NO_EXIST = 3~%uint16 IMU_CALIB_READ_NORMAL_PARAM_FAIL = 4~%uint16 IMU_CALIB_CREATE_RESULT_FILE_FAIL = 5~%uint16 IMU_CALIB_IMU_NEED_CALIB_NULL = 6~%uint16 IMU_CALIB_EGO_SOLVER_CREATE_FAIL = 1000~%uint16 IMU_CALIB_EGO_SOLVER_INIT_FAIL = 1001~%uint16 IMU_CALIB_EGO_SOLVER_SET_SAVE_STATUS_LOG_FILES_FAIL = 1002~%uint16 IMU_CALIB_EGO_SOLVER_SET_PUSH_DATA_CALLBACKS_FAIL = 1003~%uint16 IMU_CALIB_EGO_SOLVER_START_PIPELINE_FAIL = 1004~%uint16 IMU_CALIB_INPUT_IMU_DATA_GYRO_ERROR = 2000~%uint16 IMU_CALIB_INPUT_IMU_DATA_ACC_ERROR = 2001~%uint16 IMU_CALIB_INPUT_IMU_DATA_LOWER_FREQUENCY = 2002~%uint16 IMU_CALIB_INPUT_IMU_DATA_DISORDER = 2003~%uint16 IMU_CALIB_INPUT_WHEEL_SPEED_DATA_ERROR = 2004~%uint16 IMU_CALIB_INPUT_WHEEL_SPEED_DATA_LOWER_FREQUENCY = 2005~%uint16 IMU_CALIB_INPUT_WHEEL_SPEED_DATA_DISORDER = 2006~%uint16 IMU_CALIB_INPUT_WHEEL_PULSE_DATA_ERROR = 2007~%uint16 IMU_CALIB_INPUT_WHEEL_PULSE_DATA_LOWER_FREQUENCY = 2008~%uint16 IMU_CALIB_INPUT_WHEEL_PULSE_DATA_DISORDER = 2009~%uint16 IMU_CALIB_INPUT_WHEEL_ANGLE_DATA_ERROR = 2010~%uint16 IMU_CALIB_INPUT_WHEEL_ANGLE_DATA_LOWER_FREQUENCY = 2011~%uint16 IMU_CALIB_INPUT_WHEEL_ANGLE_DATA_DISORDER = 2012~%uint16 IMU_CALIB_INPUT_GNSS_DATA_ERROR = 2013~%uint16 IMU_CALIB_INPUT_GNSS_DATA_LOWER_FREQUENCY = 2014~%uint16 IMU_CALIB_INPUT_GNSS_DATA_DISORDER = 2015~%uint16 IMU_CALIB_INPUT_EGO_SET_IMU_DATA_ERROR = 2016~%uint16 IMU_CALIB_INPUT_EGO_SET_WHEEL_SPEED_DATA_ERROR = 2017~%uint16 IMU_CALIB_INPUT_EGO_SET_WHEEL_PULSE_DATA_ERROR = 2018~%uint16 IMU_CALIB_INPUT_EGO_SET_WHEEL_ANGLE_DATA_ERROR = 2019~%uint16 IMU_CALIB_INPUT_EGO_SET_GNSS_DATA_ERROR = 2020~%uint16 IMU_CALIB_INPUT_EGO_POSE_UNACCESSABLE = 3000~%uint16 IMU_CALIB_INPUT_EGO_POSE_INVALID = 3001~%uint16 IMU_CALIB_INPUT_EGO_POSE_TIMESTAMP_INVALID = 3002~%uint16 IMU_CALIB_INPUT_EGO_POSE_TRANSLATION_INVALID = 3003~%uint16 IMU_CALIB_INPUT_EGO_POSE_ROTATION_INVALID = 3004~%uint16 IMU_CALIB_INPUT_EGO_POSE_GYRO_INVALID = 3005~%uint16 IMU_CALIB_INPUT_EGO_POSE_VELOCITY_INVALID = 3006~%uint16 IMU_CALIB_INPUT_EGO_POSE_TRANSLATION_STD_INVALID = 3007~%uint16 IMU_CALIB_INPUT_EGO_POSE_ROTATION_STD_INVALID = 3008~%uint16 IMU_CALIB_INPUT_EGO_SOLVER_GET_CONVERGENCE_FAIL = 3009~%uint16 IMU_CALIB_INPUT_EGO_SOLVER_GET_EXTRINSICS_FAIL = 3010~%uint16 IMU_CALIB_GNSS_SIGNAL_WEAK = 3011~%uint16 IMU_CALIB_IMU_BIAS_UNESTIMATED = 3012~%uint16 IMU_CALIB_COV_INCREASE_ABNORMALLY = 3013~%uint16 IMU_CALIB_COV_NOT_DECREASE = 3014~%uint16 IMU_CALIB_COV_UNACCESSABLE = 3015~%uint16 IMU_CALIB_MIN_MILEAGE_UNREACHED = 3016~%uint16 IMU_CALIB_MAX_MILEAGE_UNCONVERGED = 3017~%uint16 IMU_CALIB_INSUFFICIENT_SMOOTH_TURNS = 4000~%uint16 IMU_CALIB_INSUFFICIENT_STRIGHT_DRIVE = 4001~%uint16 IMU_CALIB_DRIVE_ACCELERATION_DECELERATION_NOT_STRAIGHT = 4002~%uint16 IMU_CALIB_DRIVE_TURN_NOT_SMOOTH = 4003~%uint16 IMU_CALIB_UNSTATIC_LAUNCH = 4004~%uint16 IMU_CALIB_NOT_BACK_TO_ORIGIN = 4005~%uint16 IMU_CALIB_DRIVE_ROUTE_BUMPY = 4006~%uint16 IMU_CALIB_DRIVE_ROUTE_INCLINED = 4007~%uint16 IMU_CALIB_DRIVE_ROUTE_SLIPPERY = 4008~%uint16 IMU_CALIB_NHC_CHECK_FAIL = 5000~%uint16 IMU_CALIB_ELEVATION_CHECK_FAIL = 5001~%uint16 IMU_CALIB_IMU_UPDATE_PARAM_FAILED = 5002~%uint16 IMU_CALIB_IMU_SAVE_PARAM_FAILED = 5003~%uint16 IMU_CALIB_ABNORMAL_ROTATION_ERROR_WITH_INIT = 5004~%uint16 IMU_CALIB_ABNORMAL_TRANSLATION_ERROR_WITH_INIT = 5005~%uint16 IMU_CALIB_LARGE_DEVIATION_IN_DESIGNED_ROTATION = 5006~%uint16 IMU_CALIB_LARGE_DEVIATION_CALIB_AND_VALIDATOR = 5007~%uint16 IMU_CALIB_PUB_RESULT_FAIL = 5008~%uint16 IMU_CALIB_STOP_ERROR = 5009~%uint16 IMU_LOSS_FRAME = 6001~%uint16 IMU_LARGE_NOISE = 6002~%uint16 IMU_LARGE_BIAS = 6003~%uint16 IMU_READ_INIT_FILE_FAIL = 6004~%uint16 IMU_OUTPUT_FILE_FAIL = 6005~%uint16 IMU_ABNORMAL_ROTATION_WITH_INIT = 6006~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlacIMUCalibResults)))
  "Returns full string definition for message of type 'PlacIMUCalibResults"
  (cl:format cl:nil "std_msgs/Header header~%calib_interface_msgs/ImuCalibInfo[] calib_info~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: calib_interface_msgs/ImuCalibInfo~%string imu_name~%uint32 imu_id~%float64[] r_s2b~%float64[] t_s2b~%calib_interface_msgs/ImuCalibDetailedErrorCodeEnum imu_error_code~%float64[] r_s2b_diff~%float64[] t_s2b_diff~%~%================================================================================~%MSG: calib_interface_msgs/ImuCalibDetailedErrorCodeEnum~%uint16 NORMAL = 0~%uint16 IMU_CALIB_READ_CONFIG_FAIL = 1~%uint16 IMU_CALIB_READ_CALIB_FILE_FAIL = 2~%uint16 IMU_CALIB_READ_VEHICLE_PARAM_NO_EXIST = 3~%uint16 IMU_CALIB_READ_NORMAL_PARAM_FAIL = 4~%uint16 IMU_CALIB_CREATE_RESULT_FILE_FAIL = 5~%uint16 IMU_CALIB_IMU_NEED_CALIB_NULL = 6~%uint16 IMU_CALIB_EGO_SOLVER_CREATE_FAIL = 1000~%uint16 IMU_CALIB_EGO_SOLVER_INIT_FAIL = 1001~%uint16 IMU_CALIB_EGO_SOLVER_SET_SAVE_STATUS_LOG_FILES_FAIL = 1002~%uint16 IMU_CALIB_EGO_SOLVER_SET_PUSH_DATA_CALLBACKS_FAIL = 1003~%uint16 IMU_CALIB_EGO_SOLVER_START_PIPELINE_FAIL = 1004~%uint16 IMU_CALIB_INPUT_IMU_DATA_GYRO_ERROR = 2000~%uint16 IMU_CALIB_INPUT_IMU_DATA_ACC_ERROR = 2001~%uint16 IMU_CALIB_INPUT_IMU_DATA_LOWER_FREQUENCY = 2002~%uint16 IMU_CALIB_INPUT_IMU_DATA_DISORDER = 2003~%uint16 IMU_CALIB_INPUT_WHEEL_SPEED_DATA_ERROR = 2004~%uint16 IMU_CALIB_INPUT_WHEEL_SPEED_DATA_LOWER_FREQUENCY = 2005~%uint16 IMU_CALIB_INPUT_WHEEL_SPEED_DATA_DISORDER = 2006~%uint16 IMU_CALIB_INPUT_WHEEL_PULSE_DATA_ERROR = 2007~%uint16 IMU_CALIB_INPUT_WHEEL_PULSE_DATA_LOWER_FREQUENCY = 2008~%uint16 IMU_CALIB_INPUT_WHEEL_PULSE_DATA_DISORDER = 2009~%uint16 IMU_CALIB_INPUT_WHEEL_ANGLE_DATA_ERROR = 2010~%uint16 IMU_CALIB_INPUT_WHEEL_ANGLE_DATA_LOWER_FREQUENCY = 2011~%uint16 IMU_CALIB_INPUT_WHEEL_ANGLE_DATA_DISORDER = 2012~%uint16 IMU_CALIB_INPUT_GNSS_DATA_ERROR = 2013~%uint16 IMU_CALIB_INPUT_GNSS_DATA_LOWER_FREQUENCY = 2014~%uint16 IMU_CALIB_INPUT_GNSS_DATA_DISORDER = 2015~%uint16 IMU_CALIB_INPUT_EGO_SET_IMU_DATA_ERROR = 2016~%uint16 IMU_CALIB_INPUT_EGO_SET_WHEEL_SPEED_DATA_ERROR = 2017~%uint16 IMU_CALIB_INPUT_EGO_SET_WHEEL_PULSE_DATA_ERROR = 2018~%uint16 IMU_CALIB_INPUT_EGO_SET_WHEEL_ANGLE_DATA_ERROR = 2019~%uint16 IMU_CALIB_INPUT_EGO_SET_GNSS_DATA_ERROR = 2020~%uint16 IMU_CALIB_INPUT_EGO_POSE_UNACCESSABLE = 3000~%uint16 IMU_CALIB_INPUT_EGO_POSE_INVALID = 3001~%uint16 IMU_CALIB_INPUT_EGO_POSE_TIMESTAMP_INVALID = 3002~%uint16 IMU_CALIB_INPUT_EGO_POSE_TRANSLATION_INVALID = 3003~%uint16 IMU_CALIB_INPUT_EGO_POSE_ROTATION_INVALID = 3004~%uint16 IMU_CALIB_INPUT_EGO_POSE_GYRO_INVALID = 3005~%uint16 IMU_CALIB_INPUT_EGO_POSE_VELOCITY_INVALID = 3006~%uint16 IMU_CALIB_INPUT_EGO_POSE_TRANSLATION_STD_INVALID = 3007~%uint16 IMU_CALIB_INPUT_EGO_POSE_ROTATION_STD_INVALID = 3008~%uint16 IMU_CALIB_INPUT_EGO_SOLVER_GET_CONVERGENCE_FAIL = 3009~%uint16 IMU_CALIB_INPUT_EGO_SOLVER_GET_EXTRINSICS_FAIL = 3010~%uint16 IMU_CALIB_GNSS_SIGNAL_WEAK = 3011~%uint16 IMU_CALIB_IMU_BIAS_UNESTIMATED = 3012~%uint16 IMU_CALIB_COV_INCREASE_ABNORMALLY = 3013~%uint16 IMU_CALIB_COV_NOT_DECREASE = 3014~%uint16 IMU_CALIB_COV_UNACCESSABLE = 3015~%uint16 IMU_CALIB_MIN_MILEAGE_UNREACHED = 3016~%uint16 IMU_CALIB_MAX_MILEAGE_UNCONVERGED = 3017~%uint16 IMU_CALIB_INSUFFICIENT_SMOOTH_TURNS = 4000~%uint16 IMU_CALIB_INSUFFICIENT_STRIGHT_DRIVE = 4001~%uint16 IMU_CALIB_DRIVE_ACCELERATION_DECELERATION_NOT_STRAIGHT = 4002~%uint16 IMU_CALIB_DRIVE_TURN_NOT_SMOOTH = 4003~%uint16 IMU_CALIB_UNSTATIC_LAUNCH = 4004~%uint16 IMU_CALIB_NOT_BACK_TO_ORIGIN = 4005~%uint16 IMU_CALIB_DRIVE_ROUTE_BUMPY = 4006~%uint16 IMU_CALIB_DRIVE_ROUTE_INCLINED = 4007~%uint16 IMU_CALIB_DRIVE_ROUTE_SLIPPERY = 4008~%uint16 IMU_CALIB_NHC_CHECK_FAIL = 5000~%uint16 IMU_CALIB_ELEVATION_CHECK_FAIL = 5001~%uint16 IMU_CALIB_IMU_UPDATE_PARAM_FAILED = 5002~%uint16 IMU_CALIB_IMU_SAVE_PARAM_FAILED = 5003~%uint16 IMU_CALIB_ABNORMAL_ROTATION_ERROR_WITH_INIT = 5004~%uint16 IMU_CALIB_ABNORMAL_TRANSLATION_ERROR_WITH_INIT = 5005~%uint16 IMU_CALIB_LARGE_DEVIATION_IN_DESIGNED_ROTATION = 5006~%uint16 IMU_CALIB_LARGE_DEVIATION_CALIB_AND_VALIDATOR = 5007~%uint16 IMU_CALIB_PUB_RESULT_FAIL = 5008~%uint16 IMU_CALIB_STOP_ERROR = 5009~%uint16 IMU_LOSS_FRAME = 6001~%uint16 IMU_LARGE_NOISE = 6002~%uint16 IMU_LARGE_BIAS = 6003~%uint16 IMU_READ_INIT_FILE_FAIL = 6004~%uint16 IMU_OUTPUT_FILE_FAIL = 6005~%uint16 IMU_ABNORMAL_ROTATION_WITH_INIT = 6006~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlacIMUCalibResults>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'calib_info) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlacIMUCalibResults>))
  "Converts a ROS message object to a list"
  (cl:list 'PlacIMUCalibResults
    (cl:cons ':header (header msg))
    (cl:cons ':calib_info (calib_info msg))
))
