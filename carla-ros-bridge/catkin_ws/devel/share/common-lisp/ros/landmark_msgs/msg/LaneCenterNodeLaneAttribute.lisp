; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude LaneCenterNodeLaneAttribute.msg.html

(cl:defclass <LaneCenterNodeLaneAttribute> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
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
   (start_offset
    :reader start_offset
    :initarg :start_offset
    :type cl:float
    :initform 0.0)
   (end_offset
    :reader end_offset
    :initarg :end_offset
    :type cl:float
    :initform 0.0))
)

(cl:defclass LaneCenterNodeLaneAttribute (<LaneCenterNodeLaneAttribute>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneCenterNodeLaneAttribute>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneCenterNodeLaneAttribute)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<LaneCenterNodeLaneAttribute> is deprecated: use landmark_msgs-msg:LaneCenterNodeLaneAttribute instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <LaneCenterNodeLaneAttribute>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:available-val is deprecated.  Use landmark_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'speed_limit-val :lambda-list '(m))
(cl:defmethod speed_limit-val ((m <LaneCenterNodeLaneAttribute>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:speed_limit-val is deprecated.  Use landmark_msgs-msg:speed_limit instead.")
  (speed_limit m))

(cl:ensure-generic-function 'curvature-val :lambda-list '(m))
(cl:defmethod curvature-val ((m <LaneCenterNodeLaneAttribute>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:curvature-val is deprecated.  Use landmark_msgs-msg:curvature instead.")
  (curvature m))

(cl:ensure-generic-function 'slope-val :lambda-list '(m))
(cl:defmethod slope-val ((m <LaneCenterNodeLaneAttribute>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:slope-val is deprecated.  Use landmark_msgs-msg:slope instead.")
  (slope m))

(cl:ensure-generic-function 'start_offset-val :lambda-list '(m))
(cl:defmethod start_offset-val ((m <LaneCenterNodeLaneAttribute>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:start_offset-val is deprecated.  Use landmark_msgs-msg:start_offset instead.")
  (start_offset m))

(cl:ensure-generic-function 'end_offset-val :lambda-list '(m))
(cl:defmethod end_offset-val ((m <LaneCenterNodeLaneAttribute>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:end_offset-val is deprecated.  Use landmark_msgs-msg:end_offset instead.")
  (end_offset m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LaneCenterNodeLaneAttribute>)))
    "Constants for message type '<LaneCenterNodeLaneAttribute>"
  '((:SPEED_LIMIT_VALID . 1)
    (:CURVATURE_VALID . 2)
    (:SLOPE_VALID . 4)
    (:OFFSET_VALID . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LaneCenterNodeLaneAttribute)))
    "Constants for message type 'LaneCenterNodeLaneAttribute"
  '((:SPEED_LIMIT_VALID . 1)
    (:CURVATURE_VALID . 2)
    (:SLOPE_VALID . 4)
    (:OFFSET_VALID . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneCenterNodeLaneAttribute>) ostream)
  "Serializes a message object of type '<LaneCenterNodeLaneAttribute>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'start_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'end_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneCenterNodeLaneAttribute>) istream)
  "Deserializes a message object of type '<LaneCenterNodeLaneAttribute>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
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
    (cl:setf (cl:slot-value msg 'end_offset) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneCenterNodeLaneAttribute>)))
  "Returns string type for a message object of type '<LaneCenterNodeLaneAttribute>"
  "landmark_msgs/LaneCenterNodeLaneAttribute")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneCenterNodeLaneAttribute)))
  "Returns string type for a message object of type 'LaneCenterNodeLaneAttribute"
  "landmark_msgs/LaneCenterNodeLaneAttribute")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneCenterNodeLaneAttribute>)))
  "Returns md5sum for a message object of type '<LaneCenterNodeLaneAttribute>"
  "f929ebc900ff5902be17ad5ea1e55637")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneCenterNodeLaneAttribute)))
  "Returns md5sum for a message object of type 'LaneCenterNodeLaneAttribute"
  "f929ebc900ff5902be17ad5ea1e55637")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneCenterNodeLaneAttribute>)))
  "Returns full string definition for message of type '<LaneCenterNodeLaneAttribute>"
  (cl:format cl:nil "uint8 SPEED_LIMIT_VALID = 1~%uint8 CURVATURE_VALID = 2~%uint8 SLOPE_VALID = 4~%uint8 OFFSET_VALID = 8~%uint8 available~%float32 speed_limit~%float32 curvature~%float32 slope~%float32 start_offset~%float32 end_offset~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneCenterNodeLaneAttribute)))
  "Returns full string definition for message of type 'LaneCenterNodeLaneAttribute"
  (cl:format cl:nil "uint8 SPEED_LIMIT_VALID = 1~%uint8 CURVATURE_VALID = 2~%uint8 SLOPE_VALID = 4~%uint8 OFFSET_VALID = 8~%uint8 available~%float32 speed_limit~%float32 curvature~%float32 slope~%float32 start_offset~%float32 end_offset~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneCenterNodeLaneAttribute>))
  (cl:+ 0
     1
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneCenterNodeLaneAttribute>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneCenterNodeLaneAttribute
    (cl:cons ':available (available msg))
    (cl:cons ':speed_limit (speed_limit msg))
    (cl:cons ':curvature (curvature msg))
    (cl:cons ':slope (slope msg))
    (cl:cons ':start_offset (start_offset msg))
    (cl:cons ':end_offset (end_offset msg))
))
