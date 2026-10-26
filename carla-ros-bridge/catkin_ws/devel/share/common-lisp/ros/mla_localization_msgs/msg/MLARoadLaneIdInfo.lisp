; Auto-generated. Do not edit!


(cl:in-package mla_localization_msgs-msg)


;//! \htmlinclude MLARoadLaneIdInfo.msg.html

(cl:defclass <MLARoadLaneIdInfo> (roslisp-msg-protocol:ros-message)
  ((lane_id
    :reader lane_id
    :initarg :lane_id
    :type landmark_msgs-msg:TrackId
    :initform (cl:make-instance 'landmark_msgs-msg:TrackId))
   (road_id
    :reader road_id
    :initarg :road_id
    :type landmark_msgs-msg:TrackId
    :initform (cl:make-instance 'landmark_msgs-msg:TrackId))
   (offset
    :reader offset
    :initarg :offset
    :type cl:integer
    :initform 0)
   (road_class
    :reader road_class
    :initarg :road_class
    :type cl:fixnum
    :initform 0)
   (floor_id
    :reader floor_id
    :initarg :floor_id
    :type cl:float
    :initform 0.0)
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MLARoadLaneIdInfo (<MLARoadLaneIdInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MLARoadLaneIdInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MLARoadLaneIdInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mla_localization_msgs-msg:<MLARoadLaneIdInfo> is deprecated: use mla_localization_msgs-msg:MLARoadLaneIdInfo instead.")))

(cl:ensure-generic-function 'lane_id-val :lambda-list '(m))
(cl:defmethod lane_id-val ((m <MLARoadLaneIdInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:lane_id-val is deprecated.  Use mla_localization_msgs-msg:lane_id instead.")
  (lane_id m))

(cl:ensure-generic-function 'road_id-val :lambda-list '(m))
(cl:defmethod road_id-val ((m <MLARoadLaneIdInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:road_id-val is deprecated.  Use mla_localization_msgs-msg:road_id instead.")
  (road_id m))

(cl:ensure-generic-function 'offset-val :lambda-list '(m))
(cl:defmethod offset-val ((m <MLARoadLaneIdInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:offset-val is deprecated.  Use mla_localization_msgs-msg:offset instead.")
  (offset m))

(cl:ensure-generic-function 'road_class-val :lambda-list '(m))
(cl:defmethod road_class-val ((m <MLARoadLaneIdInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:road_class-val is deprecated.  Use mla_localization_msgs-msg:road_class instead.")
  (road_class m))

(cl:ensure-generic-function 'floor_id-val :lambda-list '(m))
(cl:defmethod floor_id-val ((m <MLARoadLaneIdInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:floor_id-val is deprecated.  Use mla_localization_msgs-msg:floor_id instead.")
  (floor_id m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <MLARoadLaneIdInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:status-val is deprecated.  Use mla_localization_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <MLARoadLaneIdInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:reserved-val is deprecated.  Use mla_localization_msgs-msg:reserved instead.")
  (reserved m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MLARoadLaneIdInfo>) ostream)
  "Serializes a message object of type '<MLARoadLaneIdInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lane_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'road_id) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'offset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'offset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'offset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'offset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'road_class)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'road_class)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'floor_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MLARoadLaneIdInfo>) istream)
  "Deserializes a message object of type '<MLARoadLaneIdInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lane_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'road_id) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'offset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'offset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'offset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'offset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'road_class)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'road_class)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'floor_id) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MLARoadLaneIdInfo>)))
  "Returns string type for a message object of type '<MLARoadLaneIdInfo>"
  "mla_localization_msgs/MLARoadLaneIdInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MLARoadLaneIdInfo)))
  "Returns string type for a message object of type 'MLARoadLaneIdInfo"
  "mla_localization_msgs/MLARoadLaneIdInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MLARoadLaneIdInfo>)))
  "Returns md5sum for a message object of type '<MLARoadLaneIdInfo>"
  "c72cc0c521b316521e57f63cc9a1a145")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MLARoadLaneIdInfo)))
  "Returns md5sum for a message object of type 'MLARoadLaneIdInfo"
  "c72cc0c521b316521e57f63cc9a1a145")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MLARoadLaneIdInfo>)))
  "Returns full string definition for message of type '<MLARoadLaneIdInfo>"
  (cl:format cl:nil "landmark_msgs/TrackId lane_id~%landmark_msgs/TrackId road_id~%uint32 offset~%uint16 road_class~%float64 floor_id~%uint16 status~%uint16 reserved~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MLARoadLaneIdInfo)))
  "Returns full string definition for message of type 'MLARoadLaneIdInfo"
  (cl:format cl:nil "landmark_msgs/TrackId lane_id~%landmark_msgs/TrackId road_id~%uint32 offset~%uint16 road_class~%float64 floor_id~%uint16 status~%uint16 reserved~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MLARoadLaneIdInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lane_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'road_id))
     4
     2
     8
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MLARoadLaneIdInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'MLARoadLaneIdInfo
    (cl:cons ':lane_id (lane_id msg))
    (cl:cons ':road_id (road_id msg))
    (cl:cons ':offset (offset msg))
    (cl:cons ':road_class (road_class msg))
    (cl:cons ':floor_id (floor_id msg))
    (cl:cons ':status (status msg))
    (cl:cons ':reserved (reserved msg))
))
