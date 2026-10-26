; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude LaneCenterDisappearanceConfidence.msg.html

(cl:defclass <LaneCenterDisappearanceConfidence> (roslisp-msg-protocol:ros-message)
  ((reliable
    :reader reliable
    :initarg :reliable
    :type cl:boolean
    :initform cl:nil)
   (lane_center_disappearances
    :reader lane_center_disappearances
    :initarg :lane_center_disappearances
    :type (cl:vector landmark_msgs-msg:LaneCenterDisappearance)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:LaneCenterDisappearance :initial-element (cl:make-instance 'landmark_msgs-msg:LaneCenterDisappearance))))
)

(cl:defclass LaneCenterDisappearanceConfidence (<LaneCenterDisappearanceConfidence>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneCenterDisappearanceConfidence>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneCenterDisappearanceConfidence)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<LaneCenterDisappearanceConfidence> is deprecated: use landmark_msgs-msg:LaneCenterDisappearanceConfidence instead.")))

(cl:ensure-generic-function 'reliable-val :lambda-list '(m))
(cl:defmethod reliable-val ((m <LaneCenterDisappearanceConfidence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:reliable-val is deprecated.  Use landmark_msgs-msg:reliable instead.")
  (reliable m))

(cl:ensure-generic-function 'lane_center_disappearances-val :lambda-list '(m))
(cl:defmethod lane_center_disappearances-val ((m <LaneCenterDisappearanceConfidence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:lane_center_disappearances-val is deprecated.  Use landmark_msgs-msg:lane_center_disappearances instead.")
  (lane_center_disappearances m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneCenterDisappearanceConfidence>) ostream)
  "Serializes a message object of type '<LaneCenterDisappearanceConfidence>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reliable) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lane_center_disappearances))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lane_center_disappearances))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneCenterDisappearanceConfidence>) istream)
  "Deserializes a message object of type '<LaneCenterDisappearanceConfidence>"
    (cl:setf (cl:slot-value msg 'reliable) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lane_center_disappearances) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lane_center_disappearances)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:LaneCenterDisappearance))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneCenterDisappearanceConfidence>)))
  "Returns string type for a message object of type '<LaneCenterDisappearanceConfidence>"
  "landmark_msgs/LaneCenterDisappearanceConfidence")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneCenterDisappearanceConfidence)))
  "Returns string type for a message object of type 'LaneCenterDisappearanceConfidence"
  "landmark_msgs/LaneCenterDisappearanceConfidence")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneCenterDisappearanceConfidence>)))
  "Returns md5sum for a message object of type '<LaneCenterDisappearanceConfidence>"
  "4b515cea7479ac8b48254410fe0662df")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneCenterDisappearanceConfidence)))
  "Returns md5sum for a message object of type 'LaneCenterDisappearanceConfidence"
  "4b515cea7479ac8b48254410fe0662df")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneCenterDisappearanceConfidence>)))
  "Returns full string definition for message of type '<LaneCenterDisappearanceConfidence>"
  (cl:format cl:nil "bool reliable~%landmark_msgs/LaneCenterDisappearance[] lane_center_disappearances~%~%================================================================================~%MSG: landmark_msgs/LaneCenterDisappearance~%landmark_msgs/LaneRecordConfidence left_lane_boundary~%landmark_msgs/LaneRecordConfidence right_lane_boundary~%~%================================================================================~%MSG: landmark_msgs/LaneRecordConfidence~%uint64 track_id~%uint64 track_frames_count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneCenterDisappearanceConfidence)))
  "Returns full string definition for message of type 'LaneCenterDisappearanceConfidence"
  (cl:format cl:nil "bool reliable~%landmark_msgs/LaneCenterDisappearance[] lane_center_disappearances~%~%================================================================================~%MSG: landmark_msgs/LaneCenterDisappearance~%landmark_msgs/LaneRecordConfidence left_lane_boundary~%landmark_msgs/LaneRecordConfidence right_lane_boundary~%~%================================================================================~%MSG: landmark_msgs/LaneRecordConfidence~%uint64 track_id~%uint64 track_frames_count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneCenterDisappearanceConfidence>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lane_center_disappearances) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneCenterDisappearanceConfidence>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneCenterDisappearanceConfidence
    (cl:cons ':reliable (reliable msg))
    (cl:cons ':lane_center_disappearances (lane_center_disappearances msg))
))
