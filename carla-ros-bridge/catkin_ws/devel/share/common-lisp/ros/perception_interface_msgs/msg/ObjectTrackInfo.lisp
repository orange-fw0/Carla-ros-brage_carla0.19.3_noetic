; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude ObjectTrackInfo.msg.html

(cl:defclass <ObjectTrackInfo> (roslisp-msg-protocol:ros-message)
  ((track_id
    :reader track_id
    :initarg :track_id
    :type cl:integer
    :initform 0)
   (track_times
    :reader track_times
    :initarg :track_times
    :type cl:integer
    :initform 0)
   (age_in_seconds
    :reader age_in_seconds
    :initarg :age_in_seconds
    :type cl:float
    :initform 0.0))
)

(cl:defclass ObjectTrackInfo (<ObjectTrackInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectTrackInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectTrackInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<ObjectTrackInfo> is deprecated: use perception_interface_msgs-msg:ObjectTrackInfo instead.")))

(cl:ensure-generic-function 'track_id-val :lambda-list '(m))
(cl:defmethod track_id-val ((m <ObjectTrackInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:track_id-val is deprecated.  Use perception_interface_msgs-msg:track_id instead.")
  (track_id m))

(cl:ensure-generic-function 'track_times-val :lambda-list '(m))
(cl:defmethod track_times-val ((m <ObjectTrackInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:track_times-val is deprecated.  Use perception_interface_msgs-msg:track_times instead.")
  (track_times m))

(cl:ensure-generic-function 'age_in_seconds-val :lambda-list '(m))
(cl:defmethod age_in_seconds-val ((m <ObjectTrackInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:age_in_seconds-val is deprecated.  Use perception_interface_msgs-msg:age_in_seconds instead.")
  (age_in_seconds m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectTrackInfo>) ostream)
  "Serializes a message object of type '<ObjectTrackInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'track_times)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'track_times)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'track_times)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'track_times)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'track_times)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'track_times)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'track_times)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'track_times)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'age_in_seconds))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectTrackInfo>) istream)
  "Deserializes a message object of type '<ObjectTrackInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'track_times)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'track_times)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'track_times)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'track_times)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'track_times)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'track_times)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'track_times)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'track_times)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'age_in_seconds) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectTrackInfo>)))
  "Returns string type for a message object of type '<ObjectTrackInfo>"
  "perception_interface_msgs/ObjectTrackInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectTrackInfo)))
  "Returns string type for a message object of type 'ObjectTrackInfo"
  "perception_interface_msgs/ObjectTrackInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectTrackInfo>)))
  "Returns md5sum for a message object of type '<ObjectTrackInfo>"
  "6d42038cbaad464379e51e22de977155")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectTrackInfo)))
  "Returns md5sum for a message object of type 'ObjectTrackInfo"
  "6d42038cbaad464379e51e22de977155")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectTrackInfo>)))
  "Returns full string definition for message of type '<ObjectTrackInfo>"
  (cl:format cl:nil "uint64 track_id~%uint64 track_times~%float32 age_in_seconds~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectTrackInfo)))
  "Returns full string definition for message of type 'ObjectTrackInfo"
  (cl:format cl:nil "uint64 track_id~%uint64 track_times~%float32 age_in_seconds~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectTrackInfo>))
  (cl:+ 0
     8
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectTrackInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectTrackInfo
    (cl:cons ':track_id (track_id msg))
    (cl:cons ':track_times (track_times msg))
    (cl:cons ':age_in_seconds (age_in_seconds msg))
))
