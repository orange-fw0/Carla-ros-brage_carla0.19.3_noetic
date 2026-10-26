; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude VehicleBlinkLightInfo.msg.html

(cl:defclass <VehicleBlinkLightInfo> (roslisp-msg-protocol:ros-message)
  ((blink_light_left_score
    :reader blink_light_left_score
    :initarg :blink_light_left_score
    :type cl:float
    :initform 0.0)
   (blink_light_right_score
    :reader blink_light_right_score
    :initarg :blink_light_right_score
    :type cl:float
    :initform 0.0)
   (blink_light_both_score
    :reader blink_light_both_score
    :initarg :blink_light_both_score
    :type cl:float
    :initform 0.0)
   (blink_light_state
    :reader blink_light_state
    :initarg :blink_light_state
    :type perception_interface_msgs-msg:VehicleBlinkLightEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:VehicleBlinkLightEnum)))
)

(cl:defclass VehicleBlinkLightInfo (<VehicleBlinkLightInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleBlinkLightInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleBlinkLightInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<VehicleBlinkLightInfo> is deprecated: use perception_interface_msgs-msg:VehicleBlinkLightInfo instead.")))

(cl:ensure-generic-function 'blink_light_left_score-val :lambda-list '(m))
(cl:defmethod blink_light_left_score-val ((m <VehicleBlinkLightInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:blink_light_left_score-val is deprecated.  Use perception_interface_msgs-msg:blink_light_left_score instead.")
  (blink_light_left_score m))

(cl:ensure-generic-function 'blink_light_right_score-val :lambda-list '(m))
(cl:defmethod blink_light_right_score-val ((m <VehicleBlinkLightInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:blink_light_right_score-val is deprecated.  Use perception_interface_msgs-msg:blink_light_right_score instead.")
  (blink_light_right_score m))

(cl:ensure-generic-function 'blink_light_both_score-val :lambda-list '(m))
(cl:defmethod blink_light_both_score-val ((m <VehicleBlinkLightInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:blink_light_both_score-val is deprecated.  Use perception_interface_msgs-msg:blink_light_both_score instead.")
  (blink_light_both_score m))

(cl:ensure-generic-function 'blink_light_state-val :lambda-list '(m))
(cl:defmethod blink_light_state-val ((m <VehicleBlinkLightInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:blink_light_state-val is deprecated.  Use perception_interface_msgs-msg:blink_light_state instead.")
  (blink_light_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleBlinkLightInfo>) ostream)
  "Serializes a message object of type '<VehicleBlinkLightInfo>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'blink_light_left_score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'blink_light_right_score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'blink_light_both_score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'blink_light_state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleBlinkLightInfo>) istream)
  "Deserializes a message object of type '<VehicleBlinkLightInfo>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'blink_light_left_score) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'blink_light_right_score) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'blink_light_both_score) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'blink_light_state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleBlinkLightInfo>)))
  "Returns string type for a message object of type '<VehicleBlinkLightInfo>"
  "perception_interface_msgs/VehicleBlinkLightInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleBlinkLightInfo)))
  "Returns string type for a message object of type 'VehicleBlinkLightInfo"
  "perception_interface_msgs/VehicleBlinkLightInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleBlinkLightInfo>)))
  "Returns md5sum for a message object of type '<VehicleBlinkLightInfo>"
  "606d0d8dfffcbb1d95da9e4f7fc5fec4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleBlinkLightInfo)))
  "Returns md5sum for a message object of type 'VehicleBlinkLightInfo"
  "606d0d8dfffcbb1d95da9e4f7fc5fec4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleBlinkLightInfo>)))
  "Returns full string definition for message of type '<VehicleBlinkLightInfo>"
  (cl:format cl:nil "float32 blink_light_left_score~%float32 blink_light_right_score~%float32 blink_light_both_score~%perception_interface_msgs/VehicleBlinkLightEnum blink_light_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleBlinkLightEnum~%uint8 VEHICLE_BLINKLIGHT_UNKNOWN = 0~%uint8 VEHICLE_BLINKLIGHT_OFF = 1~%uint8 VEHICLE_BLINKLIGHT_LEFT = 2~%uint8 VEHICLE_BLINKLIGHT_RIGHT = 3~%uint8 VEHICLE_BLINKLIGHT_BOTH = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleBlinkLightInfo)))
  "Returns full string definition for message of type 'VehicleBlinkLightInfo"
  (cl:format cl:nil "float32 blink_light_left_score~%float32 blink_light_right_score~%float32 blink_light_both_score~%perception_interface_msgs/VehicleBlinkLightEnum blink_light_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleBlinkLightEnum~%uint8 VEHICLE_BLINKLIGHT_UNKNOWN = 0~%uint8 VEHICLE_BLINKLIGHT_OFF = 1~%uint8 VEHICLE_BLINKLIGHT_LEFT = 2~%uint8 VEHICLE_BLINKLIGHT_RIGHT = 3~%uint8 VEHICLE_BLINKLIGHT_BOTH = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleBlinkLightInfo>))
  (cl:+ 0
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'blink_light_state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleBlinkLightInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleBlinkLightInfo
    (cl:cons ':blink_light_left_score (blink_light_left_score msg))
    (cl:cons ':blink_light_right_score (blink_light_right_score msg))
    (cl:cons ':blink_light_both_score (blink_light_both_score msg))
    (cl:cons ':blink_light_state (blink_light_state msg))
))
