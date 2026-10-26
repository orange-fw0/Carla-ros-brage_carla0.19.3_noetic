; Auto-generated. Do not edit!


(cl:in-package framework_status_msgs-msg)


;//! \htmlinclude RoutingResponse.msg.html

(cl:defclass <RoutingResponse> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (request
    :reader request
    :initarg :request
    :type framework_status_msgs-msg:RoutingRequest
    :initform (cl:make-instance 'framework_status_msgs-msg:RoutingRequest))
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (di_roads
    :reader di_roads
    :initarg :di_roads
    :type (cl:vector framework_status_msgs-msg:MDKDiRoadId)
   :initform (cl:make-array 0 :element-type 'framework_status_msgs-msg:MDKDiRoadId :initial-element (cl:make-instance 'framework_status_msgs-msg:MDKDiRoadId)))
   (road_points
    :reader road_points
    :initarg :road_points
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass RoutingResponse (<RoutingResponse>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoutingResponse>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoutingResponse)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name framework_status_msgs-msg:<RoutingResponse> is deprecated: use framework_status_msgs-msg:RoutingResponse instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RoutingResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:header-val is deprecated.  Use framework_status_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'request-val :lambda-list '(m))
(cl:defmethod request-val ((m <RoutingResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:request-val is deprecated.  Use framework_status_msgs-msg:request instead.")
  (request m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <RoutingResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:success-val is deprecated.  Use framework_status_msgs-msg:success instead.")
  (success m))

(cl:ensure-generic-function 'di_roads-val :lambda-list '(m))
(cl:defmethod di_roads-val ((m <RoutingResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:di_roads-val is deprecated.  Use framework_status_msgs-msg:di_roads instead.")
  (di_roads m))

(cl:ensure-generic-function 'road_points-val :lambda-list '(m))
(cl:defmethod road_points-val ((m <RoutingResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:road_points-val is deprecated.  Use framework_status_msgs-msg:road_points instead.")
  (road_points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoutingResponse>) ostream)
  "Serializes a message object of type '<RoutingResponse>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'request) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'di_roads))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'di_roads))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'road_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'road_points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoutingResponse>) istream)
  "Deserializes a message object of type '<RoutingResponse>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'request) istream)
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'di_roads) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'di_roads)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'framework_status_msgs-msg:MDKDiRoadId))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'road_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'road_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoutingResponse>)))
  "Returns string type for a message object of type '<RoutingResponse>"
  "framework_status_msgs/RoutingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoutingResponse)))
  "Returns string type for a message object of type 'RoutingResponse"
  "framework_status_msgs/RoutingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoutingResponse>)))
  "Returns md5sum for a message object of type '<RoutingResponse>"
  "915e22414641ea31361c68ceb1642d31")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoutingResponse)))
  "Returns md5sum for a message object of type 'RoutingResponse"
  "915e22414641ea31361c68ceb1642d31")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoutingResponse>)))
  "Returns full string definition for message of type '<RoutingResponse>"
  (cl:format cl:nil "std_msgs/Header header~%framework_status_msgs/RoutingRequest request~%bool success~%framework_status_msgs/MDKDiRoadId[] di_roads~%geometry_msgs/Point[] road_points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: framework_status_msgs/RoutingRequest~%std_msgs/Header header~%int64 order_id~%framework_status_msgs/RoutingRequestType type~%string json_path~%geometry_msgs/Point[] route_ends~%~%================================================================================~%MSG: framework_status_msgs/RoutingRequestType~%uint8 ROUTE_ENDS = 0~%uint8 JSON_FILE = 1~%uint8 value~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: framework_status_msgs/MDKDiRoadId~%int64 tile_id~%int64 road_count~%bool dir_reversed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoutingResponse)))
  "Returns full string definition for message of type 'RoutingResponse"
  (cl:format cl:nil "std_msgs/Header header~%framework_status_msgs/RoutingRequest request~%bool success~%framework_status_msgs/MDKDiRoadId[] di_roads~%geometry_msgs/Point[] road_points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: framework_status_msgs/RoutingRequest~%std_msgs/Header header~%int64 order_id~%framework_status_msgs/RoutingRequestType type~%string json_path~%geometry_msgs/Point[] route_ends~%~%================================================================================~%MSG: framework_status_msgs/RoutingRequestType~%uint8 ROUTE_ENDS = 0~%uint8 JSON_FILE = 1~%uint8 value~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: framework_status_msgs/MDKDiRoadId~%int64 tile_id~%int64 road_count~%bool dir_reversed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoutingResponse>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'request))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'di_roads) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'road_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoutingResponse>))
  "Converts a ROS message object to a list"
  (cl:list 'RoutingResponse
    (cl:cons ':header (header msg))
    (cl:cons ':request (request msg))
    (cl:cons ':success (success msg))
    (cl:cons ':di_roads (di_roads msg))
    (cl:cons ':road_points (road_points msg))
))
