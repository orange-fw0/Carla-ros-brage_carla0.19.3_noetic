; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude WeatherRuleType.msg.html

(cl:defclass <WeatherRuleType> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WeatherRuleType (<WeatherRuleType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WeatherRuleType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WeatherRuleType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<WeatherRuleType> is deprecated: use lane_navi_info_msgs-msg:WeatherRuleType instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <WeatherRuleType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:type-val is deprecated.  Use lane_navi_info_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WeatherRuleType>)))
    "Constants for message type '<WeatherRuleType>"
  '((:WEATHERTYPE_INVALID . 0)
    (:WEATHERTYPE_SUNSHINE . 1)
    (:WEATHERTYPE_RAINSNOW . 2)
    (:WEATHERTYPE_ICE . 3)
    (:WEATHERTYPE_FOG . 4)
    (:WEATHERTYPE_WIND . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WeatherRuleType)))
    "Constants for message type 'WeatherRuleType"
  '((:WEATHERTYPE_INVALID . 0)
    (:WEATHERTYPE_SUNSHINE . 1)
    (:WEATHERTYPE_RAINSNOW . 2)
    (:WEATHERTYPE_ICE . 3)
    (:WEATHERTYPE_FOG . 4)
    (:WEATHERTYPE_WIND . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WeatherRuleType>) ostream)
  "Serializes a message object of type '<WeatherRuleType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WeatherRuleType>) istream)
  "Deserializes a message object of type '<WeatherRuleType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WeatherRuleType>)))
  "Returns string type for a message object of type '<WeatherRuleType>"
  "lane_navi_info_msgs/WeatherRuleType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WeatherRuleType)))
  "Returns string type for a message object of type 'WeatherRuleType"
  "lane_navi_info_msgs/WeatherRuleType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WeatherRuleType>)))
  "Returns md5sum for a message object of type '<WeatherRuleType>"
  "7ba6de65c9d99b9e8281b1ebdfb9929e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WeatherRuleType)))
  "Returns md5sum for a message object of type 'WeatherRuleType"
  "7ba6de65c9d99b9e8281b1ebdfb9929e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WeatherRuleType>)))
  "Returns full string definition for message of type '<WeatherRuleType>"
  (cl:format cl:nil "uint8 WEATHERTYPE_INVALID = 0~%uint8 WEATHERTYPE_SUNSHINE = 1~%uint8 WEATHERTYPE_RAINSNOW = 2~%uint8 WEATHERTYPE_ICE = 3~%uint8 WEATHERTYPE_FOG = 4~%uint8 WEATHERTYPE_WIND = 5~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WeatherRuleType)))
  "Returns full string definition for message of type 'WeatherRuleType"
  (cl:format cl:nil "uint8 WEATHERTYPE_INVALID = 0~%uint8 WEATHERTYPE_SUNSHINE = 1~%uint8 WEATHERTYPE_RAINSNOW = 2~%uint8 WEATHERTYPE_ICE = 3~%uint8 WEATHERTYPE_FOG = 4~%uint8 WEATHERTYPE_WIND = 5~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WeatherRuleType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WeatherRuleType>))
  "Converts a ROS message object to a list"
  (cl:list 'WeatherRuleType
    (cl:cons ':type (type msg))
))
