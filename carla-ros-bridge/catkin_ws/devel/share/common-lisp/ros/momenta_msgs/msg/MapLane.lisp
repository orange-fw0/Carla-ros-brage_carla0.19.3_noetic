; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude MapLane.msg.html

(cl:defclass <MapLane> (roslisp-msg-protocol:ros-message)
  ((lane
    :reader lane
    :initarg :lane
    :type (cl:vector momenta_msgs-msg:LanePoint)
   :initform (cl:make-array 0 :element-type 'momenta_msgs-msg:LanePoint :initial-element (cl:make-instance 'momenta_msgs-msg:LanePoint)))
   (cur_idx
    :reader cur_idx
    :initarg :cur_idx
    :type cl:integer
    :initform 0)
   (global_idx
    :reader global_idx
    :initarg :global_idx
    :type cl:integer
    :initform 0))
)

(cl:defclass MapLane (<MapLane>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapLane>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapLane)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<MapLane> is deprecated: use momenta_msgs-msg:MapLane instead.")))

(cl:ensure-generic-function 'lane-val :lambda-list '(m))
(cl:defmethod lane-val ((m <MapLane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:lane-val is deprecated.  Use momenta_msgs-msg:lane instead.")
  (lane m))

(cl:ensure-generic-function 'cur_idx-val :lambda-list '(m))
(cl:defmethod cur_idx-val ((m <MapLane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:cur_idx-val is deprecated.  Use momenta_msgs-msg:cur_idx instead.")
  (cur_idx m))

(cl:ensure-generic-function 'global_idx-val :lambda-list '(m))
(cl:defmethod global_idx-val ((m <MapLane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:global_idx-val is deprecated.  Use momenta_msgs-msg:global_idx instead.")
  (global_idx m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapLane>) ostream)
  "Serializes a message object of type '<MapLane>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lane))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lane))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cur_idx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cur_idx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cur_idx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cur_idx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'global_idx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'global_idx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'global_idx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'global_idx)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapLane>) istream)
  "Deserializes a message object of type '<MapLane>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lane) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lane)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'momenta_msgs-msg:LanePoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cur_idx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cur_idx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cur_idx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cur_idx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'global_idx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'global_idx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'global_idx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'global_idx)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapLane>)))
  "Returns string type for a message object of type '<MapLane>"
  "momenta_msgs/MapLane")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapLane)))
  "Returns string type for a message object of type 'MapLane"
  "momenta_msgs/MapLane")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapLane>)))
  "Returns md5sum for a message object of type '<MapLane>"
  "8b043baf328728e593b5f2c33290b355")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapLane)))
  "Returns md5sum for a message object of type 'MapLane"
  "8b043baf328728e593b5f2c33290b355")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapLane>)))
  "Returns full string definition for message of type '<MapLane>"
  (cl:format cl:nil "momenta_msgs/LanePoint[] lane~%uint32 cur_idx~%uint32 global_idx~%~%================================================================================~%MSG: momenta_msgs/LanePoint~%geometry_msgs/Pose2D pose~%float32 vel_limit~%float32 width_left~%bool is_left_cross~%float32 width_right~%bool is_right_cross~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapLane)))
  "Returns full string definition for message of type 'MapLane"
  (cl:format cl:nil "momenta_msgs/LanePoint[] lane~%uint32 cur_idx~%uint32 global_idx~%~%================================================================================~%MSG: momenta_msgs/LanePoint~%geometry_msgs/Pose2D pose~%float32 vel_limit~%float32 width_left~%bool is_left_cross~%float32 width_right~%bool is_right_cross~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapLane>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lane) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapLane>))
  "Converts a ROS message object to a list"
  (cl:list 'MapLane
    (cl:cons ':lane (lane msg))
    (cl:cons ':cur_idx (cur_idx msg))
    (cl:cons ':global_idx (global_idx msg))
))
