; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude MultiDigitizedRoad.msg.html

(cl:defclass <MultiDigitizedRoad> (roslisp-msg-protocol:ros-message)
  ((muliti_digitized_road_id
    :reader muliti_digitized_road_id
    :initarg :muliti_digitized_road_id
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

(cl:defclass MultiDigitizedRoad (<MultiDigitizedRoad>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MultiDigitizedRoad>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MultiDigitizedRoad)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<MultiDigitizedRoad> is deprecated: use lane_navi_info_msgs-msg:MultiDigitizedRoad instead.")))

(cl:ensure-generic-function 'muliti_digitized_road_id-val :lambda-list '(m))
(cl:defmethod muliti_digitized_road_id-val ((m <MultiDigitizedRoad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:muliti_digitized_road_id-val is deprecated.  Use lane_navi_info_msgs-msg:muliti_digitized_road_id instead.")
  (muliti_digitized_road_id m))

(cl:ensure-generic-function 'start_offset-val :lambda-list '(m))
(cl:defmethod start_offset-val ((m <MultiDigitizedRoad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:start_offset-val is deprecated.  Use lane_navi_info_msgs-msg:start_offset instead.")
  (start_offset m))

(cl:ensure-generic-function 'end_offset-val :lambda-list '(m))
(cl:defmethod end_offset-val ((m <MultiDigitizedRoad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:end_offset-val is deprecated.  Use lane_navi_info_msgs-msg:end_offset instead.")
  (end_offset m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MultiDigitizedRoad>) ostream)
  "Serializes a message object of type '<MultiDigitizedRoad>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'muliti_digitized_road_id) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MultiDigitizedRoad>) istream)
  "Deserializes a message object of type '<MultiDigitizedRoad>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'muliti_digitized_road_id) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MultiDigitizedRoad>)))
  "Returns string type for a message object of type '<MultiDigitizedRoad>"
  "lane_navi_info_msgs/MultiDigitizedRoad")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MultiDigitizedRoad)))
  "Returns string type for a message object of type 'MultiDigitizedRoad"
  "lane_navi_info_msgs/MultiDigitizedRoad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MultiDigitizedRoad>)))
  "Returns md5sum for a message object of type '<MultiDigitizedRoad>"
  "ffc7f2f27b656a09fee5dc1a4a5f4b5c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MultiDigitizedRoad)))
  "Returns md5sum for a message object of type 'MultiDigitizedRoad"
  "ffc7f2f27b656a09fee5dc1a4a5f4b5c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MultiDigitizedRoad>)))
  "Returns full string definition for message of type '<MultiDigitizedRoad>"
  (cl:format cl:nil "landmark_msgs/TrackId muliti_digitized_road_id~%float32 start_offset~%float32 end_offset~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MultiDigitizedRoad)))
  "Returns full string definition for message of type 'MultiDigitizedRoad"
  (cl:format cl:nil "landmark_msgs/TrackId muliti_digitized_road_id~%float32 start_offset~%float32 end_offset~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MultiDigitizedRoad>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'muliti_digitized_road_id))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MultiDigitizedRoad>))
  "Converts a ROS message object to a list"
  (cl:list 'MultiDigitizedRoad
    (cl:cons ':muliti_digitized_road_id (muliti_digitized_road_id msg))
    (cl:cons ':start_offset (start_offset msg))
    (cl:cons ':end_offset (end_offset msg))
))
