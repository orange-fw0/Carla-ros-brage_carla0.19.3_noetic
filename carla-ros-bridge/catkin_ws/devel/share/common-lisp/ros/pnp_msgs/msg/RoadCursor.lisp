; Auto-generated. Do not edit!


(cl:in-package pnp_msgs-msg)


;//! \htmlinclude RoadCursor.msg.html

(cl:defclass <RoadCursor> (roslisp-msg-protocol:ros-message)
  ((index_road_id
    :reader index_road_id
    :initarg :index_road_id
    :type pnp_msgs-msg:IdxRoadId
    :initform (cl:make-instance 'pnp_msgs-msg:IdxRoadId))
   (offset
    :reader offset
    :initarg :offset
    :type cl:float
    :initform 0.0))
)

(cl:defclass RoadCursor (<RoadCursor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoadCursor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoadCursor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pnp_msgs-msg:<RoadCursor> is deprecated: use pnp_msgs-msg:RoadCursor instead.")))

(cl:ensure-generic-function 'index_road_id-val :lambda-list '(m))
(cl:defmethod index_road_id-val ((m <RoadCursor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:index_road_id-val is deprecated.  Use pnp_msgs-msg:index_road_id instead.")
  (index_road_id m))

(cl:ensure-generic-function 'offset-val :lambda-list '(m))
(cl:defmethod offset-val ((m <RoadCursor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:offset-val is deprecated.  Use pnp_msgs-msg:offset instead.")
  (offset m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoadCursor>) ostream)
  "Serializes a message object of type '<RoadCursor>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'index_road_id) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoadCursor>) istream)
  "Deserializes a message object of type '<RoadCursor>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'index_road_id) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'offset) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoadCursor>)))
  "Returns string type for a message object of type '<RoadCursor>"
  "pnp_msgs/RoadCursor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoadCursor)))
  "Returns string type for a message object of type 'RoadCursor"
  "pnp_msgs/RoadCursor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoadCursor>)))
  "Returns md5sum for a message object of type '<RoadCursor>"
  "9c09786282442e47082f1f0889cfb709")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoadCursor)))
  "Returns md5sum for a message object of type 'RoadCursor"
  "9c09786282442e47082f1f0889cfb709")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoadCursor>)))
  "Returns full string definition for message of type '<RoadCursor>"
  (cl:format cl:nil "pnp_msgs/IdxRoadId index_road_id~%float32 offset~%~%================================================================================~%MSG: pnp_msgs/IdxRoadId~%pnp_msgs/PNPRoadId road_id~%uint32 index_at_tour~%~%================================================================================~%MSG: pnp_msgs/PNPRoadId~%uint16 ur_id~%uint32 tile_id~%uint32 road_count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoadCursor)))
  "Returns full string definition for message of type 'RoadCursor"
  (cl:format cl:nil "pnp_msgs/IdxRoadId index_road_id~%float32 offset~%~%================================================================================~%MSG: pnp_msgs/IdxRoadId~%pnp_msgs/PNPRoadId road_id~%uint32 index_at_tour~%~%================================================================================~%MSG: pnp_msgs/PNPRoadId~%uint16 ur_id~%uint32 tile_id~%uint32 road_count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoadCursor>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'index_road_id))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoadCursor>))
  "Converts a ROS message object to a list"
  (cl:list 'RoadCursor
    (cl:cons ':index_road_id (index_road_id msg))
    (cl:cons ':offset (offset msg))
))
