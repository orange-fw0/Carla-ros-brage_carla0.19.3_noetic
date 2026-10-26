; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude LaneArray.msg.html

(cl:defclass <LaneArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (lane_array
    :reader lane_array
    :initarg :lane_array
    :type (cl:vector momenta_msgs-msg:Lane)
   :initform (cl:make-array 0 :element-type 'momenta_msgs-msg:Lane :initial-element (cl:make-instance 'momenta_msgs-msg:Lane)))
   (current_lane_idx
    :reader current_lane_idx
    :initarg :current_lane_idx
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LaneArray (<LaneArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<LaneArray> is deprecated: use momenta_msgs-msg:LaneArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LaneArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:header-val is deprecated.  Use momenta_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'lane_array-val :lambda-list '(m))
(cl:defmethod lane_array-val ((m <LaneArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:lane_array-val is deprecated.  Use momenta_msgs-msg:lane_array instead.")
  (lane_array m))

(cl:ensure-generic-function 'current_lane_idx-val :lambda-list '(m))
(cl:defmethod current_lane_idx-val ((m <LaneArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:current_lane_idx-val is deprecated.  Use momenta_msgs-msg:current_lane_idx instead.")
  (current_lane_idx m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneArray>) ostream)
  "Serializes a message object of type '<LaneArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lane_array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lane_array))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_lane_idx)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneArray>) istream)
  "Deserializes a message object of type '<LaneArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lane_array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lane_array)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'momenta_msgs-msg:Lane))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_lane_idx)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneArray>)))
  "Returns string type for a message object of type '<LaneArray>"
  "momenta_msgs/LaneArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneArray)))
  "Returns string type for a message object of type 'LaneArray"
  "momenta_msgs/LaneArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneArray>)))
  "Returns md5sum for a message object of type '<LaneArray>"
  "4c2fe9b8bba839e0239dd165bdce006c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneArray)))
  "Returns md5sum for a message object of type 'LaneArray"
  "4c2fe9b8bba839e0239dd165bdce006c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneArray>)))
  "Returns full string definition for message of type '<LaneArray>"
  (cl:format cl:nil "std_msgs/Header header~%momenta_msgs/Lane[] lane_array~%uint8 current_lane_idx~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: momenta_msgs/Lane~%std_msgs/Header header~%momenta_msgs/Lanemark left_lanemark~%momenta_msgs/Lanemark right_lanemark~%momenta_msgs/Line mid_line~%float32 width~%~%================================================================================~%MSG: momenta_msgs/Lanemark~%uint32 id~%float32 prob~%bool is_solid~%bool is_boundary~%uint8 color~%bool is_Yline~%bool is_biline~%geometry_msgs/Pose2D[] pts_on_img~%geometry_msgs/Pose2D[] pts_on_bv~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: momenta_msgs/Line~%geometry_msgs/Pose2D[] pose_array~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneArray)))
  "Returns full string definition for message of type 'LaneArray"
  (cl:format cl:nil "std_msgs/Header header~%momenta_msgs/Lane[] lane_array~%uint8 current_lane_idx~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: momenta_msgs/Lane~%std_msgs/Header header~%momenta_msgs/Lanemark left_lanemark~%momenta_msgs/Lanemark right_lanemark~%momenta_msgs/Line mid_line~%float32 width~%~%================================================================================~%MSG: momenta_msgs/Lanemark~%uint32 id~%float32 prob~%bool is_solid~%bool is_boundary~%uint8 color~%bool is_Yline~%bool is_biline~%geometry_msgs/Pose2D[] pts_on_img~%geometry_msgs/Pose2D[] pts_on_bv~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: momenta_msgs/Line~%geometry_msgs/Pose2D[] pose_array~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lane_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneArray>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneArray
    (cl:cons ':header (header msg))
    (cl:cons ':lane_array (lane_array msg))
    (cl:cons ':current_lane_idx (current_lane_idx msg))
))
