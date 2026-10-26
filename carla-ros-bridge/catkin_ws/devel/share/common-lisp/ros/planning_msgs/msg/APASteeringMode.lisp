; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude APASteeringMode.msg.html

(cl:defclass <APASteeringMode> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass APASteeringMode (<APASteeringMode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <APASteeringMode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'APASteeringMode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<APASteeringMode> is deprecated: use planning_msgs-msg:APASteeringMode instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <APASteeringMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:value-val is deprecated.  Use planning_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<APASteeringMode>)))
    "Constants for message type '<APASteeringMode>"
  '((:NONE . 0)
    (:STEERING_RESET . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'APASteeringMode)))
    "Constants for message type 'APASteeringMode"
  '((:NONE . 0)
    (:STEERING_RESET . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <APASteeringMode>) ostream)
  "Serializes a message object of type '<APASteeringMode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <APASteeringMode>) istream)
  "Deserializes a message object of type '<APASteeringMode>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<APASteeringMode>)))
  "Returns string type for a message object of type '<APASteeringMode>"
  "planning_msgs/APASteeringMode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'APASteeringMode)))
  "Returns string type for a message object of type 'APASteeringMode"
  "planning_msgs/APASteeringMode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<APASteeringMode>)))
  "Returns md5sum for a message object of type '<APASteeringMode>"
  "61d888dc2e90b8c49c7f50494c575b81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'APASteeringMode)))
  "Returns md5sum for a message object of type 'APASteeringMode"
  "61d888dc2e90b8c49c7f50494c575b81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<APASteeringMode>)))
  "Returns full string definition for message of type '<APASteeringMode>"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 STEERING_RESET = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'APASteeringMode)))
  "Returns full string definition for message of type 'APASteeringMode"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 STEERING_RESET = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <APASteeringMode>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <APASteeringMode>))
  "Converts a ROS message object to a list"
  (cl:list 'APASteeringMode
    (cl:cons ':value (value msg))
))
