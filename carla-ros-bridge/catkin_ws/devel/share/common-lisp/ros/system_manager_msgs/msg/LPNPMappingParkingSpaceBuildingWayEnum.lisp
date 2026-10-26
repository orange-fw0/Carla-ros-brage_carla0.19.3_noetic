; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude LPNPMappingParkingSpaceBuildingWayEnum.msg.html

(cl:defclass <LPNPMappingParkingSpaceBuildingWayEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LPNPMappingParkingSpaceBuildingWayEnum (<LPNPMappingParkingSpaceBuildingWayEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LPNPMappingParkingSpaceBuildingWayEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LPNPMappingParkingSpaceBuildingWayEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<LPNPMappingParkingSpaceBuildingWayEnum> is deprecated: use system_manager_msgs-msg:LPNPMappingParkingSpaceBuildingWayEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LPNPMappingParkingSpaceBuildingWayEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:value-val is deprecated.  Use system_manager_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LPNPMappingParkingSpaceBuildingWayEnum>)))
    "Constants for message type '<LPNPMappingParkingSpaceBuildingWayEnum>"
  '((:UNKNOWN . 0)
    (:PERCEIVED_BELOW . 1)
    (:USER_SELECTED . 2)
    (:NO_TARGET_SLOT . 3)
    (:VIRTUAL . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LPNPMappingParkingSpaceBuildingWayEnum)))
    "Constants for message type 'LPNPMappingParkingSpaceBuildingWayEnum"
  '((:UNKNOWN . 0)
    (:PERCEIVED_BELOW . 1)
    (:USER_SELECTED . 2)
    (:NO_TARGET_SLOT . 3)
    (:VIRTUAL . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LPNPMappingParkingSpaceBuildingWayEnum>) ostream)
  "Serializes a message object of type '<LPNPMappingParkingSpaceBuildingWayEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LPNPMappingParkingSpaceBuildingWayEnum>) istream)
  "Deserializes a message object of type '<LPNPMappingParkingSpaceBuildingWayEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LPNPMappingParkingSpaceBuildingWayEnum>)))
  "Returns string type for a message object of type '<LPNPMappingParkingSpaceBuildingWayEnum>"
  "system_manager_msgs/LPNPMappingParkingSpaceBuildingWayEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LPNPMappingParkingSpaceBuildingWayEnum)))
  "Returns string type for a message object of type 'LPNPMappingParkingSpaceBuildingWayEnum"
  "system_manager_msgs/LPNPMappingParkingSpaceBuildingWayEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LPNPMappingParkingSpaceBuildingWayEnum>)))
  "Returns md5sum for a message object of type '<LPNPMappingParkingSpaceBuildingWayEnum>"
  "14314fe954b6d64c8501b691e5f7cb76")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LPNPMappingParkingSpaceBuildingWayEnum)))
  "Returns md5sum for a message object of type 'LPNPMappingParkingSpaceBuildingWayEnum"
  "14314fe954b6d64c8501b691e5f7cb76")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LPNPMappingParkingSpaceBuildingWayEnum>)))
  "Returns full string definition for message of type '<LPNPMappingParkingSpaceBuildingWayEnum>"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 PERCEIVED_BELOW = 1~%uint8 USER_SELECTED = 2~%uint8 NO_TARGET_SLOT = 3~%uint8 VIRTUAL = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LPNPMappingParkingSpaceBuildingWayEnum)))
  "Returns full string definition for message of type 'LPNPMappingParkingSpaceBuildingWayEnum"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 PERCEIVED_BELOW = 1~%uint8 USER_SELECTED = 2~%uint8 NO_TARGET_SLOT = 3~%uint8 VIRTUAL = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LPNPMappingParkingSpaceBuildingWayEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LPNPMappingParkingSpaceBuildingWayEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'LPNPMappingParkingSpaceBuildingWayEnum
    (cl:cons ':value (value msg))
))
