; Auto-generated. Do not edit!


(cl:in-package submap_msgs-msg)


;//! \htmlinclude TimeDisDiff.msg.html

(cl:defclass <TimeDisDiff> (roslisp-msg-protocol:ros-message)
  ((dis_idff
    :reader dis_idff
    :initarg :dis_idff
    :type cl:float
    :initform 0.0)
   (time_diff
    :reader time_diff
    :initarg :time_diff
    :type cl:float
    :initform 0.0)
   (last_pose_timestamp
    :reader last_pose_timestamp
    :initarg :last_pose_timestamp
    :type cl:float
    :initform 0.0))
)

(cl:defclass TimeDisDiff (<TimeDisDiff>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TimeDisDiff>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TimeDisDiff)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name submap_msgs-msg:<TimeDisDiff> is deprecated: use submap_msgs-msg:TimeDisDiff instead.")))

(cl:ensure-generic-function 'dis_idff-val :lambda-list '(m))
(cl:defmethod dis_idff-val ((m <TimeDisDiff>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:dis_idff-val is deprecated.  Use submap_msgs-msg:dis_idff instead.")
  (dis_idff m))

(cl:ensure-generic-function 'time_diff-val :lambda-list '(m))
(cl:defmethod time_diff-val ((m <TimeDisDiff>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:time_diff-val is deprecated.  Use submap_msgs-msg:time_diff instead.")
  (time_diff m))

(cl:ensure-generic-function 'last_pose_timestamp-val :lambda-list '(m))
(cl:defmethod last_pose_timestamp-val ((m <TimeDisDiff>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:last_pose_timestamp-val is deprecated.  Use submap_msgs-msg:last_pose_timestamp instead.")
  (last_pose_timestamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TimeDisDiff>) ostream)
  "Serializes a message object of type '<TimeDisDiff>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dis_idff))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'time_diff))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'last_pose_timestamp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TimeDisDiff>) istream)
  "Deserializes a message object of type '<TimeDisDiff>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dis_idff) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time_diff) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'last_pose_timestamp) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TimeDisDiff>)))
  "Returns string type for a message object of type '<TimeDisDiff>"
  "submap_msgs/TimeDisDiff")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TimeDisDiff)))
  "Returns string type for a message object of type 'TimeDisDiff"
  "submap_msgs/TimeDisDiff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TimeDisDiff>)))
  "Returns md5sum for a message object of type '<TimeDisDiff>"
  "11dbd45c27d3191660eff904bf844836")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TimeDisDiff)))
  "Returns md5sum for a message object of type 'TimeDisDiff"
  "11dbd45c27d3191660eff904bf844836")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TimeDisDiff>)))
  "Returns full string definition for message of type '<TimeDisDiff>"
  (cl:format cl:nil "float64 dis_idff~%float64 time_diff~%float64 last_pose_timestamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TimeDisDiff)))
  "Returns full string definition for message of type 'TimeDisDiff"
  (cl:format cl:nil "float64 dis_idff~%float64 time_diff~%float64 last_pose_timestamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TimeDisDiff>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TimeDisDiff>))
  "Converts a ROS message object to a list"
  (cl:list 'TimeDisDiff
    (cl:cons ':dis_idff (dis_idff msg))
    (cl:cons ':time_diff (time_diff msg))
    (cl:cons ':last_pose_timestamp (last_pose_timestamp msg))
))
