; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude RequestEnum.msg.html

(cl:defclass <RequestEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RequestEnum (<RequestEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RequestEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RequestEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<RequestEnum> is deprecated: use planning_msgs-msg:RequestEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RequestEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:value-val is deprecated.  Use planning_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RequestEnum>)))
    "Constants for message type '<RequestEnum>"
  '((:START_TASK . 1)
    (:ABORT_TASK . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RequestEnum)))
    "Constants for message type 'RequestEnum"
  '((:START_TASK . 1)
    (:ABORT_TASK . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RequestEnum>) ostream)
  "Serializes a message object of type '<RequestEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RequestEnum>) istream)
  "Deserializes a message object of type '<RequestEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RequestEnum>)))
  "Returns string type for a message object of type '<RequestEnum>"
  "planning_msgs/RequestEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RequestEnum)))
  "Returns string type for a message object of type 'RequestEnum"
  "planning_msgs/RequestEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RequestEnum>)))
  "Returns md5sum for a message object of type '<RequestEnum>"
  "c6dececcfebffbf7d4d0a7076e3420e2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RequestEnum)))
  "Returns md5sum for a message object of type 'RequestEnum"
  "c6dececcfebffbf7d4d0a7076e3420e2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RequestEnum>)))
  "Returns full string definition for message of type '<RequestEnum>"
  (cl:format cl:nil "uint8 START_TASK = 1~%uint8 ABORT_TASK = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RequestEnum)))
  "Returns full string definition for message of type 'RequestEnum"
  (cl:format cl:nil "uint8 START_TASK = 1~%uint8 ABORT_TASK = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RequestEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RequestEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'RequestEnum
    (cl:cons ':value (value msg))
))
