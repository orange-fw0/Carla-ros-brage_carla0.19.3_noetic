; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude VehicleBrakeLightInfo.msg.html

(cl:defclass <VehicleBrakeLightInfo> (roslisp-msg-protocol:ros-message)
  ((brake_light_on_score
    :reader brake_light_on_score
    :initarg :brake_light_on_score
    :type cl:float
    :initform 0.0)
   (brake_light_state
    :reader brake_light_state
    :initarg :brake_light_state
    :type perception_interface_msgs-msg:VehicleBrakeLightEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:VehicleBrakeLightEnum)))
)

(cl:defclass VehicleBrakeLightInfo (<VehicleBrakeLightInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleBrakeLightInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleBrakeLightInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<VehicleBrakeLightInfo> is deprecated: use perception_interface_msgs-msg:VehicleBrakeLightInfo instead.")))

(cl:ensure-generic-function 'brake_light_on_score-val :lambda-list '(m))
(cl:defmethod brake_light_on_score-val ((m <VehicleBrakeLightInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:brake_light_on_score-val is deprecated.  Use perception_interface_msgs-msg:brake_light_on_score instead.")
  (brake_light_on_score m))

(cl:ensure-generic-function 'brake_light_state-val :lambda-list '(m))
(cl:defmethod brake_light_state-val ((m <VehicleBrakeLightInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:brake_light_state-val is deprecated.  Use perception_interface_msgs-msg:brake_light_state instead.")
  (brake_light_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleBrakeLightInfo>) ostream)
  "Serializes a message object of type '<VehicleBrakeLightInfo>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'brake_light_on_score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'brake_light_state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleBrakeLightInfo>) istream)
  "Deserializes a message object of type '<VehicleBrakeLightInfo>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brake_light_on_score) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'brake_light_state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleBrakeLightInfo>)))
  "Returns string type for a message object of type '<VehicleBrakeLightInfo>"
  "perception_interface_msgs/VehicleBrakeLightInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleBrakeLightInfo)))
  "Returns string type for a message object of type 'VehicleBrakeLightInfo"
  "perception_interface_msgs/VehicleBrakeLightInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleBrakeLightInfo>)))
  "Returns md5sum for a message object of type '<VehicleBrakeLightInfo>"
  "50c3fc188caed8daa3d8596fab9bd9c6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleBrakeLightInfo)))
  "Returns md5sum for a message object of type 'VehicleBrakeLightInfo"
  "50c3fc188caed8daa3d8596fab9bd9c6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleBrakeLightInfo>)))
  "Returns full string definition for message of type '<VehicleBrakeLightInfo>"
  (cl:format cl:nil "float32 brake_light_on_score~%perception_interface_msgs/VehicleBrakeLightEnum brake_light_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleBrakeLightEnum~%uint8 VEHICLE_BRAKELIGHT_UNKNOWN = 0~%uint8 VEHICLE_BRAKELIGHT_OFF = 1~%uint8 VEHICLE_BRAKELIGHT_ON = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleBrakeLightInfo)))
  "Returns full string definition for message of type 'VehicleBrakeLightInfo"
  (cl:format cl:nil "float32 brake_light_on_score~%perception_interface_msgs/VehicleBrakeLightEnum brake_light_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleBrakeLightEnum~%uint8 VEHICLE_BRAKELIGHT_UNKNOWN = 0~%uint8 VEHICLE_BRAKELIGHT_OFF = 1~%uint8 VEHICLE_BRAKELIGHT_ON = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleBrakeLightInfo>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'brake_light_state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleBrakeLightInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleBrakeLightInfo
    (cl:cons ':brake_light_on_score (brake_light_on_score msg))
    (cl:cons ':brake_light_state (brake_light_state msg))
))
