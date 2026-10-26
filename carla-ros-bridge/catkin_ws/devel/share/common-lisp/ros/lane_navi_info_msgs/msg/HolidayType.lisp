; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude HolidayType.msg.html

(cl:defclass <HolidayType> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass HolidayType (<HolidayType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HolidayType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HolidayType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<HolidayType> is deprecated: use lane_navi_info_msgs-msg:HolidayType instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <HolidayType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:type-val is deprecated.  Use lane_navi_info_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<HolidayType>)))
    "Constants for message type '<HolidayType>"
  '((:HOLIDAYTYPE_NONE . 0)
    (:HOLIDAYTYPE_VALID . 1)
    (:HOLIDAYTYPE_EXCEPT . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'HolidayType)))
    "Constants for message type 'HolidayType"
  '((:HOLIDAYTYPE_NONE . 0)
    (:HOLIDAYTYPE_VALID . 1)
    (:HOLIDAYTYPE_EXCEPT . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HolidayType>) ostream)
  "Serializes a message object of type '<HolidayType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HolidayType>) istream)
  "Deserializes a message object of type '<HolidayType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HolidayType>)))
  "Returns string type for a message object of type '<HolidayType>"
  "lane_navi_info_msgs/HolidayType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HolidayType)))
  "Returns string type for a message object of type 'HolidayType"
  "lane_navi_info_msgs/HolidayType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HolidayType>)))
  "Returns md5sum for a message object of type '<HolidayType>"
  "3df50e6b77ba0513892e5cb105e9637c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HolidayType)))
  "Returns md5sum for a message object of type 'HolidayType"
  "3df50e6b77ba0513892e5cb105e9637c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HolidayType>)))
  "Returns full string definition for message of type '<HolidayType>"
  (cl:format cl:nil "uint8 HOLIDAYTYPE_NONE = 0~%uint8 HOLIDAYTYPE_VALID = 1~%uint8 HOLIDAYTYPE_EXCEPT = 2~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HolidayType)))
  "Returns full string definition for message of type 'HolidayType"
  (cl:format cl:nil "uint8 HOLIDAYTYPE_NONE = 0~%uint8 HOLIDAYTYPE_VALID = 1~%uint8 HOLIDAYTYPE_EXCEPT = 2~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HolidayType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HolidayType>))
  "Converts a ROS message object to a list"
  (cl:list 'HolidayType
    (cl:cons ':type (type msg))
))
