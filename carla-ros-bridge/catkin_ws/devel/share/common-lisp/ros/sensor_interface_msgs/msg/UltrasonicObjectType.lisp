; Auto-generated. Do not edit!


(cl:in-package sensor_interface_msgs-msg)


;//! \htmlinclude UltrasonicObjectType.msg.html

(cl:defclass <UltrasonicObjectType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass UltrasonicObjectType (<UltrasonicObjectType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UltrasonicObjectType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UltrasonicObjectType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_interface_msgs-msg:<UltrasonicObjectType> is deprecated: use sensor_interface_msgs-msg:UltrasonicObjectType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <UltrasonicObjectType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:value-val is deprecated.  Use sensor_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<UltrasonicObjectType>)))
    "Constants for message type '<UltrasonicObjectType>"
  '((:NONE . 0)
    (:POINT . 1)
    (:STRAIGHT_LINE . 2)
    (:RAYS . 3)
    (:LINE_SEGMENT . 5)
    (:SNA . 7)
    (:RESERVED_INFO . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'UltrasonicObjectType)))
    "Constants for message type 'UltrasonicObjectType"
  '((:NONE . 0)
    (:POINT . 1)
    (:STRAIGHT_LINE . 2)
    (:RAYS . 3)
    (:LINE_SEGMENT . 5)
    (:SNA . 7)
    (:RESERVED_INFO . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UltrasonicObjectType>) ostream)
  "Serializes a message object of type '<UltrasonicObjectType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UltrasonicObjectType>) istream)
  "Deserializes a message object of type '<UltrasonicObjectType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UltrasonicObjectType>)))
  "Returns string type for a message object of type '<UltrasonicObjectType>"
  "sensor_interface_msgs/UltrasonicObjectType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UltrasonicObjectType)))
  "Returns string type for a message object of type 'UltrasonicObjectType"
  "sensor_interface_msgs/UltrasonicObjectType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UltrasonicObjectType>)))
  "Returns md5sum for a message object of type '<UltrasonicObjectType>"
  "4103fd470a08ca292cf1bccf6b0ac127")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UltrasonicObjectType)))
  "Returns md5sum for a message object of type 'UltrasonicObjectType"
  "4103fd470a08ca292cf1bccf6b0ac127")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UltrasonicObjectType>)))
  "Returns full string definition for message of type '<UltrasonicObjectType>"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 POINT = 1~%uint8 STRAIGHT_LINE = 2~%uint8 RAYS = 3~%uint8 LINE_SEGMENT = 5~%uint8 SNA = 7~%uint8 RESERVED_INFO = 8~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UltrasonicObjectType)))
  "Returns full string definition for message of type 'UltrasonicObjectType"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 POINT = 1~%uint8 STRAIGHT_LINE = 2~%uint8 RAYS = 3~%uint8 LINE_SEGMENT = 5~%uint8 SNA = 7~%uint8 RESERVED_INFO = 8~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UltrasonicObjectType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UltrasonicObjectType>))
  "Converts a ROS message object to a list"
  (cl:list 'UltrasonicObjectType
    (cl:cons ':value (value msg))
))
