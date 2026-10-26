; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude DataDesensibilisationTypeEnum.msg.html

(cl:defclass <DataDesensibilisationTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DataDesensibilisationTypeEnum (<DataDesensibilisationTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DataDesensibilisationTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DataDesensibilisationTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<DataDesensibilisationTypeEnum> is deprecated: use perception_interface_msgs-msg:DataDesensibilisationTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <DataDesensibilisationTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DataDesensibilisationTypeEnum>)))
    "Constants for message type '<DataDesensibilisationTypeEnum>"
  '((:DATA_DESENSIBILISATION_TYPE_UNKNOWN . 0)
    (:DATA_DESENSIBILISATION_TYPE_HUMAN_FACE . 1)
    (:DATA_DESENSIBILISATION_TYPE_VECHILE_IDENTIFICATION_NUMBER . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DataDesensibilisationTypeEnum)))
    "Constants for message type 'DataDesensibilisationTypeEnum"
  '((:DATA_DESENSIBILISATION_TYPE_UNKNOWN . 0)
    (:DATA_DESENSIBILISATION_TYPE_HUMAN_FACE . 1)
    (:DATA_DESENSIBILISATION_TYPE_VECHILE_IDENTIFICATION_NUMBER . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DataDesensibilisationTypeEnum>) ostream)
  "Serializes a message object of type '<DataDesensibilisationTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DataDesensibilisationTypeEnum>) istream)
  "Deserializes a message object of type '<DataDesensibilisationTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DataDesensibilisationTypeEnum>)))
  "Returns string type for a message object of type '<DataDesensibilisationTypeEnum>"
  "perception_interface_msgs/DataDesensibilisationTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DataDesensibilisationTypeEnum)))
  "Returns string type for a message object of type 'DataDesensibilisationTypeEnum"
  "perception_interface_msgs/DataDesensibilisationTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DataDesensibilisationTypeEnum>)))
  "Returns md5sum for a message object of type '<DataDesensibilisationTypeEnum>"
  "f506dc99f8ea8defa69baabd0b632e4b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DataDesensibilisationTypeEnum)))
  "Returns md5sum for a message object of type 'DataDesensibilisationTypeEnum"
  "f506dc99f8ea8defa69baabd0b632e4b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DataDesensibilisationTypeEnum>)))
  "Returns full string definition for message of type '<DataDesensibilisationTypeEnum>"
  (cl:format cl:nil "uint8 DATA_DESENSIBILISATION_TYPE_UNKNOWN = 0~%uint8 DATA_DESENSIBILISATION_TYPE_HUMAN_FACE = 1~%uint8 DATA_DESENSIBILISATION_TYPE_VECHILE_IDENTIFICATION_NUMBER = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DataDesensibilisationTypeEnum)))
  "Returns full string definition for message of type 'DataDesensibilisationTypeEnum"
  (cl:format cl:nil "uint8 DATA_DESENSIBILISATION_TYPE_UNKNOWN = 0~%uint8 DATA_DESENSIBILISATION_TYPE_HUMAN_FACE = 1~%uint8 DATA_DESENSIBILISATION_TYPE_VECHILE_IDENTIFICATION_NUMBER = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DataDesensibilisationTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DataDesensibilisationTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'DataDesensibilisationTypeEnum
    (cl:cons ':value (value msg))
))
