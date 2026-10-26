; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude SDFrontLaneInfo.msg.html

(cl:defclass <SDFrontLaneInfo> (roslisp-msg-protocol:ros-message)
  ((to_road_id
    :reader to_road_id
    :initarg :to_road_id
    :type landmark_msgs-msg:TrackId
    :initform (cl:make-instance 'landmark_msgs-msg:TrackId))
   (lanes
    :reader lanes
    :initarg :lanes
    :type (cl:vector lane_navi_info_msgs-msg:SDFrontLane)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:SDFrontLane :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:SDFrontLane))))
)

(cl:defclass SDFrontLaneInfo (<SDFrontLaneInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SDFrontLaneInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SDFrontLaneInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<SDFrontLaneInfo> is deprecated: use lane_navi_info_msgs-msg:SDFrontLaneInfo instead.")))

(cl:ensure-generic-function 'to_road_id-val :lambda-list '(m))
(cl:defmethod to_road_id-val ((m <SDFrontLaneInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:to_road_id-val is deprecated.  Use lane_navi_info_msgs-msg:to_road_id instead.")
  (to_road_id m))

(cl:ensure-generic-function 'lanes-val :lambda-list '(m))
(cl:defmethod lanes-val ((m <SDFrontLaneInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:lanes-val is deprecated.  Use lane_navi_info_msgs-msg:lanes instead.")
  (lanes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SDFrontLaneInfo>) ostream)
  "Serializes a message object of type '<SDFrontLaneInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'to_road_id) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lanes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lanes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SDFrontLaneInfo>) istream)
  "Deserializes a message object of type '<SDFrontLaneInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'to_road_id) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lanes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lanes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:SDFrontLane))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SDFrontLaneInfo>)))
  "Returns string type for a message object of type '<SDFrontLaneInfo>"
  "lane_navi_info_msgs/SDFrontLaneInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SDFrontLaneInfo)))
  "Returns string type for a message object of type 'SDFrontLaneInfo"
  "lane_navi_info_msgs/SDFrontLaneInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SDFrontLaneInfo>)))
  "Returns md5sum for a message object of type '<SDFrontLaneInfo>"
  "1ecc0ace40f546cb5c18d7600ba2defa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SDFrontLaneInfo)))
  "Returns md5sum for a message object of type 'SDFrontLaneInfo"
  "1ecc0ace40f546cb5c18d7600ba2defa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SDFrontLaneInfo>)))
  "Returns full string definition for message of type '<SDFrontLaneInfo>"
  (cl:format cl:nil "landmark_msgs/TrackId to_road_id~%lane_navi_info_msgs/SDFrontLane[] lanes~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: lane_navi_info_msgs/SDFrontLane~%int32 number~%lane_navi_info_msgs/SDLaneDirectType lane_type~%lane_navi_info_msgs/SDLaneArrow[] arrows~%~%================================================================================~%MSG: lane_navi_info_msgs/SDLaneDirectType~%uint8 SD_LANE_DIRECT_TYPE_NORMAL = 0~%uint8 SD_LANE_DIRECT_TYPE_BUS = 1~%uint8 SD_LANE_DIRECT_TYPE_OTHER_SPECIAL = 2~%uint8 SD_LANE_DIRECT_TYPE_REVERSIBLE = 3~%uint8 SD_LANE_DIRECT_TYPE_VARIABLE = 4~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/SDLaneArrow~%lane_navi_info_msgs/SDArrowType[] arrow_types~%lane_navi_info_msgs/TimeRegulationRange[] time~%lane_navi_info_msgs/HolidayType holiday~%lane_navi_info_msgs/WorkHolidayType work_holiday~%~%================================================================================~%MSG: lane_navi_info_msgs/SDArrowType~%uint8 SD_ARROW_TYPE_LEFTUTURN = 0~%uint8 SD_ARROW_TYPE_TURNLEFT = 1~%uint8 SD_ARROW_TYPE_STRAIGHT = 2~%uint8 SD_ARROW_TYPE_TURNRIGHT = 3~%uint8 SD_ARROW_TYPE_RIGHTUTURN = 4~%uint8 SD_ARROW_TYPE_LEFT_SIDE_WIDTH_CHANGE = 5~%uint8 SD_ARROW_TYPE_RIGHT_SIDE_WIDTH_CHANGE = 6~%uint8 SD_ARROW_TYPE_SINGLE_LANE_NO_UTURN = 7~%uint8 SD_ARROW_TYPE_LEFT_CURVATURE = 8~%uint8 SD_ARROW_TYPE_RIGHT_CURVATURE = 9~%uint8 SD_ARROW_TYPE_EMPTY_LANE = 10~%uint8 SD_ARROW_TYPE_INVALID = 255~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeRegulationRange~%lane_navi_info_msgs/TimeRegulation start_time~%lane_navi_info_msgs/TimeRegulation end_time~%bool is_limited~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeRegulation~%lane_navi_info_msgs/TimeOfDay day~%uint8 week~%lane_navi_info_msgs/DayOfYear year~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeOfDay~%uint8 hours~%uint8 minutes~%~%================================================================================~%MSG: lane_navi_info_msgs/DayOfYear~%uint16 year~%uint8 month~%uint8 day~%~%================================================================================~%MSG: lane_navi_info_msgs/HolidayType~%uint8 HOLIDAYTYPE_NONE = 0~%uint8 HOLIDAYTYPE_VALID = 1~%uint8 HOLIDAYTYPE_EXCEPT = 2~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/WorkHolidayType~%uint8 WORKHOLIDAYTYPE_NONE = 0~%uint8 WORKHOLIDAYTYPE_VALID = 1~%uint8 WORKHOLIDAYTYPE_INVALID = 2~%uint8 WORKHOLIDAYTYPE_WEEKEND = 3~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SDFrontLaneInfo)))
  "Returns full string definition for message of type 'SDFrontLaneInfo"
  (cl:format cl:nil "landmark_msgs/TrackId to_road_id~%lane_navi_info_msgs/SDFrontLane[] lanes~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: lane_navi_info_msgs/SDFrontLane~%int32 number~%lane_navi_info_msgs/SDLaneDirectType lane_type~%lane_navi_info_msgs/SDLaneArrow[] arrows~%~%================================================================================~%MSG: lane_navi_info_msgs/SDLaneDirectType~%uint8 SD_LANE_DIRECT_TYPE_NORMAL = 0~%uint8 SD_LANE_DIRECT_TYPE_BUS = 1~%uint8 SD_LANE_DIRECT_TYPE_OTHER_SPECIAL = 2~%uint8 SD_LANE_DIRECT_TYPE_REVERSIBLE = 3~%uint8 SD_LANE_DIRECT_TYPE_VARIABLE = 4~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/SDLaneArrow~%lane_navi_info_msgs/SDArrowType[] arrow_types~%lane_navi_info_msgs/TimeRegulationRange[] time~%lane_navi_info_msgs/HolidayType holiday~%lane_navi_info_msgs/WorkHolidayType work_holiday~%~%================================================================================~%MSG: lane_navi_info_msgs/SDArrowType~%uint8 SD_ARROW_TYPE_LEFTUTURN = 0~%uint8 SD_ARROW_TYPE_TURNLEFT = 1~%uint8 SD_ARROW_TYPE_STRAIGHT = 2~%uint8 SD_ARROW_TYPE_TURNRIGHT = 3~%uint8 SD_ARROW_TYPE_RIGHTUTURN = 4~%uint8 SD_ARROW_TYPE_LEFT_SIDE_WIDTH_CHANGE = 5~%uint8 SD_ARROW_TYPE_RIGHT_SIDE_WIDTH_CHANGE = 6~%uint8 SD_ARROW_TYPE_SINGLE_LANE_NO_UTURN = 7~%uint8 SD_ARROW_TYPE_LEFT_CURVATURE = 8~%uint8 SD_ARROW_TYPE_RIGHT_CURVATURE = 9~%uint8 SD_ARROW_TYPE_EMPTY_LANE = 10~%uint8 SD_ARROW_TYPE_INVALID = 255~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeRegulationRange~%lane_navi_info_msgs/TimeRegulation start_time~%lane_navi_info_msgs/TimeRegulation end_time~%bool is_limited~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeRegulation~%lane_navi_info_msgs/TimeOfDay day~%uint8 week~%lane_navi_info_msgs/DayOfYear year~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeOfDay~%uint8 hours~%uint8 minutes~%~%================================================================================~%MSG: lane_navi_info_msgs/DayOfYear~%uint16 year~%uint8 month~%uint8 day~%~%================================================================================~%MSG: lane_navi_info_msgs/HolidayType~%uint8 HOLIDAYTYPE_NONE = 0~%uint8 HOLIDAYTYPE_VALID = 1~%uint8 HOLIDAYTYPE_EXCEPT = 2~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/WorkHolidayType~%uint8 WORKHOLIDAYTYPE_NONE = 0~%uint8 WORKHOLIDAYTYPE_VALID = 1~%uint8 WORKHOLIDAYTYPE_INVALID = 2~%uint8 WORKHOLIDAYTYPE_WEEKEND = 3~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SDFrontLaneInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'to_road_id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lanes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SDFrontLaneInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'SDFrontLaneInfo
    (cl:cons ':to_road_id (to_road_id msg))
    (cl:cons ':lanes (lanes msg))
))
