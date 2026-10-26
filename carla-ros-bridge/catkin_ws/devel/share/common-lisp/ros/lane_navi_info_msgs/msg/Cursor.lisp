; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude Cursor.msg.html

(cl:defclass <Cursor> (roslisp-msg-protocol:ros-message)
  ((road_id
    :reader road_id
    :initarg :road_id
    :type landmark_msgs-msg:TrackId
    :initform (cl:make-instance 'landmark_msgs-msg:TrackId))
   (offset
    :reader offset
    :initarg :offset
    :type cl:float
    :initform 0.0))
)

(cl:defclass Cursor (<Cursor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Cursor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Cursor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<Cursor> is deprecated: use lane_navi_info_msgs-msg:Cursor instead.")))

(cl:ensure-generic-function 'road_id-val :lambda-list '(m))
(cl:defmethod road_id-val ((m <Cursor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:road_id-val is deprecated.  Use lane_navi_info_msgs-msg:road_id instead.")
  (road_id m))

(cl:ensure-generic-function 'offset-val :lambda-list '(m))
(cl:defmethod offset-val ((m <Cursor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:offset-val is deprecated.  Use lane_navi_info_msgs-msg:offset instead.")
  (offset m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Cursor>) ostream)
  "Serializes a message object of type '<Cursor>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'road_id) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Cursor>) istream)
  "Deserializes a message object of type '<Cursor>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'road_id) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'offset) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Cursor>)))
  "Returns string type for a message object of type '<Cursor>"
  "lane_navi_info_msgs/Cursor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Cursor)))
  "Returns string type for a message object of type 'Cursor"
  "lane_navi_info_msgs/Cursor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Cursor>)))
  "Returns md5sum for a message object of type '<Cursor>"
  "a86ee360c6f3799782205abd635c00de")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Cursor)))
  "Returns md5sum for a message object of type 'Cursor"
  "a86ee360c6f3799782205abd635c00de")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Cursor>)))
  "Returns full string definition for message of type '<Cursor>"
  (cl:format cl:nil "landmark_msgs/TrackId road_id~%float32 offset~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Cursor)))
  "Returns full string definition for message of type 'Cursor"
  (cl:format cl:nil "landmark_msgs/TrackId road_id~%float32 offset~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Cursor>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'road_id))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Cursor>))
  "Converts a ROS message object to a list"
  (cl:list 'Cursor
    (cl:cons ':road_id (road_id msg))
    (cl:cons ':offset (offset msg))
))
