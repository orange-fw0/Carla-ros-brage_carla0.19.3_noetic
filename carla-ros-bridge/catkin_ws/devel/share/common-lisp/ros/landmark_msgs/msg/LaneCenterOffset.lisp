; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude LaneCenterOffset.msg.html

(cl:defclass <LaneCenterOffset> (roslisp-msg-protocol:ros-message)
  ((track_id
    :reader track_id
    :initarg :track_id
    :type cl:integer
    :initform 0)
   (track_frames_count
    :reader track_frames_count
    :initarg :track_frames_count
    :type cl:integer
    :initform 0)
   (accumulative_offset
    :reader accumulative_offset
    :initarg :accumulative_offset
    :type cl:float
    :initform 0.0)
   (relative_offset
    :reader relative_offset
    :initarg :relative_offset
    :type cl:float
    :initform 0.0))
)

(cl:defclass LaneCenterOffset (<LaneCenterOffset>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneCenterOffset>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneCenterOffset)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<LaneCenterOffset> is deprecated: use landmark_msgs-msg:LaneCenterOffset instead.")))

(cl:ensure-generic-function 'track_id-val :lambda-list '(m))
(cl:defmethod track_id-val ((m <LaneCenterOffset>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:track_id-val is deprecated.  Use landmark_msgs-msg:track_id instead.")
  (track_id m))

(cl:ensure-generic-function 'track_frames_count-val :lambda-list '(m))
(cl:defmethod track_frames_count-val ((m <LaneCenterOffset>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:track_frames_count-val is deprecated.  Use landmark_msgs-msg:track_frames_count instead.")
  (track_frames_count m))

(cl:ensure-generic-function 'accumulative_offset-val :lambda-list '(m))
(cl:defmethod accumulative_offset-val ((m <LaneCenterOffset>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:accumulative_offset-val is deprecated.  Use landmark_msgs-msg:accumulative_offset instead.")
  (accumulative_offset m))

(cl:ensure-generic-function 'relative_offset-val :lambda-list '(m))
(cl:defmethod relative_offset-val ((m <LaneCenterOffset>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:relative_offset-val is deprecated.  Use landmark_msgs-msg:relative_offset instead.")
  (relative_offset m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneCenterOffset>) ostream)
  "Serializes a message object of type '<LaneCenterOffset>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'track_frames_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'track_frames_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'track_frames_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'track_frames_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'track_frames_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'track_frames_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'track_frames_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'track_frames_count)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'accumulative_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'relative_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneCenterOffset>) istream)
  "Deserializes a message object of type '<LaneCenterOffset>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'track_frames_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'track_frames_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'track_frames_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'track_frames_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'track_frames_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'track_frames_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'track_frames_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'track_frames_count)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accumulative_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'relative_offset) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneCenterOffset>)))
  "Returns string type for a message object of type '<LaneCenterOffset>"
  "landmark_msgs/LaneCenterOffset")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneCenterOffset)))
  "Returns string type for a message object of type 'LaneCenterOffset"
  "landmark_msgs/LaneCenterOffset")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneCenterOffset>)))
  "Returns md5sum for a message object of type '<LaneCenterOffset>"
  "01c833d8de1057736d9a8b42605167bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneCenterOffset)))
  "Returns md5sum for a message object of type 'LaneCenterOffset"
  "01c833d8de1057736d9a8b42605167bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneCenterOffset>)))
  "Returns full string definition for message of type '<LaneCenterOffset>"
  (cl:format cl:nil "uint64 track_id~%uint64 track_frames_count~%float32 accumulative_offset~%float32 relative_offset~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneCenterOffset)))
  "Returns full string definition for message of type 'LaneCenterOffset"
  (cl:format cl:nil "uint64 track_id~%uint64 track_frames_count~%float32 accumulative_offset~%float32 relative_offset~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneCenterOffset>))
  (cl:+ 0
     8
     8
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneCenterOffset>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneCenterOffset
    (cl:cons ':track_id (track_id msg))
    (cl:cons ':track_frames_count (track_frames_count msg))
    (cl:cons ':accumulative_offset (accumulative_offset msg))
    (cl:cons ':relative_offset (relative_offset msg))
))
