; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude ConditionType.msg.html

(cl:defclass <ConditionType> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ConditionType (<ConditionType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConditionType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConditionType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<ConditionType> is deprecated: use lane_navi_info_msgs-msg:ConditionType instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <ConditionType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:type-val is deprecated.  Use lane_navi_info_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ConditionType>)))
    "Constants for message type '<ConditionType>"
  '((:ALWAYS_VALID . 0)
    (:SIGN_IS_NOT_VALID_AT_ALL . 5)
    (:VALID_ONLY_IF_SNOW . 6)
    (:VALID_ONLY_IF_FOG . 7)
    (:VALID_ONLY_IF_RAIN . 8)
    (:VALID_ONLY_BY_DAY . 9)
    (:VALID_ONLY_BY_NIGHT . 10)
    (:VALID_DEPENDING_ON_TURN_DIRECTION . 11))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ConditionType)))
    "Constants for message type 'ConditionType"
  '((:ALWAYS_VALID . 0)
    (:SIGN_IS_NOT_VALID_AT_ALL . 5)
    (:VALID_ONLY_IF_SNOW . 6)
    (:VALID_ONLY_IF_FOG . 7)
    (:VALID_ONLY_IF_RAIN . 8)
    (:VALID_ONLY_BY_DAY . 9)
    (:VALID_ONLY_BY_NIGHT . 10)
    (:VALID_DEPENDING_ON_TURN_DIRECTION . 11))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConditionType>) ostream)
  "Serializes a message object of type '<ConditionType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConditionType>) istream)
  "Deserializes a message object of type '<ConditionType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConditionType>)))
  "Returns string type for a message object of type '<ConditionType>"
  "lane_navi_info_msgs/ConditionType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConditionType)))
  "Returns string type for a message object of type 'ConditionType"
  "lane_navi_info_msgs/ConditionType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConditionType>)))
  "Returns md5sum for a message object of type '<ConditionType>"
  "6077c3800042b45e319943481f163e50")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConditionType)))
  "Returns md5sum for a message object of type 'ConditionType"
  "6077c3800042b45e319943481f163e50")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConditionType>)))
  "Returns full string definition for message of type '<ConditionType>"
  (cl:format cl:nil "uint8 ALWAYS_VALID = 0~%uint8 SIGN_IS_NOT_VALID_AT_ALL = 5~%uint8 VALID_ONLY_IF_SNOW = 6~%uint8 VALID_ONLY_IF_FOG = 7~%uint8 VALID_ONLY_IF_RAIN = 8~%uint8 VALID_ONLY_BY_DAY = 9~%uint8 VALID_ONLY_BY_NIGHT = 10~%uint8 VALID_DEPENDING_ON_TURN_DIRECTION = 11~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConditionType)))
  "Returns full string definition for message of type 'ConditionType"
  (cl:format cl:nil "uint8 ALWAYS_VALID = 0~%uint8 SIGN_IS_NOT_VALID_AT_ALL = 5~%uint8 VALID_ONLY_IF_SNOW = 6~%uint8 VALID_ONLY_IF_FOG = 7~%uint8 VALID_ONLY_IF_RAIN = 8~%uint8 VALID_ONLY_BY_DAY = 9~%uint8 VALID_ONLY_BY_NIGHT = 10~%uint8 VALID_DEPENDING_ON_TURN_DIRECTION = 11~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConditionType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConditionType>))
  "Converts a ROS message object to a list"
  (cl:list 'ConditionType
    (cl:cons ':type (type msg))
))
