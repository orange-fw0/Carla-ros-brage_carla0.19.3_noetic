; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude AttributeOnPath.msg.html

(cl:defclass <AttributeOnPath> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:integer
    :initform 0)
   (start_offset
    :reader start_offset
    :initarg :start_offset
    :type cl:float
    :initform 0.0)
   (speed_limit
    :reader speed_limit
    :initarg :speed_limit
    :type cl:float
    :initform 0.0)
   (curvature
    :reader curvature
    :initarg :curvature
    :type cl:float
    :initform 0.0)
   (slope
    :reader slope
    :initarg :slope
    :type cl:float
    :initform 0.0)
   (special_situation
    :reader special_situation
    :initarg :special_situation
    :type landmark_msgs-msg:SpecialSituation
    :initform (cl:make-instance 'landmark_msgs-msg:SpecialSituation))
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:string
    :initform ""))
)

(cl:defclass AttributeOnPath (<AttributeOnPath>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AttributeOnPath>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AttributeOnPath)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<AttributeOnPath> is deprecated: use landmark_msgs-msg:AttributeOnPath instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <AttributeOnPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:available-val is deprecated.  Use landmark_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'start_offset-val :lambda-list '(m))
(cl:defmethod start_offset-val ((m <AttributeOnPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:start_offset-val is deprecated.  Use landmark_msgs-msg:start_offset instead.")
  (start_offset m))

(cl:ensure-generic-function 'speed_limit-val :lambda-list '(m))
(cl:defmethod speed_limit-val ((m <AttributeOnPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:speed_limit-val is deprecated.  Use landmark_msgs-msg:speed_limit instead.")
  (speed_limit m))

(cl:ensure-generic-function 'curvature-val :lambda-list '(m))
(cl:defmethod curvature-val ((m <AttributeOnPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:curvature-val is deprecated.  Use landmark_msgs-msg:curvature instead.")
  (curvature m))

(cl:ensure-generic-function 'slope-val :lambda-list '(m))
(cl:defmethod slope-val ((m <AttributeOnPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:slope-val is deprecated.  Use landmark_msgs-msg:slope instead.")
  (slope m))

(cl:ensure-generic-function 'special_situation-val :lambda-list '(m))
(cl:defmethod special_situation-val ((m <AttributeOnPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:special_situation-val is deprecated.  Use landmark_msgs-msg:special_situation instead.")
  (special_situation m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <AttributeOnPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:reserved-val is deprecated.  Use landmark_msgs-msg:reserved instead.")
  (reserved m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AttributeOnPath>)))
    "Constants for message type '<AttributeOnPath>"
  '((:SPEED_LIMIT_VALID . 1)
    (:CURVATURE_VALID . 2)
    (:SLOPE_VALID . 4)
    (:OFFSET_VALID . 8)
    (:SPECIAL_SITUATION_VALID . 16))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AttributeOnPath)))
    "Constants for message type 'AttributeOnPath"
  '((:SPEED_LIMIT_VALID . 1)
    (:CURVATURE_VALID . 2)
    (:SLOPE_VALID . 4)
    (:OFFSET_VALID . 8)
    (:SPECIAL_SITUATION_VALID . 16))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AttributeOnPath>) ostream)
  "Serializes a message object of type '<AttributeOnPath>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'available)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'start_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed_limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'curvature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'slope))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'special_situation) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AttributeOnPath>) istream)
  "Deserializes a message object of type '<AttributeOnPath>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'start_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_limit) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'curvature) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'slope) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'special_situation) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reserved) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reserved) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AttributeOnPath>)))
  "Returns string type for a message object of type '<AttributeOnPath>"
  "landmark_msgs/AttributeOnPath")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AttributeOnPath)))
  "Returns string type for a message object of type 'AttributeOnPath"
  "landmark_msgs/AttributeOnPath")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AttributeOnPath>)))
  "Returns md5sum for a message object of type '<AttributeOnPath>"
  "8a9ec600f93f0276615467b41ea9ba7c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AttributeOnPath)))
  "Returns md5sum for a message object of type 'AttributeOnPath"
  "8a9ec600f93f0276615467b41ea9ba7c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AttributeOnPath>)))
  "Returns full string definition for message of type '<AttributeOnPath>"
  (cl:format cl:nil "uint32 SPEED_LIMIT_VALID = 1~%uint32 CURVATURE_VALID = 2~%uint32 SLOPE_VALID = 4~%uint32 OFFSET_VALID = 8~%uint32 SPECIAL_SITUATION_VALID = 16~%uint32 available~%float32 start_offset~%float32 speed_limit~%float32 curvature~%float32 slope~%landmark_msgs/SpecialSituation special_situation~%string reserved~%~%================================================================================~%MSG: landmark_msgs/SpecialSituation~%uint32 UNKNOWN = 0~%uint32 TUNNEL_BEGIN = 1~%uint32 TUNNEL_END = 2~%uint32 BAD_WEATHER_EFFECTED_ZONE_BEGIN = 3~%uint32 BAD_WEATHER_EFFECTED_ZONE_END = 4~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AttributeOnPath)))
  "Returns full string definition for message of type 'AttributeOnPath"
  (cl:format cl:nil "uint32 SPEED_LIMIT_VALID = 1~%uint32 CURVATURE_VALID = 2~%uint32 SLOPE_VALID = 4~%uint32 OFFSET_VALID = 8~%uint32 SPECIAL_SITUATION_VALID = 16~%uint32 available~%float32 start_offset~%float32 speed_limit~%float32 curvature~%float32 slope~%landmark_msgs/SpecialSituation special_situation~%string reserved~%~%================================================================================~%MSG: landmark_msgs/SpecialSituation~%uint32 UNKNOWN = 0~%uint32 TUNNEL_BEGIN = 1~%uint32 TUNNEL_END = 2~%uint32 BAD_WEATHER_EFFECTED_ZONE_BEGIN = 3~%uint32 BAD_WEATHER_EFFECTED_ZONE_END = 4~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AttributeOnPath>))
  (cl:+ 0
     4
     4
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'special_situation))
     4 (cl:length (cl:slot-value msg 'reserved))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AttributeOnPath>))
  "Converts a ROS message object to a list"
  (cl:list 'AttributeOnPath
    (cl:cons ':available (available msg))
    (cl:cons ':start_offset (start_offset msg))
    (cl:cons ':speed_limit (speed_limit msg))
    (cl:cons ':curvature (curvature msg))
    (cl:cons ':slope (slope msg))
    (cl:cons ':special_situation (special_situation msg))
    (cl:cons ':reserved (reserved msg))
))
