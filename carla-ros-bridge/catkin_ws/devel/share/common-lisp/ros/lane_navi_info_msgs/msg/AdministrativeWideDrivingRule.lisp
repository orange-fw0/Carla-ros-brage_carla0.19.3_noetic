; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude AdministrativeWideDrivingRule.msg.html

(cl:defclass <AdministrativeWideDrivingRule> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AdministrativeWideDrivingRule (<AdministrativeWideDrivingRule>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AdministrativeWideDrivingRule>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AdministrativeWideDrivingRule)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<AdministrativeWideDrivingRule> is deprecated: use lane_navi_info_msgs-msg:AdministrativeWideDrivingRule instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <AdministrativeWideDrivingRule>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:value-val is deprecated.  Use lane_navi_info_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AdministrativeWideDrivingRule>)))
    "Constants for message type '<AdministrativeWideDrivingRule>"
  '((:UNKNOWN . 0)
    (:LEFT . 1)
    (:RIGHT . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AdministrativeWideDrivingRule)))
    "Constants for message type 'AdministrativeWideDrivingRule"
  '((:UNKNOWN . 0)
    (:LEFT . 1)
    (:RIGHT . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AdministrativeWideDrivingRule>) ostream)
  "Serializes a message object of type '<AdministrativeWideDrivingRule>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AdministrativeWideDrivingRule>) istream)
  "Deserializes a message object of type '<AdministrativeWideDrivingRule>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AdministrativeWideDrivingRule>)))
  "Returns string type for a message object of type '<AdministrativeWideDrivingRule>"
  "lane_navi_info_msgs/AdministrativeWideDrivingRule")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AdministrativeWideDrivingRule)))
  "Returns string type for a message object of type 'AdministrativeWideDrivingRule"
  "lane_navi_info_msgs/AdministrativeWideDrivingRule")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AdministrativeWideDrivingRule>)))
  "Returns md5sum for a message object of type '<AdministrativeWideDrivingRule>"
  "ab6373b645f2053fa99932ec0dd92755")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AdministrativeWideDrivingRule)))
  "Returns md5sum for a message object of type 'AdministrativeWideDrivingRule"
  "ab6373b645f2053fa99932ec0dd92755")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AdministrativeWideDrivingRule>)))
  "Returns full string definition for message of type '<AdministrativeWideDrivingRule>"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AdministrativeWideDrivingRule)))
  "Returns full string definition for message of type 'AdministrativeWideDrivingRule"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AdministrativeWideDrivingRule>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AdministrativeWideDrivingRule>))
  "Converts a ROS message object to a list"
  (cl:list 'AdministrativeWideDrivingRule
    (cl:cons ':value (value msg))
))
