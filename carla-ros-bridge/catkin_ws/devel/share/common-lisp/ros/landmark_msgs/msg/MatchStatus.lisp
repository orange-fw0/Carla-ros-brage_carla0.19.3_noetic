; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude MatchStatus.msg.html

(cl:defclass <MatchStatus> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MatchStatus (<MatchStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MatchStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MatchStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<MatchStatus> is deprecated: use landmark_msgs-msg:MatchStatus instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <MatchStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MatchStatus>)))
    "Constants for message type '<MatchStatus>"
  '((:UNKNOWN . 0)
    (:ON_ROUTE . 1)
    (:OFF_ROUTE . 2)
    (:OFF_MAP . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MatchStatus)))
    "Constants for message type 'MatchStatus"
  '((:UNKNOWN . 0)
    (:ON_ROUTE . 1)
    (:OFF_ROUTE . 2)
    (:OFF_MAP . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MatchStatus>) ostream)
  "Serializes a message object of type '<MatchStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MatchStatus>) istream)
  "Deserializes a message object of type '<MatchStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MatchStatus>)))
  "Returns string type for a message object of type '<MatchStatus>"
  "landmark_msgs/MatchStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MatchStatus)))
  "Returns string type for a message object of type 'MatchStatus"
  "landmark_msgs/MatchStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MatchStatus>)))
  "Returns md5sum for a message object of type '<MatchStatus>"
  "e5347a6ba6f5ed48df147d5cd4937703")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MatchStatus)))
  "Returns md5sum for a message object of type 'MatchStatus"
  "e5347a6ba6f5ed48df147d5cd4937703")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MatchStatus>)))
  "Returns full string definition for message of type '<MatchStatus>"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 ON_ROUTE = 1~%uint8 OFF_ROUTE = 2~%uint8 OFF_MAP = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MatchStatus)))
  "Returns full string definition for message of type 'MatchStatus"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 ON_ROUTE = 1~%uint8 OFF_ROUTE = 2~%uint8 OFF_MAP = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MatchStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MatchStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'MatchStatus
    (cl:cons ':value (value msg))
))
