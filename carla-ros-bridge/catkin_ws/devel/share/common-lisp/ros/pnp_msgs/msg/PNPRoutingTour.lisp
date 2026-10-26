; Auto-generated. Do not edit!


(cl:in-package pnp_msgs-msg)


;//! \htmlinclude PNPRoutingTour.msg.html

(cl:defclass <PNPRoutingTour> (roslisp-msg-protocol:ros-message)
  ((tour_id
    :reader tour_id
    :initarg :tour_id
    :type cl:integer
    :initform 0)
   (path_list
    :reader path_list
    :initarg :path_list
    :type (cl:vector pnp_msgs-msg:Path)
   :initform (cl:make-array 0 :element-type 'pnp_msgs-msg:Path :initial-element (cl:make-instance 'pnp_msgs-msg:Path)))
   (total_length
    :reader total_length
    :initarg :total_length
    :type cl:float
    :initform 0.0))
)

(cl:defclass PNPRoutingTour (<PNPRoutingTour>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PNPRoutingTour>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PNPRoutingTour)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pnp_msgs-msg:<PNPRoutingTour> is deprecated: use pnp_msgs-msg:PNPRoutingTour instead.")))

(cl:ensure-generic-function 'tour_id-val :lambda-list '(m))
(cl:defmethod tour_id-val ((m <PNPRoutingTour>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:tour_id-val is deprecated.  Use pnp_msgs-msg:tour_id instead.")
  (tour_id m))

(cl:ensure-generic-function 'path_list-val :lambda-list '(m))
(cl:defmethod path_list-val ((m <PNPRoutingTour>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:path_list-val is deprecated.  Use pnp_msgs-msg:path_list instead.")
  (path_list m))

(cl:ensure-generic-function 'total_length-val :lambda-list '(m))
(cl:defmethod total_length-val ((m <PNPRoutingTour>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:total_length-val is deprecated.  Use pnp_msgs-msg:total_length instead.")
  (total_length m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PNPRoutingTour>) ostream)
  "Serializes a message object of type '<PNPRoutingTour>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tour_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tour_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tour_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tour_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'tour_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'tour_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'tour_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'tour_id)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'path_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'path_list))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'total_length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PNPRoutingTour>) istream)
  "Deserializes a message object of type '<PNPRoutingTour>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tour_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tour_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tour_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tour_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'tour_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'tour_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'tour_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'tour_id)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'path_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'path_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pnp_msgs-msg:Path))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'total_length) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PNPRoutingTour>)))
  "Returns string type for a message object of type '<PNPRoutingTour>"
  "pnp_msgs/PNPRoutingTour")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PNPRoutingTour)))
  "Returns string type for a message object of type 'PNPRoutingTour"
  "pnp_msgs/PNPRoutingTour")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PNPRoutingTour>)))
  "Returns md5sum for a message object of type '<PNPRoutingTour>"
  "db0d664e7963e96b65058e7cc852ff1d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PNPRoutingTour)))
  "Returns md5sum for a message object of type 'PNPRoutingTour"
  "db0d664e7963e96b65058e7cc852ff1d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PNPRoutingTour>)))
  "Returns full string definition for message of type '<PNPRoutingTour>"
  (cl:format cl:nil "uint64 tour_id~%pnp_msgs/Path[] path_list~%float32 total_length~%~%================================================================================~%MSG: pnp_msgs/Path~%pnp_msgs/IdxRoadId[] road_list~%float32 length~%pnp_msgs/RoadCursor start_road_cursor~%pnp_msgs/RoadCursor end_road_cursor~%~%================================================================================~%MSG: pnp_msgs/IdxRoadId~%pnp_msgs/PNPRoadId road_id~%uint32 index_at_tour~%~%================================================================================~%MSG: pnp_msgs/PNPRoadId~%uint16 ur_id~%uint32 tile_id~%uint32 road_count~%~%================================================================================~%MSG: pnp_msgs/RoadCursor~%pnp_msgs/IdxRoadId index_road_id~%float32 offset~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PNPRoutingTour)))
  "Returns full string definition for message of type 'PNPRoutingTour"
  (cl:format cl:nil "uint64 tour_id~%pnp_msgs/Path[] path_list~%float32 total_length~%~%================================================================================~%MSG: pnp_msgs/Path~%pnp_msgs/IdxRoadId[] road_list~%float32 length~%pnp_msgs/RoadCursor start_road_cursor~%pnp_msgs/RoadCursor end_road_cursor~%~%================================================================================~%MSG: pnp_msgs/IdxRoadId~%pnp_msgs/PNPRoadId road_id~%uint32 index_at_tour~%~%================================================================================~%MSG: pnp_msgs/PNPRoadId~%uint16 ur_id~%uint32 tile_id~%uint32 road_count~%~%================================================================================~%MSG: pnp_msgs/RoadCursor~%pnp_msgs/IdxRoadId index_road_id~%float32 offset~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PNPRoutingTour>))
  (cl:+ 0
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'path_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PNPRoutingTour>))
  "Converts a ROS message object to a list"
  (cl:list 'PNPRoutingTour
    (cl:cons ':tour_id (tour_id msg))
    (cl:cons ':path_list (path_list msg))
    (cl:cons ':total_length (total_length msg))
))
