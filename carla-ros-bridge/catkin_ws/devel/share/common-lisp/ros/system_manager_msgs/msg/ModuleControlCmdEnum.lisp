; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude ModuleControlCmdEnum.msg.html

(cl:defclass <ModuleControlCmdEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ModuleControlCmdEnum (<ModuleControlCmdEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ModuleControlCmdEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ModuleControlCmdEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<ModuleControlCmdEnum> is deprecated: use system_manager_msgs-msg:ModuleControlCmdEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ModuleControlCmdEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:value-val is deprecated.  Use system_manager_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ModuleControlCmdEnum>)))
    "Constants for message type '<ModuleControlCmdEnum>"
  '((:PAUSE . 0)
    (:RESUME . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ModuleControlCmdEnum)))
    "Constants for message type 'ModuleControlCmdEnum"
  '((:PAUSE . 0)
    (:RESUME . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ModuleControlCmdEnum>) ostream)
  "Serializes a message object of type '<ModuleControlCmdEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ModuleControlCmdEnum>) istream)
  "Deserializes a message object of type '<ModuleControlCmdEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ModuleControlCmdEnum>)))
  "Returns string type for a message object of type '<ModuleControlCmdEnum>"
  "system_manager_msgs/ModuleControlCmdEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModuleControlCmdEnum)))
  "Returns string type for a message object of type 'ModuleControlCmdEnum"
  "system_manager_msgs/ModuleControlCmdEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ModuleControlCmdEnum>)))
  "Returns md5sum for a message object of type '<ModuleControlCmdEnum>"
  "408fbe443d6664ac257a31cb09103ce4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ModuleControlCmdEnum)))
  "Returns md5sum for a message object of type 'ModuleControlCmdEnum"
  "408fbe443d6664ac257a31cb09103ce4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ModuleControlCmdEnum>)))
  "Returns full string definition for message of type '<ModuleControlCmdEnum>"
  (cl:format cl:nil "uint8 PAUSE = 0~%uint8 RESUME = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ModuleControlCmdEnum)))
  "Returns full string definition for message of type 'ModuleControlCmdEnum"
  (cl:format cl:nil "uint8 PAUSE = 0~%uint8 RESUME = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ModuleControlCmdEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ModuleControlCmdEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'ModuleControlCmdEnum
    (cl:cons ':value (value msg))
))
