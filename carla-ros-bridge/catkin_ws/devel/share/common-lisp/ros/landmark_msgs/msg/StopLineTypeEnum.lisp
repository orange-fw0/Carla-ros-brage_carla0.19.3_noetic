; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude StopLineTypeEnum.msg.html

(cl:defclass <StopLineTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass StopLineTypeEnum (<StopLineTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopLineTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopLineTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<StopLineTypeEnum> is deprecated: use landmark_msgs-msg:StopLineTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <StopLineTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<StopLineTypeEnum>)))
    "Constants for message type '<StopLineTypeEnum>"
  '((:STOP_LINE_TYPE_UNKNOWN . 0)
    (:STOP_LINE_TYPE_NORMAL . 1)
    (:STOP_LINE_LEFT_WAITING_AREA . 2)
    (:STOP_LINE_BACK_WAITING_AREA . 3)
    (:STOP_LINE_RIGHT_WAITING_AREA . 4)
    (:STOP_LINE_GO_STRAIGHT_WAITING_AREA . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'StopLineTypeEnum)))
    "Constants for message type 'StopLineTypeEnum"
  '((:STOP_LINE_TYPE_UNKNOWN . 0)
    (:STOP_LINE_TYPE_NORMAL . 1)
    (:STOP_LINE_LEFT_WAITING_AREA . 2)
    (:STOP_LINE_BACK_WAITING_AREA . 3)
    (:STOP_LINE_RIGHT_WAITING_AREA . 4)
    (:STOP_LINE_GO_STRAIGHT_WAITING_AREA . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopLineTypeEnum>) ostream)
  "Serializes a message object of type '<StopLineTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopLineTypeEnum>) istream)
  "Deserializes a message object of type '<StopLineTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopLineTypeEnum>)))
  "Returns string type for a message object of type '<StopLineTypeEnum>"
  "landmark_msgs/StopLineTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopLineTypeEnum)))
  "Returns string type for a message object of type 'StopLineTypeEnum"
  "landmark_msgs/StopLineTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopLineTypeEnum>)))
  "Returns md5sum for a message object of type '<StopLineTypeEnum>"
  "d6c5905838f990647598b284d00ecfd2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopLineTypeEnum)))
  "Returns md5sum for a message object of type 'StopLineTypeEnum"
  "d6c5905838f990647598b284d00ecfd2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopLineTypeEnum>)))
  "Returns full string definition for message of type '<StopLineTypeEnum>"
  (cl:format cl:nil "uint8 STOP_LINE_TYPE_UNKNOWN = 0~%uint8 STOP_LINE_TYPE_NORMAL = 1~%uint8 STOP_LINE_LEFT_WAITING_AREA = 2~%uint8 STOP_LINE_BACK_WAITING_AREA = 3~%uint8 STOP_LINE_RIGHT_WAITING_AREA = 4~%uint8 STOP_LINE_GO_STRAIGHT_WAITING_AREA = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopLineTypeEnum)))
  "Returns full string definition for message of type 'StopLineTypeEnum"
  (cl:format cl:nil "uint8 STOP_LINE_TYPE_UNKNOWN = 0~%uint8 STOP_LINE_TYPE_NORMAL = 1~%uint8 STOP_LINE_LEFT_WAITING_AREA = 2~%uint8 STOP_LINE_BACK_WAITING_AREA = 3~%uint8 STOP_LINE_RIGHT_WAITING_AREA = 4~%uint8 STOP_LINE_GO_STRAIGHT_WAITING_AREA = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopLineTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopLineTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'StopLineTypeEnum
    (cl:cons ':value (value msg))
))
