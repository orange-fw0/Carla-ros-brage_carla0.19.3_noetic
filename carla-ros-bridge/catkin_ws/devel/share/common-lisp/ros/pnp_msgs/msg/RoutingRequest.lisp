; Auto-generated. Do not edit!


(cl:in-package pnp_msgs-msg)


;//! \htmlinclude RoutingRequest.msg.html

(cl:defclass <RoutingRequest> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (request_id
    :reader request_id
    :initarg :request_id
    :type cl:integer
    :initform 0)
   (action
    :reader action
    :initarg :action
    :type pnp_msgs-msg:RoutingActionEnum
    :initform (cl:make-instance 'pnp_msgs-msg:RoutingActionEnum))
   (parking_lotId
    :reader parking_lotId
    :initarg :parking_lotId
    :type cl:integer
    :initform 0)
   (ego_parking_spaceId
    :reader ego_parking_spaceId
    :initarg :ego_parking_spaceId
    :type cl:integer
    :initform 0)
   (parking_spaceId
    :reader parking_spaceId
    :initarg :parking_spaceId
    :type cl:integer
    :initform 0)
   (target_roadId
    :reader target_roadId
    :initarg :target_roadId
    :type pnp_msgs-msg:PNPRoadId
    :initform (cl:make-instance 'pnp_msgs-msg:PNPRoadId))
   (target_road_offset
    :reader target_road_offset
    :initarg :target_road_offset
    :type cl:float
    :initform 0.0)
   (obstacle_roadId_list
    :reader obstacle_roadId_list
    :initarg :obstacle_roadId_list
    :type (cl:vector pnp_msgs-msg:PNPRoadId)
   :initform (cl:make-array 0 :element-type 'pnp_msgs-msg:PNPRoadId :initial-element (cl:make-instance 'pnp_msgs-msg:PNPRoadId))))
)

(cl:defclass RoutingRequest (<RoutingRequest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoutingRequest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoutingRequest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pnp_msgs-msg:<RoutingRequest> is deprecated: use pnp_msgs-msg:RoutingRequest instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RoutingRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:header-val is deprecated.  Use pnp_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'request_id-val :lambda-list '(m))
(cl:defmethod request_id-val ((m <RoutingRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:request_id-val is deprecated.  Use pnp_msgs-msg:request_id instead.")
  (request_id m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <RoutingRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:action-val is deprecated.  Use pnp_msgs-msg:action instead.")
  (action m))

(cl:ensure-generic-function 'parking_lotId-val :lambda-list '(m))
(cl:defmethod parking_lotId-val ((m <RoutingRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:parking_lotId-val is deprecated.  Use pnp_msgs-msg:parking_lotId instead.")
  (parking_lotId m))

(cl:ensure-generic-function 'ego_parking_spaceId-val :lambda-list '(m))
(cl:defmethod ego_parking_spaceId-val ((m <RoutingRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:ego_parking_spaceId-val is deprecated.  Use pnp_msgs-msg:ego_parking_spaceId instead.")
  (ego_parking_spaceId m))

(cl:ensure-generic-function 'parking_spaceId-val :lambda-list '(m))
(cl:defmethod parking_spaceId-val ((m <RoutingRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:parking_spaceId-val is deprecated.  Use pnp_msgs-msg:parking_spaceId instead.")
  (parking_spaceId m))

(cl:ensure-generic-function 'target_roadId-val :lambda-list '(m))
(cl:defmethod target_roadId-val ((m <RoutingRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:target_roadId-val is deprecated.  Use pnp_msgs-msg:target_roadId instead.")
  (target_roadId m))

(cl:ensure-generic-function 'target_road_offset-val :lambda-list '(m))
(cl:defmethod target_road_offset-val ((m <RoutingRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:target_road_offset-val is deprecated.  Use pnp_msgs-msg:target_road_offset instead.")
  (target_road_offset m))

(cl:ensure-generic-function 'obstacle_roadId_list-val :lambda-list '(m))
(cl:defmethod obstacle_roadId_list-val ((m <RoutingRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:obstacle_roadId_list-val is deprecated.  Use pnp_msgs-msg:obstacle_roadId_list instead.")
  (obstacle_roadId_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoutingRequest>) ostream)
  "Serializes a message object of type '<RoutingRequest>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'request_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'request_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'request_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'request_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'request_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'request_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'request_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'request_id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'parking_lotId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'parking_lotId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'parking_lotId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'parking_lotId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ego_parking_spaceId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ego_parking_spaceId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ego_parking_spaceId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ego_parking_spaceId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'parking_spaceId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'parking_spaceId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'parking_spaceId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'parking_spaceId)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_roadId) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'target_road_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obstacle_roadId_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obstacle_roadId_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoutingRequest>) istream)
  "Deserializes a message object of type '<RoutingRequest>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'request_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'request_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'request_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'request_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'request_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'request_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'request_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'request_id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'parking_lotId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'parking_lotId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'parking_lotId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'parking_lotId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ego_parking_spaceId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ego_parking_spaceId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ego_parking_spaceId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ego_parking_spaceId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'parking_spaceId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'parking_spaceId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'parking_spaceId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'parking_spaceId)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_roadId) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_road_offset) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obstacle_roadId_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obstacle_roadId_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pnp_msgs-msg:PNPRoadId))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoutingRequest>)))
  "Returns string type for a message object of type '<RoutingRequest>"
  "pnp_msgs/RoutingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoutingRequest)))
  "Returns string type for a message object of type 'RoutingRequest"
  "pnp_msgs/RoutingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoutingRequest>)))
  "Returns md5sum for a message object of type '<RoutingRequest>"
  "0a0c73549abc12da5175bf72c6e347ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoutingRequest)))
  "Returns md5sum for a message object of type 'RoutingRequest"
  "0a0c73549abc12da5175bf72c6e347ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoutingRequest>)))
  "Returns full string definition for message of type '<RoutingRequest>"
  (cl:format cl:nil "std_msgs/Header header~%uint64 request_id~%pnp_msgs/RoutingActionEnum action~%uint32 parking_lotId~%uint32 ego_parking_spaceId~%uint32 parking_spaceId~%pnp_msgs/PNPRoadId target_roadId~%float32 target_road_offset~%pnp_msgs/PNPRoadId[] obstacle_roadId_list~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pnp_msgs/RoutingActionEnum~%uint8 PARKING_ENTER = 0~%uint8 PARKING_EXIT = 1~%uint8 value~%~%================================================================================~%MSG: pnp_msgs/PNPRoadId~%uint16 ur_id~%uint32 tile_id~%uint32 road_count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoutingRequest)))
  "Returns full string definition for message of type 'RoutingRequest"
  (cl:format cl:nil "std_msgs/Header header~%uint64 request_id~%pnp_msgs/RoutingActionEnum action~%uint32 parking_lotId~%uint32 ego_parking_spaceId~%uint32 parking_spaceId~%pnp_msgs/PNPRoadId target_roadId~%float32 target_road_offset~%pnp_msgs/PNPRoadId[] obstacle_roadId_list~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pnp_msgs/RoutingActionEnum~%uint8 PARKING_ENTER = 0~%uint8 PARKING_EXIT = 1~%uint8 value~%~%================================================================================~%MSG: pnp_msgs/PNPRoadId~%uint16 ur_id~%uint32 tile_id~%uint32 road_count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoutingRequest>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action))
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_roadId))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obstacle_roadId_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoutingRequest>))
  "Converts a ROS message object to a list"
  (cl:list 'RoutingRequest
    (cl:cons ':header (header msg))
    (cl:cons ':request_id (request_id msg))
    (cl:cons ':action (action msg))
    (cl:cons ':parking_lotId (parking_lotId msg))
    (cl:cons ':ego_parking_spaceId (ego_parking_spaceId msg))
    (cl:cons ':parking_spaceId (parking_spaceId msg))
    (cl:cons ':target_roadId (target_roadId msg))
    (cl:cons ':target_road_offset (target_road_offset msg))
    (cl:cons ':obstacle_roadId_list (obstacle_roadId_list msg))
))
