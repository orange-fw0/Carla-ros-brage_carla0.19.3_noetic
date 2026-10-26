; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude SteeringReq.msg.html

(cl:defclass <SteeringReq> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SteeringReq (<SteeringReq>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SteeringReq>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SteeringReq)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<SteeringReq> is deprecated: use system_manager_msgs-msg:SteeringReq instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SteeringReq>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:value-val is deprecated.  Use system_manager_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SteeringReq>)))
    "Constants for message type '<SteeringReq>"
  '((:NO_STEERING_RESET . 0)
    (:STEERING_RESET . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SteeringReq)))
    "Constants for message type 'SteeringReq"
  '((:NO_STEERING_RESET . 0)
    (:STEERING_RESET . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SteeringReq>) ostream)
  "Serializes a message object of type '<SteeringReq>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SteeringReq>) istream)
  "Deserializes a message object of type '<SteeringReq>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SteeringReq>)))
  "Returns string type for a message object of type '<SteeringReq>"
  "system_manager_msgs/SteeringReq")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SteeringReq)))
  "Returns string type for a message object of type 'SteeringReq"
  "system_manager_msgs/SteeringReq")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SteeringReq>)))
  "Returns md5sum for a message object of type '<SteeringReq>"
  "aa40a487c4b7800ba41f548b6368909c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SteeringReq)))
  "Returns md5sum for a message object of type 'SteeringReq"
  "aa40a487c4b7800ba41f548b6368909c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SteeringReq>)))
  "Returns full string definition for message of type '<SteeringReq>"
  (cl:format cl:nil "uint8 NO_STEERING_RESET = 0~%uint8 STEERING_RESET = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SteeringReq)))
  "Returns full string definition for message of type 'SteeringReq"
  (cl:format cl:nil "uint8 NO_STEERING_RESET = 0~%uint8 STEERING_RESET = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SteeringReq>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SteeringReq>))
  "Converts a ROS message object to a list"
  (cl:list 'SteeringReq
    (cl:cons ':value (value msg))
))
