; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude SystemCmdChildType.msg.html

(cl:defclass <SystemCmdChildType> (roslisp-msg-protocol:ros-message)
  ((steering_req
    :reader steering_req
    :initarg :steering_req
    :type system_manager_msgs-msg:SteeringReq
    :initform (cl:make-instance 'system_manager_msgs-msg:SteeringReq))
   (gear_req
    :reader gear_req
    :initarg :gear_req
    :type system_manager_msgs-msg:GearReq
    :initform (cl:make-instance 'system_manager_msgs-msg:GearReq))
   (brake_req
    :reader brake_req
    :initarg :brake_req
    :type system_manager_msgs-msg:BrakeReq
    :initform (cl:make-instance 'system_manager_msgs-msg:BrakeReq))
   (light_req
    :reader light_req
    :initarg :light_req
    :type system_manager_msgs-msg:LightReq
    :initform (cl:make-instance 'system_manager_msgs-msg:LightReq)))
)

(cl:defclass SystemCmdChildType (<SystemCmdChildType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SystemCmdChildType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SystemCmdChildType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<SystemCmdChildType> is deprecated: use system_manager_msgs-msg:SystemCmdChildType instead.")))

(cl:ensure-generic-function 'steering_req-val :lambda-list '(m))
(cl:defmethod steering_req-val ((m <SystemCmdChildType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:steering_req-val is deprecated.  Use system_manager_msgs-msg:steering_req instead.")
  (steering_req m))

(cl:ensure-generic-function 'gear_req-val :lambda-list '(m))
(cl:defmethod gear_req-val ((m <SystemCmdChildType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:gear_req-val is deprecated.  Use system_manager_msgs-msg:gear_req instead.")
  (gear_req m))

(cl:ensure-generic-function 'brake_req-val :lambda-list '(m))
(cl:defmethod brake_req-val ((m <SystemCmdChildType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:brake_req-val is deprecated.  Use system_manager_msgs-msg:brake_req instead.")
  (brake_req m))

(cl:ensure-generic-function 'light_req-val :lambda-list '(m))
(cl:defmethod light_req-val ((m <SystemCmdChildType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:light_req-val is deprecated.  Use system_manager_msgs-msg:light_req instead.")
  (light_req m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SystemCmdChildType>) ostream)
  "Serializes a message object of type '<SystemCmdChildType>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'steering_req) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gear_req) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'brake_req) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'light_req) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SystemCmdChildType>) istream)
  "Deserializes a message object of type '<SystemCmdChildType>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'steering_req) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gear_req) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'brake_req) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'light_req) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SystemCmdChildType>)))
  "Returns string type for a message object of type '<SystemCmdChildType>"
  "system_manager_msgs/SystemCmdChildType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SystemCmdChildType)))
  "Returns string type for a message object of type 'SystemCmdChildType"
  "system_manager_msgs/SystemCmdChildType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SystemCmdChildType>)))
  "Returns md5sum for a message object of type '<SystemCmdChildType>"
  "623a8dc6a825d2ebe524b39f8b734bbc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SystemCmdChildType)))
  "Returns md5sum for a message object of type 'SystemCmdChildType"
  "623a8dc6a825d2ebe524b39f8b734bbc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SystemCmdChildType>)))
  "Returns full string definition for message of type '<SystemCmdChildType>"
  (cl:format cl:nil "system_manager_msgs/SteeringReq steering_req~%system_manager_msgs/GearReq gear_req~%system_manager_msgs/BrakeReq brake_req~%system_manager_msgs/LightReq light_req~%~%================================================================================~%MSG: system_manager_msgs/SteeringReq~%uint8 NO_STEERING_RESET = 0~%uint8 STEERING_RESET = 1~%uint8 value~%~%================================================================================~%MSG: system_manager_msgs/GearReq~%uint8 NO_REQ = 0~%uint8 GEAR_P = 1~%uint8 value~%~%================================================================================~%MSG: system_manager_msgs/BrakeReq~%uint8 NO_REQ = 0~%uint8 HEAVY_BRAKE = 1~%uint8 NO_BRAKE = 2~%uint8 value~%~%================================================================================~%MSG: system_manager_msgs/LightReq~%uint8 NO_REQ = 0~%uint8 TURN_OFF = 1~%uint8 EMERGENCY_FLASHER = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SystemCmdChildType)))
  "Returns full string definition for message of type 'SystemCmdChildType"
  (cl:format cl:nil "system_manager_msgs/SteeringReq steering_req~%system_manager_msgs/GearReq gear_req~%system_manager_msgs/BrakeReq brake_req~%system_manager_msgs/LightReq light_req~%~%================================================================================~%MSG: system_manager_msgs/SteeringReq~%uint8 NO_STEERING_RESET = 0~%uint8 STEERING_RESET = 1~%uint8 value~%~%================================================================================~%MSG: system_manager_msgs/GearReq~%uint8 NO_REQ = 0~%uint8 GEAR_P = 1~%uint8 value~%~%================================================================================~%MSG: system_manager_msgs/BrakeReq~%uint8 NO_REQ = 0~%uint8 HEAVY_BRAKE = 1~%uint8 NO_BRAKE = 2~%uint8 value~%~%================================================================================~%MSG: system_manager_msgs/LightReq~%uint8 NO_REQ = 0~%uint8 TURN_OFF = 1~%uint8 EMERGENCY_FLASHER = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SystemCmdChildType>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'steering_req))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gear_req))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'brake_req))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'light_req))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SystemCmdChildType>))
  "Converts a ROS message object to a list"
  (cl:list 'SystemCmdChildType
    (cl:cons ':steering_req (steering_req msg))
    (cl:cons ':gear_req (gear_req msg))
    (cl:cons ':brake_req (brake_req msg))
    (cl:cons ':light_req (light_req msg))
))
