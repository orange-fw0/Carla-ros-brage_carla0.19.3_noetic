; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude WindowType.msg.html

(cl:defclass <WindowType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WindowType (<WindowType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WindowType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WindowType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<WindowType> is deprecated: use endpoint_msgs-msg:WindowType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <WindowType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WindowType>)))
    "Constants for message type '<WindowType>"
  '((:LIFT_STOP . 0)
    (:LIFT_UP . 1)
    (:LIFT_DOWN . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WindowType)))
    "Constants for message type 'WindowType"
  '((:LIFT_STOP . 0)
    (:LIFT_UP . 1)
    (:LIFT_DOWN . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WindowType>) ostream)
  "Serializes a message object of type '<WindowType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WindowType>) istream)
  "Deserializes a message object of type '<WindowType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WindowType>)))
  "Returns string type for a message object of type '<WindowType>"
  "endpoint_msgs/WindowType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WindowType)))
  "Returns string type for a message object of type 'WindowType"
  "endpoint_msgs/WindowType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WindowType>)))
  "Returns md5sum for a message object of type '<WindowType>"
  "c9e4f3e4494222cf374ff0b79a7bb9da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WindowType)))
  "Returns md5sum for a message object of type 'WindowType"
  "c9e4f3e4494222cf374ff0b79a7bb9da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WindowType>)))
  "Returns full string definition for message of type '<WindowType>"
  (cl:format cl:nil "uint8 LIFT_STOP = 0~%uint8 LIFT_UP = 1~%uint8 LIFT_DOWN = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WindowType)))
  "Returns full string definition for message of type 'WindowType"
  (cl:format cl:nil "uint8 LIFT_STOP = 0~%uint8 LIFT_UP = 1~%uint8 LIFT_DOWN = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WindowType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WindowType>))
  "Converts a ROS message object to a list"
  (cl:list 'WindowType
    (cl:cons ':value (value msg))
))
