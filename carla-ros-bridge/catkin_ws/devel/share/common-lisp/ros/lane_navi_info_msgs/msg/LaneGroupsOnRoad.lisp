; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude LaneGroupsOnRoad.msg.html

(cl:defclass <LaneGroupsOnRoad> (roslisp-msg-protocol:ros-message)
  ((lane_group_id
    :reader lane_group_id
    :initarg :lane_group_id
    :type landmark_msgs-msg:TrackId
    :initform (cl:make-instance 'landmark_msgs-msg:TrackId))
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

(cl:defclass LaneGroupsOnRoad (<LaneGroupsOnRoad>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneGroupsOnRoad>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneGroupsOnRoad)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<LaneGroupsOnRoad> is deprecated: use lane_navi_info_msgs-msg:LaneGroupsOnRoad instead.")))

(cl:ensure-generic-function 'lane_group_id-val :lambda-list '(m))
(cl:defmethod lane_group_id-val ((m <LaneGroupsOnRoad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:lane_group_id-val is deprecated.  Use lane_navi_info_msgs-msg:lane_group_id instead.")
  (lane_group_id m))

(cl:ensure-generic-function 'start_offset-val :lambda-list '(m))
(cl:defmethod start_offset-val ((m <LaneGroupsOnRoad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:start_offset-val is deprecated.  Use lane_navi_info_msgs-msg:start_offset instead.")
  (start_offset m))

(cl:ensure-generic-function 'end_offset-val :lambda-list '(m))
(cl:defmethod end_offset-val ((m <LaneGroupsOnRoad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:end_offset-val is deprecated.  Use lane_navi_info_msgs-msg:end_offset instead.")
  (end_offset m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneGroupsOnRoad>) ostream)
  "Serializes a message object of type '<LaneGroupsOnRoad>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lane_group_id) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneGroupsOnRoad>) istream)
  "Deserializes a message object of type '<LaneGroupsOnRoad>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lane_group_id) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneGroupsOnRoad>)))
  "Returns string type for a message object of type '<LaneGroupsOnRoad>"
  "lane_navi_info_msgs/LaneGroupsOnRoad")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneGroupsOnRoad)))
  "Returns string type for a message object of type 'LaneGroupsOnRoad"
  "lane_navi_info_msgs/LaneGroupsOnRoad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneGroupsOnRoad>)))
  "Returns md5sum for a message object of type '<LaneGroupsOnRoad>"
  "9c4286373062ebd0576cf2e21e43f9f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneGroupsOnRoad)))
  "Returns md5sum for a message object of type 'LaneGroupsOnRoad"
  "9c4286373062ebd0576cf2e21e43f9f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneGroupsOnRoad>)))
  "Returns full string definition for message of type '<LaneGroupsOnRoad>"
  (cl:format cl:nil "landmark_msgs/TrackId lane_group_id~%float32 start_offset~%float32 end_offset~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneGroupsOnRoad)))
  "Returns full string definition for message of type 'LaneGroupsOnRoad"
  (cl:format cl:nil "landmark_msgs/TrackId lane_group_id~%float32 start_offset~%float32 end_offset~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneGroupsOnRoad>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lane_group_id))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneGroupsOnRoad>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneGroupsOnRoad
    (cl:cons ':lane_group_id (lane_group_id msg))
    (cl:cons ':start_offset (start_offset msg))
    (cl:cons ':end_offset (end_offset msg))
))
