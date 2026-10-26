; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude LaneChangeDirectionEnum.msg.html

(cl:defclass <LaneChangeDirectionEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LaneChangeDirectionEnum (<LaneChangeDirectionEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneChangeDirectionEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneChangeDirectionEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<LaneChangeDirectionEnum> is deprecated: use system_manager_msgs-msg:LaneChangeDirectionEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LaneChangeDirectionEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:value-val is deprecated.  Use system_manager_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LaneChangeDirectionEnum>)))
    "Constants for message type '<LaneChangeDirectionEnum>"
  '((:LEFT . 0)
    (:RIGHT . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LaneChangeDirectionEnum)))
    "Constants for message type 'LaneChangeDirectionEnum"
  '((:LEFT . 0)
    (:RIGHT . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneChangeDirectionEnum>) ostream)
  "Serializes a message object of type '<LaneChangeDirectionEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneChangeDirectionEnum>) istream)
  "Deserializes a message object of type '<LaneChangeDirectionEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneChangeDirectionEnum>)))
  "Returns string type for a message object of type '<LaneChangeDirectionEnum>"
  "system_manager_msgs/LaneChangeDirectionEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneChangeDirectionEnum)))
  "Returns string type for a message object of type 'LaneChangeDirectionEnum"
  "system_manager_msgs/LaneChangeDirectionEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneChangeDirectionEnum>)))
  "Returns md5sum for a message object of type '<LaneChangeDirectionEnum>"
  "966a80359d1f3d97369818a3cd885683")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneChangeDirectionEnum)))
  "Returns md5sum for a message object of type 'LaneChangeDirectionEnum"
  "966a80359d1f3d97369818a3cd885683")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneChangeDirectionEnum>)))
  "Returns full string definition for message of type '<LaneChangeDirectionEnum>"
  (cl:format cl:nil "uint8 LEFT = 0~%uint8 RIGHT = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneChangeDirectionEnum)))
  "Returns full string definition for message of type 'LaneChangeDirectionEnum"
  (cl:format cl:nil "uint8 LEFT = 0~%uint8 RIGHT = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneChangeDirectionEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneChangeDirectionEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneChangeDirectionEnum
    (cl:cons ':value (value msg))
))
