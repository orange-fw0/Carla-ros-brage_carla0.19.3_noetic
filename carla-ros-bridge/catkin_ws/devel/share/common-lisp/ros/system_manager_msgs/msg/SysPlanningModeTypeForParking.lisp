; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude SysPlanningModeTypeForParking.msg.html

(cl:defclass <SysPlanningModeTypeForParking> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SysPlanningModeTypeForParking (<SysPlanningModeTypeForParking>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SysPlanningModeTypeForParking>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SysPlanningModeTypeForParking)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<SysPlanningModeTypeForParking> is deprecated: use system_manager_msgs-msg:SysPlanningModeTypeForParking instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SysPlanningModeTypeForParking>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:value-val is deprecated.  Use system_manager_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SysPlanningModeTypeForParking>)))
    "Constants for message type '<SysPlanningModeTypeForParking>"
  '((:PLANNING_APA . 1)
    (:PLANNING_LVP . 2)
    (:PLANNING_SVP . 3)
    (:PLANNING_NEARBY . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SysPlanningModeTypeForParking)))
    "Constants for message type 'SysPlanningModeTypeForParking"
  '((:PLANNING_APA . 1)
    (:PLANNING_LVP . 2)
    (:PLANNING_SVP . 3)
    (:PLANNING_NEARBY . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SysPlanningModeTypeForParking>) ostream)
  "Serializes a message object of type '<SysPlanningModeTypeForParking>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SysPlanningModeTypeForParking>) istream)
  "Deserializes a message object of type '<SysPlanningModeTypeForParking>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SysPlanningModeTypeForParking>)))
  "Returns string type for a message object of type '<SysPlanningModeTypeForParking>"
  "system_manager_msgs/SysPlanningModeTypeForParking")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SysPlanningModeTypeForParking)))
  "Returns string type for a message object of type 'SysPlanningModeTypeForParking"
  "system_manager_msgs/SysPlanningModeTypeForParking")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SysPlanningModeTypeForParking>)))
  "Returns md5sum for a message object of type '<SysPlanningModeTypeForParking>"
  "7439e0639db85e43370ebb9735e74d92")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SysPlanningModeTypeForParking)))
  "Returns md5sum for a message object of type 'SysPlanningModeTypeForParking"
  "7439e0639db85e43370ebb9735e74d92")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SysPlanningModeTypeForParking>)))
  "Returns full string definition for message of type '<SysPlanningModeTypeForParking>"
  (cl:format cl:nil "uint8 PLANNING_APA = 1~%uint8 PLANNING_LVP = 2~%uint8 PLANNING_SVP = 3~%uint8 PLANNING_NEARBY = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SysPlanningModeTypeForParking)))
  "Returns full string definition for message of type 'SysPlanningModeTypeForParking"
  (cl:format cl:nil "uint8 PLANNING_APA = 1~%uint8 PLANNING_LVP = 2~%uint8 PLANNING_SVP = 3~%uint8 PLANNING_NEARBY = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SysPlanningModeTypeForParking>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SysPlanningModeTypeForParking>))
  "Converts a ROS message object to a list"
  (cl:list 'SysPlanningModeTypeForParking
    (cl:cons ':value (value msg))
))
