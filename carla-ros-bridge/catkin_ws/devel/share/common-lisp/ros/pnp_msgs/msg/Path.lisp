; Auto-generated. Do not edit!


(cl:in-package pnp_msgs-msg)


;//! \htmlinclude Path.msg.html

(cl:defclass <Path> (roslisp-msg-protocol:ros-message)
  ((road_list
    :reader road_list
    :initarg :road_list
    :type (cl:vector pnp_msgs-msg:IdxRoadId)
   :initform (cl:make-array 0 :element-type 'pnp_msgs-msg:IdxRoadId :initial-element (cl:make-instance 'pnp_msgs-msg:IdxRoadId)))
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0)
   (start_road_cursor
    :reader start_road_cursor
    :initarg :start_road_cursor
    :type pnp_msgs-msg:RoadCursor
    :initform (cl:make-instance 'pnp_msgs-msg:RoadCursor))
   (end_road_cursor
    :reader end_road_cursor
    :initarg :end_road_cursor
    :type pnp_msgs-msg:RoadCursor
    :initform (cl:make-instance 'pnp_msgs-msg:RoadCursor)))
)

(cl:defclass Path (<Path>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Path>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Path)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pnp_msgs-msg:<Path> is deprecated: use pnp_msgs-msg:Path instead.")))

(cl:ensure-generic-function 'road_list-val :lambda-list '(m))
(cl:defmethod road_list-val ((m <Path>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:road_list-val is deprecated.  Use pnp_msgs-msg:road_list instead.")
  (road_list m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <Path>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:length-val is deprecated.  Use pnp_msgs-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'start_road_cursor-val :lambda-list '(m))
(cl:defmethod start_road_cursor-val ((m <Path>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:start_road_cursor-val is deprecated.  Use pnp_msgs-msg:start_road_cursor instead.")
  (start_road_cursor m))

(cl:ensure-generic-function 'end_road_cursor-val :lambda-list '(m))
(cl:defmethod end_road_cursor-val ((m <Path>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:end_road_cursor-val is deprecated.  Use pnp_msgs-msg:end_road_cursor instead.")
  (end_road_cursor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Path>) ostream)
  "Serializes a message object of type '<Path>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'road_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'road_list))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start_road_cursor) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'end_road_cursor) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Path>) istream)
  "Deserializes a message object of type '<Path>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'road_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'road_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pnp_msgs-msg:IdxRoadId))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start_road_cursor) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'end_road_cursor) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Path>)))
  "Returns string type for a message object of type '<Path>"
  "pnp_msgs/Path")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Path)))
  "Returns string type for a message object of type 'Path"
  "pnp_msgs/Path")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Path>)))
  "Returns md5sum for a message object of type '<Path>"
  "c01d05a883772b4391b9f6c23cd5e00c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Path)))
  "Returns md5sum for a message object of type 'Path"
  "c01d05a883772b4391b9f6c23cd5e00c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Path>)))
  "Returns full string definition for message of type '<Path>"
  (cl:format cl:nil "pnp_msgs/IdxRoadId[] road_list~%float32 length~%pnp_msgs/RoadCursor start_road_cursor~%pnp_msgs/RoadCursor end_road_cursor~%~%================================================================================~%MSG: pnp_msgs/IdxRoadId~%pnp_msgs/PNPRoadId road_id~%uint32 index_at_tour~%~%================================================================================~%MSG: pnp_msgs/PNPRoadId~%uint16 ur_id~%uint32 tile_id~%uint32 road_count~%~%================================================================================~%MSG: pnp_msgs/RoadCursor~%pnp_msgs/IdxRoadId index_road_id~%float32 offset~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Path)))
  "Returns full string definition for message of type 'Path"
  (cl:format cl:nil "pnp_msgs/IdxRoadId[] road_list~%float32 length~%pnp_msgs/RoadCursor start_road_cursor~%pnp_msgs/RoadCursor end_road_cursor~%~%================================================================================~%MSG: pnp_msgs/IdxRoadId~%pnp_msgs/PNPRoadId road_id~%uint32 index_at_tour~%~%================================================================================~%MSG: pnp_msgs/PNPRoadId~%uint16 ur_id~%uint32 tile_id~%uint32 road_count~%~%================================================================================~%MSG: pnp_msgs/RoadCursor~%pnp_msgs/IdxRoadId index_road_id~%float32 offset~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Path>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'road_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start_road_cursor))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'end_road_cursor))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Path>))
  "Converts a ROS message object to a list"
  (cl:list 'Path
    (cl:cons ':road_list (road_list msg))
    (cl:cons ':length (length msg))
    (cl:cons ':start_road_cursor (start_road_cursor msg))
    (cl:cons ':end_road_cursor (end_road_cursor msg))
))
