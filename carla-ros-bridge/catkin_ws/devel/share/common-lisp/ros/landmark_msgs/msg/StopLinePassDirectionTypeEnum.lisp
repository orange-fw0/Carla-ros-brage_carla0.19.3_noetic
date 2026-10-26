; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude StopLinePassDirectionTypeEnum.msg.html

(cl:defclass <StopLinePassDirectionTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass StopLinePassDirectionTypeEnum (<StopLinePassDirectionTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopLinePassDirectionTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopLinePassDirectionTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<StopLinePassDirectionTypeEnum> is deprecated: use landmark_msgs-msg:StopLinePassDirectionTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <StopLinePassDirectionTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<StopLinePassDirectionTypeEnum>)))
    "Constants for message type '<StopLinePassDirectionTypeEnum>"
  '((:STOP_LINE_PASS_DIRECTION_TYPE_UNKNOWN . 0)
    (:STOP_LINE_PASS_DIRECTION_TYPE_LEFT_TO_RIGHT . 1)
    (:STOP_LINE_PASS_DIRECTION_TYPE_RIGHT_TO_LEFT . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'StopLinePassDirectionTypeEnum)))
    "Constants for message type 'StopLinePassDirectionTypeEnum"
  '((:STOP_LINE_PASS_DIRECTION_TYPE_UNKNOWN . 0)
    (:STOP_LINE_PASS_DIRECTION_TYPE_LEFT_TO_RIGHT . 1)
    (:STOP_LINE_PASS_DIRECTION_TYPE_RIGHT_TO_LEFT . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopLinePassDirectionTypeEnum>) ostream)
  "Serializes a message object of type '<StopLinePassDirectionTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopLinePassDirectionTypeEnum>) istream)
  "Deserializes a message object of type '<StopLinePassDirectionTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopLinePassDirectionTypeEnum>)))
  "Returns string type for a message object of type '<StopLinePassDirectionTypeEnum>"
  "landmark_msgs/StopLinePassDirectionTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopLinePassDirectionTypeEnum)))
  "Returns string type for a message object of type 'StopLinePassDirectionTypeEnum"
  "landmark_msgs/StopLinePassDirectionTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopLinePassDirectionTypeEnum>)))
  "Returns md5sum for a message object of type '<StopLinePassDirectionTypeEnum>"
  "efae407afb7f37e3b1204da036cda988")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopLinePassDirectionTypeEnum)))
  "Returns md5sum for a message object of type 'StopLinePassDirectionTypeEnum"
  "efae407afb7f37e3b1204da036cda988")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopLinePassDirectionTypeEnum>)))
  "Returns full string definition for message of type '<StopLinePassDirectionTypeEnum>"
  (cl:format cl:nil "uint8 STOP_LINE_PASS_DIRECTION_TYPE_UNKNOWN = 0~%uint8 STOP_LINE_PASS_DIRECTION_TYPE_LEFT_TO_RIGHT = 1~%uint8 STOP_LINE_PASS_DIRECTION_TYPE_RIGHT_TO_LEFT = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopLinePassDirectionTypeEnum)))
  "Returns full string definition for message of type 'StopLinePassDirectionTypeEnum"
  (cl:format cl:nil "uint8 STOP_LINE_PASS_DIRECTION_TYPE_UNKNOWN = 0~%uint8 STOP_LINE_PASS_DIRECTION_TYPE_LEFT_TO_RIGHT = 1~%uint8 STOP_LINE_PASS_DIRECTION_TYPE_RIGHT_TO_LEFT = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopLinePassDirectionTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopLinePassDirectionTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'StopLinePassDirectionTypeEnum
    (cl:cons ':value (value msg))
))
