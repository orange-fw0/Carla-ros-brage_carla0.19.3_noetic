; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude Lane.msg.html

(cl:defclass <Lane> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (left_lanemark
    :reader left_lanemark
    :initarg :left_lanemark
    :type momenta_msgs-msg:Lanemark
    :initform (cl:make-instance 'momenta_msgs-msg:Lanemark))
   (right_lanemark
    :reader right_lanemark
    :initarg :right_lanemark
    :type momenta_msgs-msg:Lanemark
    :initform (cl:make-instance 'momenta_msgs-msg:Lanemark))
   (mid_line
    :reader mid_line
    :initarg :mid_line
    :type momenta_msgs-msg:Line
    :initform (cl:make-instance 'momenta_msgs-msg:Line))
   (width
    :reader width
    :initarg :width
    :type cl:float
    :initform 0.0))
)

(cl:defclass Lane (<Lane>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Lane>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Lane)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<Lane> is deprecated: use momenta_msgs-msg:Lane instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:header-val is deprecated.  Use momenta_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'left_lanemark-val :lambda-list '(m))
(cl:defmethod left_lanemark-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:left_lanemark-val is deprecated.  Use momenta_msgs-msg:left_lanemark instead.")
  (left_lanemark m))

(cl:ensure-generic-function 'right_lanemark-val :lambda-list '(m))
(cl:defmethod right_lanemark-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:right_lanemark-val is deprecated.  Use momenta_msgs-msg:right_lanemark instead.")
  (right_lanemark m))

(cl:ensure-generic-function 'mid_line-val :lambda-list '(m))
(cl:defmethod mid_line-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:mid_line-val is deprecated.  Use momenta_msgs-msg:mid_line instead.")
  (mid_line m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:width-val is deprecated.  Use momenta_msgs-msg:width instead.")
  (width m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Lane>) ostream)
  "Serializes a message object of type '<Lane>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_lanemark) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_lanemark) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mid_line) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Lane>) istream)
  "Deserializes a message object of type '<Lane>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_lanemark) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_lanemark) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mid_line) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Lane>)))
  "Returns string type for a message object of type '<Lane>"
  "momenta_msgs/Lane")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Lane)))
  "Returns string type for a message object of type 'Lane"
  "momenta_msgs/Lane")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Lane>)))
  "Returns md5sum for a message object of type '<Lane>"
  "3d382b3275ac23c4c0868787de279d0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Lane)))
  "Returns md5sum for a message object of type 'Lane"
  "3d382b3275ac23c4c0868787de279d0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Lane>)))
  "Returns full string definition for message of type '<Lane>"
  (cl:format cl:nil "std_msgs/Header header~%momenta_msgs/Lanemark left_lanemark~%momenta_msgs/Lanemark right_lanemark~%momenta_msgs/Line mid_line~%float32 width~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: momenta_msgs/Lanemark~%uint32 id~%float32 prob~%bool is_solid~%bool is_boundary~%uint8 color~%bool is_Yline~%bool is_biline~%geometry_msgs/Pose2D[] pts_on_img~%geometry_msgs/Pose2D[] pts_on_bv~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: momenta_msgs/Line~%geometry_msgs/Pose2D[] pose_array~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Lane)))
  "Returns full string definition for message of type 'Lane"
  (cl:format cl:nil "std_msgs/Header header~%momenta_msgs/Lanemark left_lanemark~%momenta_msgs/Lanemark right_lanemark~%momenta_msgs/Line mid_line~%float32 width~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: momenta_msgs/Lanemark~%uint32 id~%float32 prob~%bool is_solid~%bool is_boundary~%uint8 color~%bool is_Yline~%bool is_biline~%geometry_msgs/Pose2D[] pts_on_img~%geometry_msgs/Pose2D[] pts_on_bv~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: momenta_msgs/Line~%geometry_msgs/Pose2D[] pose_array~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Lane>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_lanemark))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_lanemark))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mid_line))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Lane>))
  "Converts a ROS message object to a list"
  (cl:list 'Lane
    (cl:cons ':header (header msg))
    (cl:cons ':left_lanemark (left_lanemark msg))
    (cl:cons ':right_lanemark (right_lanemark msg))
    (cl:cons ':mid_line (mid_line msg))
    (cl:cons ':width (width msg))
))
