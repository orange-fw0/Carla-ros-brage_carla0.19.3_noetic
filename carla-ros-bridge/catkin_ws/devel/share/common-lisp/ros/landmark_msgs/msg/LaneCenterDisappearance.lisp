; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude LaneCenterDisappearance.msg.html

(cl:defclass <LaneCenterDisappearance> (roslisp-msg-protocol:ros-message)
  ((left_lane_boundary
    :reader left_lane_boundary
    :initarg :left_lane_boundary
    :type landmark_msgs-msg:LaneRecordConfidence
    :initform (cl:make-instance 'landmark_msgs-msg:LaneRecordConfidence))
   (right_lane_boundary
    :reader right_lane_boundary
    :initarg :right_lane_boundary
    :type landmark_msgs-msg:LaneRecordConfidence
    :initform (cl:make-instance 'landmark_msgs-msg:LaneRecordConfidence)))
)

(cl:defclass LaneCenterDisappearance (<LaneCenterDisappearance>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneCenterDisappearance>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneCenterDisappearance)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<LaneCenterDisappearance> is deprecated: use landmark_msgs-msg:LaneCenterDisappearance instead.")))

(cl:ensure-generic-function 'left_lane_boundary-val :lambda-list '(m))
(cl:defmethod left_lane_boundary-val ((m <LaneCenterDisappearance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:left_lane_boundary-val is deprecated.  Use landmark_msgs-msg:left_lane_boundary instead.")
  (left_lane_boundary m))

(cl:ensure-generic-function 'right_lane_boundary-val :lambda-list '(m))
(cl:defmethod right_lane_boundary-val ((m <LaneCenterDisappearance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:right_lane_boundary-val is deprecated.  Use landmark_msgs-msg:right_lane_boundary instead.")
  (right_lane_boundary m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneCenterDisappearance>) ostream)
  "Serializes a message object of type '<LaneCenterDisappearance>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_lane_boundary) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_lane_boundary) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneCenterDisappearance>) istream)
  "Deserializes a message object of type '<LaneCenterDisappearance>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_lane_boundary) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_lane_boundary) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneCenterDisappearance>)))
  "Returns string type for a message object of type '<LaneCenterDisappearance>"
  "landmark_msgs/LaneCenterDisappearance")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneCenterDisappearance)))
  "Returns string type for a message object of type 'LaneCenterDisappearance"
  "landmark_msgs/LaneCenterDisappearance")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneCenterDisappearance>)))
  "Returns md5sum for a message object of type '<LaneCenterDisappearance>"
  "d7582ebb0b0f34cce3675e5631fed071")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneCenterDisappearance)))
  "Returns md5sum for a message object of type 'LaneCenterDisappearance"
  "d7582ebb0b0f34cce3675e5631fed071")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneCenterDisappearance>)))
  "Returns full string definition for message of type '<LaneCenterDisappearance>"
  (cl:format cl:nil "landmark_msgs/LaneRecordConfidence left_lane_boundary~%landmark_msgs/LaneRecordConfidence right_lane_boundary~%~%================================================================================~%MSG: landmark_msgs/LaneRecordConfidence~%uint64 track_id~%uint64 track_frames_count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneCenterDisappearance)))
  "Returns full string definition for message of type 'LaneCenterDisappearance"
  (cl:format cl:nil "landmark_msgs/LaneRecordConfidence left_lane_boundary~%landmark_msgs/LaneRecordConfidence right_lane_boundary~%~%================================================================================~%MSG: landmark_msgs/LaneRecordConfidence~%uint64 track_id~%uint64 track_frames_count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneCenterDisappearance>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_lane_boundary))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_lane_boundary))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneCenterDisappearance>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneCenterDisappearance
    (cl:cons ':left_lane_boundary (left_lane_boundary msg))
    (cl:cons ':right_lane_boundary (right_lane_boundary msg))
))
