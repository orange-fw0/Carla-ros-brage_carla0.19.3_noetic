; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude DaysOfWeek.msg.html

(cl:defclass <DaysOfWeek> (roslisp-msg-protocol:ros-message)
  ((days_of_week_type
    :reader days_of_week_type
    :initarg :days_of_week_type
    :type (cl:vector lane_navi_info_msgs-msg:DaysOfWeekType)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:DaysOfWeekType :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:DaysOfWeekType)))
   (is_limited
    :reader is_limited
    :initarg :is_limited
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DaysOfWeek (<DaysOfWeek>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DaysOfWeek>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DaysOfWeek)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<DaysOfWeek> is deprecated: use lane_navi_info_msgs-msg:DaysOfWeek instead.")))

(cl:ensure-generic-function 'days_of_week_type-val :lambda-list '(m))
(cl:defmethod days_of_week_type-val ((m <DaysOfWeek>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:days_of_week_type-val is deprecated.  Use lane_navi_info_msgs-msg:days_of_week_type instead.")
  (days_of_week_type m))

(cl:ensure-generic-function 'is_limited-val :lambda-list '(m))
(cl:defmethod is_limited-val ((m <DaysOfWeek>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:is_limited-val is deprecated.  Use lane_navi_info_msgs-msg:is_limited instead.")
  (is_limited m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DaysOfWeek>) ostream)
  "Serializes a message object of type '<DaysOfWeek>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'days_of_week_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'days_of_week_type))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_limited) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DaysOfWeek>) istream)
  "Deserializes a message object of type '<DaysOfWeek>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'days_of_week_type) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'days_of_week_type)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:DaysOfWeekType))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'is_limited) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DaysOfWeek>)))
  "Returns string type for a message object of type '<DaysOfWeek>"
  "lane_navi_info_msgs/DaysOfWeek")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DaysOfWeek)))
  "Returns string type for a message object of type 'DaysOfWeek"
  "lane_navi_info_msgs/DaysOfWeek")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DaysOfWeek>)))
  "Returns md5sum for a message object of type '<DaysOfWeek>"
  "32e0fc2f826cfdacfcf20a3a41e35f76")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DaysOfWeek)))
  "Returns md5sum for a message object of type 'DaysOfWeek"
  "32e0fc2f826cfdacfcf20a3a41e35f76")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DaysOfWeek>)))
  "Returns full string definition for message of type '<DaysOfWeek>"
  (cl:format cl:nil "lane_navi_info_msgs/DaysOfWeekType[] days_of_week_type~%bool is_limited~%~%================================================================================~%MSG: lane_navi_info_msgs/DaysOfWeekType~%uint8 DAYSOFWEEKTYPE_INVALID = 0~%uint8 DAYSOFWEEKTYPE_SUNDAY = 1~%uint8 DAYSOFWEEKTYPE_MONDAY = 2~%uint8 DAYSOFWEEKTYPE_TUESDAY = 3~%uint8 DAYSOFWEEKTYPE_WEDNESDAY = 4~%uint8 DAYSOFWEEKTYPE_THURSDAY = 5~%uint8 DAYSOFWEEKTYPE_FRIDAY = 6~%uint8 DAYSOFWEEKTYPE_SATURDAY = 7~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DaysOfWeek)))
  "Returns full string definition for message of type 'DaysOfWeek"
  (cl:format cl:nil "lane_navi_info_msgs/DaysOfWeekType[] days_of_week_type~%bool is_limited~%~%================================================================================~%MSG: lane_navi_info_msgs/DaysOfWeekType~%uint8 DAYSOFWEEKTYPE_INVALID = 0~%uint8 DAYSOFWEEKTYPE_SUNDAY = 1~%uint8 DAYSOFWEEKTYPE_MONDAY = 2~%uint8 DAYSOFWEEKTYPE_TUESDAY = 3~%uint8 DAYSOFWEEKTYPE_WEDNESDAY = 4~%uint8 DAYSOFWEEKTYPE_THURSDAY = 5~%uint8 DAYSOFWEEKTYPE_FRIDAY = 6~%uint8 DAYSOFWEEKTYPE_SATURDAY = 7~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DaysOfWeek>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'days_of_week_type) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DaysOfWeek>))
  "Converts a ROS message object to a list"
  (cl:list 'DaysOfWeek
    (cl:cons ':days_of_week_type (days_of_week_type msg))
    (cl:cons ':is_limited (is_limited msg))
))
