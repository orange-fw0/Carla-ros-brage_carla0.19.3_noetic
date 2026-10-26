; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude SDLaneArrow.msg.html

(cl:defclass <SDLaneArrow> (roslisp-msg-protocol:ros-message)
  ((arrow_types
    :reader arrow_types
    :initarg :arrow_types
    :type (cl:vector lane_navi_info_msgs-msg:SDArrowType)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:SDArrowType :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:SDArrowType)))
   (time
    :reader time
    :initarg :time
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

(cl:defclass SDLaneArrow (<SDLaneArrow>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SDLaneArrow>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SDLaneArrow)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<SDLaneArrow> is deprecated: use lane_navi_info_msgs-msg:SDLaneArrow instead.")))

(cl:ensure-generic-function 'arrow_types-val :lambda-list '(m))
(cl:defmethod arrow_types-val ((m <SDLaneArrow>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:arrow_types-val is deprecated.  Use lane_navi_info_msgs-msg:arrow_types instead.")
  (arrow_types m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <SDLaneArrow>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:time-val is deprecated.  Use lane_navi_info_msgs-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'holiday-val :lambda-list '(m))
(cl:defmethod holiday-val ((m <SDLaneArrow>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:holiday-val is deprecated.  Use lane_navi_info_msgs-msg:holiday instead.")
  (holiday m))

(cl:ensure-generic-function 'work_holiday-val :lambda-list '(m))
(cl:defmethod work_holiday-val ((m <SDLaneArrow>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:work_holiday-val is deprecated.  Use lane_navi_info_msgs-msg:work_holiday instead.")
  (work_holiday m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SDLaneArrow>) ostream)
  "Serializes a message object of type '<SDLaneArrow>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'arrow_types))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'arrow_types))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'time))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'holiday) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'work_holiday) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SDLaneArrow>) istream)
  "Deserializes a message object of type '<SDLaneArrow>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'arrow_types) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'arrow_types)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:SDArrowType))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'time) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'time)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:TimeRegulationRange))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'holiday) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'work_holiday) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SDLaneArrow>)))
  "Returns string type for a message object of type '<SDLaneArrow>"
  "lane_navi_info_msgs/SDLaneArrow")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SDLaneArrow)))
  "Returns string type for a message object of type 'SDLaneArrow"
  "lane_navi_info_msgs/SDLaneArrow")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SDLaneArrow>)))
  "Returns md5sum for a message object of type '<SDLaneArrow>"
  "542f81a766b74acd179d45e4d4d4a836")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SDLaneArrow)))
  "Returns md5sum for a message object of type 'SDLaneArrow"
  "542f81a766b74acd179d45e4d4d4a836")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SDLaneArrow>)))
  "Returns full string definition for message of type '<SDLaneArrow>"
  (cl:format cl:nil "lane_navi_info_msgs/SDArrowType[] arrow_types~%lane_navi_info_msgs/TimeRegulationRange[] time~%lane_navi_info_msgs/HolidayType holiday~%lane_navi_info_msgs/WorkHolidayType work_holiday~%~%================================================================================~%MSG: lane_navi_info_msgs/SDArrowType~%uint8 SD_ARROW_TYPE_LEFTUTURN = 0~%uint8 SD_ARROW_TYPE_TURNLEFT = 1~%uint8 SD_ARROW_TYPE_STRAIGHT = 2~%uint8 SD_ARROW_TYPE_TURNRIGHT = 3~%uint8 SD_ARROW_TYPE_RIGHTUTURN = 4~%uint8 SD_ARROW_TYPE_LEFT_SIDE_WIDTH_CHANGE = 5~%uint8 SD_ARROW_TYPE_RIGHT_SIDE_WIDTH_CHANGE = 6~%uint8 SD_ARROW_TYPE_SINGLE_LANE_NO_UTURN = 7~%uint8 SD_ARROW_TYPE_LEFT_CURVATURE = 8~%uint8 SD_ARROW_TYPE_RIGHT_CURVATURE = 9~%uint8 SD_ARROW_TYPE_EMPTY_LANE = 10~%uint8 SD_ARROW_TYPE_INVALID = 255~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeRegulationRange~%lane_navi_info_msgs/TimeRegulation start_time~%lane_navi_info_msgs/TimeRegulation end_time~%bool is_limited~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeRegulation~%lane_navi_info_msgs/TimeOfDay day~%uint8 week~%lane_navi_info_msgs/DayOfYear year~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeOfDay~%uint8 hours~%uint8 minutes~%~%================================================================================~%MSG: lane_navi_info_msgs/DayOfYear~%uint16 year~%uint8 month~%uint8 day~%~%================================================================================~%MSG: lane_navi_info_msgs/HolidayType~%uint8 HOLIDAYTYPE_NONE = 0~%uint8 HOLIDAYTYPE_VALID = 1~%uint8 HOLIDAYTYPE_EXCEPT = 2~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/WorkHolidayType~%uint8 WORKHOLIDAYTYPE_NONE = 0~%uint8 WORKHOLIDAYTYPE_VALID = 1~%uint8 WORKHOLIDAYTYPE_INVALID = 2~%uint8 WORKHOLIDAYTYPE_WEEKEND = 3~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SDLaneArrow)))
  "Returns full string definition for message of type 'SDLaneArrow"
  (cl:format cl:nil "lane_navi_info_msgs/SDArrowType[] arrow_types~%lane_navi_info_msgs/TimeRegulationRange[] time~%lane_navi_info_msgs/HolidayType holiday~%lane_navi_info_msgs/WorkHolidayType work_holiday~%~%================================================================================~%MSG: lane_navi_info_msgs/SDArrowType~%uint8 SD_ARROW_TYPE_LEFTUTURN = 0~%uint8 SD_ARROW_TYPE_TURNLEFT = 1~%uint8 SD_ARROW_TYPE_STRAIGHT = 2~%uint8 SD_ARROW_TYPE_TURNRIGHT = 3~%uint8 SD_ARROW_TYPE_RIGHTUTURN = 4~%uint8 SD_ARROW_TYPE_LEFT_SIDE_WIDTH_CHANGE = 5~%uint8 SD_ARROW_TYPE_RIGHT_SIDE_WIDTH_CHANGE = 6~%uint8 SD_ARROW_TYPE_SINGLE_LANE_NO_UTURN = 7~%uint8 SD_ARROW_TYPE_LEFT_CURVATURE = 8~%uint8 SD_ARROW_TYPE_RIGHT_CURVATURE = 9~%uint8 SD_ARROW_TYPE_EMPTY_LANE = 10~%uint8 SD_ARROW_TYPE_INVALID = 255~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeRegulationRange~%lane_navi_info_msgs/TimeRegulation start_time~%lane_navi_info_msgs/TimeRegulation end_time~%bool is_limited~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeRegulation~%lane_navi_info_msgs/TimeOfDay day~%uint8 week~%lane_navi_info_msgs/DayOfYear year~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeOfDay~%uint8 hours~%uint8 minutes~%~%================================================================================~%MSG: lane_navi_info_msgs/DayOfYear~%uint16 year~%uint8 month~%uint8 day~%~%================================================================================~%MSG: lane_navi_info_msgs/HolidayType~%uint8 HOLIDAYTYPE_NONE = 0~%uint8 HOLIDAYTYPE_VALID = 1~%uint8 HOLIDAYTYPE_EXCEPT = 2~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/WorkHolidayType~%uint8 WORKHOLIDAYTYPE_NONE = 0~%uint8 WORKHOLIDAYTYPE_VALID = 1~%uint8 WORKHOLIDAYTYPE_INVALID = 2~%uint8 WORKHOLIDAYTYPE_WEEKEND = 3~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SDLaneArrow>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'arrow_types) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'time) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'holiday))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'work_holiday))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SDLaneArrow>))
  "Converts a ROS message object to a list"
  (cl:list 'SDLaneArrow
    (cl:cons ':arrow_types (arrow_types msg))
    (cl:cons ':time (time msg))
    (cl:cons ':holiday (holiday msg))
    (cl:cons ':work_holiday (work_holiday msg))
))
