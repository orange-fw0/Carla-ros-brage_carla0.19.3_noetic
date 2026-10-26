; Auto-generated. Do not edit!


(cl:in-package pnp_msgs-msg)


;//! \htmlinclude IdxRoadId.msg.html

(cl:defclass <IdxRoadId> (roslisp-msg-protocol:ros-message)
  ((road_id
    :reader road_id
    :initarg :road_id
    :type pnp_msgs-msg:PNPRoadId
    :initform (cl:make-instance 'pnp_msgs-msg:PNPRoadId))
   (index_at_tour
    :reader index_at_tour
    :initarg :index_at_tour
    :type cl:integer
    :initform 0))
)

(cl:defclass IdxRoadId (<IdxRoadId>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IdxRoadId>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IdxRoadId)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pnp_msgs-msg:<IdxRoadId> is deprecated: use pnp_msgs-msg:IdxRoadId instead.")))

(cl:ensure-generic-function 'road_id-val :lambda-list '(m))
(cl:defmethod road_id-val ((m <IdxRoadId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:road_id-val is deprecated.  Use pnp_msgs-msg:road_id instead.")
  (road_id m))

(cl:ensure-generic-function 'index_at_tour-val :lambda-list '(m))
(cl:defmethod index_at_tour-val ((m <IdxRoadId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:index_at_tour-val is deprecated.  Use pnp_msgs-msg:index_at_tour instead.")
  (index_at_tour m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IdxRoadId>) ostream)
  "Serializes a message object of type '<IdxRoadId>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'road_id) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'index_at_tour)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'index_at_tour)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'index_at_tour)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'index_at_tour)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IdxRoadId>) istream)
  "Deserializes a message object of type '<IdxRoadId>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'road_id) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'index_at_tour)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'index_at_tour)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'index_at_tour)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'index_at_tour)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IdxRoadId>)))
  "Returns string type for a message object of type '<IdxRoadId>"
  "pnp_msgs/IdxRoadId")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IdxRoadId)))
  "Returns string type for a message object of type 'IdxRoadId"
  "pnp_msgs/IdxRoadId")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IdxRoadId>)))
  "Returns md5sum for a message object of type '<IdxRoadId>"
  "12ff52ec238991bbda25eb6597018335")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IdxRoadId)))
  "Returns md5sum for a message object of type 'IdxRoadId"
  "12ff52ec238991bbda25eb6597018335")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IdxRoadId>)))
  "Returns full string definition for message of type '<IdxRoadId>"
  (cl:format cl:nil "pnp_msgs/PNPRoadId road_id~%uint32 index_at_tour~%~%================================================================================~%MSG: pnp_msgs/PNPRoadId~%uint16 ur_id~%uint32 tile_id~%uint32 road_count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IdxRoadId)))
  "Returns full string definition for message of type 'IdxRoadId"
  (cl:format cl:nil "pnp_msgs/PNPRoadId road_id~%uint32 index_at_tour~%~%================================================================================~%MSG: pnp_msgs/PNPRoadId~%uint16 ur_id~%uint32 tile_id~%uint32 road_count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IdxRoadId>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'road_id))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IdxRoadId>))
  "Converts a ROS message object to a list"
  (cl:list 'IdxRoadId
    (cl:cons ':road_id (road_id msg))
    (cl:cons ':index_at_tour (index_at_tour msg))
))
