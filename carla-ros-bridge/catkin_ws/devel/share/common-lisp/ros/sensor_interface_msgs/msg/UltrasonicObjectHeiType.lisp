; Auto-generated. Do not edit!


(cl:in-package sensor_interface_msgs-msg)


;//! \htmlinclude UltrasonicObjectHeiType.msg.html

(cl:defclass <UltrasonicObjectHeiType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass UltrasonicObjectHeiType (<UltrasonicObjectHeiType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UltrasonicObjectHeiType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UltrasonicObjectHeiType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_interface_msgs-msg:<UltrasonicObjectHeiType> is deprecated: use sensor_interface_msgs-msg:UltrasonicObjectHeiType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <UltrasonicObjectHeiType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:value-val is deprecated.  Use sensor_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<UltrasonicObjectHeiType>)))
    "Constants for message type '<UltrasonicObjectHeiType>"
  '((:LOW . 0)
    (:HIGH . 1)
    (:TRAVERSIBLE . 2)
    (:UNKONOWN . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'UltrasonicObjectHeiType)))
    "Constants for message type 'UltrasonicObjectHeiType"
  '((:LOW . 0)
    (:HIGH . 1)
    (:TRAVERSIBLE . 2)
    (:UNKONOWN . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UltrasonicObjectHeiType>) ostream)
  "Serializes a message object of type '<UltrasonicObjectHeiType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UltrasonicObjectHeiType>) istream)
  "Deserializes a message object of type '<UltrasonicObjectHeiType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UltrasonicObjectHeiType>)))
  "Returns string type for a message object of type '<UltrasonicObjectHeiType>"
  "sensor_interface_msgs/UltrasonicObjectHeiType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UltrasonicObjectHeiType)))
  "Returns string type for a message object of type 'UltrasonicObjectHeiType"
  "sensor_interface_msgs/UltrasonicObjectHeiType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UltrasonicObjectHeiType>)))
  "Returns md5sum for a message object of type '<UltrasonicObjectHeiType>"
  "a0b483fd3a7560c82524f17a5d7acc5a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UltrasonicObjectHeiType)))
  "Returns md5sum for a message object of type 'UltrasonicObjectHeiType"
  "a0b483fd3a7560c82524f17a5d7acc5a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UltrasonicObjectHeiType>)))
  "Returns full string definition for message of type '<UltrasonicObjectHeiType>"
  (cl:format cl:nil "uint8 LOW = 0~%uint8 HIGH = 1~%uint8 TRAVERSIBLE = 2~%uint8 UNKONOWN = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UltrasonicObjectHeiType)))
  "Returns full string definition for message of type 'UltrasonicObjectHeiType"
  (cl:format cl:nil "uint8 LOW = 0~%uint8 HIGH = 1~%uint8 TRAVERSIBLE = 2~%uint8 UNKONOWN = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UltrasonicObjectHeiType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UltrasonicObjectHeiType>))
  "Converts a ROS message object to a list"
  (cl:list 'UltrasonicObjectHeiType
    (cl:cons ':value (value msg))
))
