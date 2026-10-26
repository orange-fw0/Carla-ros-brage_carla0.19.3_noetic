; Auto-generated. Do not edit!


(cl:in-package sensor_interface_msgs-msg)


;//! \htmlinclude UltrasonicPaingslotType.msg.html

(cl:defclass <UltrasonicPaingslotType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass UltrasonicPaingslotType (<UltrasonicPaingslotType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UltrasonicPaingslotType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UltrasonicPaingslotType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_interface_msgs-msg:<UltrasonicPaingslotType> is deprecated: use sensor_interface_msgs-msg:UltrasonicPaingslotType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <UltrasonicPaingslotType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:value-val is deprecated.  Use sensor_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<UltrasonicPaingslotType>)))
    "Constants for message type '<UltrasonicPaingslotType>"
  '((:PSC_SLOT_PARALLE_LE . 0)
    (:PSC_SLOT_PARALLE_RI . 1)
    (:PSC_SLOT_CROSS_LE . 2)
    (:PSC_SLOT_CROSS_RI . 3)
    (:PSC_SLOT_OBLIQUE_LE . 4)
    (:PSC_SLOT_OBLIQUE_RI . 5)
    (:PSC_COMMON_SLOT_LE . 6)
    (:PSC_COMMON_SLOT_RI . 7)
    (:POC_SLOT_PARALLE_LE . 8)
    (:POC_SLOT_PARALLE_RI . 9)
    (:POC_SLOT_CROSS_LE . 10)
    (:POC_SLOT_CROSS_RI . 11)
    (:POC_COMMON_SLOT_LE . 12)
    (:POC_COMMON_SLOT_RI . 13)
    (:RESERVED_INFO1 . 14)
    (:RESERVED_INFO2 . 15))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'UltrasonicPaingslotType)))
    "Constants for message type 'UltrasonicPaingslotType"
  '((:PSC_SLOT_PARALLE_LE . 0)
    (:PSC_SLOT_PARALLE_RI . 1)
    (:PSC_SLOT_CROSS_LE . 2)
    (:PSC_SLOT_CROSS_RI . 3)
    (:PSC_SLOT_OBLIQUE_LE . 4)
    (:PSC_SLOT_OBLIQUE_RI . 5)
    (:PSC_COMMON_SLOT_LE . 6)
    (:PSC_COMMON_SLOT_RI . 7)
    (:POC_SLOT_PARALLE_LE . 8)
    (:POC_SLOT_PARALLE_RI . 9)
    (:POC_SLOT_CROSS_LE . 10)
    (:POC_SLOT_CROSS_RI . 11)
    (:POC_COMMON_SLOT_LE . 12)
    (:POC_COMMON_SLOT_RI . 13)
    (:RESERVED_INFO1 . 14)
    (:RESERVED_INFO2 . 15))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UltrasonicPaingslotType>) ostream)
  "Serializes a message object of type '<UltrasonicPaingslotType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UltrasonicPaingslotType>) istream)
  "Deserializes a message object of type '<UltrasonicPaingslotType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UltrasonicPaingslotType>)))
  "Returns string type for a message object of type '<UltrasonicPaingslotType>"
  "sensor_interface_msgs/UltrasonicPaingslotType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UltrasonicPaingslotType)))
  "Returns string type for a message object of type 'UltrasonicPaingslotType"
  "sensor_interface_msgs/UltrasonicPaingslotType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UltrasonicPaingslotType>)))
  "Returns md5sum for a message object of type '<UltrasonicPaingslotType>"
  "35697edc54f0ef1154e5cc48e5582b14")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UltrasonicPaingslotType)))
  "Returns md5sum for a message object of type 'UltrasonicPaingslotType"
  "35697edc54f0ef1154e5cc48e5582b14")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UltrasonicPaingslotType>)))
  "Returns full string definition for message of type '<UltrasonicPaingslotType>"
  (cl:format cl:nil "uint8 PSC_SLOT_PARALLE_LE = 0~%uint8 PSC_SLOT_PARALLE_RI = 1~%uint8 PSC_SLOT_CROSS_LE = 2~%uint8 PSC_SLOT_CROSS_RI = 3~%uint8 PSC_SLOT_OBLIQUE_LE = 4~%uint8 PSC_SLOT_OBLIQUE_RI = 5~%uint8 PSC_COMMON_SLOT_LE = 6~%uint8 PSC_COMMON_SLOT_RI = 7~%uint8 POC_SLOT_PARALLE_LE = 8~%uint8 POC_SLOT_PARALLE_RI = 9~%uint8 POC_SLOT_CROSS_LE = 10~%uint8 POC_SLOT_CROSS_RI = 11~%uint8 POC_COMMON_SLOT_LE = 12~%uint8 POC_COMMON_SLOT_RI = 13~%uint8 RESERVED_INFO1 = 14~%uint8 RESERVED_INFO2 = 15~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UltrasonicPaingslotType)))
  "Returns full string definition for message of type 'UltrasonicPaingslotType"
  (cl:format cl:nil "uint8 PSC_SLOT_PARALLE_LE = 0~%uint8 PSC_SLOT_PARALLE_RI = 1~%uint8 PSC_SLOT_CROSS_LE = 2~%uint8 PSC_SLOT_CROSS_RI = 3~%uint8 PSC_SLOT_OBLIQUE_LE = 4~%uint8 PSC_SLOT_OBLIQUE_RI = 5~%uint8 PSC_COMMON_SLOT_LE = 6~%uint8 PSC_COMMON_SLOT_RI = 7~%uint8 POC_SLOT_PARALLE_LE = 8~%uint8 POC_SLOT_PARALLE_RI = 9~%uint8 POC_SLOT_CROSS_LE = 10~%uint8 POC_SLOT_CROSS_RI = 11~%uint8 POC_COMMON_SLOT_LE = 12~%uint8 POC_COMMON_SLOT_RI = 13~%uint8 RESERVED_INFO1 = 14~%uint8 RESERVED_INFO2 = 15~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UltrasonicPaingslotType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UltrasonicPaingslotType>))
  "Converts a ROS message object to a list"
  (cl:list 'UltrasonicPaingslotType
    (cl:cons ':value (value msg))
))
