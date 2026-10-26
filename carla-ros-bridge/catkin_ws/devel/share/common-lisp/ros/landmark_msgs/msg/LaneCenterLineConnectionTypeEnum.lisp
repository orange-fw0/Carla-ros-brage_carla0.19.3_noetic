; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude LaneCenterLineConnectionTypeEnum.msg.html

(cl:defclass <LaneCenterLineConnectionTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LaneCenterLineConnectionTypeEnum (<LaneCenterLineConnectionTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneCenterLineConnectionTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneCenterLineConnectionTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<LaneCenterLineConnectionTypeEnum> is deprecated: use landmark_msgs-msg:LaneCenterLineConnectionTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LaneCenterLineConnectionTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LaneCenterLineConnectionTypeEnum>)))
    "Constants for message type '<LaneCenterLineConnectionTypeEnum>"
  '((:POINT_TYPE_UNKNOWN . 0)
    (:POINT_TYPE_NORMAL . 1)
    (:POINT_TYPE_TURN_LEFT . 2)
    (:POINT_TYPE_TURN_RIGHT . 3)
    (:POINT_TYPE_SPLIT . 4)
    (:POINT_TYPE_MERGE . 5)
    (:POINT_TYPE_LEFT_TURN_BACK . 6)
    (:POINT_TYPE_RIGHT_TURN_BACK . 7)
    (:POINT_TYPE_SPLIT_CONTINUE . 8)
    (:POINT_TYPE_MERGE_CONTINUE . 9))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LaneCenterLineConnectionTypeEnum)))
    "Constants for message type 'LaneCenterLineConnectionTypeEnum"
  '((:POINT_TYPE_UNKNOWN . 0)
    (:POINT_TYPE_NORMAL . 1)
    (:POINT_TYPE_TURN_LEFT . 2)
    (:POINT_TYPE_TURN_RIGHT . 3)
    (:POINT_TYPE_SPLIT . 4)
    (:POINT_TYPE_MERGE . 5)
    (:POINT_TYPE_LEFT_TURN_BACK . 6)
    (:POINT_TYPE_RIGHT_TURN_BACK . 7)
    (:POINT_TYPE_SPLIT_CONTINUE . 8)
    (:POINT_TYPE_MERGE_CONTINUE . 9))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneCenterLineConnectionTypeEnum>) ostream)
  "Serializes a message object of type '<LaneCenterLineConnectionTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneCenterLineConnectionTypeEnum>) istream)
  "Deserializes a message object of type '<LaneCenterLineConnectionTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneCenterLineConnectionTypeEnum>)))
  "Returns string type for a message object of type '<LaneCenterLineConnectionTypeEnum>"
  "landmark_msgs/LaneCenterLineConnectionTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneCenterLineConnectionTypeEnum)))
  "Returns string type for a message object of type 'LaneCenterLineConnectionTypeEnum"
  "landmark_msgs/LaneCenterLineConnectionTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneCenterLineConnectionTypeEnum>)))
  "Returns md5sum for a message object of type '<LaneCenterLineConnectionTypeEnum>"
  "31b13c4ca9e441142aa4be25eea7df26")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneCenterLineConnectionTypeEnum)))
  "Returns md5sum for a message object of type 'LaneCenterLineConnectionTypeEnum"
  "31b13c4ca9e441142aa4be25eea7df26")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneCenterLineConnectionTypeEnum>)))
  "Returns full string definition for message of type '<LaneCenterLineConnectionTypeEnum>"
  (cl:format cl:nil "uint8 POINT_TYPE_UNKNOWN = 0~%uint8 POINT_TYPE_NORMAL = 1~%uint8 POINT_TYPE_TURN_LEFT = 2~%uint8 POINT_TYPE_TURN_RIGHT = 3~%uint8 POINT_TYPE_SPLIT = 4~%uint8 POINT_TYPE_MERGE = 5~%uint8 POINT_TYPE_LEFT_TURN_BACK = 6~%uint8 POINT_TYPE_RIGHT_TURN_BACK = 7~%uint8 POINT_TYPE_SPLIT_CONTINUE = 8~%uint8 POINT_TYPE_MERGE_CONTINUE = 9~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneCenterLineConnectionTypeEnum)))
  "Returns full string definition for message of type 'LaneCenterLineConnectionTypeEnum"
  (cl:format cl:nil "uint8 POINT_TYPE_UNKNOWN = 0~%uint8 POINT_TYPE_NORMAL = 1~%uint8 POINT_TYPE_TURN_LEFT = 2~%uint8 POINT_TYPE_TURN_RIGHT = 3~%uint8 POINT_TYPE_SPLIT = 4~%uint8 POINT_TYPE_MERGE = 5~%uint8 POINT_TYPE_LEFT_TURN_BACK = 6~%uint8 POINT_TYPE_RIGHT_TURN_BACK = 7~%uint8 POINT_TYPE_SPLIT_CONTINUE = 8~%uint8 POINT_TYPE_MERGE_CONTINUE = 9~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneCenterLineConnectionTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneCenterLineConnectionTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneCenterLineConnectionTypeEnum
    (cl:cons ':value (value msg))
))
