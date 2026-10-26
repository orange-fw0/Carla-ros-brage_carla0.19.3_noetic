; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude CtaState.msg.html

(cl:defclass <CtaState> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CtaState (<CtaState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CtaState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CtaState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<CtaState> is deprecated: use endpoint_msgs-msg:CtaState instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <CtaState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CtaState>)))
    "Constants for message type '<CtaState>"
  '((:NO_WARNING . 0)
    (:WARNING_LEVE_1 . 1)
    (:WARNING_LEVE_2 . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CtaState)))
    "Constants for message type 'CtaState"
  '((:NO_WARNING . 0)
    (:WARNING_LEVE_1 . 1)
    (:WARNING_LEVE_2 . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CtaState>) ostream)
  "Serializes a message object of type '<CtaState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CtaState>) istream)
  "Deserializes a message object of type '<CtaState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CtaState>)))
  "Returns string type for a message object of type '<CtaState>"
  "endpoint_msgs/CtaState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CtaState)))
  "Returns string type for a message object of type 'CtaState"
  "endpoint_msgs/CtaState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CtaState>)))
  "Returns md5sum for a message object of type '<CtaState>"
  "7f227b6b06394a644dd470c427758e87")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CtaState)))
  "Returns md5sum for a message object of type 'CtaState"
  "7f227b6b06394a644dd470c427758e87")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CtaState>)))
  "Returns full string definition for message of type '<CtaState>"
  (cl:format cl:nil "uint8 NO_WARNING = 0~%uint8 WARNING_LEVE_1 = 1~%uint8 WARNING_LEVE_2 = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CtaState)))
  "Returns full string definition for message of type 'CtaState"
  (cl:format cl:nil "uint8 NO_WARNING = 0~%uint8 WARNING_LEVE_1 = 1~%uint8 WARNING_LEVE_2 = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CtaState>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CtaState>))
  "Converts a ROS message object to a list"
  (cl:list 'CtaState
    (cl:cons ':value (value msg))
))
