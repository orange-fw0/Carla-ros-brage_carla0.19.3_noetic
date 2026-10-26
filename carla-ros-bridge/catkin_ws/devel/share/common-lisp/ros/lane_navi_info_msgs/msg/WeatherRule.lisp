; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude WeatherRule.msg.html

(cl:defclass <WeatherRule> (roslisp-msg-protocol:ros-message)
  ((weather_rule_type
    :reader weather_rule_type
    :initarg :weather_rule_type
    :type (cl:vector lane_navi_info_msgs-msg:WeatherRuleType)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:WeatherRuleType :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:WeatherRuleType)))
   (is_limited
    :reader is_limited
    :initarg :is_limited
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass WeatherRule (<WeatherRule>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WeatherRule>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WeatherRule)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<WeatherRule> is deprecated: use lane_navi_info_msgs-msg:WeatherRule instead.")))

(cl:ensure-generic-function 'weather_rule_type-val :lambda-list '(m))
(cl:defmethod weather_rule_type-val ((m <WeatherRule>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:weather_rule_type-val is deprecated.  Use lane_navi_info_msgs-msg:weather_rule_type instead.")
  (weather_rule_type m))

(cl:ensure-generic-function 'is_limited-val :lambda-list '(m))
(cl:defmethod is_limited-val ((m <WeatherRule>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:is_limited-val is deprecated.  Use lane_navi_info_msgs-msg:is_limited instead.")
  (is_limited m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WeatherRule>) ostream)
  "Serializes a message object of type '<WeatherRule>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'weather_rule_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'weather_rule_type))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_limited) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WeatherRule>) istream)
  "Deserializes a message object of type '<WeatherRule>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'weather_rule_type) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'weather_rule_type)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:WeatherRuleType))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'is_limited) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WeatherRule>)))
  "Returns string type for a message object of type '<WeatherRule>"
  "lane_navi_info_msgs/WeatherRule")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WeatherRule)))
  "Returns string type for a message object of type 'WeatherRule"
  "lane_navi_info_msgs/WeatherRule")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WeatherRule>)))
  "Returns md5sum for a message object of type '<WeatherRule>"
  "641fafa69f93c44b2fc9f1ec0104482a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WeatherRule)))
  "Returns md5sum for a message object of type 'WeatherRule"
  "641fafa69f93c44b2fc9f1ec0104482a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WeatherRule>)))
  "Returns full string definition for message of type '<WeatherRule>"
  (cl:format cl:nil "lane_navi_info_msgs/WeatherRuleType[] weather_rule_type~%bool is_limited~%~%================================================================================~%MSG: lane_navi_info_msgs/WeatherRuleType~%uint8 WEATHERTYPE_INVALID = 0~%uint8 WEATHERTYPE_SUNSHINE = 1~%uint8 WEATHERTYPE_RAINSNOW = 2~%uint8 WEATHERTYPE_ICE = 3~%uint8 WEATHERTYPE_FOG = 4~%uint8 WEATHERTYPE_WIND = 5~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WeatherRule)))
  "Returns full string definition for message of type 'WeatherRule"
  (cl:format cl:nil "lane_navi_info_msgs/WeatherRuleType[] weather_rule_type~%bool is_limited~%~%================================================================================~%MSG: lane_navi_info_msgs/WeatherRuleType~%uint8 WEATHERTYPE_INVALID = 0~%uint8 WEATHERTYPE_SUNSHINE = 1~%uint8 WEATHERTYPE_RAINSNOW = 2~%uint8 WEATHERTYPE_ICE = 3~%uint8 WEATHERTYPE_FOG = 4~%uint8 WEATHERTYPE_WIND = 5~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WeatherRule>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'weather_rule_type) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WeatherRule>))
  "Converts a ROS message object to a list"
  (cl:list 'WeatherRule
    (cl:cons ':weather_rule_type (weather_rule_type msg))
    (cl:cons ':is_limited (is_limited msg))
))
