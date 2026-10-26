; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude CameraSurfaceCondition.msg.html

(cl:defclass <CameraSurfaceCondition> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CameraSurfaceCondition (<CameraSurfaceCondition>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraSurfaceCondition>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraSurfaceCondition)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<CameraSurfaceCondition> is deprecated: use endpoint_msgs-msg:CameraSurfaceCondition instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <CameraSurfaceCondition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CameraSurfaceCondition>)))
    "Constants for message type '<CameraSurfaceCondition>"
  '((:INVALID . 0)
    (:NORMAL . 1)
    (:WATER . 2)
    (:MOISTURE . 3)
    (:BLOCKAGE . 4)
    (:DIZZY . 5)
    (:DARKNESS . 6)
    (:DIRTY . 7)
    (:RESERVED1 . 8)
    (:RESERVED2 . 9)
    (:RESERVED3 . 10)
    (:RESERVED4 . 11)
    (:RESERVED5 . 12)
    (:RESERVED6 . 13)
    (:RESERVED7 . 14)
    (:RESERVED8 . 15))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CameraSurfaceCondition)))
    "Constants for message type 'CameraSurfaceCondition"
  '((:INVALID . 0)
    (:NORMAL . 1)
    (:WATER . 2)
    (:MOISTURE . 3)
    (:BLOCKAGE . 4)
    (:DIZZY . 5)
    (:DARKNESS . 6)
    (:DIRTY . 7)
    (:RESERVED1 . 8)
    (:RESERVED2 . 9)
    (:RESERVED3 . 10)
    (:RESERVED4 . 11)
    (:RESERVED5 . 12)
    (:RESERVED6 . 13)
    (:RESERVED7 . 14)
    (:RESERVED8 . 15))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraSurfaceCondition>) ostream)
  "Serializes a message object of type '<CameraSurfaceCondition>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraSurfaceCondition>) istream)
  "Deserializes a message object of type '<CameraSurfaceCondition>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraSurfaceCondition>)))
  "Returns string type for a message object of type '<CameraSurfaceCondition>"
  "endpoint_msgs/CameraSurfaceCondition")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraSurfaceCondition)))
  "Returns string type for a message object of type 'CameraSurfaceCondition"
  "endpoint_msgs/CameraSurfaceCondition")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraSurfaceCondition>)))
  "Returns md5sum for a message object of type '<CameraSurfaceCondition>"
  "badd689fdf2fef60e5b33f730764d29e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraSurfaceCondition)))
  "Returns md5sum for a message object of type 'CameraSurfaceCondition"
  "badd689fdf2fef60e5b33f730764d29e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraSurfaceCondition>)))
  "Returns full string definition for message of type '<CameraSurfaceCondition>"
  (cl:format cl:nil "uint8 INVALID = 0~%uint8 NORMAL = 1~%uint8 WATER = 2~%uint8 MOISTURE = 3~%uint8 BLOCKAGE = 4~%uint8 DIZZY = 5~%uint8 DARKNESS = 6~%uint8 DIRTY = 7~%uint8 RESERVED1 = 8~%uint8 RESERVED2 = 9~%uint8 RESERVED3 = 10~%uint8 RESERVED4 = 11~%uint8 RESERVED5 = 12~%uint8 RESERVED6 = 13~%uint8 RESERVED7 = 14~%uint8 RESERVED8 = 15~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraSurfaceCondition)))
  "Returns full string definition for message of type 'CameraSurfaceCondition"
  (cl:format cl:nil "uint8 INVALID = 0~%uint8 NORMAL = 1~%uint8 WATER = 2~%uint8 MOISTURE = 3~%uint8 BLOCKAGE = 4~%uint8 DIZZY = 5~%uint8 DARKNESS = 6~%uint8 DIRTY = 7~%uint8 RESERVED1 = 8~%uint8 RESERVED2 = 9~%uint8 RESERVED3 = 10~%uint8 RESERVED4 = 11~%uint8 RESERVED5 = 12~%uint8 RESERVED6 = 13~%uint8 RESERVED7 = 14~%uint8 RESERVED8 = 15~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraSurfaceCondition>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraSurfaceCondition>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraSurfaceCondition
    (cl:cons ':value (value msg))
))
