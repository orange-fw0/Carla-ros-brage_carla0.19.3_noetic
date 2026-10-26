; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude IntentionType.msg.html

(cl:defclass <IntentionType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass IntentionType (<IntentionType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IntentionType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IntentionType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<IntentionType> is deprecated: use worldmodel_msgs-msg:IntentionType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <IntentionType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:value-val is deprecated.  Use worldmodel_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<IntentionType>)))
    "Constants for message type '<IntentionType>"
  '((:INVALID . -1)
    (:FREE_MOVE . 0)
    (:KEEP_LANE . 1)
    (:LEFT_CHANGE_LANE_OUT . 2)
    (:LEFT_CHANGE_LANE_IN . 3)
    (:RIGHT_CHANGE_LANE_OUT . 4)
    (:RIGHT_CHANGE_LANE_IN . 5)
    (:GO_STRAIGHT . 11)
    (:TURN_LEFT . 12)
    (:TURN_RIGHT . 13)
    (:U_TURN . 14))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'IntentionType)))
    "Constants for message type 'IntentionType"
  '((:INVALID . -1)
    (:FREE_MOVE . 0)
    (:KEEP_LANE . 1)
    (:LEFT_CHANGE_LANE_OUT . 2)
    (:LEFT_CHANGE_LANE_IN . 3)
    (:RIGHT_CHANGE_LANE_OUT . 4)
    (:RIGHT_CHANGE_LANE_IN . 5)
    (:GO_STRAIGHT . 11)
    (:TURN_LEFT . 12)
    (:TURN_RIGHT . 13)
    (:U_TURN . 14))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IntentionType>) ostream)
  "Serializes a message object of type '<IntentionType>"
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IntentionType>) istream)
  "Deserializes a message object of type '<IntentionType>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IntentionType>)))
  "Returns string type for a message object of type '<IntentionType>"
  "worldmodel_msgs/IntentionType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IntentionType)))
  "Returns string type for a message object of type 'IntentionType"
  "worldmodel_msgs/IntentionType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IntentionType>)))
  "Returns md5sum for a message object of type '<IntentionType>"
  "4e708cc3ef7472c7d503a4eef7f7300d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IntentionType)))
  "Returns md5sum for a message object of type 'IntentionType"
  "4e708cc3ef7472c7d503a4eef7f7300d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IntentionType>)))
  "Returns full string definition for message of type '<IntentionType>"
  (cl:format cl:nil "int32 INVALID = -1~%int32 FREE_MOVE = 0~%int32 KEEP_LANE = 1~%int32 LEFT_CHANGE_LANE_OUT = 2~%int32 LEFT_CHANGE_LANE_IN = 3~%int32 RIGHT_CHANGE_LANE_OUT = 4~%int32 RIGHT_CHANGE_LANE_IN = 5~%int32 GO_STRAIGHT = 11~%int32 TURN_LEFT = 12~%int32 TURN_RIGHT = 13~%int32 U_TURN = 14~%int32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IntentionType)))
  "Returns full string definition for message of type 'IntentionType"
  (cl:format cl:nil "int32 INVALID = -1~%int32 FREE_MOVE = 0~%int32 KEEP_LANE = 1~%int32 LEFT_CHANGE_LANE_OUT = 2~%int32 LEFT_CHANGE_LANE_IN = 3~%int32 RIGHT_CHANGE_LANE_OUT = 4~%int32 RIGHT_CHANGE_LANE_IN = 5~%int32 GO_STRAIGHT = 11~%int32 TURN_LEFT = 12~%int32 TURN_RIGHT = 13~%int32 U_TURN = 14~%int32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IntentionType>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IntentionType>))
  "Converts a ROS message object to a list"
  (cl:list 'IntentionType
    (cl:cons ':value (value msg))
))
