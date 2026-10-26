; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude WireControlType.msg.html

(cl:defclass <WireControlType> (roslisp-msg-protocol:ros-message)
  ((wire_control_type
    :reader wire_control_type
    :initarg :wire_control_type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WireControlType (<WireControlType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WireControlType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WireControlType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<WireControlType> is deprecated: use endpoint_msgs-msg:WireControlType instead.")))

(cl:ensure-generic-function 'wire_control_type-val :lambda-list '(m))
(cl:defmethod wire_control_type-val ((m <WireControlType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:wire_control_type-val is deprecated.  Use endpoint_msgs-msg:wire_control_type instead.")
  (wire_control_type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WireControlType>)))
    "Constants for message type '<WireControlType>"
  '((:SYETEM_REQ_NONE . 0)
    (:SYSTEM_REQ_PILOT . 1)
    (:SYSTEM_REQ_APA . 2)
    (:SYSTEM_REQ_ACC . 3)
    (:SYSTEM_REQ_AVP . 4)
    (:SYSTEM_REQ_LVP . 5)
    (:SYSTEM_REQ_MRC . 6)
    (:RESERVED . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WireControlType)))
    "Constants for message type 'WireControlType"
  '((:SYETEM_REQ_NONE . 0)
    (:SYSTEM_REQ_PILOT . 1)
    (:SYSTEM_REQ_APA . 2)
    (:SYSTEM_REQ_ACC . 3)
    (:SYSTEM_REQ_AVP . 4)
    (:SYSTEM_REQ_LVP . 5)
    (:SYSTEM_REQ_MRC . 6)
    (:RESERVED . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WireControlType>) ostream)
  "Serializes a message object of type '<WireControlType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wire_control_type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WireControlType>) istream)
  "Deserializes a message object of type '<WireControlType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wire_control_type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WireControlType>)))
  "Returns string type for a message object of type '<WireControlType>"
  "endpoint_msgs/WireControlType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WireControlType)))
  "Returns string type for a message object of type 'WireControlType"
  "endpoint_msgs/WireControlType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WireControlType>)))
  "Returns md5sum for a message object of type '<WireControlType>"
  "ee0dd491a418b1e44e75e53ab91ecd8c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WireControlType)))
  "Returns md5sum for a message object of type 'WireControlType"
  "ee0dd491a418b1e44e75e53ab91ecd8c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WireControlType>)))
  "Returns full string definition for message of type '<WireControlType>"
  (cl:format cl:nil "uint8 SYETEM_REQ_NONE = 0~%uint8 SYSTEM_REQ_PILOT = 1~%uint8 SYSTEM_REQ_APA = 2~%uint8 SYSTEM_REQ_ACC = 3~%uint8 SYSTEM_REQ_AVP = 4~%uint8 SYSTEM_REQ_LVP = 5~%uint8 SYSTEM_REQ_MRC = 6~%uint8 RESERVED = 7~%uint8 wire_control_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WireControlType)))
  "Returns full string definition for message of type 'WireControlType"
  (cl:format cl:nil "uint8 SYETEM_REQ_NONE = 0~%uint8 SYSTEM_REQ_PILOT = 1~%uint8 SYSTEM_REQ_APA = 2~%uint8 SYSTEM_REQ_ACC = 3~%uint8 SYSTEM_REQ_AVP = 4~%uint8 SYSTEM_REQ_LVP = 5~%uint8 SYSTEM_REQ_MRC = 6~%uint8 RESERVED = 7~%uint8 wire_control_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WireControlType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WireControlType>))
  "Converts a ROS message object to a list"
  (cl:list 'WireControlType
    (cl:cons ':wire_control_type (wire_control_type msg))
))
