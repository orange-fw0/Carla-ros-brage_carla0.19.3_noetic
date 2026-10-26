; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude VehicleBeamLightInfo.msg.html

(cl:defclass <VehicleBeamLightInfo> (roslisp-msg-protocol:ros-message)
  ((beam_light_on_score
    :reader beam_light_on_score
    :initarg :beam_light_on_score
    :type cl:float
    :initform 0.0)
   (beam_light_state
    :reader beam_light_state
    :initarg :beam_light_state
    :type perception_interface_msgs-msg:VehicleBeamLightEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:VehicleBeamLightEnum)))
)

(cl:defclass VehicleBeamLightInfo (<VehicleBeamLightInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleBeamLightInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleBeamLightInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<VehicleBeamLightInfo> is deprecated: use perception_interface_msgs-msg:VehicleBeamLightInfo instead.")))

(cl:ensure-generic-function 'beam_light_on_score-val :lambda-list '(m))
(cl:defmethod beam_light_on_score-val ((m <VehicleBeamLightInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:beam_light_on_score-val is deprecated.  Use perception_interface_msgs-msg:beam_light_on_score instead.")
  (beam_light_on_score m))

(cl:ensure-generic-function 'beam_light_state-val :lambda-list '(m))
(cl:defmethod beam_light_state-val ((m <VehicleBeamLightInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:beam_light_state-val is deprecated.  Use perception_interface_msgs-msg:beam_light_state instead.")
  (beam_light_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleBeamLightInfo>) ostream)
  "Serializes a message object of type '<VehicleBeamLightInfo>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'beam_light_on_score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'beam_light_state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleBeamLightInfo>) istream)
  "Deserializes a message object of type '<VehicleBeamLightInfo>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'beam_light_on_score) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'beam_light_state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleBeamLightInfo>)))
  "Returns string type for a message object of type '<VehicleBeamLightInfo>"
  "perception_interface_msgs/VehicleBeamLightInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleBeamLightInfo)))
  "Returns string type for a message object of type 'VehicleBeamLightInfo"
  "perception_interface_msgs/VehicleBeamLightInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleBeamLightInfo>)))
  "Returns md5sum for a message object of type '<VehicleBeamLightInfo>"
  "1ccd62a35dcb7c8f93813ae0aab70949")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleBeamLightInfo)))
  "Returns md5sum for a message object of type 'VehicleBeamLightInfo"
  "1ccd62a35dcb7c8f93813ae0aab70949")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleBeamLightInfo>)))
  "Returns full string definition for message of type '<VehicleBeamLightInfo>"
  (cl:format cl:nil "float32 beam_light_on_score~%perception_interface_msgs/VehicleBeamLightEnum beam_light_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleBeamLightEnum~%uint8 VEHICLE_BEAMLIGHT_UNKNOWN = 0~%uint8 VEHICLE_BEAMLIGHT_OFF = 1~%uint8 VEHICLE_BEAMLIGHT_LOW = 2~%uint8 VEHICLE_BEAMLIGHT_HIGH = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleBeamLightInfo)))
  "Returns full string definition for message of type 'VehicleBeamLightInfo"
  (cl:format cl:nil "float32 beam_light_on_score~%perception_interface_msgs/VehicleBeamLightEnum beam_light_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleBeamLightEnum~%uint8 VEHICLE_BEAMLIGHT_UNKNOWN = 0~%uint8 VEHICLE_BEAMLIGHT_OFF = 1~%uint8 VEHICLE_BEAMLIGHT_LOW = 2~%uint8 VEHICLE_BEAMLIGHT_HIGH = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleBeamLightInfo>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'beam_light_state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleBeamLightInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleBeamLightInfo
    (cl:cons ':beam_light_on_score (beam_light_on_score msg))
    (cl:cons ':beam_light_state (beam_light_state msg))
))
