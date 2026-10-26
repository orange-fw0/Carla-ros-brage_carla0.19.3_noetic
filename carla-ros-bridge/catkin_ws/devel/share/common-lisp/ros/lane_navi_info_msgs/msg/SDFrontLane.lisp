; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude SDFrontLane.msg.html

(cl:defclass <SDFrontLane> (roslisp-msg-protocol:ros-message)
  ((number
    :reader number
    :initarg :number
    :type cl:integer
    :initform 0)
   (lane_type
    :reader lane_type
    :initarg :lane_type
    :type lane_navi_info_msgs-msg:SDLaneDirectType
    :initform (cl:make-instance 'lane_navi_info_msgs-msg:SDLaneDirectType))
   (arrows
    :reader arrows
    :initarg :arrows
    :type (cl:vector lane_navi_info_msgs-msg:SDLaneArrow)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:SDLaneArrow :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:SDLaneArrow))))
)

(cl:defclass SDFrontLane (<SDFrontLane>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SDFrontLane>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SDFrontLane)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<SDFrontLane> is deprecated: use lane_navi_info_msgs-msg:SDFrontLane instead.")))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <SDFrontLane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:number-val is deprecated.  Use lane_navi_info_msgs-msg:number instead.")
  (number m))

(cl:ensure-generic-function 'lane_type-val :lambda-list '(m))
(cl:defmethod lane_type-val ((m <SDFrontLane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:lane_type-val is deprecated.  Use lane_navi_info_msgs-msg:lane_type instead.")
  (lane_type m))

(cl:ensure-generic-function 'arrows-val :lambda-list '(m))
(cl:defmethod arrows-val ((m <SDFrontLane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:arrows-val is deprecated.  Use lane_navi_info_msgs-msg:arrows instead.")
  (arrows m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SDFrontLane>) ostream)
  "Serializes a message object of type '<SDFrontLane>"
  (cl:let* ((signed (cl:slot-value msg 'number)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lane_type) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'arrows))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'arrows))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SDFrontLane>) istream)
  "Deserializes a message object of type '<SDFrontLane>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'number) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lane_type) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'arrows) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'arrows)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:SDLaneArrow))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SDFrontLane>)))
  "Returns string type for a message object of type '<SDFrontLane>"
  "lane_navi_info_msgs/SDFrontLane")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SDFrontLane)))
  "Returns string type for a message object of type 'SDFrontLane"
  "lane_navi_info_msgs/SDFrontLane")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SDFrontLane>)))
  "Returns md5sum for a message object of type '<SDFrontLane>"
  "c5f4562fb405e568bda4f4efdd27ca74")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SDFrontLane)))
  "Returns md5sum for a message object of type 'SDFrontLane"
  "c5f4562fb405e568bda4f4efdd27ca74")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SDFrontLane>)))
  "Returns full string definition for message of type '<SDFrontLane>"
  (cl:format cl:nil "int32 number~%lane_navi_info_msgs/SDLaneDirectType lane_type~%lane_navi_info_msgs/SDLaneArrow[] arrows~%~%================================================================================~%MSG: lane_navi_info_msgs/SDLaneDirectType~%uint8 SD_LANE_DIRECT_TYPE_NORMAL = 0~%uint8 SD_LANE_DIRECT_TYPE_BUS = 1~%uint8 SD_LANE_DIRECT_TYPE_OTHER_SPECIAL = 2~%uint8 SD_LANE_DIRECT_TYPE_REVERSIBLE = 3~%uint8 SD_LANE_DIRECT_TYPE_VARIABLE = 4~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/SDLaneArrow~%lane_navi_info_msgs/SDArrowType[] arrow_types~%lane_navi_info_msgs/TimeRegulationRange[] time~%lane_navi_info_msgs/HolidayType holiday~%lane_navi_info_msgs/WorkHolidayType work_holiday~%~%================================================================================~%MSG: lane_navi_info_msgs/SDArrowType~%uint8 SD_ARROW_TYPE_LEFTUTURN = 0~%uint8 SD_ARROW_TYPE_TURNLEFT = 1~%uint8 SD_ARROW_TYPE_STRAIGHT = 2~%uint8 SD_ARROW_TYPE_TURNRIGHT = 3~%uint8 SD_ARROW_TYPE_RIGHTUTURN = 4~%uint8 SD_ARROW_TYPE_LEFT_SIDE_WIDTH_CHANGE = 5~%uint8 SD_ARROW_TYPE_RIGHT_SIDE_WIDTH_CHANGE = 6~%uint8 SD_ARROW_TYPE_SINGLE_LANE_NO_UTURN = 7~%uint8 SD_ARROW_TYPE_LEFT_CURVATURE = 8~%uint8 SD_ARROW_TYPE_RIGHT_CURVATURE = 9~%uint8 SD_ARROW_TYPE_EMPTY_LANE = 10~%uint8 SD_ARROW_TYPE_INVALID = 255~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeRegulationRange~%lane_navi_info_msgs/TimeRegulation start_time~%lane_navi_info_msgs/TimeRegulation end_time~%bool is_limited~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeRegulation~%lane_navi_info_msgs/TimeOfDay day~%uint8 week~%lane_navi_info_msgs/DayOfYear year~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeOfDay~%uint8 hours~%uint8 minutes~%~%================================================================================~%MSG: lane_navi_info_msgs/DayOfYear~%uint16 year~%uint8 month~%uint8 day~%~%================================================================================~%MSG: lane_navi_info_msgs/HolidayType~%uint8 HOLIDAYTYPE_NONE = 0~%uint8 HOLIDAYTYPE_VALID = 1~%uint8 HOLIDAYTYPE_EXCEPT = 2~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/WorkHolidayType~%uint8 WORKHOLIDAYTYPE_NONE = 0~%uint8 WORKHOLIDAYTYPE_VALID = 1~%uint8 WORKHOLIDAYTYPE_INVALID = 2~%uint8 WORKHOLIDAYTYPE_WEEKEND = 3~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SDFrontLane)))
  "Returns full string definition for message of type 'SDFrontLane"
  (cl:format cl:nil "int32 number~%lane_navi_info_msgs/SDLaneDirectType lane_type~%lane_navi_info_msgs/SDLaneArrow[] arrows~%~%================================================================================~%MSG: lane_navi_info_msgs/SDLaneDirectType~%uint8 SD_LANE_DIRECT_TYPE_NORMAL = 0~%uint8 SD_LANE_DIRECT_TYPE_BUS = 1~%uint8 SD_LANE_DIRECT_TYPE_OTHER_SPECIAL = 2~%uint8 SD_LANE_DIRECT_TYPE_REVERSIBLE = 3~%uint8 SD_LANE_DIRECT_TYPE_VARIABLE = 4~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/SDLaneArrow~%lane_navi_info_msgs/SDArrowType[] arrow_types~%lane_navi_info_msgs/TimeRegulationRange[] time~%lane_navi_info_msgs/HolidayType holiday~%lane_navi_info_msgs/WorkHolidayType work_holiday~%~%================================================================================~%MSG: lane_navi_info_msgs/SDArrowType~%uint8 SD_ARROW_TYPE_LEFTUTURN = 0~%uint8 SD_ARROW_TYPE_TURNLEFT = 1~%uint8 SD_ARROW_TYPE_STRAIGHT = 2~%uint8 SD_ARROW_TYPE_TURNRIGHT = 3~%uint8 SD_ARROW_TYPE_RIGHTUTURN = 4~%uint8 SD_ARROW_TYPE_LEFT_SIDE_WIDTH_CHANGE = 5~%uint8 SD_ARROW_TYPE_RIGHT_SIDE_WIDTH_CHANGE = 6~%uint8 SD_ARROW_TYPE_SINGLE_LANE_NO_UTURN = 7~%uint8 SD_ARROW_TYPE_LEFT_CURVATURE = 8~%uint8 SD_ARROW_TYPE_RIGHT_CURVATURE = 9~%uint8 SD_ARROW_TYPE_EMPTY_LANE = 10~%uint8 SD_ARROW_TYPE_INVALID = 255~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeRegulationRange~%lane_navi_info_msgs/TimeRegulation start_time~%lane_navi_info_msgs/TimeRegulation end_time~%bool is_limited~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeRegulation~%lane_navi_info_msgs/TimeOfDay day~%uint8 week~%lane_navi_info_msgs/DayOfYear year~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeOfDay~%uint8 hours~%uint8 minutes~%~%================================================================================~%MSG: lane_navi_info_msgs/DayOfYear~%uint16 year~%uint8 month~%uint8 day~%~%================================================================================~%MSG: lane_navi_info_msgs/HolidayType~%uint8 HOLIDAYTYPE_NONE = 0~%uint8 HOLIDAYTYPE_VALID = 1~%uint8 HOLIDAYTYPE_EXCEPT = 2~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/WorkHolidayType~%uint8 WORKHOLIDAYTYPE_NONE = 0~%uint8 WORKHOLIDAYTYPE_VALID = 1~%uint8 WORKHOLIDAYTYPE_INVALID = 2~%uint8 WORKHOLIDAYTYPE_WEEKEND = 3~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SDFrontLane>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lane_type))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'arrows) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SDFrontLane>))
  "Converts a ROS message object to a list"
  (cl:list 'SDFrontLane
    (cl:cons ':number (number msg))
    (cl:cons ':lane_type (lane_type msg))
    (cl:cons ':arrows (arrows msg))
))
