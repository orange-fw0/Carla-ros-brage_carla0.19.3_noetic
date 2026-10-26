; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude VehicleCutinStateInfo.msg.html

(cl:defclass <VehicleCutinStateInfo> (roslisp-msg-protocol:ros-message)
  ((cutin_state_on_score
    :reader cutin_state_on_score
    :initarg :cutin_state_on_score
    :type cl:float
    :initform 0.0)
   (cutin_state
    :reader cutin_state
    :initarg :cutin_state
    :type perception_interface_msgs-msg:VehicleCutinStateEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:VehicleCutinStateEnum)))
)

(cl:defclass VehicleCutinStateInfo (<VehicleCutinStateInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleCutinStateInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleCutinStateInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<VehicleCutinStateInfo> is deprecated: use perception_interface_msgs-msg:VehicleCutinStateInfo instead.")))

(cl:ensure-generic-function 'cutin_state_on_score-val :lambda-list '(m))
(cl:defmethod cutin_state_on_score-val ((m <VehicleCutinStateInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:cutin_state_on_score-val is deprecated.  Use perception_interface_msgs-msg:cutin_state_on_score instead.")
  (cutin_state_on_score m))

(cl:ensure-generic-function 'cutin_state-val :lambda-list '(m))
(cl:defmethod cutin_state-val ((m <VehicleCutinStateInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:cutin_state-val is deprecated.  Use perception_interface_msgs-msg:cutin_state instead.")
  (cutin_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleCutinStateInfo>) ostream)
  "Serializes a message object of type '<VehicleCutinStateInfo>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cutin_state_on_score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cutin_state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleCutinStateInfo>) istream)
  "Deserializes a message object of type '<VehicleCutinStateInfo>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cutin_state_on_score) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cutin_state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleCutinStateInfo>)))
  "Returns string type for a message object of type '<VehicleCutinStateInfo>"
  "perception_interface_msgs/VehicleCutinStateInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleCutinStateInfo)))
  "Returns string type for a message object of type 'VehicleCutinStateInfo"
  "perception_interface_msgs/VehicleCutinStateInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleCutinStateInfo>)))
  "Returns md5sum for a message object of type '<VehicleCutinStateInfo>"
  "ad83d7a1b742550b2d26a9be211c7453")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleCutinStateInfo)))
  "Returns md5sum for a message object of type 'VehicleCutinStateInfo"
  "ad83d7a1b742550b2d26a9be211c7453")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleCutinStateInfo>)))
  "Returns full string definition for message of type '<VehicleCutinStateInfo>"
  (cl:format cl:nil "float32 cutin_state_on_score~%perception_interface_msgs/VehicleCutinStateEnum cutin_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleCutinStateEnum~%uint8 VEHICLE_CUTINSTATE_UNKNOWN = 0~%uint8 VEHICLE_CUTINSTATE_OFF = 1~%uint8 VEHICLE_CUTINSTATE_ON = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleCutinStateInfo)))
  "Returns full string definition for message of type 'VehicleCutinStateInfo"
  (cl:format cl:nil "float32 cutin_state_on_score~%perception_interface_msgs/VehicleCutinStateEnum cutin_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleCutinStateEnum~%uint8 VEHICLE_CUTINSTATE_UNKNOWN = 0~%uint8 VEHICLE_CUTINSTATE_OFF = 1~%uint8 VEHICLE_CUTINSTATE_ON = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleCutinStateInfo>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cutin_state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleCutinStateInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleCutinStateInfo
    (cl:cons ':cutin_state_on_score (cutin_state_on_score msg))
    (cl:cons ':cutin_state (cutin_state msg))
))
