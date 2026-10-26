; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude DateRangeOfYear.msg.html

(cl:defclass <DateRangeOfYear> (roslisp-msg-protocol:ros-message)
  ((start_day
    :reader start_day
    :initarg :start_day
    :type lane_navi_info_msgs-msg:DayOfYear
    :initform (cl:make-instance 'lane_navi_info_msgs-msg:DayOfYear))
   (end_day
    :reader end_day
    :initarg :end_day
    :type lane_navi_info_msgs-msg:DayOfYear
    :initform (cl:make-instance 'lane_navi_info_msgs-msg:DayOfYear))
   (is_limited
    :reader is_limited
    :initarg :is_limited
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DateRangeOfYear (<DateRangeOfYear>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DateRangeOfYear>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DateRangeOfYear)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<DateRangeOfYear> is deprecated: use lane_navi_info_msgs-msg:DateRangeOfYear instead.")))

(cl:ensure-generic-function 'start_day-val :lambda-list '(m))
(cl:defmethod start_day-val ((m <DateRangeOfYear>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:start_day-val is deprecated.  Use lane_navi_info_msgs-msg:start_day instead.")
  (start_day m))

(cl:ensure-generic-function 'end_day-val :lambda-list '(m))
(cl:defmethod end_day-val ((m <DateRangeOfYear>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:end_day-val is deprecated.  Use lane_navi_info_msgs-msg:end_day instead.")
  (end_day m))

(cl:ensure-generic-function 'is_limited-val :lambda-list '(m))
(cl:defmethod is_limited-val ((m <DateRangeOfYear>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:is_limited-val is deprecated.  Use lane_navi_info_msgs-msg:is_limited instead.")
  (is_limited m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DateRangeOfYear>) ostream)
  "Serializes a message object of type '<DateRangeOfYear>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start_day) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'end_day) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_limited) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DateRangeOfYear>) istream)
  "Deserializes a message object of type '<DateRangeOfYear>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start_day) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'end_day) istream)
    (cl:setf (cl:slot-value msg 'is_limited) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DateRangeOfYear>)))
  "Returns string type for a message object of type '<DateRangeOfYear>"
  "lane_navi_info_msgs/DateRangeOfYear")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DateRangeOfYear)))
  "Returns string type for a message object of type 'DateRangeOfYear"
  "lane_navi_info_msgs/DateRangeOfYear")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DateRangeOfYear>)))
  "Returns md5sum for a message object of type '<DateRangeOfYear>"
  "c9ecd0c343a628f50867ddfecfd00d10")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DateRangeOfYear)))
  "Returns md5sum for a message object of type 'DateRangeOfYear"
  "c9ecd0c343a628f50867ddfecfd00d10")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DateRangeOfYear>)))
  "Returns full string definition for message of type '<DateRangeOfYear>"
  (cl:format cl:nil "lane_navi_info_msgs/DayOfYear start_day~%lane_navi_info_msgs/DayOfYear end_day~%bool is_limited~%~%================================================================================~%MSG: lane_navi_info_msgs/DayOfYear~%uint16 year~%uint8 month~%uint8 day~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DateRangeOfYear)))
  "Returns full string definition for message of type 'DateRangeOfYear"
  (cl:format cl:nil "lane_navi_info_msgs/DayOfYear start_day~%lane_navi_info_msgs/DayOfYear end_day~%bool is_limited~%~%================================================================================~%MSG: lane_navi_info_msgs/DayOfYear~%uint16 year~%uint8 month~%uint8 day~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DateRangeOfYear>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start_day))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'end_day))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DateRangeOfYear>))
  "Converts a ROS message object to a list"
  (cl:list 'DateRangeOfYear
    (cl:cons ':start_day (start_day msg))
    (cl:cons ':end_day (end_day msg))
    (cl:cons ':is_limited (is_limited msg))
))
