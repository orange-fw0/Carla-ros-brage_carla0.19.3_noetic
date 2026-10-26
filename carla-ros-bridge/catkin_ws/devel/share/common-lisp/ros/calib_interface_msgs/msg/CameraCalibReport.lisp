; Auto-generated. Do not edit!


(cl:in-package calib_interface_msgs-msg)


;//! \htmlinclude CameraCalibReport.msg.html

(cl:defclass <CameraCalibReport> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (camera_calib_data
    :reader camera_calib_data
    :initarg :camera_calib_data
    :type (cl:vector calib_interface_msgs-msg:CameraCalibInfo)
   :initform (cl:make-array 0 :element-type 'calib_interface_msgs-msg:CameraCalibInfo :initial-element (cl:make-instance 'calib_interface_msgs-msg:CameraCalibInfo)))
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
    :type calib_interface_msgs-msg:CamCalibDetailedErrorCodeEnum
    :initform (cl:make-instance 'calib_interface_msgs-msg:CamCalibDetailedErrorCodeEnum)))
)

(cl:defclass CameraCalibReport (<CameraCalibReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraCalibReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraCalibReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name calib_interface_msgs-msg:<CameraCalibReport> is deprecated: use calib_interface_msgs-msg:CameraCalibReport instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <CameraCalibReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:available-val is deprecated.  Use calib_interface_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'camera_calib_data-val :lambda-list '(m))
(cl:defmethod camera_calib_data-val ((m <CameraCalibReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:camera_calib_data-val is deprecated.  Use calib_interface_msgs-msg:camera_calib_data instead.")
  (camera_calib_data m))

(cl:ensure-generic-function 'travel_distance-val :lambda-list '(m))
(cl:defmethod travel_distance-val ((m <CameraCalibReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:travel_distance-val is deprecated.  Use calib_interface_msgs-msg:travel_distance instead.")
  (travel_distance m))

(cl:ensure-generic-function 'post_processing_progress-val :lambda-list '(m))
(cl:defmethod post_processing_progress-val ((m <CameraCalibReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:post_processing_progress-val is deprecated.  Use calib_interface_msgs-msg:post_processing_progress instead.")
  (post_processing_progress m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <CameraCalibReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:error_code-val is deprecated.  Use calib_interface_msgs-msg:error_code instead.")
  (error_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraCalibReport>) ostream)
  "Serializes a message object of type '<CameraCalibReport>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'camera_calib_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'camera_calib_data))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraCalibReport>) istream)
  "Deserializes a message object of type '<CameraCalibReport>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'camera_calib_data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'camera_calib_data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'calib_interface_msgs-msg:CameraCalibInfo))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraCalibReport>)))
  "Returns string type for a message object of type '<CameraCalibReport>"
  "calib_interface_msgs/CameraCalibReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraCalibReport)))
  "Returns string type for a message object of type 'CameraCalibReport"
  "calib_interface_msgs/CameraCalibReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraCalibReport>)))
  "Returns md5sum for a message object of type '<CameraCalibReport>"
  "c0442fce8351f5e7dc154ff22c71ab0d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraCalibReport)))
  "Returns md5sum for a message object of type 'CameraCalibReport"
  "c0442fce8351f5e7dc154ff22c71ab0d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraCalibReport>)))
  "Returns full string definition for message of type '<CameraCalibReport>"
  (cl:format cl:nil "uint8 available~%calib_interface_msgs/CameraCalibInfo[] camera_calib_data~%float32 travel_distance~%float32 post_processing_progress~%calib_interface_msgs/CamCalibDetailedErrorCodeEnum error_code~%~%================================================================================~%MSG: calib_interface_msgs/CameraCalibInfo~%perception_interface_msgs/CameraSourceEnum camera_name~%float64[] r_s2b~%float64[] r_s2b_diff~%float64[] t_s2b~%calib_interface_msgs/CameraModelEnum camera_model~%float64 fx~%float64 fy~%float64 cx~%float64 cy~%calib_interface_msgs/RadTan radtan_type~%calib_interface_msgs/Polyn polyn_type~%calib_interface_msgs/CamCalibDetailedErrorCodeEnum error_code~%float64[] t_s2b_diff~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: calib_interface_msgs/CameraModelEnum~%uint8 CAMERA_MODEL_POLYN = 0~%uint8 CAMERA_MODEL_RADTAN = 1~%uint8 value~%~%================================================================================~%MSG: calib_interface_msgs/RadTan~%float64 k1~%float64 k2~%float64 p1~%float64 p2~%float64 k3~%float64 k4~%float64 k5~%float64 k6~%~%================================================================================~%MSG: calib_interface_msgs/Polyn~%float64 kc1~%float64 kc2~%float64 kc3~%float64 kc4~%~%================================================================================~%MSG: calib_interface_msgs/CamCalibDetailedErrorCodeEnum~%uint16 NORMAL = 0~%uint16 CALIB_READ_CONFIG_FAIL = 1~%uint16 CALIB_CREATE_RESULT_FILE_FAIL = 2~%uint16 CALIB_INIT_GROUND_PATTERN_FAIL = 3~%uint16 CALIB_INIT_SURROUND_PATTERN_FAIL = 4~%uint16 CALIB_READ_INIT_FILE_FAIL = 5~%uint16 CALIB_IMAGE_SIZE_WRONG = 6~%uint16 CALIB_IMAGE_CHANNEL_WRONG = 7~%uint16 CALIB_FISHEYE_DETECT_TAG_FAIL = 8~%uint16 CALIB_NORMAL_DETECT_TAG_FAIL = 9~%uint16 CALIB_ABNORMAL_REPROJECTION_ERROR_OF_INIT = 10~%uint16 CALIB_ABNORMAL_REPROJECTION_ERROR_OF_OPT = 11~%uint16 CALIB_ABNORMAL_ROTATION_ERROR_WITH_INIT = 12~%uint16 CALIB_ABNORMAL_TRANSLATION_ERROR_WITH_INIT = 13~%uint16 CALIB_OUTPUT_FILE_FAIL = 14~%uint16 EGO_INIT_FAILED = 1000~%uint16 EGO_POSE_UNACCESSABLE = 1001~%uint16 EGO_VISUAL_DISABLED = 1002~%uint16 CAM_NEED_CALIB_NULL = 1003~%uint16 CAM_UPDATE_PARAM_FAILED = 1004~%uint16 CAM_SAVE_PARAM_FAILED = 1005~%uint16 CAM_INSUFFICIENT_MATCHING_FEATURE_CROSS = 1006~%uint16 IMU_EXTRINSIC_UNFIXED = 1007~%uint16 IMU_BIAS_UNESTIMATED = 1008~%uint16 IMU_BIAS_UNFIXED = 1009~%uint16 COV_INCREASE_ABNORMALLY = 1010~%uint16 COV_NOT_DECREASE = 1011~%uint16 COV_UNACCESSABLE = 1012~%uint16 UNSTATIC_LAUNCH = 1013~%uint16 MIN_MILEAGE_UNREACHED = 1014~%uint16 MAX_MILEAGE_UNCONVERGED = 1015~%uint16 INSUFFICIENT_TURNS = 1016~%uint16 LARGE_DEVIATION_IN_DESIGNED_ROTATION = 1500~%uint16 LARGE_DEVIATION_CALIB_AND_VALIDATOR = 1501~%uint16 CAM_SET_INIT_PARAM_FAILED = 2000~%uint16 CAM_LOWER_FREQUENCY = 2001~%uint16 CAM_INSUFFICIENT_TRACKING_FEATURE_SINGLE = 2002~%uint16 CAM_INSUFFICIENT_UPDATING_FEATURE_SINGLE = 2003~%uint16 SPEED_TOO_SLOW = 2100~%uint16 ANGLE_TOO_BIG = 2101~%uint16 INNER_CAMERA_MATCH_TOO_FEW = 2102~%uint16 INTER_CAMERA_MATCH_TOO_FEW = 2103~%uint16 KEYPOINTS_TOO_FEW = 2104~%uint16 INIT_MATCH_TOO_FEW = 2105~%uint16 INIT_MAP_POINTS_TOO_FEW = 2106~%uint16 SFM_SCALE_DRIFT = 2107~%uint16 FAIL_TO_ADD_FRAME = 2108~%uint16 CONSTRUCTION_TOO_FEW = 2109~%uint16 FULL_BA_FAIL = 2110~%uint16 RESULT_INCONSISTENT = 2111~%uint16 WRONG_BUFFER_SIZE = 2112~%uint16 ARRAY_OVERREACH = 2113~%uint16 PATCHES_RESET = 2114~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraCalibReport)))
  "Returns full string definition for message of type 'CameraCalibReport"
  (cl:format cl:nil "uint8 available~%calib_interface_msgs/CameraCalibInfo[] camera_calib_data~%float32 travel_distance~%float32 post_processing_progress~%calib_interface_msgs/CamCalibDetailedErrorCodeEnum error_code~%~%================================================================================~%MSG: calib_interface_msgs/CameraCalibInfo~%perception_interface_msgs/CameraSourceEnum camera_name~%float64[] r_s2b~%float64[] r_s2b_diff~%float64[] t_s2b~%calib_interface_msgs/CameraModelEnum camera_model~%float64 fx~%float64 fy~%float64 cx~%float64 cy~%calib_interface_msgs/RadTan radtan_type~%calib_interface_msgs/Polyn polyn_type~%calib_interface_msgs/CamCalibDetailedErrorCodeEnum error_code~%float64[] t_s2b_diff~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: calib_interface_msgs/CameraModelEnum~%uint8 CAMERA_MODEL_POLYN = 0~%uint8 CAMERA_MODEL_RADTAN = 1~%uint8 value~%~%================================================================================~%MSG: calib_interface_msgs/RadTan~%float64 k1~%float64 k2~%float64 p1~%float64 p2~%float64 k3~%float64 k4~%float64 k5~%float64 k6~%~%================================================================================~%MSG: calib_interface_msgs/Polyn~%float64 kc1~%float64 kc2~%float64 kc3~%float64 kc4~%~%================================================================================~%MSG: calib_interface_msgs/CamCalibDetailedErrorCodeEnum~%uint16 NORMAL = 0~%uint16 CALIB_READ_CONFIG_FAIL = 1~%uint16 CALIB_CREATE_RESULT_FILE_FAIL = 2~%uint16 CALIB_INIT_GROUND_PATTERN_FAIL = 3~%uint16 CALIB_INIT_SURROUND_PATTERN_FAIL = 4~%uint16 CALIB_READ_INIT_FILE_FAIL = 5~%uint16 CALIB_IMAGE_SIZE_WRONG = 6~%uint16 CALIB_IMAGE_CHANNEL_WRONG = 7~%uint16 CALIB_FISHEYE_DETECT_TAG_FAIL = 8~%uint16 CALIB_NORMAL_DETECT_TAG_FAIL = 9~%uint16 CALIB_ABNORMAL_REPROJECTION_ERROR_OF_INIT = 10~%uint16 CALIB_ABNORMAL_REPROJECTION_ERROR_OF_OPT = 11~%uint16 CALIB_ABNORMAL_ROTATION_ERROR_WITH_INIT = 12~%uint16 CALIB_ABNORMAL_TRANSLATION_ERROR_WITH_INIT = 13~%uint16 CALIB_OUTPUT_FILE_FAIL = 14~%uint16 EGO_INIT_FAILED = 1000~%uint16 EGO_POSE_UNACCESSABLE = 1001~%uint16 EGO_VISUAL_DISABLED = 1002~%uint16 CAM_NEED_CALIB_NULL = 1003~%uint16 CAM_UPDATE_PARAM_FAILED = 1004~%uint16 CAM_SAVE_PARAM_FAILED = 1005~%uint16 CAM_INSUFFICIENT_MATCHING_FEATURE_CROSS = 1006~%uint16 IMU_EXTRINSIC_UNFIXED = 1007~%uint16 IMU_BIAS_UNESTIMATED = 1008~%uint16 IMU_BIAS_UNFIXED = 1009~%uint16 COV_INCREASE_ABNORMALLY = 1010~%uint16 COV_NOT_DECREASE = 1011~%uint16 COV_UNACCESSABLE = 1012~%uint16 UNSTATIC_LAUNCH = 1013~%uint16 MIN_MILEAGE_UNREACHED = 1014~%uint16 MAX_MILEAGE_UNCONVERGED = 1015~%uint16 INSUFFICIENT_TURNS = 1016~%uint16 LARGE_DEVIATION_IN_DESIGNED_ROTATION = 1500~%uint16 LARGE_DEVIATION_CALIB_AND_VALIDATOR = 1501~%uint16 CAM_SET_INIT_PARAM_FAILED = 2000~%uint16 CAM_LOWER_FREQUENCY = 2001~%uint16 CAM_INSUFFICIENT_TRACKING_FEATURE_SINGLE = 2002~%uint16 CAM_INSUFFICIENT_UPDATING_FEATURE_SINGLE = 2003~%uint16 SPEED_TOO_SLOW = 2100~%uint16 ANGLE_TOO_BIG = 2101~%uint16 INNER_CAMERA_MATCH_TOO_FEW = 2102~%uint16 INTER_CAMERA_MATCH_TOO_FEW = 2103~%uint16 KEYPOINTS_TOO_FEW = 2104~%uint16 INIT_MATCH_TOO_FEW = 2105~%uint16 INIT_MAP_POINTS_TOO_FEW = 2106~%uint16 SFM_SCALE_DRIFT = 2107~%uint16 FAIL_TO_ADD_FRAME = 2108~%uint16 CONSTRUCTION_TOO_FEW = 2109~%uint16 FULL_BA_FAIL = 2110~%uint16 RESULT_INCONSISTENT = 2111~%uint16 WRONG_BUFFER_SIZE = 2112~%uint16 ARRAY_OVERREACH = 2113~%uint16 PATCHES_RESET = 2114~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraCalibReport>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'camera_calib_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'error_code))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraCalibReport>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraCalibReport
    (cl:cons ':available (available msg))
    (cl:cons ':camera_calib_data (camera_calib_data msg))
    (cl:cons ':travel_distance (travel_distance msg))
    (cl:cons ':post_processing_progress (post_processing_progress msg))
    (cl:cons ':error_code (error_code msg))
))
