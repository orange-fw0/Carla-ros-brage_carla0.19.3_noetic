; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude LaneAttribute.msg.html

(cl:defclass <LaneAttribute> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (lane_direction
    :reader lane_direction
    :initarg :lane_direction
    :type landmark_msgs-msg:LaneCenterNodeDirectionTypeEnum
    :initform (cl:make-instance 'landmark_msgs-msg:LaneCenterNodeDirectionTypeEnum))
   (start_offset
    :reader start_offset
    :initarg :start_offset
    :type cl:float
    :initform 0.0)
   (end_offset
    :reader end_offset
    :initarg :end_offset
    :type cl:float
    :initform 0.0))
)

(cl:defclass LaneAttribute (<LaneAttribute>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneAttribute>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneAttribute)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<LaneAttribute> is deprecated: use lane_navi_info_msgs-msg:LaneAttribute instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <LaneAttribute>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:available-val is deprecated.  Use lane_navi_info_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'lane_direction-val :lambda-list '(m))
(cl:defmethod lane_direction-val ((m <LaneAttribute>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:lane_direction-val is deprecated.  Use lane_navi_info_msgs-msg:lane_direction instead.")
  (lane_direction m))

(cl:ensure-generic-function 'start_offset-val :lambda-list '(m))
(cl:defmethod start_offset-val ((m <LaneAttribute>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:start_offset-val is deprecated.  Use lane_navi_info_msgs-msg:start_offset instead.")
  (start_offset m))

(cl:ensure-generic-function 'end_offset-val :lambda-list '(m))
(cl:defmethod end_offset-val ((m <LaneAttribute>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:end_offset-val is deprecated.  Use lane_navi_info_msgs-msg:end_offset instead.")
  (end_offset m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LaneAttribute>)))
    "Constants for message type '<LaneAttribute>"
  '((:LANE_DIRECTION_VALID . 1)
    (:START_OFFSET_VALID . 2)
    (:END_OFFSET_VALID . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LaneAttribute)))
    "Constants for message type 'LaneAttribute"
  '((:LANE_DIRECTION_VALID . 1)
    (:START_OFFSET_VALID . 2)
    (:END_OFFSET_VALID . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneAttribute>) ostream)
  "Serializes a message object of type '<LaneAttribute>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lane_direction) ostream)
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneAttribute>) istream)
  "Deserializes a message object of type '<LaneAttribute>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lane_direction) istream)
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneAttribute>)))
  "Returns string type for a message object of type '<LaneAttribute>"
  "lane_navi_info_msgs/LaneAttribute")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneAttribute)))
  "Returns string type for a message object of type 'LaneAttribute"
  "lane_navi_info_msgs/LaneAttribute")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneAttribute>)))
  "Returns md5sum for a message object of type '<LaneAttribute>"
  "e14f5da531b46624c1b6a5969a7c5c72")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneAttribute)))
  "Returns md5sum for a message object of type 'LaneAttribute"
  "e14f5da531b46624c1b6a5969a7c5c72")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneAttribute>)))
  "Returns full string definition for message of type '<LaneAttribute>"
  (cl:format cl:nil "uint8 LANE_DIRECTION_VALID = 1~%uint8 START_OFFSET_VALID = 2~%uint8 END_OFFSET_VALID = 4~%uint8 available~%landmark_msgs/LaneCenterNodeDirectionTypeEnum lane_direction~%float32 start_offset~%float32 end_offset~%~%================================================================================~%MSG: landmark_msgs/LaneCenterNodeDirectionTypeEnum~%uint8 LANE_TYPE_GUIDE_DIRECTION_UNKNOWN = 0~%uint8 LANE_TYPE_GUIDE_DIRECTION_GO_STRAIGHT = 1~%uint8 LANE_TYPE_GUIDE_DIRECTION_TURN_LEFT = 2~%uint8 LANE_TYPE_GUIDE_DIRECTION_TURN_RIGHT = 3~%uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_CONFLUENCE = 6~%uint8 LANE_TYPE_GUIDE_DIRECTION_RIGHT_CONFLUENCE = 7~%uint8 LANE_TYPE_GUIDE_DIRECTION_U_TURN_LEFT = 8~%uint8 LANE_TYPE_GUIDE_DIRECTION_U_TURN_RIGHT = 9~%uint8 LANE_TYPE_GUIDE_DIRECTION_TEXT = 21~%uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_LEFT = 22~%uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_RIGHT = 23~%uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_UTRUN = 24~%uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_U_TURN = 25~%uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_AND_INTERFLOW = 26~%uint8 LANE_TYPE_GUIDE_DIRECTION_RIGHT_TURN_AND_INTERFLOW = 27~%uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_RIGHT_TURN = 28~%uint8 LANE_TYPE_GUIDE_DIRECTION_NO_LEFT_TURN = 29~%uint8 LANE_TYPE_GUIDE_DIRECTION_NO_RIGHT_TURN = 30~%uint8 LANE_TYPE_GUIDE_DIRECTION_NO_U_TURN = 31~%uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_LEFT_RIGHT = 32~%uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_U_LEFT = 33~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneAttribute)))
  "Returns full string definition for message of type 'LaneAttribute"
  (cl:format cl:nil "uint8 LANE_DIRECTION_VALID = 1~%uint8 START_OFFSET_VALID = 2~%uint8 END_OFFSET_VALID = 4~%uint8 available~%landmark_msgs/LaneCenterNodeDirectionTypeEnum lane_direction~%float32 start_offset~%float32 end_offset~%~%================================================================================~%MSG: landmark_msgs/LaneCenterNodeDirectionTypeEnum~%uint8 LANE_TYPE_GUIDE_DIRECTION_UNKNOWN = 0~%uint8 LANE_TYPE_GUIDE_DIRECTION_GO_STRAIGHT = 1~%uint8 LANE_TYPE_GUIDE_DIRECTION_TURN_LEFT = 2~%uint8 LANE_TYPE_GUIDE_DIRECTION_TURN_RIGHT = 3~%uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_CONFLUENCE = 6~%uint8 LANE_TYPE_GUIDE_DIRECTION_RIGHT_CONFLUENCE = 7~%uint8 LANE_TYPE_GUIDE_DIRECTION_U_TURN_LEFT = 8~%uint8 LANE_TYPE_GUIDE_DIRECTION_U_TURN_RIGHT = 9~%uint8 LANE_TYPE_GUIDE_DIRECTION_TEXT = 21~%uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_LEFT = 22~%uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_RIGHT = 23~%uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_UTRUN = 24~%uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_U_TURN = 25~%uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_AND_INTERFLOW = 26~%uint8 LANE_TYPE_GUIDE_DIRECTION_RIGHT_TURN_AND_INTERFLOW = 27~%uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_RIGHT_TURN = 28~%uint8 LANE_TYPE_GUIDE_DIRECTION_NO_LEFT_TURN = 29~%uint8 LANE_TYPE_GUIDE_DIRECTION_NO_RIGHT_TURN = 30~%uint8 LANE_TYPE_GUIDE_DIRECTION_NO_U_TURN = 31~%uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_LEFT_RIGHT = 32~%uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_U_LEFT = 33~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneAttribute>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lane_direction))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneAttribute>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneAttribute
    (cl:cons ':available (available msg))
    (cl:cons ':lane_direction (lane_direction msg))
    (cl:cons ':start_offset (start_offset msg))
    (cl:cons ':end_offset (end_offset msg))
))
