; Auto-generated. Do not edit!


(cl:in-package framework_status_msgs-msg)


;//! \htmlinclude MDKDiRoadId.msg.html

(cl:defclass <MDKDiRoadId> (roslisp-msg-protocol:ros-message)
  ((tile_id
    :reader tile_id
    :initarg :tile_id
    :type cl:integer
    :initform 0)
   (road_count
    :reader road_count
    :initarg :road_count
    :type cl:integer
    :initform 0)
   (dir_reversed
    :reader dir_reversed
    :initarg :dir_reversed
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MDKDiRoadId (<MDKDiRoadId>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MDKDiRoadId>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MDKDiRoadId)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name framework_status_msgs-msg:<MDKDiRoadId> is deprecated: use framework_status_msgs-msg:MDKDiRoadId instead.")))

(cl:ensure-generic-function 'tile_id-val :lambda-list '(m))
(cl:defmethod tile_id-val ((m <MDKDiRoadId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:tile_id-val is deprecated.  Use framework_status_msgs-msg:tile_id instead.")
  (tile_id m))

(cl:ensure-generic-function 'road_count-val :lambda-list '(m))
(cl:defmethod road_count-val ((m <MDKDiRoadId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:road_count-val is deprecated.  Use framework_status_msgs-msg:road_count instead.")
  (road_count m))

(cl:ensure-generic-function 'dir_reversed-val :lambda-list '(m))
(cl:defmethod dir_reversed-val ((m <MDKDiRoadId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:dir_reversed-val is deprecated.  Use framework_status_msgs-msg:dir_reversed instead.")
  (dir_reversed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MDKDiRoadId>) ostream)
  "Serializes a message object of type '<MDKDiRoadId>"
  (cl:let* ((signed (cl:slot-value msg 'tile_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'road_count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'dir_reversed) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MDKDiRoadId>) istream)
  "Deserializes a message object of type '<MDKDiRoadId>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tile_id) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'road_count) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:setf (cl:slot-value msg 'dir_reversed) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MDKDiRoadId>)))
  "Returns string type for a message object of type '<MDKDiRoadId>"
  "framework_status_msgs/MDKDiRoadId")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MDKDiRoadId)))
  "Returns string type for a message object of type 'MDKDiRoadId"
  "framework_status_msgs/MDKDiRoadId")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MDKDiRoadId>)))
  "Returns md5sum for a message object of type '<MDKDiRoadId>"
  "3cd02c3e1caee2c32fb2bfa11a15f76a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MDKDiRoadId)))
  "Returns md5sum for a message object of type 'MDKDiRoadId"
  "3cd02c3e1caee2c32fb2bfa11a15f76a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MDKDiRoadId>)))
  "Returns full string definition for message of type '<MDKDiRoadId>"
  (cl:format cl:nil "int64 tile_id~%int64 road_count~%bool dir_reversed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MDKDiRoadId)))
  "Returns full string definition for message of type 'MDKDiRoadId"
  (cl:format cl:nil "int64 tile_id~%int64 road_count~%bool dir_reversed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MDKDiRoadId>))
  (cl:+ 0
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MDKDiRoadId>))
  "Converts a ROS message object to a list"
  (cl:list 'MDKDiRoadId
    (cl:cons ':tile_id (tile_id msg))
    (cl:cons ':road_count (road_count msg))
    (cl:cons ':dir_reversed (dir_reversed msg))
))
