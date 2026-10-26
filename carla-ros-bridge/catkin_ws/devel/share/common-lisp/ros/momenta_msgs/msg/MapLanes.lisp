; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude MapLanes.msg.html

(cl:defclass <MapLanes> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (lanes
    :reader lanes
    :initarg :lanes
    :type (cl:vector momenta_msgs-msg:MapLane)
   :initform (cl:make-array 0 :element-type 'momenta_msgs-msg:MapLane :initial-element (cl:make-instance 'momenta_msgs-msg:MapLane)))
   (cur_lane_id
    :reader cur_lane_id
    :initarg :cur_lane_id
    :type cl:integer
    :initform 0)
   (next_mdf
    :reader next_mdf
    :initarg :next_mdf
    :type momenta_msgs-msg:Mdf
    :initform (cl:make-instance 'momenta_msgs-msg:Mdf)))
)

(cl:defclass MapLanes (<MapLanes>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapLanes>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapLanes)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<MapLanes> is deprecated: use momenta_msgs-msg:MapLanes instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MapLanes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:header-val is deprecated.  Use momenta_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'lanes-val :lambda-list '(m))
(cl:defmethod lanes-val ((m <MapLanes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:lanes-val is deprecated.  Use momenta_msgs-msg:lanes instead.")
  (lanes m))

(cl:ensure-generic-function 'cur_lane_id-val :lambda-list '(m))
(cl:defmethod cur_lane_id-val ((m <MapLanes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:cur_lane_id-val is deprecated.  Use momenta_msgs-msg:cur_lane_id instead.")
  (cur_lane_id m))

(cl:ensure-generic-function 'next_mdf-val :lambda-list '(m))
(cl:defmethod next_mdf-val ((m <MapLanes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:next_mdf-val is deprecated.  Use momenta_msgs-msg:next_mdf instead.")
  (next_mdf m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapLanes>) ostream)
  "Serializes a message object of type '<MapLanes>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lanes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lanes))
  (cl:let* ((signed (cl:slot-value msg 'cur_lane_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'next_mdf) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapLanes>) istream)
  "Deserializes a message object of type '<MapLanes>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lanes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lanes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'momenta_msgs-msg:MapLane))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cur_lane_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'next_mdf) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapLanes>)))
  "Returns string type for a message object of type '<MapLanes>"
  "momenta_msgs/MapLanes")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapLanes)))
  "Returns string type for a message object of type 'MapLanes"
  "momenta_msgs/MapLanes")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapLanes>)))
  "Returns md5sum for a message object of type '<MapLanes>"
  "ced4682f20293b07d646ed602171e3a3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapLanes)))
  "Returns md5sum for a message object of type 'MapLanes"
  "ced4682f20293b07d646ed602171e3a3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapLanes>)))
  "Returns full string definition for message of type '<MapLanes>"
  (cl:format cl:nil "std_msgs/Header header~%momenta_msgs/MapLane[] lanes~%int32 cur_lane_id~%momenta_msgs/Mdf next_mdf~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: momenta_msgs/MapLane~%momenta_msgs/LanePoint[] lane~%uint32 cur_idx~%uint32 global_idx~%~%================================================================================~%MSG: momenta_msgs/LanePoint~%geometry_msgs/Pose2D pose~%float32 vel_limit~%float32 width_left~%bool is_left_cross~%float32 width_right~%bool is_right_cross~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: momenta_msgs/Mdf~%int32 id~%int32 idx~%float32 speed_limit~%int32 p1~%int32 p2~%bool traffic_light~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapLanes)))
  "Returns full string definition for message of type 'MapLanes"
  (cl:format cl:nil "std_msgs/Header header~%momenta_msgs/MapLane[] lanes~%int32 cur_lane_id~%momenta_msgs/Mdf next_mdf~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: momenta_msgs/MapLane~%momenta_msgs/LanePoint[] lane~%uint32 cur_idx~%uint32 global_idx~%~%================================================================================~%MSG: momenta_msgs/LanePoint~%geometry_msgs/Pose2D pose~%float32 vel_limit~%float32 width_left~%bool is_left_cross~%float32 width_right~%bool is_right_cross~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: momenta_msgs/Mdf~%int32 id~%int32 idx~%float32 speed_limit~%int32 p1~%int32 p2~%bool traffic_light~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapLanes>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lanes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'next_mdf))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapLanes>))
  "Converts a ROS message object to a list"
  (cl:list 'MapLanes
    (cl:cons ':header (header msg))
    (cl:cons ':lanes (lanes msg))
    (cl:cons ':cur_lane_id (cur_lane_id msg))
    (cl:cons ':next_mdf (next_mdf msg))
))
