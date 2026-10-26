; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude SysLPNPMappingTaskType.msg.html

(cl:defclass <SysLPNPMappingTaskType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SysLPNPMappingTaskType (<SysLPNPMappingTaskType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SysLPNPMappingTaskType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SysLPNPMappingTaskType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<SysLPNPMappingTaskType> is deprecated: use system_manager_msgs-msg:SysLPNPMappingTaskType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SysLPNPMappingTaskType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:value-val is deprecated.  Use system_manager_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SysLPNPMappingTaskType>)))
    "Constants for message type '<SysLPNPMappingTaskType>"
  '((:DROP_OFF . 0)
    (:PICK_UP . 1)
    (:PARK_IN . 2)
    (:PARK_OUT . 3)
    (:VIRTUAL_PARK_IN . 4)
    (:NUM . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SysLPNPMappingTaskType)))
    "Constants for message type 'SysLPNPMappingTaskType"
  '((:DROP_OFF . 0)
    (:PICK_UP . 1)
    (:PARK_IN . 2)
    (:PARK_OUT . 3)
    (:VIRTUAL_PARK_IN . 4)
    (:NUM . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SysLPNPMappingTaskType>) ostream)
  "Serializes a message object of type '<SysLPNPMappingTaskType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SysLPNPMappingTaskType>) istream)
  "Deserializes a message object of type '<SysLPNPMappingTaskType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SysLPNPMappingTaskType>)))
  "Returns string type for a message object of type '<SysLPNPMappingTaskType>"
  "system_manager_msgs/SysLPNPMappingTaskType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SysLPNPMappingTaskType)))
  "Returns string type for a message object of type 'SysLPNPMappingTaskType"
  "system_manager_msgs/SysLPNPMappingTaskType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SysLPNPMappingTaskType>)))
  "Returns md5sum for a message object of type '<SysLPNPMappingTaskType>"
  "643aa78c2bf5665327e398cd393d7fc4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SysLPNPMappingTaskType)))
  "Returns md5sum for a message object of type 'SysLPNPMappingTaskType"
  "643aa78c2bf5665327e398cd393d7fc4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SysLPNPMappingTaskType>)))
  "Returns full string definition for message of type '<SysLPNPMappingTaskType>"
  (cl:format cl:nil "uint8 DROP_OFF = 0~%uint8 PICK_UP = 1~%uint8 PARK_IN = 2~%uint8 PARK_OUT = 3~%uint8 VIRTUAL_PARK_IN = 4~%uint8 NUM = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SysLPNPMappingTaskType)))
  "Returns full string definition for message of type 'SysLPNPMappingTaskType"
  (cl:format cl:nil "uint8 DROP_OFF = 0~%uint8 PICK_UP = 1~%uint8 PARK_IN = 2~%uint8 PARK_OUT = 3~%uint8 VIRTUAL_PARK_IN = 4~%uint8 NUM = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SysLPNPMappingTaskType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SysLPNPMappingTaskType>))
  "Converts a ROS message object to a list"
  (cl:list 'SysLPNPMappingTaskType
    (cl:cons ':value (value msg))
))
