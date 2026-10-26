; Auto-generated. Do not edit!


(cl:in-package pnp_msgs-msg)


;//! \htmlinclude PNPRoutingResponse.msg.html

(cl:defclass <PNPRoutingResponse> (roslisp-msg-protocol:ros-message)
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
   (response_id
    :reader response_id
    :initarg :response_id
    :type cl:integer
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type pnp_msgs-msg:RoutingStatusEnum
    :initform (cl:make-instance 'pnp_msgs-msg:RoutingStatusEnum))
   (main_tour_id
    :reader main_tour_id
    :initarg :main_tour_id
    :type cl:integer
    :initform 0)
   (tour
    :reader tour
    :initarg :tour
    :type pnp_msgs-msg:PNPRoutingTour
    :initform (cl:make-instance 'pnp_msgs-msg:PNPRoutingTour))
   (error_msg
    :reader error_msg
    :initarg :error_msg
    :type cl:string
    :initform ""))
)

(cl:defclass PNPRoutingResponse (<PNPRoutingResponse>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PNPRoutingResponse>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PNPRoutingResponse)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pnp_msgs-msg:<PNPRoutingResponse> is deprecated: use pnp_msgs-msg:PNPRoutingResponse instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PNPRoutingResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:header-val is deprecated.  Use pnp_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'request_id-val :lambda-list '(m))
(cl:defmethod request_id-val ((m <PNPRoutingResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:request_id-val is deprecated.  Use pnp_msgs-msg:request_id instead.")
  (request_id m))

(cl:ensure-generic-function 'response_id-val :lambda-list '(m))
(cl:defmethod response_id-val ((m <PNPRoutingResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:response_id-val is deprecated.  Use pnp_msgs-msg:response_id instead.")
  (response_id m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <PNPRoutingResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:status-val is deprecated.  Use pnp_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'main_tour_id-val :lambda-list '(m))
(cl:defmethod main_tour_id-val ((m <PNPRoutingResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:main_tour_id-val is deprecated.  Use pnp_msgs-msg:main_tour_id instead.")
  (main_tour_id m))

(cl:ensure-generic-function 'tour-val :lambda-list '(m))
(cl:defmethod tour-val ((m <PNPRoutingResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:tour-val is deprecated.  Use pnp_msgs-msg:tour instead.")
  (tour m))

(cl:ensure-generic-function 'error_msg-val :lambda-list '(m))
(cl:defmethod error_msg-val ((m <PNPRoutingResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:error_msg-val is deprecated.  Use pnp_msgs-msg:error_msg instead.")
  (error_msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PNPRoutingResponse>) ostream)
  "Serializes a message object of type '<PNPRoutingResponse>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'request_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'request_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'request_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'request_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'request_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'request_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'request_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'request_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'response_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'response_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'response_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'response_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'response_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'response_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'response_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'response_id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'main_tour_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'main_tour_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'main_tour_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'main_tour_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'main_tour_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'main_tour_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'main_tour_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'main_tour_id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tour) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PNPRoutingResponse>) istream)
  "Deserializes a message object of type '<PNPRoutingResponse>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'request_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'request_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'request_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'request_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'request_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'request_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'request_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'request_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'response_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'response_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'response_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'response_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'response_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'response_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'response_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'response_id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'main_tour_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'main_tour_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'main_tour_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'main_tour_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'main_tour_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'main_tour_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'main_tour_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'main_tour_id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tour) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error_msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PNPRoutingResponse>)))
  "Returns string type for a message object of type '<PNPRoutingResponse>"
  "pnp_msgs/PNPRoutingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PNPRoutingResponse)))
  "Returns string type for a message object of type 'PNPRoutingResponse"
  "pnp_msgs/PNPRoutingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PNPRoutingResponse>)))
  "Returns md5sum for a message object of type '<PNPRoutingResponse>"
  "f057f9fbc8c3afd8178c0d4175aa4107")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PNPRoutingResponse)))
  "Returns md5sum for a message object of type 'PNPRoutingResponse"
  "f057f9fbc8c3afd8178c0d4175aa4107")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PNPRoutingResponse>)))
  "Returns full string definition for message of type '<PNPRoutingResponse>"
  (cl:format cl:nil "std_msgs/Header header~%uint64 request_id~%uint64 response_id~%pnp_msgs/RoutingStatusEnum status~%uint64 main_tour_id~%pnp_msgs/PNPRoutingTour tour~%string error_msg~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pnp_msgs/RoutingStatusEnum~%uint8 ROUTING_SUCCESS = 0~%uint8 NO_ROUTING_FOUND = 1~%uint8 NO_ROADS_NEARBY_VEHICLE = 2~%uint8 NO_PARKING_LOT = 3~%uint8 NO_PARKING_SPACE = 4~%uint8 NO_ROADS_BOUNDED_SPACE = 5~%uint8 TOO_SHORT_PATH = 6~%uint8 TOO_LONG_PATH = 7~%uint8 MAP_DATA_ERROR = 8~%uint8 SYSTEM_ERROR = 255~%uint8 status~%~%================================================================================~%MSG: pnp_msgs/PNPRoutingTour~%uint64 tour_id~%pnp_msgs/Path[] path_list~%float32 total_length~%~%================================================================================~%MSG: pnp_msgs/Path~%pnp_msgs/IdxRoadId[] road_list~%float32 length~%pnp_msgs/RoadCursor start_road_cursor~%pnp_msgs/RoadCursor end_road_cursor~%~%================================================================================~%MSG: pnp_msgs/IdxRoadId~%pnp_msgs/PNPRoadId road_id~%uint32 index_at_tour~%~%================================================================================~%MSG: pnp_msgs/PNPRoadId~%uint16 ur_id~%uint32 tile_id~%uint32 road_count~%~%================================================================================~%MSG: pnp_msgs/RoadCursor~%pnp_msgs/IdxRoadId index_road_id~%float32 offset~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PNPRoutingResponse)))
  "Returns full string definition for message of type 'PNPRoutingResponse"
  (cl:format cl:nil "std_msgs/Header header~%uint64 request_id~%uint64 response_id~%pnp_msgs/RoutingStatusEnum status~%uint64 main_tour_id~%pnp_msgs/PNPRoutingTour tour~%string error_msg~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pnp_msgs/RoutingStatusEnum~%uint8 ROUTING_SUCCESS = 0~%uint8 NO_ROUTING_FOUND = 1~%uint8 NO_ROADS_NEARBY_VEHICLE = 2~%uint8 NO_PARKING_LOT = 3~%uint8 NO_PARKING_SPACE = 4~%uint8 NO_ROADS_BOUNDED_SPACE = 5~%uint8 TOO_SHORT_PATH = 6~%uint8 TOO_LONG_PATH = 7~%uint8 MAP_DATA_ERROR = 8~%uint8 SYSTEM_ERROR = 255~%uint8 status~%~%================================================================================~%MSG: pnp_msgs/PNPRoutingTour~%uint64 tour_id~%pnp_msgs/Path[] path_list~%float32 total_length~%~%================================================================================~%MSG: pnp_msgs/Path~%pnp_msgs/IdxRoadId[] road_list~%float32 length~%pnp_msgs/RoadCursor start_road_cursor~%pnp_msgs/RoadCursor end_road_cursor~%~%================================================================================~%MSG: pnp_msgs/IdxRoadId~%pnp_msgs/PNPRoadId road_id~%uint32 index_at_tour~%~%================================================================================~%MSG: pnp_msgs/PNPRoadId~%uint16 ur_id~%uint32 tile_id~%uint32 road_count~%~%================================================================================~%MSG: pnp_msgs/RoadCursor~%pnp_msgs/IdxRoadId index_road_id~%float32 offset~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PNPRoutingResponse>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tour))
     4 (cl:length (cl:slot-value msg 'error_msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PNPRoutingResponse>))
  "Converts a ROS message object to a list"
  (cl:list 'PNPRoutingResponse
    (cl:cons ':header (header msg))
    (cl:cons ':request_id (request_id msg))
    (cl:cons ':response_id (response_id msg))
    (cl:cons ':status (status msg))
    (cl:cons ':main_tour_id (main_tour_id msg))
    (cl:cons ':tour (tour msg))
    (cl:cons ':error_msg (error_msg msg))
))
