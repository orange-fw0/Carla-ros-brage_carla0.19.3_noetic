; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude SuspensionLevel.msg.html

(cl:defclass <SuspensionLevel> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SuspensionLevel (<SuspensionLevel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SuspensionLevel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SuspensionLevel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<SuspensionLevel> is deprecated: use endpoint_msgs-msg:SuspensionLevel instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SuspensionLevel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SuspensionLevel>)))
    "Constants for message type '<SuspensionLevel>"
  '((:SUSPENSION_NONE . 0)
    (:SUSPENSION_LEVEL1 . 1)
    (:SUSPENSION_LEVEL2 . 2)
    (:SUSPENSION_LEVEL3 . 3)
    (:SUSPENSION_LEVEL4 . 4)
    (:SUSPENSION_LEVEL5 . 5)
    (:SUSPENSION_LEVEL6 . 6)
    (:SUSPENSION_LEVEL7 . 7)
    (:SUSPENSION_LEVEL8 . 8)
    (:SUSPENSION_LEVEL9 . 9)
    (:SUSPENSION_LEVEL10 . 10))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SuspensionLevel)))
    "Constants for message type 'SuspensionLevel"
  '((:SUSPENSION_NONE . 0)
    (:SUSPENSION_LEVEL1 . 1)
    (:SUSPENSION_LEVEL2 . 2)
    (:SUSPENSION_LEVEL3 . 3)
    (:SUSPENSION_LEVEL4 . 4)
    (:SUSPENSION_LEVEL5 . 5)
    (:SUSPENSION_LEVEL6 . 6)
    (:SUSPENSION_LEVEL7 . 7)
    (:SUSPENSION_LEVEL8 . 8)
    (:SUSPENSION_LEVEL9 . 9)
    (:SUSPENSION_LEVEL10 . 10))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SuspensionLevel>) ostream)
  "Serializes a message object of type '<SuspensionLevel>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SuspensionLevel>) istream)
  "Deserializes a message object of type '<SuspensionLevel>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SuspensionLevel>)))
  "Returns string type for a message object of type '<SuspensionLevel>"
  "endpoint_msgs/SuspensionLevel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SuspensionLevel)))
  "Returns string type for a message object of type 'SuspensionLevel"
  "endpoint_msgs/SuspensionLevel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SuspensionLevel>)))
  "Returns md5sum for a message object of type '<SuspensionLevel>"
  "fba8ad37228388a6d9c5b9febd7b77e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SuspensionLevel)))
  "Returns md5sum for a message object of type 'SuspensionLevel"
  "fba8ad37228388a6d9c5b9febd7b77e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SuspensionLevel>)))
  "Returns full string definition for message of type '<SuspensionLevel>"
  (cl:format cl:nil "uint8 SUSPENSION_NONE = 0~%uint8 SUSPENSION_LEVEL1 = 1~%uint8 SUSPENSION_LEVEL2 = 2~%uint8 SUSPENSION_LEVEL3 = 3~%uint8 SUSPENSION_LEVEL4 = 4~%uint8 SUSPENSION_LEVEL5 = 5~%uint8 SUSPENSION_LEVEL6 = 6~%uint8 SUSPENSION_LEVEL7 = 7~%uint8 SUSPENSION_LEVEL8 = 8~%uint8 SUSPENSION_LEVEL9 = 9~%uint8 SUSPENSION_LEVEL10 = 10~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SuspensionLevel)))
  "Returns full string definition for message of type 'SuspensionLevel"
  (cl:format cl:nil "uint8 SUSPENSION_NONE = 0~%uint8 SUSPENSION_LEVEL1 = 1~%uint8 SUSPENSION_LEVEL2 = 2~%uint8 SUSPENSION_LEVEL3 = 3~%uint8 SUSPENSION_LEVEL4 = 4~%uint8 SUSPENSION_LEVEL5 = 5~%uint8 SUSPENSION_LEVEL6 = 6~%uint8 SUSPENSION_LEVEL7 = 7~%uint8 SUSPENSION_LEVEL8 = 8~%uint8 SUSPENSION_LEVEL9 = 9~%uint8 SUSPENSION_LEVEL10 = 10~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SuspensionLevel>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SuspensionLevel>))
  "Converts a ROS message object to a list"
  (cl:list 'SuspensionLevel
    (cl:cons ':value (value msg))
))
