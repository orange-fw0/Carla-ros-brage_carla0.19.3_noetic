; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude LaneCenterOffsetConfidence.msg.html

(cl:defclass <LaneCenterOffsetConfidence> (roslisp-msg-protocol:ros-message)
  ((reliable
    :reader reliable
    :initarg :reliable
    :type cl:boolean
    :initform cl:nil)
   (lane_center_offsets
    :reader lane_center_offsets
    :initarg :lane_center_offsets
    :type (cl:vector landmark_msgs-msg:LaneCenterOffset)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:LaneCenterOffset :initial-element (cl:make-instance 'landmark_msgs-msg:LaneCenterOffset))))
)

(cl:defclass LaneCenterOffsetConfidence (<LaneCenterOffsetConfidence>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneCenterOffsetConfidence>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneCenterOffsetConfidence)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<LaneCenterOffsetConfidence> is deprecated: use landmark_msgs-msg:LaneCenterOffsetConfidence instead.")))

(cl:ensure-generic-function 'reliable-val :lambda-list '(m))
(cl:defmethod reliable-val ((m <LaneCenterOffsetConfidence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:reliable-val is deprecated.  Use landmark_msgs-msg:reliable instead.")
  (reliable m))

(cl:ensure-generic-function 'lane_center_offsets-val :lambda-list '(m))
(cl:defmethod lane_center_offsets-val ((m <LaneCenterOffsetConfidence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:lane_center_offsets-val is deprecated.  Use landmark_msgs-msg:lane_center_offsets instead.")
  (lane_center_offsets m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneCenterOffsetConfidence>) ostream)
  "Serializes a message object of type '<LaneCenterOffsetConfidence>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reliable) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lane_center_offsets))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lane_center_offsets))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneCenterOffsetConfidence>) istream)
  "Deserializes a message object of type '<LaneCenterOffsetConfidence>"
    (cl:setf (cl:slot-value msg 'reliable) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lane_center_offsets) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lane_center_offsets)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:LaneCenterOffset))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneCenterOffsetConfidence>)))
  "Returns string type for a message object of type '<LaneCenterOffsetConfidence>"
  "landmark_msgs/LaneCenterOffsetConfidence")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneCenterOffsetConfidence)))
  "Returns string type for a message object of type 'LaneCenterOffsetConfidence"
  "landmark_msgs/LaneCenterOffsetConfidence")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneCenterOffsetConfidence>)))
  "Returns md5sum for a message object of type '<LaneCenterOffsetConfidence>"
  "18ffa8bd9721e4c7317226a15247de21")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneCenterOffsetConfidence)))
  "Returns md5sum for a message object of type 'LaneCenterOffsetConfidence"
  "18ffa8bd9721e4c7317226a15247de21")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneCenterOffsetConfidence>)))
  "Returns full string definition for message of type '<LaneCenterOffsetConfidence>"
  (cl:format cl:nil "bool reliable~%landmark_msgs/LaneCenterOffset[] lane_center_offsets~%~%================================================================================~%MSG: landmark_msgs/LaneCenterOffset~%uint64 track_id~%uint64 track_frames_count~%float32 accumulative_offset~%float32 relative_offset~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneCenterOffsetConfidence)))
  "Returns full string definition for message of type 'LaneCenterOffsetConfidence"
  (cl:format cl:nil "bool reliable~%landmark_msgs/LaneCenterOffset[] lane_center_offsets~%~%================================================================================~%MSG: landmark_msgs/LaneCenterOffset~%uint64 track_id~%uint64 track_frames_count~%float32 accumulative_offset~%float32 relative_offset~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneCenterOffsetConfidence>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lane_center_offsets) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneCenterOffsetConfidence>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneCenterOffsetConfidence
    (cl:cons ':reliable (reliable msg))
    (cl:cons ':lane_center_offsets (lane_center_offsets msg))
))
