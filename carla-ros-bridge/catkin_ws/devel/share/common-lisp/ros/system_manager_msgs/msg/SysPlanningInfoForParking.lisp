; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude SysPlanningInfoForParking.msg.html

(cl:defclass <SysPlanningInfoForParking> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type system_manager_msgs-msg:SysPlanningModeTypeForParking
    :initform (cl:make-instance 'system_manager_msgs-msg:SysPlanningModeTypeForParking))
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (wireless_charge
    :reader wireless_charge
    :initarg :wireless_charge
    :type cl:boolean
    :initform cl:nil)
   (parking_direction
    :reader parking_direction
    :initarg :parking_direction
    :type system_manager_msgs-msg:ParkingDirectionType
    :initform (cl:make-instance 'system_manager_msgs-msg:ParkingDirectionType)))
)

(cl:defclass SysPlanningInfoForParking (<SysPlanningInfoForParking>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SysPlanningInfoForParking>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SysPlanningInfoForParking)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<SysPlanningInfoForParking> is deprecated: use system_manager_msgs-msg:SysPlanningInfoForParking instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <SysPlanningInfoForParking>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:mode-val is deprecated.  Use system_manager_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <SysPlanningInfoForParking>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:id-val is deprecated.  Use system_manager_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'wireless_charge-val :lambda-list '(m))
(cl:defmethod wireless_charge-val ((m <SysPlanningInfoForParking>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:wireless_charge-val is deprecated.  Use system_manager_msgs-msg:wireless_charge instead.")
  (wireless_charge m))

(cl:ensure-generic-function 'parking_direction-val :lambda-list '(m))
(cl:defmethod parking_direction-val ((m <SysPlanningInfoForParking>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:parking_direction-val is deprecated.  Use system_manager_msgs-msg:parking_direction instead.")
  (parking_direction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SysPlanningInfoForParking>) ostream)
  "Serializes a message object of type '<SysPlanningInfoForParking>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mode) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'wireless_charge) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'parking_direction) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SysPlanningInfoForParking>) istream)
  "Deserializes a message object of type '<SysPlanningInfoForParking>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mode) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wireless_charge) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'parking_direction) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SysPlanningInfoForParking>)))
  "Returns string type for a message object of type '<SysPlanningInfoForParking>"
  "system_manager_msgs/SysPlanningInfoForParking")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SysPlanningInfoForParking)))
  "Returns string type for a message object of type 'SysPlanningInfoForParking"
  "system_manager_msgs/SysPlanningInfoForParking")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SysPlanningInfoForParking>)))
  "Returns md5sum for a message object of type '<SysPlanningInfoForParking>"
  "50faaf8c956959a45a6177170cecd2f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SysPlanningInfoForParking)))
  "Returns md5sum for a message object of type 'SysPlanningInfoForParking"
  "50faaf8c956959a45a6177170cecd2f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SysPlanningInfoForParking>)))
  "Returns full string definition for message of type '<SysPlanningInfoForParking>"
  (cl:format cl:nil "system_manager_msgs/SysPlanningModeTypeForParking mode~%uint32 id~%bool wireless_charge~%system_manager_msgs/ParkingDirectionType parking_direction~%~%================================================================================~%MSG: system_manager_msgs/SysPlanningModeTypeForParking~%uint8 PLANNING_APA = 1~%uint8 PLANNING_LVP = 2~%uint8 PLANNING_SVP = 3~%uint8 PLANNING_NEARBY = 4~%uint8 value~%~%================================================================================~%MSG: system_manager_msgs/ParkingDirectionType~%uint32 AUTO_SELECT = 0~%uint32 PERPENDICULAR_FRONT_OUT = 1~%uint32 PERPENDICULAR_FRONT_LEFT_OUT = 2~%uint32 PERPENDICULAR_FRONT_RIGHT_OUT = 4~%uint32 PERPENDICULAR_REAR_OUT = 8~%uint32 PERPENDICULAR_REAR_LEFT_OUT = 16~%uint32 PERPENDICULAR_REAR_RIGHT_OUT = 32~%uint32 PARALLEL_LEFT_OUT = 64~%uint32 PARALLEL_LEFT_FRONT_OUT = 128~%uint32 PARALLEL_RIGHT_OUT = 256~%uint32 PARALLEL_RIGHT_FRONT_OUT = 512~%uint32 FRONT_IN = 2001~%uint32 BACK_IN = 2002~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SysPlanningInfoForParking)))
  "Returns full string definition for message of type 'SysPlanningInfoForParking"
  (cl:format cl:nil "system_manager_msgs/SysPlanningModeTypeForParking mode~%uint32 id~%bool wireless_charge~%system_manager_msgs/ParkingDirectionType parking_direction~%~%================================================================================~%MSG: system_manager_msgs/SysPlanningModeTypeForParking~%uint8 PLANNING_APA = 1~%uint8 PLANNING_LVP = 2~%uint8 PLANNING_SVP = 3~%uint8 PLANNING_NEARBY = 4~%uint8 value~%~%================================================================================~%MSG: system_manager_msgs/ParkingDirectionType~%uint32 AUTO_SELECT = 0~%uint32 PERPENDICULAR_FRONT_OUT = 1~%uint32 PERPENDICULAR_FRONT_LEFT_OUT = 2~%uint32 PERPENDICULAR_FRONT_RIGHT_OUT = 4~%uint32 PERPENDICULAR_REAR_OUT = 8~%uint32 PERPENDICULAR_REAR_LEFT_OUT = 16~%uint32 PERPENDICULAR_REAR_RIGHT_OUT = 32~%uint32 PARALLEL_LEFT_OUT = 64~%uint32 PARALLEL_LEFT_FRONT_OUT = 128~%uint32 PARALLEL_RIGHT_OUT = 256~%uint32 PARALLEL_RIGHT_FRONT_OUT = 512~%uint32 FRONT_IN = 2001~%uint32 BACK_IN = 2002~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SysPlanningInfoForParking>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mode))
     4
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'parking_direction))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SysPlanningInfoForParking>))
  "Converts a ROS message object to a list"
  (cl:list 'SysPlanningInfoForParking
    (cl:cons ':mode (mode msg))
    (cl:cons ':id (id msg))
    (cl:cons ':wireless_charge (wireless_charge msg))
    (cl:cons ':parking_direction (parking_direction msg))
))
