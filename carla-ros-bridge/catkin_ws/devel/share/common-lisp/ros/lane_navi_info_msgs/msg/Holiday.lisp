; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude Holiday.msg.html

(cl:defclass <Holiday> (roslisp-msg-protocol:ros-message)
  ((holiday_type
    :reader holiday_type
    :initarg :holiday_type
    :type lane_navi_info_msgs-msg:HolidayType
    :initform (cl:make-instance 'lane_navi_info_msgs-msg:HolidayType))
   (is_limited
    :reader is_limited
    :initarg :is_limited
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Holiday (<Holiday>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Holiday>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Holiday)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<Holiday> is deprecated: use lane_navi_info_msgs-msg:Holiday instead.")))

(cl:ensure-generic-function 'holiday_type-val :lambda-list '(m))
(cl:defmethod holiday_type-val ((m <Holiday>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:holiday_type-val is deprecated.  Use lane_navi_info_msgs-msg:holiday_type instead.")
  (holiday_type m))

(cl:ensure-generic-function 'is_limited-val :lambda-list '(m))
(cl:defmethod is_limited-val ((m <Holiday>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:is_limited-val is deprecated.  Use lane_navi_info_msgs-msg:is_limited instead.")
  (is_limited m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Holiday>) ostream)
  "Serializes a message object of type '<Holiday>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'holiday_type) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_limited) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Holiday>) istream)
  "Deserializes a message object of type '<Holiday>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'holiday_type) istream)
    (cl:setf (cl:slot-value msg 'is_limited) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Holiday>)))
  "Returns string type for a message object of type '<Holiday>"
  "lane_navi_info_msgs/Holiday")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Holiday)))
  "Returns string type for a message object of type 'Holiday"
  "lane_navi_info_msgs/Holiday")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Holiday>)))
  "Returns md5sum for a message object of type '<Holiday>"
  "a0db7f769d6a1baf065796addc5060f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Holiday)))
  "Returns md5sum for a message object of type 'Holiday"
  "a0db7f769d6a1baf065796addc5060f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Holiday>)))
  "Returns full string definition for message of type '<Holiday>"
  (cl:format cl:nil "lane_navi_info_msgs/HolidayType holiday_type~%bool is_limited~%~%================================================================================~%MSG: lane_navi_info_msgs/HolidayType~%uint8 HOLIDAYTYPE_NONE = 0~%uint8 HOLIDAYTYPE_VALID = 1~%uint8 HOLIDAYTYPE_EXCEPT = 2~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Holiday)))
  "Returns full string definition for message of type 'Holiday"
  (cl:format cl:nil "lane_navi_info_msgs/HolidayType holiday_type~%bool is_limited~%~%================================================================================~%MSG: lane_navi_info_msgs/HolidayType~%uint8 HOLIDAYTYPE_NONE = 0~%uint8 HOLIDAYTYPE_VALID = 1~%uint8 HOLIDAYTYPE_EXCEPT = 2~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Holiday>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'holiday_type))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Holiday>))
  "Converts a ROS message object to a list"
  (cl:list 'Holiday
    (cl:cons ':holiday_type (holiday_type msg))
    (cl:cons ':is_limited (is_limited msg))
))
