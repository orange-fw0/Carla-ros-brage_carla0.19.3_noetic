; Auto-generated. Do not edit!


(cl:in-package sensor_interface_msgs-msg)


;//! \htmlinclude CommonUltrasonicObstacleData.msg.html

(cl:defclass <CommonUltrasonicObstacleData> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (meta
    :reader meta
    :initarg :meta
    :type sensor_interface_msgs-msg:UltrasonicResultMeta
    :initform (cl:make-instance 'sensor_interface_msgs-msg:UltrasonicResultMeta))
   (obj_type
    :reader obj_type
    :initarg :obj_type
    :type sensor_interface_msgs-msg:UltrasonicObjectType
    :initform (cl:make-instance 'sensor_interface_msgs-msg:UltrasonicObjectType))
   (obj_height
    :reader obj_height
    :initarg :obj_height
    :type sensor_interface_msgs-msg:UltrasonicObjectHeiType
    :initform (cl:make-instance 'sensor_interface_msgs-msg:UltrasonicObjectHeiType))
   (obj_height_probability
    :reader obj_height_probability
    :initarg :obj_height_probability
    :type cl:float
    :initform 0.0)
   (obj_probability
    :reader obj_probability
    :initarg :obj_probability
    :type cl:float
    :initform 0.0)
   (obj_start_X
    :reader obj_start_X
    :initarg :obj_start_X
    :type cl:float
    :initform 0.0)
   (obj_start_Y
    :reader obj_start_Y
    :initarg :obj_start_Y
    :type cl:float
    :initform 0.0)
   (obj_end_X
    :reader obj_end_X
    :initarg :obj_end_X
    :type cl:float
    :initform 0.0)
   (obj_end_Y
    :reader obj_end_Y
    :initarg :obj_end_Y
    :type cl:float
    :initform 0.0)
   (obj_height_value
    :reader obj_height_value
    :initarg :obj_height_value
    :type cl:float
    :initform 0.0)
   (major_axis_error
    :reader major_axis_error
    :initarg :major_axis_error
    :type cl:float
    :initform 0.0)
   (minor_axis_variance
    :reader minor_axis_variance
    :initarg :minor_axis_variance
    :type cl:float
    :initform 0.0)
   (ellipse_theta_variance
    :reader ellipse_theta_variance
    :initarg :ellipse_theta_variance
    :type cl:float
    :initform 0.0)
   (reserved_info
    :reader reserved_info
    :initarg :reserved_info
    :type cl:string
    :initform ""))
)

(cl:defclass CommonUltrasonicObstacleData (<CommonUltrasonicObstacleData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommonUltrasonicObstacleData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommonUltrasonicObstacleData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_interface_msgs-msg:<CommonUltrasonicObstacleData> is deprecated: use sensor_interface_msgs-msg:CommonUltrasonicObstacleData instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <CommonUltrasonicObstacleData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:available-val is deprecated.  Use sensor_interface_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'meta-val :lambda-list '(m))
(cl:defmethod meta-val ((m <CommonUltrasonicObstacleData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:meta-val is deprecated.  Use sensor_interface_msgs-msg:meta instead.")
  (meta m))

(cl:ensure-generic-function 'obj_type-val :lambda-list '(m))
(cl:defmethod obj_type-val ((m <CommonUltrasonicObstacleData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:obj_type-val is deprecated.  Use sensor_interface_msgs-msg:obj_type instead.")
  (obj_type m))

(cl:ensure-generic-function 'obj_height-val :lambda-list '(m))
(cl:defmethod obj_height-val ((m <CommonUltrasonicObstacleData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:obj_height-val is deprecated.  Use sensor_interface_msgs-msg:obj_height instead.")
  (obj_height m))

(cl:ensure-generic-function 'obj_height_probability-val :lambda-list '(m))
(cl:defmethod obj_height_probability-val ((m <CommonUltrasonicObstacleData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:obj_height_probability-val is deprecated.  Use sensor_interface_msgs-msg:obj_height_probability instead.")
  (obj_height_probability m))

(cl:ensure-generic-function 'obj_probability-val :lambda-list '(m))
(cl:defmethod obj_probability-val ((m <CommonUltrasonicObstacleData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:obj_probability-val is deprecated.  Use sensor_interface_msgs-msg:obj_probability instead.")
  (obj_probability m))

(cl:ensure-generic-function 'obj_start_X-val :lambda-list '(m))
(cl:defmethod obj_start_X-val ((m <CommonUltrasonicObstacleData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:obj_start_X-val is deprecated.  Use sensor_interface_msgs-msg:obj_start_X instead.")
  (obj_start_X m))

(cl:ensure-generic-function 'obj_start_Y-val :lambda-list '(m))
(cl:defmethod obj_start_Y-val ((m <CommonUltrasonicObstacleData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:obj_start_Y-val is deprecated.  Use sensor_interface_msgs-msg:obj_start_Y instead.")
  (obj_start_Y m))

(cl:ensure-generic-function 'obj_end_X-val :lambda-list '(m))
(cl:defmethod obj_end_X-val ((m <CommonUltrasonicObstacleData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:obj_end_X-val is deprecated.  Use sensor_interface_msgs-msg:obj_end_X instead.")
  (obj_end_X m))

(cl:ensure-generic-function 'obj_end_Y-val :lambda-list '(m))
(cl:defmethod obj_end_Y-val ((m <CommonUltrasonicObstacleData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:obj_end_Y-val is deprecated.  Use sensor_interface_msgs-msg:obj_end_Y instead.")
  (obj_end_Y m))

(cl:ensure-generic-function 'obj_height_value-val :lambda-list '(m))
(cl:defmethod obj_height_value-val ((m <CommonUltrasonicObstacleData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:obj_height_value-val is deprecated.  Use sensor_interface_msgs-msg:obj_height_value instead.")
  (obj_height_value m))

(cl:ensure-generic-function 'major_axis_error-val :lambda-list '(m))
(cl:defmethod major_axis_error-val ((m <CommonUltrasonicObstacleData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:major_axis_error-val is deprecated.  Use sensor_interface_msgs-msg:major_axis_error instead.")
  (major_axis_error m))

(cl:ensure-generic-function 'minor_axis_variance-val :lambda-list '(m))
(cl:defmethod minor_axis_variance-val ((m <CommonUltrasonicObstacleData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:minor_axis_variance-val is deprecated.  Use sensor_interface_msgs-msg:minor_axis_variance instead.")
  (minor_axis_variance m))

(cl:ensure-generic-function 'ellipse_theta_variance-val :lambda-list '(m))
(cl:defmethod ellipse_theta_variance-val ((m <CommonUltrasonicObstacleData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:ellipse_theta_variance-val is deprecated.  Use sensor_interface_msgs-msg:ellipse_theta_variance instead.")
  (ellipse_theta_variance m))

(cl:ensure-generic-function 'reserved_info-val :lambda-list '(m))
(cl:defmethod reserved_info-val ((m <CommonUltrasonicObstacleData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:reserved_info-val is deprecated.  Use sensor_interface_msgs-msg:reserved_info instead.")
  (reserved_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommonUltrasonicObstacleData>) ostream)
  "Serializes a message object of type '<CommonUltrasonicObstacleData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obj_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obj_height) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'obj_height_probability))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'obj_probability))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'obj_start_X))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'obj_start_Y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'obj_end_X))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'obj_end_Y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'obj_height_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'major_axis_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'minor_axis_variance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ellipse_theta_variance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommonUltrasonicObstacleData>) istream)
  "Deserializes a message object of type '<CommonUltrasonicObstacleData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obj_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obj_height) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'obj_height_probability) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'obj_probability) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'obj_start_X) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'obj_start_Y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'obj_end_X) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'obj_end_Y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'obj_height_value) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'major_axis_error) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'minor_axis_variance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ellipse_theta_variance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reserved_info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reserved_info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommonUltrasonicObstacleData>)))
  "Returns string type for a message object of type '<CommonUltrasonicObstacleData>"
  "sensor_interface_msgs/CommonUltrasonicObstacleData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommonUltrasonicObstacleData)))
  "Returns string type for a message object of type 'CommonUltrasonicObstacleData"
  "sensor_interface_msgs/CommonUltrasonicObstacleData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommonUltrasonicObstacleData>)))
  "Returns md5sum for a message object of type '<CommonUltrasonicObstacleData>"
  "ac4d088e90f3561263ca5d0ce0641340")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommonUltrasonicObstacleData)))
  "Returns md5sum for a message object of type 'CommonUltrasonicObstacleData"
  "ac4d088e90f3561263ca5d0ce0641340")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommonUltrasonicObstacleData>)))
  "Returns full string definition for message of type '<CommonUltrasonicObstacleData>"
  (cl:format cl:nil "uint8 available~%sensor_interface_msgs/UltrasonicResultMeta meta~%sensor_interface_msgs/UltrasonicObjectType obj_type~%sensor_interface_msgs/UltrasonicObjectHeiType obj_height~%float32 obj_height_probability~%float32 obj_probability~%float32 obj_start_X~%float32 obj_start_Y~%float32 obj_end_X~%float32 obj_end_Y~%float32 obj_height_value~%float32 major_axis_error~%float32 minor_axis_variance~%float32 ellipse_theta_variance~%string reserved_info~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicResultMeta~%uint64 timestamp_us~%uint64 seq~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicObjectType~%uint8 NONE = 0~%uint8 POINT = 1~%uint8 STRAIGHT_LINE = 2~%uint8 RAYS = 3~%uint8 LINE_SEGMENT = 5~%uint8 SNA = 7~%uint8 RESERVED_INFO = 8~%uint8 value~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicObjectHeiType~%uint8 LOW = 0~%uint8 HIGH = 1~%uint8 TRAVERSIBLE = 2~%uint8 UNKONOWN = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommonUltrasonicObstacleData)))
  "Returns full string definition for message of type 'CommonUltrasonicObstacleData"
  (cl:format cl:nil "uint8 available~%sensor_interface_msgs/UltrasonicResultMeta meta~%sensor_interface_msgs/UltrasonicObjectType obj_type~%sensor_interface_msgs/UltrasonicObjectHeiType obj_height~%float32 obj_height_probability~%float32 obj_probability~%float32 obj_start_X~%float32 obj_start_Y~%float32 obj_end_X~%float32 obj_end_Y~%float32 obj_height_value~%float32 major_axis_error~%float32 minor_axis_variance~%float32 ellipse_theta_variance~%string reserved_info~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicResultMeta~%uint64 timestamp_us~%uint64 seq~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicObjectType~%uint8 NONE = 0~%uint8 POINT = 1~%uint8 STRAIGHT_LINE = 2~%uint8 RAYS = 3~%uint8 LINE_SEGMENT = 5~%uint8 SNA = 7~%uint8 RESERVED_INFO = 8~%uint8 value~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicObjectHeiType~%uint8 LOW = 0~%uint8 HIGH = 1~%uint8 TRAVERSIBLE = 2~%uint8 UNKONOWN = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommonUltrasonicObstacleData>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obj_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obj_height))
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'reserved_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommonUltrasonicObstacleData>))
  "Converts a ROS message object to a list"
  (cl:list 'CommonUltrasonicObstacleData
    (cl:cons ':available (available msg))
    (cl:cons ':meta (meta msg))
    (cl:cons ':obj_type (obj_type msg))
    (cl:cons ':obj_height (obj_height msg))
    (cl:cons ':obj_height_probability (obj_height_probability msg))
    (cl:cons ':obj_probability (obj_probability msg))
    (cl:cons ':obj_start_X (obj_start_X msg))
    (cl:cons ':obj_start_Y (obj_start_Y msg))
    (cl:cons ':obj_end_X (obj_end_X msg))
    (cl:cons ':obj_end_Y (obj_end_Y msg))
    (cl:cons ':obj_height_value (obj_height_value msg))
    (cl:cons ':major_axis_error (major_axis_error msg))
    (cl:cons ':minor_axis_variance (minor_axis_variance msg))
    (cl:cons ':ellipse_theta_variance (ellipse_theta_variance msg))
    (cl:cons ':reserved_info (reserved_info msg))
))
