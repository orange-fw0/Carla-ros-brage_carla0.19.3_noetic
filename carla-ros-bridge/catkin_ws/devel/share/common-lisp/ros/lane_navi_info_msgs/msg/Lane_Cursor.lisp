; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude Lane_Cursor.msg.html

(cl:defclass <Lane_Cursor> (roslisp-msg-protocol:ros-message)
  ((lane_id
    :reader lane_id
    :initarg :lane_id
    :type landmark_msgs-msg:TrackId
    :initform (cl:make-instance 'landmark_msgs-msg:TrackId))
   (offset
    :reader offset
    :initarg :offset
    :type cl:float
    :initform 0.0))
)

(cl:defclass Lane_Cursor (<Lane_Cursor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Lane_Cursor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Lane_Cursor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<Lane_Cursor> is deprecated: use lane_navi_info_msgs-msg:Lane_Cursor instead.")))

(cl:ensure-generic-function 'lane_id-val :lambda-list '(m))
(cl:defmethod lane_id-val ((m <Lane_Cursor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:lane_id-val is deprecated.  Use lane_navi_info_msgs-msg:lane_id instead.")
  (lane_id m))

(cl:ensure-generic-function 'offset-val :lambda-list '(m))
(cl:defmethod offset-val ((m <Lane_Cursor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:offset-val is deprecated.  Use lane_navi_info_msgs-msg:offset instead.")
  (offset m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Lane_Cursor>) ostream)
  "Serializes a message object of type '<Lane_Cursor>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lane_id) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Lane_Cursor>) istream)
  "Deserializes a message object of type '<Lane_Cursor>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lane_id) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'offset) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Lane_Cursor>)))
  "Returns string type for a message object of type '<Lane_Cursor>"
  "lane_navi_info_msgs/Lane_Cursor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Lane_Cursor)))
  "Returns string type for a message object of type 'Lane_Cursor"
  "lane_navi_info_msgs/Lane_Cursor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Lane_Cursor>)))
  "Returns md5sum for a message object of type '<Lane_Cursor>"
  "19156b5c5294114c337d75dfd9b9f33d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Lane_Cursor)))
  "Returns md5sum for a message object of type 'Lane_Cursor"
  "19156b5c5294114c337d75dfd9b9f33d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Lane_Cursor>)))
  "Returns full string definition for message of type '<Lane_Cursor>"
  (cl:format cl:nil "landmark_msgs/TrackId lane_id~%float32 offset~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Lane_Cursor)))
  "Returns full string definition for message of type 'Lane_Cursor"
  (cl:format cl:nil "landmark_msgs/TrackId lane_id~%float32 offset~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Lane_Cursor>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lane_id))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Lane_Cursor>))
  "Converts a ROS message object to a list"
  (cl:list 'Lane_Cursor
    (cl:cons ':lane_id (lane_id msg))
    (cl:cons ':offset (offset msg))
))
