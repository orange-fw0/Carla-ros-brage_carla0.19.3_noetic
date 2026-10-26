; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude LaneBoundaryInfo.msg.html

(cl:defclass <LaneBoundaryInfo> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type landmark_msgs-msg:LaneBoundaryTypeEnum
    :initform (cl:make-instance 'landmark_msgs-msg:LaneBoundaryTypeEnum))
   (start_offset
    :reader start_offset
    :initarg :start_offset
    :type cl:float
    :initform 0.0)
   (end_offset
    :reader end_offset
    :initarg :end_offset
    :type cl:float
    :initform 0.0)
   (polyline
    :reader polyline
    :initarg :polyline
    :type lane_navi_info_msgs-msg:Polyline
    :initform (cl:make-instance 'lane_navi_info_msgs-msg:Polyline)))
)

(cl:defclass LaneBoundaryInfo (<LaneBoundaryInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneBoundaryInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneBoundaryInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<LaneBoundaryInfo> is deprecated: use lane_navi_info_msgs-msg:LaneBoundaryInfo instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <LaneBoundaryInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:type-val is deprecated.  Use lane_navi_info_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'start_offset-val :lambda-list '(m))
(cl:defmethod start_offset-val ((m <LaneBoundaryInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:start_offset-val is deprecated.  Use lane_navi_info_msgs-msg:start_offset instead.")
  (start_offset m))

(cl:ensure-generic-function 'end_offset-val :lambda-list '(m))
(cl:defmethod end_offset-val ((m <LaneBoundaryInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:end_offset-val is deprecated.  Use lane_navi_info_msgs-msg:end_offset instead.")
  (end_offset m))

(cl:ensure-generic-function 'polyline-val :lambda-list '(m))
(cl:defmethod polyline-val ((m <LaneBoundaryInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:polyline-val is deprecated.  Use lane_navi_info_msgs-msg:polyline instead.")
  (polyline m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneBoundaryInfo>) ostream)
  "Serializes a message object of type '<LaneBoundaryInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'start_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'end_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'polyline) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneBoundaryInfo>) istream)
  "Deserializes a message object of type '<LaneBoundaryInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'start_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'end_offset) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'polyline) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneBoundaryInfo>)))
  "Returns string type for a message object of type '<LaneBoundaryInfo>"
  "lane_navi_info_msgs/LaneBoundaryInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneBoundaryInfo)))
  "Returns string type for a message object of type 'LaneBoundaryInfo"
  "lane_navi_info_msgs/LaneBoundaryInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneBoundaryInfo>)))
  "Returns md5sum for a message object of type '<LaneBoundaryInfo>"
  "22c859a3bdf4d1d6b01e2321f359d902")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneBoundaryInfo)))
  "Returns md5sum for a message object of type 'LaneBoundaryInfo"
  "22c859a3bdf4d1d6b01e2321f359d902")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneBoundaryInfo>)))
  "Returns full string definition for message of type '<LaneBoundaryInfo>"
  (cl:format cl:nil "landmark_msgs/LaneBoundaryTypeEnum type~%float32 start_offset~%float32 end_offset~%lane_navi_info_msgs/Polyline polyline~%~%================================================================================~%MSG: landmark_msgs/LaneBoundaryTypeEnum~%uint8 LANE_BOUNDARY_TYPE_UNKNOWN = 0~%uint8 LANE_BOUNDARY_TYPE_DASHED = 1~%uint8 LANE_BOUNDARY_TYPE_SOLID = 2~%uint8 LANE_BOUNDARY_TYPE_DOUBLE_SOLID = 3~%uint8 LANE_BOUNDARY_TYPE_DOUBLE_DASHED = 4~%uint8 LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_SOLID = 5~%uint8 LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_DASHED = 6~%uint8 LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_DASHED = 7~%uint8 LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_SOLID = 8~%uint8 LANE_BOUNDARY_TYPE_ZIG_ZAG = 9~%uint8 LANE_BOUNDARY_TYPE_BOTTS_DOTS = 10~%uint8 LANE_BOUNDARY_TYPE_CHANGEABLE_LANE_MARK = 11~%uint8 LANE_BOUNDARY_TYPE_LOGICAL = 12~%uint8 LANE_BOUNDARY_TYPE_PHYSICAL = 13~%uint8 LANE_BOUNDARY_TYPE_VIRTUAL = 14~%uint8 LANE_BOUNDARY_TYPE_SHORT_DASHED_LINE = 15~%uint8 LANE_BOUNDARY_TYPE_SHADE_AREA = 16~%uint8 LANE_BOUNDARY_TYPE_LANE_VIRTUAL_MARKING = 17~%uint8 LANE_BOUNDARY_TYPE_INTERSECTION_VIRTUAL_MARKING = 18~%uint8 LANE_BOUNDARY_TYPE_CURB_BIRTUAL_MARKING = 19~%uint8 LANE_BOUNDARY_TYPE_UNCLOSED_ROAD = 20~%uint8 LANE_BOUNDARY_TYPE_ROAD_VIRTUAL_LINE = 21~%uint8 LANE_BOUNDARY_TYPE_OTHERS = 99~%uint8 value~%~%================================================================================~%MSG: lane_navi_info_msgs/Polyline~%lane_navi_info_msgs/Point[] points~%~%================================================================================~%MSG: lane_navi_info_msgs/Point~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneBoundaryInfo)))
  "Returns full string definition for message of type 'LaneBoundaryInfo"
  (cl:format cl:nil "landmark_msgs/LaneBoundaryTypeEnum type~%float32 start_offset~%float32 end_offset~%lane_navi_info_msgs/Polyline polyline~%~%================================================================================~%MSG: landmark_msgs/LaneBoundaryTypeEnum~%uint8 LANE_BOUNDARY_TYPE_UNKNOWN = 0~%uint8 LANE_BOUNDARY_TYPE_DASHED = 1~%uint8 LANE_BOUNDARY_TYPE_SOLID = 2~%uint8 LANE_BOUNDARY_TYPE_DOUBLE_SOLID = 3~%uint8 LANE_BOUNDARY_TYPE_DOUBLE_DASHED = 4~%uint8 LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_SOLID = 5~%uint8 LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_DASHED = 6~%uint8 LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_DASHED = 7~%uint8 LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_SOLID = 8~%uint8 LANE_BOUNDARY_TYPE_ZIG_ZAG = 9~%uint8 LANE_BOUNDARY_TYPE_BOTTS_DOTS = 10~%uint8 LANE_BOUNDARY_TYPE_CHANGEABLE_LANE_MARK = 11~%uint8 LANE_BOUNDARY_TYPE_LOGICAL = 12~%uint8 LANE_BOUNDARY_TYPE_PHYSICAL = 13~%uint8 LANE_BOUNDARY_TYPE_VIRTUAL = 14~%uint8 LANE_BOUNDARY_TYPE_SHORT_DASHED_LINE = 15~%uint8 LANE_BOUNDARY_TYPE_SHADE_AREA = 16~%uint8 LANE_BOUNDARY_TYPE_LANE_VIRTUAL_MARKING = 17~%uint8 LANE_BOUNDARY_TYPE_INTERSECTION_VIRTUAL_MARKING = 18~%uint8 LANE_BOUNDARY_TYPE_CURB_BIRTUAL_MARKING = 19~%uint8 LANE_BOUNDARY_TYPE_UNCLOSED_ROAD = 20~%uint8 LANE_BOUNDARY_TYPE_ROAD_VIRTUAL_LINE = 21~%uint8 LANE_BOUNDARY_TYPE_OTHERS = 99~%uint8 value~%~%================================================================================~%MSG: lane_navi_info_msgs/Polyline~%lane_navi_info_msgs/Point[] points~%~%================================================================================~%MSG: lane_navi_info_msgs/Point~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneBoundaryInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'polyline))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneBoundaryInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneBoundaryInfo
    (cl:cons ':type (type msg))
    (cl:cons ':start_offset (start_offset msg))
    (cl:cons ':end_offset (end_offset msg))
    (cl:cons ':polyline (polyline msg))
))
