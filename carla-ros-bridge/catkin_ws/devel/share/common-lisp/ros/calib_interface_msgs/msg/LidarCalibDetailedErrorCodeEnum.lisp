; Auto-generated. Do not edit!


(cl:in-package calib_interface_msgs-msg)


;//! \htmlinclude LidarCalibDetailedErrorCodeEnum.msg.html

(cl:defclass <LidarCalibDetailedErrorCodeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LidarCalibDetailedErrorCodeEnum (<LidarCalibDetailedErrorCodeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarCalibDetailedErrorCodeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarCalibDetailedErrorCodeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name calib_interface_msgs-msg:<LidarCalibDetailedErrorCodeEnum> is deprecated: use calib_interface_msgs-msg:LidarCalibDetailedErrorCodeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LidarCalibDetailedErrorCodeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:value-val is deprecated.  Use calib_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LidarCalibDetailedErrorCodeEnum>)))
    "Constants for message type '<LidarCalibDetailedErrorCodeEnum>"
  '((:NORMAL . 0)
    (:CALIB_READ_CONFIG_FAIL . 1)
    (:CALIB_CREATE_RESULT_FILE_FAIL . 2)
    (:LIDAR_NEED_CALIB_NULL . 3)
    (:EGO_POSE_LOSS_FRAME . 4)
    (:BAD_ENVIRONMENT_FOR_CALIB . 5)
    (:VEHICLE_SPEED_TOO_FAST . 6)
    (:VEHICLE_YAW_RATE_TOO_LARGE . 7)
    (:MAX_MILEAGE_CALIB_UNSUCCESS . 8)
    (:CALIB_TIMEOUT . 9)
    (:CAM_RESOLUTION_MISMATCH . 51)
    (:CAM_VIEW_OCCLUSION . 52)
    (:IMAGE_INSUFFICIENT_EDGES . 53)
    (:LIDAR_INSUFFICIENT_EDGE_POINTS . 54)
    (:CALIB_CONTINUOUS_UNCONVERGENCE . 55)
    (:LIDAR_INSUFFICIENT_GEOMETRIC_FEATURES . 56)
    (:INSUFFICIENT_TURNS . 57)
    (:SOLVER_POSE_REFINE_EXCEPTION . 58)
    (:SOLVER_PAIRWISE_REFINE_EXCEPTION . 59)
    (:SOLVER_GLOBAL_REFINE_EXCEPTION . 60)
    (:INIT_CALIB_OUT_OF_ODD . 1001)
    (:LIDAR_LOWER_FREQUENCY . 1002)
    (:LIDAR_MOTION_DISTORTION_CORRECTION_EXCEPTION . 1003)
    (:LIDAR_POINT_MISSING_FIELD_INFO . 1004)
    (:LARGE_DEVIATION_IN_DESIGNED_ROTATION . 1005))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LidarCalibDetailedErrorCodeEnum)))
    "Constants for message type 'LidarCalibDetailedErrorCodeEnum"
  '((:NORMAL . 0)
    (:CALIB_READ_CONFIG_FAIL . 1)
    (:CALIB_CREATE_RESULT_FILE_FAIL . 2)
    (:LIDAR_NEED_CALIB_NULL . 3)
    (:EGO_POSE_LOSS_FRAME . 4)
    (:BAD_ENVIRONMENT_FOR_CALIB . 5)
    (:VEHICLE_SPEED_TOO_FAST . 6)
    (:VEHICLE_YAW_RATE_TOO_LARGE . 7)
    (:MAX_MILEAGE_CALIB_UNSUCCESS . 8)
    (:CALIB_TIMEOUT . 9)
    (:CAM_RESOLUTION_MISMATCH . 51)
    (:CAM_VIEW_OCCLUSION . 52)
    (:IMAGE_INSUFFICIENT_EDGES . 53)
    (:LIDAR_INSUFFICIENT_EDGE_POINTS . 54)
    (:CALIB_CONTINUOUS_UNCONVERGENCE . 55)
    (:LIDAR_INSUFFICIENT_GEOMETRIC_FEATURES . 56)
    (:INSUFFICIENT_TURNS . 57)
    (:SOLVER_POSE_REFINE_EXCEPTION . 58)
    (:SOLVER_PAIRWISE_REFINE_EXCEPTION . 59)
    (:SOLVER_GLOBAL_REFINE_EXCEPTION . 60)
    (:INIT_CALIB_OUT_OF_ODD . 1001)
    (:LIDAR_LOWER_FREQUENCY . 1002)
    (:LIDAR_MOTION_DISTORTION_CORRECTION_EXCEPTION . 1003)
    (:LIDAR_POINT_MISSING_FIELD_INFO . 1004)
    (:LARGE_DEVIATION_IN_DESIGNED_ROTATION . 1005))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarCalibDetailedErrorCodeEnum>) ostream)
  "Serializes a message object of type '<LidarCalibDetailedErrorCodeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarCalibDetailedErrorCodeEnum>) istream)
  "Deserializes a message object of type '<LidarCalibDetailedErrorCodeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarCalibDetailedErrorCodeEnum>)))
  "Returns string type for a message object of type '<LidarCalibDetailedErrorCodeEnum>"
  "calib_interface_msgs/LidarCalibDetailedErrorCodeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarCalibDetailedErrorCodeEnum)))
  "Returns string type for a message object of type 'LidarCalibDetailedErrorCodeEnum"
  "calib_interface_msgs/LidarCalibDetailedErrorCodeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarCalibDetailedErrorCodeEnum>)))
  "Returns md5sum for a message object of type '<LidarCalibDetailedErrorCodeEnum>"
  "68a3ac06366b62b605c538732b115fef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarCalibDetailedErrorCodeEnum)))
  "Returns md5sum for a message object of type 'LidarCalibDetailedErrorCodeEnum"
  "68a3ac06366b62b605c538732b115fef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarCalibDetailedErrorCodeEnum>)))
  "Returns full string definition for message of type '<LidarCalibDetailedErrorCodeEnum>"
  (cl:format cl:nil "uint16 NORMAL = 0~%uint16 CALIB_READ_CONFIG_FAIL = 1~%uint16 CALIB_CREATE_RESULT_FILE_FAIL = 2~%uint16 LIDAR_NEED_CALIB_NULL = 3~%uint16 EGO_POSE_LOSS_FRAME = 4~%uint16 BAD_ENVIRONMENT_FOR_CALIB = 5~%uint16 VEHICLE_SPEED_TOO_FAST = 6~%uint16 VEHICLE_YAW_RATE_TOO_LARGE = 7~%uint16 MAX_MILEAGE_CALIB_UNSUCCESS = 8~%uint16 CALIB_TIMEOUT = 9~%uint16 CAM_RESOLUTION_MISMATCH = 51~%uint16 CAM_VIEW_OCCLUSION = 52~%uint16 IMAGE_INSUFFICIENT_EDGES = 53~%uint16 LIDAR_INSUFFICIENT_EDGE_POINTS = 54~%uint16 CALIB_CONTINUOUS_UNCONVERGENCE = 55~%uint16 LIDAR_INSUFFICIENT_GEOMETRIC_FEATURES = 56~%uint16 INSUFFICIENT_TURNS = 57~%uint16 SOLVER_POSE_REFINE_EXCEPTION = 58~%uint16 SOLVER_PAIRWISE_REFINE_EXCEPTION = 59~%uint16 SOLVER_GLOBAL_REFINE_EXCEPTION = 60~%uint16 INIT_CALIB_OUT_OF_ODD = 1001~%uint16 LIDAR_LOWER_FREQUENCY = 1002~%uint16 LIDAR_MOTION_DISTORTION_CORRECTION_EXCEPTION = 1003~%uint16 LIDAR_POINT_MISSING_FIELD_INFO = 1004~%uint16 LARGE_DEVIATION_IN_DESIGNED_ROTATION = 1005~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarCalibDetailedErrorCodeEnum)))
  "Returns full string definition for message of type 'LidarCalibDetailedErrorCodeEnum"
  (cl:format cl:nil "uint16 NORMAL = 0~%uint16 CALIB_READ_CONFIG_FAIL = 1~%uint16 CALIB_CREATE_RESULT_FILE_FAIL = 2~%uint16 LIDAR_NEED_CALIB_NULL = 3~%uint16 EGO_POSE_LOSS_FRAME = 4~%uint16 BAD_ENVIRONMENT_FOR_CALIB = 5~%uint16 VEHICLE_SPEED_TOO_FAST = 6~%uint16 VEHICLE_YAW_RATE_TOO_LARGE = 7~%uint16 MAX_MILEAGE_CALIB_UNSUCCESS = 8~%uint16 CALIB_TIMEOUT = 9~%uint16 CAM_RESOLUTION_MISMATCH = 51~%uint16 CAM_VIEW_OCCLUSION = 52~%uint16 IMAGE_INSUFFICIENT_EDGES = 53~%uint16 LIDAR_INSUFFICIENT_EDGE_POINTS = 54~%uint16 CALIB_CONTINUOUS_UNCONVERGENCE = 55~%uint16 LIDAR_INSUFFICIENT_GEOMETRIC_FEATURES = 56~%uint16 INSUFFICIENT_TURNS = 57~%uint16 SOLVER_POSE_REFINE_EXCEPTION = 58~%uint16 SOLVER_PAIRWISE_REFINE_EXCEPTION = 59~%uint16 SOLVER_GLOBAL_REFINE_EXCEPTION = 60~%uint16 INIT_CALIB_OUT_OF_ODD = 1001~%uint16 LIDAR_LOWER_FREQUENCY = 1002~%uint16 LIDAR_MOTION_DISTORTION_CORRECTION_EXCEPTION = 1003~%uint16 LIDAR_POINT_MISSING_FIELD_INFO = 1004~%uint16 LARGE_DEVIATION_IN_DESIGNED_ROTATION = 1005~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarCalibDetailedErrorCodeEnum>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarCalibDetailedErrorCodeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarCalibDetailedErrorCodeEnum
    (cl:cons ':value (value msg))
))
