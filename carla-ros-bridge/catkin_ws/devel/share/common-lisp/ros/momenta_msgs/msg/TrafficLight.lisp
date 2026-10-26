; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude TrafficLight.msg.html

(cl:defclass <TrafficLight> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (left
    :reader left
    :initarg :left
    :type cl:fixnum
    :initform 0)
   (right
    :reader right
    :initarg :right
    :type cl:fixnum
    :initform 0)
   (mid
    :reader mid
    :initarg :mid
    :type cl:fixnum
    :initform 0)
   (can_go_straight
    :reader can_go_straight
    :initarg :can_go_straight
    :type cl:boolean
    :initform cl:nil)
   (can_right_turn
    :reader can_right_turn
    :initarg :can_right_turn
    :type cl:boolean
    :initform cl:nil)
   (can_left_turn
    :reader can_left_turn
    :initarg :can_left_turn
    :type cl:boolean
    :initform cl:nil)
   (can_u_turn
    :reader can_u_turn
    :initarg :can_u_turn
    :type cl:boolean
    :initform cl:nil)
   (bbox_pts
    :reader bbox_pts
    :initarg :bbox_pts
    :type (cl:vector geometry_msgs-msg:Pose2D)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose2D :initial-element (cl:make-instance 'geometry_msgs-msg:Pose2D)))
   (bbox_cnt
    :reader bbox_cnt
    :initarg :bbox_cnt
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrafficLight (<TrafficLight>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficLight>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficLight)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<TrafficLight> is deprecated: use momenta_msgs-msg:TrafficLight instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:header-val is deprecated.  Use momenta_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'left-val :lambda-list '(m))
(cl:defmethod left-val ((m <TrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:left-val is deprecated.  Use momenta_msgs-msg:left instead.")
  (left m))

(cl:ensure-generic-function 'right-val :lambda-list '(m))
(cl:defmethod right-val ((m <TrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:right-val is deprecated.  Use momenta_msgs-msg:right instead.")
  (right m))

(cl:ensure-generic-function 'mid-val :lambda-list '(m))
(cl:defmethod mid-val ((m <TrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:mid-val is deprecated.  Use momenta_msgs-msg:mid instead.")
  (mid m))

(cl:ensure-generic-function 'can_go_straight-val :lambda-list '(m))
(cl:defmethod can_go_straight-val ((m <TrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:can_go_straight-val is deprecated.  Use momenta_msgs-msg:can_go_straight instead.")
  (can_go_straight m))

(cl:ensure-generic-function 'can_right_turn-val :lambda-list '(m))
(cl:defmethod can_right_turn-val ((m <TrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:can_right_turn-val is deprecated.  Use momenta_msgs-msg:can_right_turn instead.")
  (can_right_turn m))

(cl:ensure-generic-function 'can_left_turn-val :lambda-list '(m))
(cl:defmethod can_left_turn-val ((m <TrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:can_left_turn-val is deprecated.  Use momenta_msgs-msg:can_left_turn instead.")
  (can_left_turn m))

(cl:ensure-generic-function 'can_u_turn-val :lambda-list '(m))
(cl:defmethod can_u_turn-val ((m <TrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:can_u_turn-val is deprecated.  Use momenta_msgs-msg:can_u_turn instead.")
  (can_u_turn m))

(cl:ensure-generic-function 'bbox_pts-val :lambda-list '(m))
(cl:defmethod bbox_pts-val ((m <TrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:bbox_pts-val is deprecated.  Use momenta_msgs-msg:bbox_pts instead.")
  (bbox_pts m))

(cl:ensure-generic-function 'bbox_cnt-val :lambda-list '(m))
(cl:defmethod bbox_cnt-val ((m <TrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:bbox_cnt-val is deprecated.  Use momenta_msgs-msg:bbox_cnt instead.")
  (bbox_cnt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficLight>) ostream)
  "Serializes a message object of type '<TrafficLight>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'left)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'right)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'mid)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'can_go_straight) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'can_right_turn) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'can_left_turn) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'can_u_turn) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'bbox_pts))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'bbox_pts))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bbox_cnt)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficLight>) istream)
  "Deserializes a message object of type '<TrafficLight>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'left) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'right) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mid) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'can_go_straight) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'can_right_turn) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'can_left_turn) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'can_u_turn) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'bbox_pts) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'bbox_pts)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose2D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bbox_cnt)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficLight>)))
  "Returns string type for a message object of type '<TrafficLight>"
  "momenta_msgs/TrafficLight")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficLight)))
  "Returns string type for a message object of type 'TrafficLight"
  "momenta_msgs/TrafficLight")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficLight>)))
  "Returns md5sum for a message object of type '<TrafficLight>"
  "42b80712527dc831c63b18d66634ee39")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficLight)))
  "Returns md5sum for a message object of type 'TrafficLight"
  "42b80712527dc831c63b18d66634ee39")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficLight>)))
  "Returns full string definition for message of type '<TrafficLight>"
  (cl:format cl:nil "std_msgs/Header header~%int8 left~%int8 right~%int8 mid~%bool can_go_straight~%bool can_right_turn~%bool can_left_turn~%bool can_u_turn~%geometry_msgs/Pose2D[] bbox_pts~%uint8 bbox_cnt~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficLight)))
  "Returns full string definition for message of type 'TrafficLight"
  (cl:format cl:nil "std_msgs/Header header~%int8 left~%int8 right~%int8 mid~%bool can_go_straight~%bool can_right_turn~%bool can_left_turn~%bool can_u_turn~%geometry_msgs/Pose2D[] bbox_pts~%uint8 bbox_cnt~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficLight>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     1
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'bbox_pts) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficLight>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficLight
    (cl:cons ':header (header msg))
    (cl:cons ':left (left msg))
    (cl:cons ':right (right msg))
    (cl:cons ':mid (mid msg))
    (cl:cons ':can_go_straight (can_go_straight msg))
    (cl:cons ':can_right_turn (can_right_turn msg))
    (cl:cons ':can_left_turn (can_left_turn msg))
    (cl:cons ':can_u_turn (can_u_turn msg))
    (cl:cons ':bbox_pts (bbox_pts msg))
    (cl:cons ':bbox_cnt (bbox_cnt msg))
))
