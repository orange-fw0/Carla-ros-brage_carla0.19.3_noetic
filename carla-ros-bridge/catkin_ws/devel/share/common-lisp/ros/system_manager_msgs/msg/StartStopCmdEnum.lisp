; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude StartStopCmdEnum.msg.html

(cl:defclass <StartStopCmdEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass StartStopCmdEnum (<StartStopCmdEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartStopCmdEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartStopCmdEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<StartStopCmdEnum> is deprecated: use system_manager_msgs-msg:StartStopCmdEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <StartStopCmdEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:value-val is deprecated.  Use system_manager_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<StartStopCmdEnum>)))
    "Constants for message type '<StartStopCmdEnum>"
  '((:START . 0)
    (:STOP . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'StartStopCmdEnum)))
    "Constants for message type 'StartStopCmdEnum"
  '((:START . 0)
    (:STOP . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartStopCmdEnum>) ostream)
  "Serializes a message object of type '<StartStopCmdEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartStopCmdEnum>) istream)
  "Deserializes a message object of type '<StartStopCmdEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartStopCmdEnum>)))
  "Returns string type for a message object of type '<StartStopCmdEnum>"
  "system_manager_msgs/StartStopCmdEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartStopCmdEnum)))
  "Returns string type for a message object of type 'StartStopCmdEnum"
  "system_manager_msgs/StartStopCmdEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartStopCmdEnum>)))
  "Returns md5sum for a message object of type '<StartStopCmdEnum>"
  "1b248fd3b822750f44babadbcf0c40bc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartStopCmdEnum)))
  "Returns md5sum for a message object of type 'StartStopCmdEnum"
  "1b248fd3b822750f44babadbcf0c40bc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartStopCmdEnum>)))
  "Returns full string definition for message of type '<StartStopCmdEnum>"
  (cl:format cl:nil "uint8 START = 0~%uint8 STOP = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartStopCmdEnum)))
  "Returns full string definition for message of type 'StartStopCmdEnum"
  (cl:format cl:nil "uint8 START = 0~%uint8 STOP = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartStopCmdEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartStopCmdEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'StartStopCmdEnum
    (cl:cons ':value (value msg))
))
