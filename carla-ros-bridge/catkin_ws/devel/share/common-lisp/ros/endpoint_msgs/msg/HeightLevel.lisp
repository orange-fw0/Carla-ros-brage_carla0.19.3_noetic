; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude HeightLevel.msg.html

(cl:defclass <HeightLevel> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass HeightLevel (<HeightLevel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HeightLevel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HeightLevel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<HeightLevel> is deprecated: use endpoint_msgs-msg:HeightLevel instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <HeightLevel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<HeightLevel>)))
    "Constants for message type '<HeightLevel>"
  '((:NONE . 0)
    (:LEVEL1 . 1)
    (:LEVEL2 . 2)
    (:LEVEL3 . 3)
    (:LEVEL4 . 4)
    (:LEVEL5 . 5)
    (:LEVEL6 . 6)
    (:LEVEL7 . 7)
    (:LEVEL8 . 8)
    (:LEVEL9 . 9)
    (:LEVEL10 . 10)
    (:RESERVED1 . 11)
    (:RESERVED2 . 12)
    (:RESERVED3 . 13))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'HeightLevel)))
    "Constants for message type 'HeightLevel"
  '((:NONE . 0)
    (:LEVEL1 . 1)
    (:LEVEL2 . 2)
    (:LEVEL3 . 3)
    (:LEVEL4 . 4)
    (:LEVEL5 . 5)
    (:LEVEL6 . 6)
    (:LEVEL7 . 7)
    (:LEVEL8 . 8)
    (:LEVEL9 . 9)
    (:LEVEL10 . 10)
    (:RESERVED1 . 11)
    (:RESERVED2 . 12)
    (:RESERVED3 . 13))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HeightLevel>) ostream)
  "Serializes a message object of type '<HeightLevel>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HeightLevel>) istream)
  "Deserializes a message object of type '<HeightLevel>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HeightLevel>)))
  "Returns string type for a message object of type '<HeightLevel>"
  "endpoint_msgs/HeightLevel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HeightLevel)))
  "Returns string type for a message object of type 'HeightLevel"
  "endpoint_msgs/HeightLevel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HeightLevel>)))
  "Returns md5sum for a message object of type '<HeightLevel>"
  "7329d4ad5e200b7dd0c6496f8af32cf0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HeightLevel)))
  "Returns md5sum for a message object of type 'HeightLevel"
  "7329d4ad5e200b7dd0c6496f8af32cf0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HeightLevel>)))
  "Returns full string definition for message of type '<HeightLevel>"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 LEVEL1 = 1~%uint8 LEVEL2 = 2~%uint8 LEVEL3 = 3~%uint8 LEVEL4 = 4~%uint8 LEVEL5 = 5~%uint8 LEVEL6 = 6~%uint8 LEVEL7 = 7~%uint8 LEVEL8 = 8~%uint8 LEVEL9 = 9~%uint8 LEVEL10 = 10~%uint8 RESERVED1 = 11~%uint8 RESERVED2 = 12~%uint8 RESERVED3 = 13~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HeightLevel)))
  "Returns full string definition for message of type 'HeightLevel"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 LEVEL1 = 1~%uint8 LEVEL2 = 2~%uint8 LEVEL3 = 3~%uint8 LEVEL4 = 4~%uint8 LEVEL5 = 5~%uint8 LEVEL6 = 6~%uint8 LEVEL7 = 7~%uint8 LEVEL8 = 8~%uint8 LEVEL9 = 9~%uint8 LEVEL10 = 10~%uint8 RESERVED1 = 11~%uint8 RESERVED2 = 12~%uint8 RESERVED3 = 13~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HeightLevel>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HeightLevel>))
  "Converts a ROS message object to a list"
  (cl:list 'HeightLevel
    (cl:cons ':value (value msg))
))
