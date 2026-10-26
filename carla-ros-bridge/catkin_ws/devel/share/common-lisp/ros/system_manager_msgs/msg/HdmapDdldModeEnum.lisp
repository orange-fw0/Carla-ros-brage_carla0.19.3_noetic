; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude HdmapDdldModeEnum.msg.html

(cl:defclass <HdmapDdldModeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass HdmapDdldModeEnum (<HdmapDdldModeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HdmapDdldModeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HdmapDdldModeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<HdmapDdldModeEnum> is deprecated: use system_manager_msgs-msg:HdmapDdldModeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <HdmapDdldModeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:value-val is deprecated.  Use system_manager_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<HdmapDdldModeEnum>)))
    "Constants for message type '<HdmapDdldModeEnum>"
  '((:HDMAP . 0)
    (:DDLD . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'HdmapDdldModeEnum)))
    "Constants for message type 'HdmapDdldModeEnum"
  '((:HDMAP . 0)
    (:DDLD . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HdmapDdldModeEnum>) ostream)
  "Serializes a message object of type '<HdmapDdldModeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HdmapDdldModeEnum>) istream)
  "Deserializes a message object of type '<HdmapDdldModeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HdmapDdldModeEnum>)))
  "Returns string type for a message object of type '<HdmapDdldModeEnum>"
  "system_manager_msgs/HdmapDdldModeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HdmapDdldModeEnum)))
  "Returns string type for a message object of type 'HdmapDdldModeEnum"
  "system_manager_msgs/HdmapDdldModeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HdmapDdldModeEnum>)))
  "Returns md5sum for a message object of type '<HdmapDdldModeEnum>"
  "70fcfd3f17056bb4cc99e937e7ffdce8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HdmapDdldModeEnum)))
  "Returns md5sum for a message object of type 'HdmapDdldModeEnum"
  "70fcfd3f17056bb4cc99e937e7ffdce8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HdmapDdldModeEnum>)))
  "Returns full string definition for message of type '<HdmapDdldModeEnum>"
  (cl:format cl:nil "uint8 HDMAP = 0~%uint8 DDLD = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HdmapDdldModeEnum)))
  "Returns full string definition for message of type 'HdmapDdldModeEnum"
  (cl:format cl:nil "uint8 HDMAP = 0~%uint8 DDLD = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HdmapDdldModeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HdmapDdldModeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'HdmapDdldModeEnum
    (cl:cons ':value (value msg))
))
