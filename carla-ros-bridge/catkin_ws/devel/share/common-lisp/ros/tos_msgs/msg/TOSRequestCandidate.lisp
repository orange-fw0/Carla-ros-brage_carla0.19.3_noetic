; Auto-generated. Do not edit!


(cl:in-package tos_msgs-msg)


;//! \htmlinclude TOSRequestCandidate.msg.html

(cl:defclass <TOSRequestCandidate> (roslisp-msg-protocol:ros-message)
  ((candidate_id
    :reader candidate_id
    :initarg :candidate_id
    :type cl:integer
    :initform 0)
   (traj
    :reader traj
    :initarg :traj
    :type (cl:vector perception_interface_msgs-msg:Point3d)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:Point3d :initial-element (cl:make-instance 'perception_interface_msgs-msg:Point3d))))
)

(cl:defclass TOSRequestCandidate (<TOSRequestCandidate>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TOSRequestCandidate>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TOSRequestCandidate)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tos_msgs-msg:<TOSRequestCandidate> is deprecated: use tos_msgs-msg:TOSRequestCandidate instead.")))

(cl:ensure-generic-function 'candidate_id-val :lambda-list '(m))
(cl:defmethod candidate_id-val ((m <TOSRequestCandidate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:candidate_id-val is deprecated.  Use tos_msgs-msg:candidate_id instead.")
  (candidate_id m))

(cl:ensure-generic-function 'traj-val :lambda-list '(m))
(cl:defmethod traj-val ((m <TOSRequestCandidate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:traj-val is deprecated.  Use tos_msgs-msg:traj instead.")
  (traj m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TOSRequestCandidate>) ostream)
  "Serializes a message object of type '<TOSRequestCandidate>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'candidate_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'candidate_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'candidate_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'candidate_id)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'traj))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'traj))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TOSRequestCandidate>) istream)
  "Deserializes a message object of type '<TOSRequestCandidate>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'candidate_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'candidate_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'candidate_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'candidate_id)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'traj) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'traj)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:Point3d))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TOSRequestCandidate>)))
  "Returns string type for a message object of type '<TOSRequestCandidate>"
  "tos_msgs/TOSRequestCandidate")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TOSRequestCandidate)))
  "Returns string type for a message object of type 'TOSRequestCandidate"
  "tos_msgs/TOSRequestCandidate")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TOSRequestCandidate>)))
  "Returns md5sum for a message object of type '<TOSRequestCandidate>"
  "4c1d15627e1447d3cf6bdaaaa85f0747")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TOSRequestCandidate)))
  "Returns md5sum for a message object of type 'TOSRequestCandidate"
  "4c1d15627e1447d3cf6bdaaaa85f0747")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TOSRequestCandidate>)))
  "Returns full string definition for message of type '<TOSRequestCandidate>"
  (cl:format cl:nil "uint32 candidate_id~%perception_interface_msgs/Point3d[] traj~%~%================================================================================~%MSG: perception_interface_msgs/Point3d~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TOSRequestCandidate)))
  "Returns full string definition for message of type 'TOSRequestCandidate"
  (cl:format cl:nil "uint32 candidate_id~%perception_interface_msgs/Point3d[] traj~%~%================================================================================~%MSG: perception_interface_msgs/Point3d~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TOSRequestCandidate>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'traj) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TOSRequestCandidate>))
  "Converts a ROS message object to a list"
  (cl:list 'TOSRequestCandidate
    (cl:cons ':candidate_id (candidate_id msg))
    (cl:cons ':traj (traj msg))
))
