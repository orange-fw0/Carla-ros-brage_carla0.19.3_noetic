; Auto-generated. Do not edit!


(cl:in-package calib_interface_msgs-msg)


;//! \htmlinclude LidarCalibReport.msg.html

(cl:defclass <LidarCalibReport> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (lidar_calib_data
    :reader lidar_calib_data
    :initarg :lidar_calib_data
    :type (cl:vector calib_interface_msgs-msg:LidarCalibInfo)
   :initform (cl:make-array 0 :element-type 'calib_interface_msgs-msg:LidarCalibInfo :initial-element (cl:make-instance 'calib_interface_msgs-msg:LidarCalibInfo)))
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
    :type calib_interface_msgs-msg:LidarCalibDetailedErrorCodeEnum
    :initform (cl:make-instance 'calib_interface_msgs-msg:LidarCalibDetailedErrorCodeEnum)))
)

(cl:defclass LidarCalibReport (<LidarCalibReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarCalibReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarCalibReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name calib_interface_msgs-msg:<LidarCalibReport> is deprecated: use calib_interface_msgs-msg:LidarCalibReport instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <LidarCalibReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:available-val is deprecated.  Use calib_interface_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'lidar_calib_data-val :lambda-list '(m))
(cl:defmethod lidar_calib_data-val ((m <LidarCalibReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:lidar_calib_data-val is deprecated.  Use calib_interface_msgs-msg:lidar_calib_data instead.")
  (lidar_calib_data m))

(cl:ensure-generic-function 'travel_distance-val :lambda-list '(m))
(cl:defmethod travel_distance-val ((m <LidarCalibReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:travel_distance-val is deprecated.  Use calib_interface_msgs-msg:travel_distance instead.")
  (travel_distance m))

(cl:ensure-generic-function 'post_processing_progress-val :lambda-list '(m))
(cl:defmethod post_processing_progress-val ((m <LidarCalibReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:post_processing_progress-val is deprecated.  Use calib_interface_msgs-msg:post_processing_progress instead.")
  (post_processing_progress m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <LidarCalibReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:error_code-val is deprecated.  Use calib_interface_msgs-msg:error_code instead.")
  (error_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarCalibReport>) ostream)
  "Serializes a message object of type '<LidarCalibReport>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lidar_calib_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lidar_calib_data))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarCalibReport>) istream)
  "Deserializes a message object of type '<LidarCalibReport>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lidar_calib_data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lidar_calib_data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'calib_interface_msgs-msg:LidarCalibInfo))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarCalibReport>)))
  "Returns string type for a message object of type '<LidarCalibReport>"
  "calib_interface_msgs/LidarCalibReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarCalibReport)))
  "Returns string type for a message object of type 'LidarCalibReport"
  "calib_interface_msgs/LidarCalibReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarCalibReport>)))
  "Returns md5sum for a message object of type '<LidarCalibReport>"
  "c62375b4ac7fe54f7c7c32174e72a6e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarCalibReport)))
  "Returns md5sum for a message object of type 'LidarCalibReport"
  "c62375b4ac7fe54f7c7c32174e72a6e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarCalibReport>)))
  "Returns full string definition for message of type '<LidarCalibReport>"
  (cl:format cl:nil "uint8 available~%calib_interface_msgs/LidarCalibInfo[] lidar_calib_data~%float32 travel_distance~%float32 post_processing_progress~%calib_interface_msgs/LidarCalibDetailedErrorCodeEnum error_code~%~%================================================================================~%MSG: calib_interface_msgs/LidarCalibInfo~%string lidar_name~%uint32 lidar_id~%float64[] r_s2b~%float64[] t_s2b~%calib_interface_msgs/LidarCalibDetailedErrorCodeEnum error_code~%float64[] r_s2b_diff~%float64[] t_s2b_diff~%~%================================================================================~%MSG: calib_interface_msgs/LidarCalibDetailedErrorCodeEnum~%uint16 NORMAL = 0~%uint16 CALIB_READ_CONFIG_FAIL = 1~%uint16 CALIB_CREATE_RESULT_FILE_FAIL = 2~%uint16 LIDAR_NEED_CALIB_NULL = 3~%uint16 EGO_POSE_LOSS_FRAME = 4~%uint16 BAD_ENVIRONMENT_FOR_CALIB = 5~%uint16 VEHICLE_SPEED_TOO_FAST = 6~%uint16 VEHICLE_YAW_RATE_TOO_LARGE = 7~%uint16 MAX_MILEAGE_CALIB_UNSUCCESS = 8~%uint16 CALIB_TIMEOUT = 9~%uint16 CAM_RESOLUTION_MISMATCH = 51~%uint16 CAM_VIEW_OCCLUSION = 52~%uint16 IMAGE_INSUFFICIENT_EDGES = 53~%uint16 LIDAR_INSUFFICIENT_EDGE_POINTS = 54~%uint16 CALIB_CONTINUOUS_UNCONVERGENCE = 55~%uint16 LIDAR_INSUFFICIENT_GEOMETRIC_FEATURES = 56~%uint16 INSUFFICIENT_TURNS = 57~%uint16 SOLVER_POSE_REFINE_EXCEPTION = 58~%uint16 SOLVER_PAIRWISE_REFINE_EXCEPTION = 59~%uint16 SOLVER_GLOBAL_REFINE_EXCEPTION = 60~%uint16 INIT_CALIB_OUT_OF_ODD = 1001~%uint16 LIDAR_LOWER_FREQUENCY = 1002~%uint16 LIDAR_MOTION_DISTORTION_CORRECTION_EXCEPTION = 1003~%uint16 LIDAR_POINT_MISSING_FIELD_INFO = 1004~%uint16 LARGE_DEVIATION_IN_DESIGNED_ROTATION = 1005~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarCalibReport)))
  "Returns full string definition for message of type 'LidarCalibReport"
  (cl:format cl:nil "uint8 available~%calib_interface_msgs/LidarCalibInfo[] lidar_calib_data~%float32 travel_distance~%float32 post_processing_progress~%calib_interface_msgs/LidarCalibDetailedErrorCodeEnum error_code~%~%================================================================================~%MSG: calib_interface_msgs/LidarCalibInfo~%string lidar_name~%uint32 lidar_id~%float64[] r_s2b~%float64[] t_s2b~%calib_interface_msgs/LidarCalibDetailedErrorCodeEnum error_code~%float64[] r_s2b_diff~%float64[] t_s2b_diff~%~%================================================================================~%MSG: calib_interface_msgs/LidarCalibDetailedErrorCodeEnum~%uint16 NORMAL = 0~%uint16 CALIB_READ_CONFIG_FAIL = 1~%uint16 CALIB_CREATE_RESULT_FILE_FAIL = 2~%uint16 LIDAR_NEED_CALIB_NULL = 3~%uint16 EGO_POSE_LOSS_FRAME = 4~%uint16 BAD_ENVIRONMENT_FOR_CALIB = 5~%uint16 VEHICLE_SPEED_TOO_FAST = 6~%uint16 VEHICLE_YAW_RATE_TOO_LARGE = 7~%uint16 MAX_MILEAGE_CALIB_UNSUCCESS = 8~%uint16 CALIB_TIMEOUT = 9~%uint16 CAM_RESOLUTION_MISMATCH = 51~%uint16 CAM_VIEW_OCCLUSION = 52~%uint16 IMAGE_INSUFFICIENT_EDGES = 53~%uint16 LIDAR_INSUFFICIENT_EDGE_POINTS = 54~%uint16 CALIB_CONTINUOUS_UNCONVERGENCE = 55~%uint16 LIDAR_INSUFFICIENT_GEOMETRIC_FEATURES = 56~%uint16 INSUFFICIENT_TURNS = 57~%uint16 SOLVER_POSE_REFINE_EXCEPTION = 58~%uint16 SOLVER_PAIRWISE_REFINE_EXCEPTION = 59~%uint16 SOLVER_GLOBAL_REFINE_EXCEPTION = 60~%uint16 INIT_CALIB_OUT_OF_ODD = 1001~%uint16 LIDAR_LOWER_FREQUENCY = 1002~%uint16 LIDAR_MOTION_DISTORTION_CORRECTION_EXCEPTION = 1003~%uint16 LIDAR_POINT_MISSING_FIELD_INFO = 1004~%uint16 LARGE_DEVIATION_IN_DESIGNED_ROTATION = 1005~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarCalibReport>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lidar_calib_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'error_code))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarCalibReport>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarCalibReport
    (cl:cons ':available (available msg))
    (cl:cons ':lidar_calib_data (lidar_calib_data msg))
    (cl:cons ':travel_distance (travel_distance msg))
    (cl:cons ':post_processing_progress (post_processing_progress msg))
    (cl:cons ':error_code (error_code msg))
))
