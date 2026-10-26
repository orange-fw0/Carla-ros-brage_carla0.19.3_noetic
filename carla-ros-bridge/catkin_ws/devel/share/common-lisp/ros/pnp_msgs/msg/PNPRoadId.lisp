; Auto-generated. Do not edit!


(cl:in-package pnp_msgs-msg)


;//! \htmlinclude PNPRoadId.msg.html

(cl:defclass <PNPRoadId> (roslisp-msg-protocol:ros-message)
  ((ur_id
    :reader ur_id
    :initarg :ur_id
    :type cl:fixnum
    :initform 0)
   (tile_id
    :reader tile_id
    :initarg :tile_id
    :type cl:integer
    :initform 0)
   (road_count
    :reader road_count
    :initarg :road_count
    :type cl:integer
    :initform 0))
)

(cl:defclass PNPRoadId (<PNPRoadId>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PNPRoadId>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PNPRoadId)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pnp_msgs-msg:<PNPRoadId> is deprecated: use pnp_msgs-msg:PNPRoadId instead.")))

(cl:ensure-generic-function 'ur_id-val :lambda-list '(m))
(cl:defmethod ur_id-val ((m <PNPRoadId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:ur_id-val is deprecated.  Use pnp_msgs-msg:ur_id instead.")
  (ur_id m))

(cl:ensure-generic-function 'tile_id-val :lambda-list '(m))
(cl:defmethod tile_id-val ((m <PNPRoadId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:tile_id-val is deprecated.  Use pnp_msgs-msg:tile_id instead.")
  (tile_id m))

(cl:ensure-generic-function 'road_count-val :lambda-list '(m))
(cl:defmethod road_count-val ((m <PNPRoadId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:road_count-val is deprecated.  Use pnp_msgs-msg:road_count instead.")
  (road_count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PNPRoadId>) ostream)
  "Serializes a message object of type '<PNPRoadId>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ur_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ur_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tile_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tile_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tile_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tile_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'road_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'road_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'road_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'road_count)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PNPRoadId>) istream)
  "Deserializes a message object of type '<PNPRoadId>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ur_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ur_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tile_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tile_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tile_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tile_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'road_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'road_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'road_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'road_count)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PNPRoadId>)))
  "Returns string type for a message object of type '<PNPRoadId>"
  "pnp_msgs/PNPRoadId")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PNPRoadId)))
  "Returns string type for a message object of type 'PNPRoadId"
  "pnp_msgs/PNPRoadId")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PNPRoadId>)))
  "Returns md5sum for a message object of type '<PNPRoadId>"
  "6681541bf2891e198304585bc835f2da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PNPRoadId)))
  "Returns md5sum for a message object of type 'PNPRoadId"
  "6681541bf2891e198304585bc835f2da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PNPRoadId>)))
  "Returns full string definition for message of type '<PNPRoadId>"
  (cl:format cl:nil "uint16 ur_id~%uint32 tile_id~%uint32 road_count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PNPRoadId)))
  "Returns full string definition for message of type 'PNPRoadId"
  (cl:format cl:nil "uint16 ur_id~%uint32 tile_id~%uint32 road_count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PNPRoadId>))
  (cl:+ 0
     2
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PNPRoadId>))
  "Converts a ROS message object to a list"
  (cl:list 'PNPRoadId
    (cl:cons ':ur_id (ur_id msg))
    (cl:cons ':tile_id (tile_id msg))
    (cl:cons ':road_count (road_count msg))
))
