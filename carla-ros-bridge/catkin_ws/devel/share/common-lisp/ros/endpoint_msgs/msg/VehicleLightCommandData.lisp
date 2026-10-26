; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude VehicleLightCommandData.msg.html

(cl:defclass <VehicleLightCommandData> (roslisp-msg-protocol:ros-message)
  ((timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (light_enable
    :reader light_enable
    :initarg :light_enable
    :type cl:boolean
    :initform cl:nil)
   (turn_signal
    :reader turn_signal
    :initarg :turn_signal
    :type endpoint_msgs-msg:TurnSignal
    :initform (cl:make-instance 'endpoint_msgs-msg:TurnSignal))
   (front_light
    :reader front_light
    :initarg :front_light
    :type endpoint_msgs-msg:FrontLightState
    :initform (cl:make-instance 'endpoint_msgs-msg:FrontLightState))
   (width_light
    :reader width_light
    :initarg :width_light
    :type cl:boolean
    :initform cl:nil)
   (reversing_light
    :reader reversing_light
    :initarg :reversing_light
    :type cl:boolean
    :initform cl:nil)
   (front_fog_light
    :reader front_fog_light
    :initarg :front_fog_light
    :type cl:boolean
    :initform cl:nil)
   (rear_fog_light
    :reader rear_fog_light
    :initarg :rear_fog_light
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass VehicleLightCommandData (<VehicleLightCommandData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleLightCommandData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleLightCommandData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<VehicleLightCommandData> is deprecated: use endpoint_msgs-msg:VehicleLightCommandData instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <VehicleLightCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:timestamp_us-val is deprecated.  Use endpoint_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'light_enable-val :lambda-list '(m))
(cl:defmethod light_enable-val ((m <VehicleLightCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:light_enable-val is deprecated.  Use endpoint_msgs-msg:light_enable instead.")
  (light_enable m))

(cl:ensure-generic-function 'turn_signal-val :lambda-list '(m))
(cl:defmethod turn_signal-val ((m <VehicleLightCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:turn_signal-val is deprecated.  Use endpoint_msgs-msg:turn_signal instead.")
  (turn_signal m))

(cl:ensure-generic-function 'front_light-val :lambda-list '(m))
(cl:defmethod front_light-val ((m <VehicleLightCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:front_light-val is deprecated.  Use endpoint_msgs-msg:front_light instead.")
  (front_light m))

(cl:ensure-generic-function 'width_light-val :lambda-list '(m))
(cl:defmethod width_light-val ((m <VehicleLightCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:width_light-val is deprecated.  Use endpoint_msgs-msg:width_light instead.")
  (width_light m))

(cl:ensure-generic-function 'reversing_light-val :lambda-list '(m))
(cl:defmethod reversing_light-val ((m <VehicleLightCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:reversing_light-val is deprecated.  Use endpoint_msgs-msg:reversing_light instead.")
  (reversing_light m))

(cl:ensure-generic-function 'front_fog_light-val :lambda-list '(m))
(cl:defmethod front_fog_light-val ((m <VehicleLightCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:front_fog_light-val is deprecated.  Use endpoint_msgs-msg:front_fog_light instead.")
  (front_fog_light m))

(cl:ensure-generic-function 'rear_fog_light-val :lambda-list '(m))
(cl:defmethod rear_fog_light-val ((m <VehicleLightCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:rear_fog_light-val is deprecated.  Use endpoint_msgs-msg:rear_fog_light instead.")
  (rear_fog_light m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleLightCommandData>) ostream)
  "Serializes a message object of type '<VehicleLightCommandData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'light_enable) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'turn_signal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'front_light) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'width_light) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reversing_light) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'front_fog_light) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rear_fog_light) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleLightCommandData>) istream)
  "Deserializes a message object of type '<VehicleLightCommandData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'light_enable) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'turn_signal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'front_light) istream)
    (cl:setf (cl:slot-value msg 'width_light) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'reversing_light) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'front_fog_light) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'rear_fog_light) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleLightCommandData>)))
  "Returns string type for a message object of type '<VehicleLightCommandData>"
  "endpoint_msgs/VehicleLightCommandData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleLightCommandData)))
  "Returns string type for a message object of type 'VehicleLightCommandData"
  "endpoint_msgs/VehicleLightCommandData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleLightCommandData>)))
  "Returns md5sum for a message object of type '<VehicleLightCommandData>"
  "fa194b3e2cac2ea7fdf59c9b8fa0d5c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleLightCommandData)))
  "Returns md5sum for a message object of type 'VehicleLightCommandData"
  "fa194b3e2cac2ea7fdf59c9b8fa0d5c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleLightCommandData>)))
  "Returns full string definition for message of type '<VehicleLightCommandData>"
  (cl:format cl:nil "uint64 timestamp_us~%bool light_enable~%endpoint_msgs/TurnSignal turn_signal~%endpoint_msgs/FrontLightState front_light~%bool width_light~%bool reversing_light~%bool front_fog_light~%bool rear_fog_light~%~%================================================================================~%MSG: endpoint_msgs/TurnSignal~%uint8 NONE = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 EMERGENCY_FLASHER = 3~%uint8 INVALID = 255~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/FrontLightState~%uint8 LIGHT_OFF = 0~%uint8 LOW_BEAM_LIGHT = 1~%uint8 HIGH_BEAM_LIGHT = 2~%uint8 OVERTAKING_FLASH = 3~%uint8 LIGHT_AUTO = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleLightCommandData)))
  "Returns full string definition for message of type 'VehicleLightCommandData"
  (cl:format cl:nil "uint64 timestamp_us~%bool light_enable~%endpoint_msgs/TurnSignal turn_signal~%endpoint_msgs/FrontLightState front_light~%bool width_light~%bool reversing_light~%bool front_fog_light~%bool rear_fog_light~%~%================================================================================~%MSG: endpoint_msgs/TurnSignal~%uint8 NONE = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 EMERGENCY_FLASHER = 3~%uint8 INVALID = 255~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/FrontLightState~%uint8 LIGHT_OFF = 0~%uint8 LOW_BEAM_LIGHT = 1~%uint8 HIGH_BEAM_LIGHT = 2~%uint8 OVERTAKING_FLASH = 3~%uint8 LIGHT_AUTO = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleLightCommandData>))
  (cl:+ 0
     8
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'turn_signal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'front_light))
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleLightCommandData>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleLightCommandData
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':light_enable (light_enable msg))
    (cl:cons ':turn_signal (turn_signal msg))
    (cl:cons ':front_light (front_light msg))
    (cl:cons ':width_light (width_light msg))
    (cl:cons ':reversing_light (reversing_light msg))
    (cl:cons ':front_fog_light (front_fog_light msg))
    (cl:cons ':rear_fog_light (rear_fog_light msg))
))
