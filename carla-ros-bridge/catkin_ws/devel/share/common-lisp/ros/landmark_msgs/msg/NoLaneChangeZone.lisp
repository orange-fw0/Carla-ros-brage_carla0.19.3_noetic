; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude NoLaneChangeZone.msg.html

(cl:defclass <NoLaneChangeZone> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
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

(cl:defclass NoLaneChangeZone (<NoLaneChangeZone>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NoLaneChangeZone>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NoLaneChangeZone)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<NoLaneChangeZone> is deprecated: use landmark_msgs-msg:NoLaneChangeZone instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <NoLaneChangeZone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:type-val is deprecated.  Use landmark_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'start_offset-val :lambda-list '(m))
(cl:defmethod start_offset-val ((m <NoLaneChangeZone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:start_offset-val is deprecated.  Use landmark_msgs-msg:start_offset instead.")
  (start_offset m))

(cl:ensure-generic-function 'end_offset-val :lambda-list '(m))
(cl:defmethod end_offset-val ((m <NoLaneChangeZone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:end_offset-val is deprecated.  Use landmark_msgs-msg:end_offset instead.")
  (end_offset m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NoLaneChangeZone>)))
    "Constants for message type '<NoLaneChangeZone>"
  '((:UNKNOWN . 1)
    (:SOLID_LINE . 2)
    (:BUS_LANE . 3)
    (:OTHERS . 99))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NoLaneChangeZone)))
    "Constants for message type 'NoLaneChangeZone"
  '((:UNKNOWN . 1)
    (:SOLID_LINE . 2)
    (:BUS_LANE . 3)
    (:OTHERS . 99))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NoLaneChangeZone>) ostream)
  "Serializes a message object of type '<NoLaneChangeZone>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NoLaneChangeZone>) istream)
  "Deserializes a message object of type '<NoLaneChangeZone>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NoLaneChangeZone>)))
  "Returns string type for a message object of type '<NoLaneChangeZone>"
  "landmark_msgs/NoLaneChangeZone")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NoLaneChangeZone)))
  "Returns string type for a message object of type 'NoLaneChangeZone"
  "landmark_msgs/NoLaneChangeZone")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NoLaneChangeZone>)))
  "Returns md5sum for a message object of type '<NoLaneChangeZone>"
  "5c98538705c714cdca4883a9b81065a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NoLaneChangeZone)))
  "Returns md5sum for a message object of type 'NoLaneChangeZone"
  "5c98538705c714cdca4883a9b81065a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NoLaneChangeZone>)))
  "Returns full string definition for message of type '<NoLaneChangeZone>"
  (cl:format cl:nil "uint8 UNKNOWN = 1~%uint8 SOLID_LINE = 2~%uint8 BUS_LANE = 3~%uint8 OTHERS = 99~%uint8 type~%float32 start_offset~%float32 end_offset~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NoLaneChangeZone)))
  "Returns full string definition for message of type 'NoLaneChangeZone"
  (cl:format cl:nil "uint8 UNKNOWN = 1~%uint8 SOLID_LINE = 2~%uint8 BUS_LANE = 3~%uint8 OTHERS = 99~%uint8 type~%float32 start_offset~%float32 end_offset~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NoLaneChangeZone>))
  (cl:+ 0
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NoLaneChangeZone>))
  "Converts a ROS message object to a list"
  (cl:list 'NoLaneChangeZone
    (cl:cons ':type (type msg))
    (cl:cons ':start_offset (start_offset msg))
    (cl:cons ':end_offset (end_offset msg))
))
