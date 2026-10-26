; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude IntersectTypeEnum.msg.html

(cl:defclass <IntersectTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass IntersectTypeEnum (<IntersectTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IntersectTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IntersectTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<IntersectTypeEnum> is deprecated: use landmark_msgs-msg:IntersectTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <IntersectTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<IntersectTypeEnum>)))
    "Constants for message type '<IntersectTypeEnum>"
  '((:UNKNOWN . 0)
    (:CROSS . 1)
    (:CLOSE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'IntersectTypeEnum)))
    "Constants for message type 'IntersectTypeEnum"
  '((:UNKNOWN . 0)
    (:CROSS . 1)
    (:CLOSE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IntersectTypeEnum>) ostream)
  "Serializes a message object of type '<IntersectTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IntersectTypeEnum>) istream)
  "Deserializes a message object of type '<IntersectTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IntersectTypeEnum>)))
  "Returns string type for a message object of type '<IntersectTypeEnum>"
  "landmark_msgs/IntersectTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IntersectTypeEnum)))
  "Returns string type for a message object of type 'IntersectTypeEnum"
  "landmark_msgs/IntersectTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IntersectTypeEnum>)))
  "Returns md5sum for a message object of type '<IntersectTypeEnum>"
  "a2e01337dcdf4cf76bff5680ea88148c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IntersectTypeEnum)))
  "Returns md5sum for a message object of type 'IntersectTypeEnum"
  "a2e01337dcdf4cf76bff5680ea88148c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IntersectTypeEnum>)))
  "Returns full string definition for message of type '<IntersectTypeEnum>"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 CROSS = 1~%uint8 CLOSE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IntersectTypeEnum)))
  "Returns full string definition for message of type 'IntersectTypeEnum"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 CROSS = 1~%uint8 CLOSE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IntersectTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IntersectTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'IntersectTypeEnum
    (cl:cons ':value (value msg))
))
