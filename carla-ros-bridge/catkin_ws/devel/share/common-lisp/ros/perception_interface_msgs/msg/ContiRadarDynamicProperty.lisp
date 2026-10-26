; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude ContiRadarDynamicProperty.msg.html

(cl:defclass <ContiRadarDynamicProperty> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ContiRadarDynamicProperty (<ContiRadarDynamicProperty>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ContiRadarDynamicProperty>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ContiRadarDynamicProperty)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<ContiRadarDynamicProperty> is deprecated: use perception_interface_msgs-msg:ContiRadarDynamicProperty instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ContiRadarDynamicProperty>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ContiRadarDynamicProperty>)))
    "Constants for message type '<ContiRadarDynamicProperty>"
  '((:MOVING . 0)
    (:STATIONARY . 1)
    (:ON_COMING . 2)
    (:STATIONARY_CANDIDATE . 3)
    (:UNKNOWN . 4)
    (:CROSSING_STATIONARY . 5)
    (:CROSSING_MOVING . 6)
    (:STOPPED . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ContiRadarDynamicProperty)))
    "Constants for message type 'ContiRadarDynamicProperty"
  '((:MOVING . 0)
    (:STATIONARY . 1)
    (:ON_COMING . 2)
    (:STATIONARY_CANDIDATE . 3)
    (:UNKNOWN . 4)
    (:CROSSING_STATIONARY . 5)
    (:CROSSING_MOVING . 6)
    (:STOPPED . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ContiRadarDynamicProperty>) ostream)
  "Serializes a message object of type '<ContiRadarDynamicProperty>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ContiRadarDynamicProperty>) istream)
  "Deserializes a message object of type '<ContiRadarDynamicProperty>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ContiRadarDynamicProperty>)))
  "Returns string type for a message object of type '<ContiRadarDynamicProperty>"
  "perception_interface_msgs/ContiRadarDynamicProperty")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ContiRadarDynamicProperty)))
  "Returns string type for a message object of type 'ContiRadarDynamicProperty"
  "perception_interface_msgs/ContiRadarDynamicProperty")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ContiRadarDynamicProperty>)))
  "Returns md5sum for a message object of type '<ContiRadarDynamicProperty>"
  "6e471f871d33152c9d22605c4d065ec4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ContiRadarDynamicProperty)))
  "Returns md5sum for a message object of type 'ContiRadarDynamicProperty"
  "6e471f871d33152c9d22605c4d065ec4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ContiRadarDynamicProperty>)))
  "Returns full string definition for message of type '<ContiRadarDynamicProperty>"
  (cl:format cl:nil "uint8 MOVING = 0~%uint8 STATIONARY = 1~%uint8 ON_COMING = 2~%uint8 STATIONARY_CANDIDATE = 3~%uint8 UNKNOWN = 4~%uint8 CROSSING_STATIONARY = 5~%uint8 CROSSING_MOVING = 6~%uint8 STOPPED = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ContiRadarDynamicProperty)))
  "Returns full string definition for message of type 'ContiRadarDynamicProperty"
  (cl:format cl:nil "uint8 MOVING = 0~%uint8 STATIONARY = 1~%uint8 ON_COMING = 2~%uint8 STATIONARY_CANDIDATE = 3~%uint8 UNKNOWN = 4~%uint8 CROSSING_STATIONARY = 5~%uint8 CROSSING_MOVING = 6~%uint8 STOPPED = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ContiRadarDynamicProperty>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ContiRadarDynamicProperty>))
  "Converts a ROS message object to a list"
  (cl:list 'ContiRadarDynamicProperty
    (cl:cons ':value (value msg))
))
