; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude MirrorState.msg.html

(cl:defclass <MirrorState> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MirrorState (<MirrorState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MirrorState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MirrorState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<MirrorState> is deprecated: use endpoint_msgs-msg:MirrorState instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <MirrorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MirrorState>)))
    "Constants for message type '<MirrorState>"
  '((:NO_REQUEST . 0)
    (:REQUEST_UNFOLD . 1)
    (:REQUEST_FOLD . 2)
    (:RESERVED1 . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MirrorState)))
    "Constants for message type 'MirrorState"
  '((:NO_REQUEST . 0)
    (:REQUEST_UNFOLD . 1)
    (:REQUEST_FOLD . 2)
    (:RESERVED1 . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MirrorState>) ostream)
  "Serializes a message object of type '<MirrorState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MirrorState>) istream)
  "Deserializes a message object of type '<MirrorState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MirrorState>)))
  "Returns string type for a message object of type '<MirrorState>"
  "endpoint_msgs/MirrorState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MirrorState)))
  "Returns string type for a message object of type 'MirrorState"
  "endpoint_msgs/MirrorState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MirrorState>)))
  "Returns md5sum for a message object of type '<MirrorState>"
  "6b776a6cf0f29333d146fbcfb0b4fd65")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MirrorState)))
  "Returns md5sum for a message object of type 'MirrorState"
  "6b776a6cf0f29333d146fbcfb0b4fd65")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MirrorState>)))
  "Returns full string definition for message of type '<MirrorState>"
  (cl:format cl:nil "uint8 NO_REQUEST = 0~%uint8 REQUEST_UNFOLD = 1~%uint8 REQUEST_FOLD = 2~%uint8 RESERVED1 = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MirrorState)))
  "Returns full string definition for message of type 'MirrorState"
  (cl:format cl:nil "uint8 NO_REQUEST = 0~%uint8 REQUEST_UNFOLD = 1~%uint8 REQUEST_FOLD = 2~%uint8 RESERVED1 = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MirrorState>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MirrorState>))
  "Converts a ROS message object to a list"
  (cl:list 'MirrorState
    (cl:cons ':value (value msg))
))
