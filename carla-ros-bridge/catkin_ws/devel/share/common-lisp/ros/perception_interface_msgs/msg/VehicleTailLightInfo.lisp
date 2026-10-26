; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude VehicleTailLightInfo.msg.html

(cl:defclass <VehicleTailLightInfo> (roslisp-msg-protocol:ros-message)
  ((tail_light_score
    :reader tail_light_score
    :initarg :tail_light_score
    :type cl:float
    :initform 0.0)
   (tail_light_unkown_score
    :reader tail_light_unkown_score
    :initarg :tail_light_unkown_score
    :type cl:float
    :initform 0.0)
   (tail_light_off_score
    :reader tail_light_off_score
    :initarg :tail_light_off_score
    :type cl:float
    :initform 0.0)
   (tail_light_on_score
    :reader tail_light_on_score
    :initarg :tail_light_on_score
    :type cl:float
    :initform 0.0)
   (tail_light_high_on_score
    :reader tail_light_high_on_score
    :initarg :tail_light_high_on_score
    :type cl:float
    :initform 0.0)
   (tail_light_state
    :reader tail_light_state
    :initarg :tail_light_state
    :type perception_interface_msgs-msg:VehicleTailLightEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:VehicleTailLightEnum)))
)

(cl:defclass VehicleTailLightInfo (<VehicleTailLightInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleTailLightInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleTailLightInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<VehicleTailLightInfo> is deprecated: use perception_interface_msgs-msg:VehicleTailLightInfo instead.")))

(cl:ensure-generic-function 'tail_light_score-val :lambda-list '(m))
(cl:defmethod tail_light_score-val ((m <VehicleTailLightInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:tail_light_score-val is deprecated.  Use perception_interface_msgs-msg:tail_light_score instead.")
  (tail_light_score m))

(cl:ensure-generic-function 'tail_light_unkown_score-val :lambda-list '(m))
(cl:defmethod tail_light_unkown_score-val ((m <VehicleTailLightInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:tail_light_unkown_score-val is deprecated.  Use perception_interface_msgs-msg:tail_light_unkown_score instead.")
  (tail_light_unkown_score m))

(cl:ensure-generic-function 'tail_light_off_score-val :lambda-list '(m))
(cl:defmethod tail_light_off_score-val ((m <VehicleTailLightInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:tail_light_off_score-val is deprecated.  Use perception_interface_msgs-msg:tail_light_off_score instead.")
  (tail_light_off_score m))

(cl:ensure-generic-function 'tail_light_on_score-val :lambda-list '(m))
(cl:defmethod tail_light_on_score-val ((m <VehicleTailLightInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:tail_light_on_score-val is deprecated.  Use perception_interface_msgs-msg:tail_light_on_score instead.")
  (tail_light_on_score m))

(cl:ensure-generic-function 'tail_light_high_on_score-val :lambda-list '(m))
(cl:defmethod tail_light_high_on_score-val ((m <VehicleTailLightInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:tail_light_high_on_score-val is deprecated.  Use perception_interface_msgs-msg:tail_light_high_on_score instead.")
  (tail_light_high_on_score m))

(cl:ensure-generic-function 'tail_light_state-val :lambda-list '(m))
(cl:defmethod tail_light_state-val ((m <VehicleTailLightInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:tail_light_state-val is deprecated.  Use perception_interface_msgs-msg:tail_light_state instead.")
  (tail_light_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleTailLightInfo>) ostream)
  "Serializes a message object of type '<VehicleTailLightInfo>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tail_light_score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tail_light_unkown_score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tail_light_off_score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tail_light_on_score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tail_light_high_on_score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tail_light_state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleTailLightInfo>) istream)
  "Deserializes a message object of type '<VehicleTailLightInfo>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tail_light_score) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tail_light_unkown_score) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tail_light_off_score) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tail_light_on_score) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tail_light_high_on_score) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tail_light_state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleTailLightInfo>)))
  "Returns string type for a message object of type '<VehicleTailLightInfo>"
  "perception_interface_msgs/VehicleTailLightInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleTailLightInfo)))
  "Returns string type for a message object of type 'VehicleTailLightInfo"
  "perception_interface_msgs/VehicleTailLightInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleTailLightInfo>)))
  "Returns md5sum for a message object of type '<VehicleTailLightInfo>"
  "4a8815ddddbabed47854df7a189dbad8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleTailLightInfo)))
  "Returns md5sum for a message object of type 'VehicleTailLightInfo"
  "4a8815ddddbabed47854df7a189dbad8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleTailLightInfo>)))
  "Returns full string definition for message of type '<VehicleTailLightInfo>"
  (cl:format cl:nil "float32 tail_light_score~%float32 tail_light_unkown_score~%float32 tail_light_off_score~%float32 tail_light_on_score~%float32 tail_light_high_on_score~%perception_interface_msgs/VehicleTailLightEnum tail_light_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleTailLightEnum~%uint8 VEHICLE_TAILLIGHT_UNKNOWN = 0~%uint8 VEHICLE_TAILLIGHT_OFF = 1~%uint8 VEHICLE_TAILLIGHT_ON = 2~%uint8 VEHICLE_TAILLIGHT_HIGH_ON = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleTailLightInfo)))
  "Returns full string definition for message of type 'VehicleTailLightInfo"
  (cl:format cl:nil "float32 tail_light_score~%float32 tail_light_unkown_score~%float32 tail_light_off_score~%float32 tail_light_on_score~%float32 tail_light_high_on_score~%perception_interface_msgs/VehicleTailLightEnum tail_light_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleTailLightEnum~%uint8 VEHICLE_TAILLIGHT_UNKNOWN = 0~%uint8 VEHICLE_TAILLIGHT_OFF = 1~%uint8 VEHICLE_TAILLIGHT_ON = 2~%uint8 VEHICLE_TAILLIGHT_HIGH_ON = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleTailLightInfo>))
  (cl:+ 0
     4
     4
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tail_light_state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleTailLightInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleTailLightInfo
    (cl:cons ':tail_light_score (tail_light_score msg))
    (cl:cons ':tail_light_unkown_score (tail_light_unkown_score msg))
    (cl:cons ':tail_light_off_score (tail_light_off_score msg))
    (cl:cons ':tail_light_on_score (tail_light_on_score msg))
    (cl:cons ':tail_light_high_on_score (tail_light_high_on_score msg))
    (cl:cons ':tail_light_state (tail_light_state msg))
))
