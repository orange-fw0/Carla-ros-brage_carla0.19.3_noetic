; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude LaneRecordConfidence.msg.html

(cl:defclass <LaneRecordConfidence> (roslisp-msg-protocol:ros-message)
  ((track_id
    :reader track_id
    :initarg :track_id
    :type cl:integer
    :initform 0)
   (track_frames_count
    :reader track_frames_count
    :initarg :track_frames_count
    :type cl:integer
    :initform 0))
)

(cl:defclass LaneRecordConfidence (<LaneRecordConfidence>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneRecordConfidence>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneRecordConfidence)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<LaneRecordConfidence> is deprecated: use landmark_msgs-msg:LaneRecordConfidence instead.")))

(cl:ensure-generic-function 'track_id-val :lambda-list '(m))
(cl:defmethod track_id-val ((m <LaneRecordConfidence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:track_id-val is deprecated.  Use landmark_msgs-msg:track_id instead.")
  (track_id m))

(cl:ensure-generic-function 'track_frames_count-val :lambda-list '(m))
(cl:defmethod track_frames_count-val ((m <LaneRecordConfidence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:track_frames_count-val is deprecated.  Use landmark_msgs-msg:track_frames_count instead.")
  (track_frames_count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneRecordConfidence>) ostream)
  "Serializes a message object of type '<LaneRecordConfidence>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneRecordConfidence>) istream)
  "Deserializes a message object of type '<LaneRecordConfidence>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneRecordConfidence>)))
  "Returns string type for a message object of type '<LaneRecordConfidence>"
  "landmark_msgs/LaneRecordConfidence")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneRecordConfidence)))
  "Returns string type for a message object of type 'LaneRecordConfidence"
  "landmark_msgs/LaneRecordConfidence")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneRecordConfidence>)))
  "Returns md5sum for a message object of type '<LaneRecordConfidence>"
  "a3f99cb32d9202d133a0b4c504d28beb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneRecordConfidence)))
  "Returns md5sum for a message object of type 'LaneRecordConfidence"
  "a3f99cb32d9202d133a0b4c504d28beb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneRecordConfidence>)))
  "Returns full string definition for message of type '<LaneRecordConfidence>"
  (cl:format cl:nil "uint64 track_id~%uint64 track_frames_count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneRecordConfidence)))
  "Returns full string definition for message of type 'LaneRecordConfidence"
  (cl:format cl:nil "uint64 track_id~%uint64 track_frames_count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneRecordConfidence>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneRecordConfidence>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneRecordConfidence
    (cl:cons ':track_id (track_id msg))
    (cl:cons ':track_frames_count (track_frames_count msg))
))
