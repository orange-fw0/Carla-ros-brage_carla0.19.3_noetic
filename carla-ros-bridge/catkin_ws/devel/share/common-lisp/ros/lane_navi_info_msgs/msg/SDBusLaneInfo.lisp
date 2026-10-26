; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude SDBusLaneInfo.msg.html

(cl:defclass <SDBusLaneInfo> (roslisp-msg-protocol:ros-message)
  ((offset
    :reader offset
    :initarg :offset
    :type cl:integer
    :initform 0)
   (on_lanes
    :reader on_lanes
    :initarg :on_lanes
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (time_limit_list
    :reader time_limit_list
    :initarg :time_limit_list
    :type (cl:vector lane_navi_info_msgs-msg:TimeRegulationRange)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:TimeRegulationRange :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:TimeRegulationRange)))
   (holiday
    :reader holiday
    :initarg :holiday
    :type lane_navi_info_msgs-msg:HolidayType
    :initform (cl:make-instance 'lane_navi_info_msgs-msg:HolidayType))
   (work_holiday
    :reader work_holiday
    :initarg :work_holiday
    :type lane_navi_info_msgs-msg:WorkHolidayType
    :initform (cl:make-instance 'lane_navi_info_msgs-msg:WorkHolidayType)))
)

(cl:defclass SDBusLaneInfo (<SDBusLaneInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SDBusLaneInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SDBusLaneInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<SDBusLaneInfo> is deprecated: use lane_navi_info_msgs-msg:SDBusLaneInfo instead.")))

(cl:ensure-generic-function 'offset-val :lambda-list '(m))
(cl:defmethod offset-val ((m <SDBusLaneInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:offset-val is deprecated.  Use lane_navi_info_msgs-msg:offset instead.")
  (offset m))

(cl:ensure-generic-function 'on_lanes-val :lambda-list '(m))
(cl:defmethod on_lanes-val ((m <SDBusLaneInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:on_lanes-val is deprecated.  Use lane_navi_info_msgs-msg:on_lanes instead.")
  (on_lanes m))

(cl:ensure-generic-function 'time_limit_list-val :lambda-list '(m))
(cl:defmethod time_limit_list-val ((m <SDBusLaneInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:time_limit_list-val is deprecated.  Use lane_navi_info_msgs-msg:time_limit_list instead.")
  (time_limit_list m))

(cl:ensure-generic-function 'holiday-val :lambda-list '(m))
(cl:defmethod holiday-val ((m <SDBusLaneInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:holiday-val is deprecated.  Use lane_navi_info_msgs-msg:holiday instead.")
  (holiday m))

(cl:ensure-generic-function 'work_holiday-val :lambda-list '(m))
(cl:defmethod work_holiday-val ((m <SDBusLaneInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:work_holiday-val is deprecated.  Use lane_navi_info_msgs-msg:work_holiday instead.")
  (work_holiday m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SDBusLaneInfo>) ostream)
  "Serializes a message object of type '<SDBusLaneInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'offset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'offset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'offset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'offset)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'on_lanes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'on_lanes))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'time_limit_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'time_limit_list))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'holiday) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'work_holiday) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SDBusLaneInfo>) istream)
  "Deserializes a message object of type '<SDBusLaneInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'offset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'offset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'offset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'offset)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'on_lanes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'on_lanes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'time_limit_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'time_limit_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:TimeRegulationRange))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'holiday) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'work_holiday) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SDBusLaneInfo>)))
  "Returns string type for a message object of type '<SDBusLaneInfo>"
  "lane_navi_info_msgs/SDBusLaneInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SDBusLaneInfo)))
  "Returns string type for a message object of type 'SDBusLaneInfo"
  "lane_navi_info_msgs/SDBusLaneInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SDBusLaneInfo>)))
  "Returns md5sum for a message object of type '<SDBusLaneInfo>"
  "bd9e2451eb9157f4f818b640c56ed458")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SDBusLaneInfo)))
  "Returns md5sum for a message object of type 'SDBusLaneInfo"
  "bd9e2451eb9157f4f818b640c56ed458")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SDBusLaneInfo>)))
  "Returns full string definition for message of type '<SDBusLaneInfo>"
  (cl:format cl:nil "uint32 offset~%uint8[] on_lanes~%lane_navi_info_msgs/TimeRegulationRange[] time_limit_list~%lane_navi_info_msgs/HolidayType holiday~%lane_navi_info_msgs/WorkHolidayType work_holiday~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeRegulationRange~%lane_navi_info_msgs/TimeRegulation start_time~%lane_navi_info_msgs/TimeRegulation end_time~%bool is_limited~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeRegulation~%lane_navi_info_msgs/TimeOfDay day~%uint8 week~%lane_navi_info_msgs/DayOfYear year~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeOfDay~%uint8 hours~%uint8 minutes~%~%================================================================================~%MSG: lane_navi_info_msgs/DayOfYear~%uint16 year~%uint8 month~%uint8 day~%~%================================================================================~%MSG: lane_navi_info_msgs/HolidayType~%uint8 HOLIDAYTYPE_NONE = 0~%uint8 HOLIDAYTYPE_VALID = 1~%uint8 HOLIDAYTYPE_EXCEPT = 2~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/WorkHolidayType~%uint8 WORKHOLIDAYTYPE_NONE = 0~%uint8 WORKHOLIDAYTYPE_VALID = 1~%uint8 WORKHOLIDAYTYPE_INVALID = 2~%uint8 WORKHOLIDAYTYPE_WEEKEND = 3~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SDBusLaneInfo)))
  "Returns full string definition for message of type 'SDBusLaneInfo"
  (cl:format cl:nil "uint32 offset~%uint8[] on_lanes~%lane_navi_info_msgs/TimeRegulationRange[] time_limit_list~%lane_navi_info_msgs/HolidayType holiday~%lane_navi_info_msgs/WorkHolidayType work_holiday~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeRegulationRange~%lane_navi_info_msgs/TimeRegulation start_time~%lane_navi_info_msgs/TimeRegulation end_time~%bool is_limited~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeRegulation~%lane_navi_info_msgs/TimeOfDay day~%uint8 week~%lane_navi_info_msgs/DayOfYear year~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeOfDay~%uint8 hours~%uint8 minutes~%~%================================================================================~%MSG: lane_navi_info_msgs/DayOfYear~%uint16 year~%uint8 month~%uint8 day~%~%================================================================================~%MSG: lane_navi_info_msgs/HolidayType~%uint8 HOLIDAYTYPE_NONE = 0~%uint8 HOLIDAYTYPE_VALID = 1~%uint8 HOLIDAYTYPE_EXCEPT = 2~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/WorkHolidayType~%uint8 WORKHOLIDAYTYPE_NONE = 0~%uint8 WORKHOLIDAYTYPE_VALID = 1~%uint8 WORKHOLIDAYTYPE_INVALID = 2~%uint8 WORKHOLIDAYTYPE_WEEKEND = 3~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SDBusLaneInfo>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'on_lanes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'time_limit_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'holiday))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'work_holiday))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SDBusLaneInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'SDBusLaneInfo
    (cl:cons ':offset (offset msg))
    (cl:cons ':on_lanes (on_lanes msg))
    (cl:cons ':time_limit_list (time_limit_list msg))
    (cl:cons ':holiday (holiday msg))
    (cl:cons ':work_holiday (work_holiday msg))
))
