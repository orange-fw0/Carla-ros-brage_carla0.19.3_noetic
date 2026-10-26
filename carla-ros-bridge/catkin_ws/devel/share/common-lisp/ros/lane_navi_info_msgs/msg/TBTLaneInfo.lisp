; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude TBTLaneInfo.msg.html

(cl:defclass <TBTLaneInfo> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (offset
    :reader offset
    :initarg :offset
    :type lane_navi_info_msgs-msg:Cursor
    :initform (cl:make-instance 'lane_navi_info_msgs-msg:Cursor))
   (position
    :reader position
    :initarg :position
    :type lane_navi_info_msgs-msg:Point
    :initform (cl:make-instance 'lane_navi_info_msgs-msg:Point))
   (lane_guidance_list
    :reader lane_guidance_list
    :initarg :lane_guidance_list
    :type (cl:vector lane_navi_info_msgs-msg:TBTLaneAction)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:TBTLaneAction :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:TBTLaneAction)))
   (highlight_lane_guidance_list
    :reader highlight_lane_guidance_list
    :initarg :highlight_lane_guidance_list
    :type (cl:vector lane_navi_info_msgs-msg:TBTLaneAction)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:TBTLaneAction :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:TBTLaneAction)))
   (highlight_lane_list
    :reader highlight_lane_list
    :initarg :highlight_lane_list
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (recommend_lane_list
    :reader recommend_lane_list
    :initarg :recommend_lane_list
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass TBTLaneInfo (<TBTLaneInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TBTLaneInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TBTLaneInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<TBTLaneInfo> is deprecated: use lane_navi_info_msgs-msg:TBTLaneInfo instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <TBTLaneInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:available-val is deprecated.  Use lane_navi_info_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'offset-val :lambda-list '(m))
(cl:defmethod offset-val ((m <TBTLaneInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:offset-val is deprecated.  Use lane_navi_info_msgs-msg:offset instead.")
  (offset m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <TBTLaneInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:position-val is deprecated.  Use lane_navi_info_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'lane_guidance_list-val :lambda-list '(m))
(cl:defmethod lane_guidance_list-val ((m <TBTLaneInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:lane_guidance_list-val is deprecated.  Use lane_navi_info_msgs-msg:lane_guidance_list instead.")
  (lane_guidance_list m))

(cl:ensure-generic-function 'highlight_lane_guidance_list-val :lambda-list '(m))
(cl:defmethod highlight_lane_guidance_list-val ((m <TBTLaneInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:highlight_lane_guidance_list-val is deprecated.  Use lane_navi_info_msgs-msg:highlight_lane_guidance_list instead.")
  (highlight_lane_guidance_list m))

(cl:ensure-generic-function 'highlight_lane_list-val :lambda-list '(m))
(cl:defmethod highlight_lane_list-val ((m <TBTLaneInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:highlight_lane_list-val is deprecated.  Use lane_navi_info_msgs-msg:highlight_lane_list instead.")
  (highlight_lane_list m))

(cl:ensure-generic-function 'recommend_lane_list-val :lambda-list '(m))
(cl:defmethod recommend_lane_list-val ((m <TBTLaneInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:recommend_lane_list-val is deprecated.  Use lane_navi_info_msgs-msg:recommend_lane_list instead.")
  (recommend_lane_list m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TBTLaneInfo>)))
    "Constants for message type '<TBTLaneInfo>"
  '((:OFFSET_VALID . 1)
    (:POSITION_VALID . 2)
    (:LANE_GUIDANCE_LIST_VALID . 4)
    (:HIGHLIGHT_LANE_GUIDANCE_LIST_VALID . 8)
    (:HIGHLIGHT_LANE_LIST_VALID . 16)
    (:RECOMMEND_LANE_LIST_VALID . 32))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TBTLaneInfo)))
    "Constants for message type 'TBTLaneInfo"
  '((:OFFSET_VALID . 1)
    (:POSITION_VALID . 2)
    (:LANE_GUIDANCE_LIST_VALID . 4)
    (:HIGHLIGHT_LANE_GUIDANCE_LIST_VALID . 8)
    (:HIGHLIGHT_LANE_LIST_VALID . 16)
    (:RECOMMEND_LANE_LIST_VALID . 32))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TBTLaneInfo>) ostream)
  "Serializes a message object of type '<TBTLaneInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'offset) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lane_guidance_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lane_guidance_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'highlight_lane_guidance_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'highlight_lane_guidance_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'highlight_lane_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'highlight_lane_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'recommend_lane_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'recommend_lane_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TBTLaneInfo>) istream)
  "Deserializes a message object of type '<TBTLaneInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'offset) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lane_guidance_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lane_guidance_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:TBTLaneAction))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'highlight_lane_guidance_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'highlight_lane_guidance_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:TBTLaneAction))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'highlight_lane_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'highlight_lane_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'recommend_lane_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'recommend_lane_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TBTLaneInfo>)))
  "Returns string type for a message object of type '<TBTLaneInfo>"
  "lane_navi_info_msgs/TBTLaneInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TBTLaneInfo)))
  "Returns string type for a message object of type 'TBTLaneInfo"
  "lane_navi_info_msgs/TBTLaneInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TBTLaneInfo>)))
  "Returns md5sum for a message object of type '<TBTLaneInfo>"
  "095f9cadac76d260c91721eef6ddc194")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TBTLaneInfo)))
  "Returns md5sum for a message object of type 'TBTLaneInfo"
  "095f9cadac76d260c91721eef6ddc194")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TBTLaneInfo>)))
  "Returns full string definition for message of type '<TBTLaneInfo>"
  (cl:format cl:nil "uint8 OFFSET_VALID = 1~%uint8 POSITION_VALID = 2~%uint8 LANE_GUIDANCE_LIST_VALID = 4~%uint8 HIGHLIGHT_LANE_GUIDANCE_LIST_VALID = 8~%uint8 HIGHLIGHT_LANE_LIST_VALID = 16~%uint8 RECOMMEND_LANE_LIST_VALID = 32~%uint8 available~%lane_navi_info_msgs/Cursor offset~%lane_navi_info_msgs/Point position~%lane_navi_info_msgs/TBTLaneAction[] lane_guidance_list~%lane_navi_info_msgs/TBTLaneAction[] highlight_lane_guidance_list~%uint8[] highlight_lane_list~%uint8[] recommend_lane_list~%~%================================================================================~%MSG: lane_navi_info_msgs/Cursor~%landmark_msgs/TrackId road_id~%float32 offset~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: lane_navi_info_msgs/Point~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: lane_navi_info_msgs/TBTLaneAction~%uint8 LANE_ACTION_AHEAD = 0~%uint8 LANE_ACTION_LEFT = 1~%uint8 LANE_ACTION_AHEAD_LEFT = 2~%uint8 LANE_ACTION_RIGHT = 3~%uint8 LANE_ACTION_AHEAD_RIGHT = 4~%uint8 LANE_ACTION_LU_TURN = 5~%uint8 LANE_ACTION_LEFT_RIGHT = 6~%uint8 LANE_ACTION_AHEAD_LEFT_RIGHT = 7~%uint8 LANE_ACTION_RU_TURN = 8~%uint8 LANE_ACTION_AHEAD_LU_TURN = 9~%uint8 LANE_ACTION_AHEAD_RU_TURN = 10~%uint8 LANE_ACTION_LEFT_LU_TURN = 11~%uint8 LANE_ACTION_RIGHT_RU_TURN = 12~%uint8 LANE_ACTION_LEFT_IN_AHEAD = 13~%uint8 LANE_ACTION_LEFT_LU_TURN_EX = 14~%uint8 LANE_ACTION_RESERVED = 15~%uint8 LANE_ACTION_AHEAD_LEFT_LU_TURN = 16~%uint8 LANE_ACTION_RIGHT_LU_TURN = 17~%uint8 LANE_ACTION_LEFT_RIGHT_LU_TURN = 18~%uint8 LANE_ACTION_AHEAD_RIGHT_LU_TURN = 19~%uint8 LANE_ACTION_LEFT_RU_TURN = 20~%uint8 LANE_ACTION_BUS = 21~%uint8 LANE_ACTION_EMPTY = 22~%uint8 LANE_ACTION_VARIABLE = 23~%uint8 LANE_ACTION_DEDICATED = 24~%uint8 LANE_ACTION_TIDAL = 25~%uint8 LANE_ACTION_NULL = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TBTLaneInfo)))
  "Returns full string definition for message of type 'TBTLaneInfo"
  (cl:format cl:nil "uint8 OFFSET_VALID = 1~%uint8 POSITION_VALID = 2~%uint8 LANE_GUIDANCE_LIST_VALID = 4~%uint8 HIGHLIGHT_LANE_GUIDANCE_LIST_VALID = 8~%uint8 HIGHLIGHT_LANE_LIST_VALID = 16~%uint8 RECOMMEND_LANE_LIST_VALID = 32~%uint8 available~%lane_navi_info_msgs/Cursor offset~%lane_navi_info_msgs/Point position~%lane_navi_info_msgs/TBTLaneAction[] lane_guidance_list~%lane_navi_info_msgs/TBTLaneAction[] highlight_lane_guidance_list~%uint8[] highlight_lane_list~%uint8[] recommend_lane_list~%~%================================================================================~%MSG: lane_navi_info_msgs/Cursor~%landmark_msgs/TrackId road_id~%float32 offset~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: lane_navi_info_msgs/Point~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: lane_navi_info_msgs/TBTLaneAction~%uint8 LANE_ACTION_AHEAD = 0~%uint8 LANE_ACTION_LEFT = 1~%uint8 LANE_ACTION_AHEAD_LEFT = 2~%uint8 LANE_ACTION_RIGHT = 3~%uint8 LANE_ACTION_AHEAD_RIGHT = 4~%uint8 LANE_ACTION_LU_TURN = 5~%uint8 LANE_ACTION_LEFT_RIGHT = 6~%uint8 LANE_ACTION_AHEAD_LEFT_RIGHT = 7~%uint8 LANE_ACTION_RU_TURN = 8~%uint8 LANE_ACTION_AHEAD_LU_TURN = 9~%uint8 LANE_ACTION_AHEAD_RU_TURN = 10~%uint8 LANE_ACTION_LEFT_LU_TURN = 11~%uint8 LANE_ACTION_RIGHT_RU_TURN = 12~%uint8 LANE_ACTION_LEFT_IN_AHEAD = 13~%uint8 LANE_ACTION_LEFT_LU_TURN_EX = 14~%uint8 LANE_ACTION_RESERVED = 15~%uint8 LANE_ACTION_AHEAD_LEFT_LU_TURN = 16~%uint8 LANE_ACTION_RIGHT_LU_TURN = 17~%uint8 LANE_ACTION_LEFT_RIGHT_LU_TURN = 18~%uint8 LANE_ACTION_AHEAD_RIGHT_LU_TURN = 19~%uint8 LANE_ACTION_LEFT_RU_TURN = 20~%uint8 LANE_ACTION_BUS = 21~%uint8 LANE_ACTION_EMPTY = 22~%uint8 LANE_ACTION_VARIABLE = 23~%uint8 LANE_ACTION_DEDICATED = 24~%uint8 LANE_ACTION_TIDAL = 25~%uint8 LANE_ACTION_NULL = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TBTLaneInfo>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'offset))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lane_guidance_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'highlight_lane_guidance_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'highlight_lane_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'recommend_lane_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TBTLaneInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'TBTLaneInfo
    (cl:cons ':available (available msg))
    (cl:cons ':offset (offset msg))
    (cl:cons ':position (position msg))
    (cl:cons ':lane_guidance_list (lane_guidance_list msg))
    (cl:cons ':highlight_lane_guidance_list (highlight_lane_guidance_list msg))
    (cl:cons ':highlight_lane_list (highlight_lane_list msg))
    (cl:cons ':recommend_lane_list (recommend_lane_list msg))
))
