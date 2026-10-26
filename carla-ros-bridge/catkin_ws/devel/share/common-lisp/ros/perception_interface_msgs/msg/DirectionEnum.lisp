; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude DirectionEnum.msg.html

(cl:defclass <DirectionEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DirectionEnum (<DirectionEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DirectionEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DirectionEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<DirectionEnum> is deprecated: use perception_interface_msgs-msg:DirectionEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <DirectionEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DirectionEnum>)))
    "Constants for message type '<DirectionEnum>"
  '((:UNKNOWN . 0)
    (:ONCOMING . 1)
    (:PRECEDING . 2)
    (:OTHERS . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DirectionEnum)))
    "Constants for message type 'DirectionEnum"
  '((:UNKNOWN . 0)
    (:ONCOMING . 1)
    (:PRECEDING . 2)
    (:OTHERS . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DirectionEnum>) ostream)
  "Serializes a message object of type '<DirectionEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DirectionEnum>) istream)
  "Deserializes a message object of type '<DirectionEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DirectionEnum>)))
  "Returns string type for a message object of type '<DirectionEnum>"
  "perception_interface_msgs/DirectionEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DirectionEnum)))
  "Returns string type for a message object of type 'DirectionEnum"
  "perception_interface_msgs/DirectionEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DirectionEnum>)))
  "Returns md5sum for a message object of type '<DirectionEnum>"
  "4e31eecbabf072d7c007213439654dbd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DirectionEnum)))
  "Returns md5sum for a message object of type 'DirectionEnum"
  "4e31eecbabf072d7c007213439654dbd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DirectionEnum>)))
  "Returns full string definition for message of type '<DirectionEnum>"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 ONCOMING = 1~%uint8 PRECEDING = 2~%uint8 OTHERS = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DirectionEnum)))
  "Returns full string definition for message of type 'DirectionEnum"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 ONCOMING = 1~%uint8 PRECEDING = 2~%uint8 OTHERS = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DirectionEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DirectionEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'DirectionEnum
    (cl:cons ':value (value msg))
))
