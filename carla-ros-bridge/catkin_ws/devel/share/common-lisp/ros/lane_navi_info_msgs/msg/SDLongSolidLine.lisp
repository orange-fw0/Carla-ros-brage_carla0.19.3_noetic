; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude SDLongSolidLine.msg.html

(cl:defclass <SDLongSolidLine> (roslisp-msg-protocol:ros-message)
  ((effect_road_ids
    :reader effect_road_ids
    :initarg :effect_road_ids
    :type (cl:vector landmark_msgs-msg:TrackId)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:TrackId :initial-element (cl:make-instance 'landmark_msgs-msg:TrackId)))
   (valid_lanes
    :reader valid_lanes
    :initarg :valid_lanes
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass SDLongSolidLine (<SDLongSolidLine>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SDLongSolidLine>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SDLongSolidLine)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<SDLongSolidLine> is deprecated: use lane_navi_info_msgs-msg:SDLongSolidLine instead.")))

(cl:ensure-generic-function 'effect_road_ids-val :lambda-list '(m))
(cl:defmethod effect_road_ids-val ((m <SDLongSolidLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:effect_road_ids-val is deprecated.  Use lane_navi_info_msgs-msg:effect_road_ids instead.")
  (effect_road_ids m))

(cl:ensure-generic-function 'valid_lanes-val :lambda-list '(m))
(cl:defmethod valid_lanes-val ((m <SDLongSolidLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:valid_lanes-val is deprecated.  Use lane_navi_info_msgs-msg:valid_lanes instead.")
  (valid_lanes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SDLongSolidLine>) ostream)
  "Serializes a message object of type '<SDLongSolidLine>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'effect_road_ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'effect_road_ids))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'valid_lanes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'valid_lanes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SDLongSolidLine>) istream)
  "Deserializes a message object of type '<SDLongSolidLine>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'effect_road_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'effect_road_ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:TrackId))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'valid_lanes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'valid_lanes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SDLongSolidLine>)))
  "Returns string type for a message object of type '<SDLongSolidLine>"
  "lane_navi_info_msgs/SDLongSolidLine")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SDLongSolidLine)))
  "Returns string type for a message object of type 'SDLongSolidLine"
  "lane_navi_info_msgs/SDLongSolidLine")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SDLongSolidLine>)))
  "Returns md5sum for a message object of type '<SDLongSolidLine>"
  "00d386e361e1daca07ad28c613b509db")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SDLongSolidLine)))
  "Returns md5sum for a message object of type 'SDLongSolidLine"
  "00d386e361e1daca07ad28c613b509db")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SDLongSolidLine>)))
  "Returns full string definition for message of type '<SDLongSolidLine>"
  (cl:format cl:nil "landmark_msgs/TrackId[] effect_road_ids~%uint32[] valid_lanes~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SDLongSolidLine)))
  "Returns full string definition for message of type 'SDLongSolidLine"
  (cl:format cl:nil "landmark_msgs/TrackId[] effect_road_ids~%uint32[] valid_lanes~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SDLongSolidLine>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'effect_road_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'valid_lanes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SDLongSolidLine>))
  "Converts a ROS message object to a list"
  (cl:list 'SDLongSolidLine
    (cl:cons ':effect_road_ids (effect_road_ids msg))
    (cl:cons ':valid_lanes (valid_lanes msg))
))
