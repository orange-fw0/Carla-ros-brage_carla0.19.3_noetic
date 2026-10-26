; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude DoorType.msg.html

(cl:defclass <DoorType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DoorType (<DoorType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DoorType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DoorType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<DoorType> is deprecated: use endpoint_msgs-msg:DoorType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <DoorType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DoorType>)))
    "Constants for message type '<DoorType>"
  '((:DRIVER . 0)
    (:PASSENGER . 1)
    (:REAR_LEFT . 2)
    (:REAR_RIGHT . 3)
    (:HOOD . 4)
    (:TRUNK . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DoorType)))
    "Constants for message type 'DoorType"
  '((:DRIVER . 0)
    (:PASSENGER . 1)
    (:REAR_LEFT . 2)
    (:REAR_RIGHT . 3)
    (:HOOD . 4)
    (:TRUNK . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DoorType>) ostream)
  "Serializes a message object of type '<DoorType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DoorType>) istream)
  "Deserializes a message object of type '<DoorType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DoorType>)))
  "Returns string type for a message object of type '<DoorType>"
  "endpoint_msgs/DoorType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DoorType)))
  "Returns string type for a message object of type 'DoorType"
  "endpoint_msgs/DoorType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DoorType>)))
  "Returns md5sum for a message object of type '<DoorType>"
  "8c8a316f2e72cae94a5819e82b60b63f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DoorType)))
  "Returns md5sum for a message object of type 'DoorType"
  "8c8a316f2e72cae94a5819e82b60b63f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DoorType>)))
  "Returns full string definition for message of type '<DoorType>"
  (cl:format cl:nil "uint8 DRIVER = 0~%uint8 PASSENGER = 1~%uint8 REAR_LEFT = 2~%uint8 REAR_RIGHT = 3~%uint8 HOOD = 4~%uint8 TRUNK = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DoorType)))
  "Returns full string definition for message of type 'DoorType"
  (cl:format cl:nil "uint8 DRIVER = 0~%uint8 PASSENGER = 1~%uint8 REAR_LEFT = 2~%uint8 REAR_RIGHT = 3~%uint8 HOOD = 4~%uint8 TRUNK = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DoorType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DoorType>))
  "Converts a ROS message object to a list"
  (cl:list 'DoorType
    (cl:cons ':value (value msg))
))
