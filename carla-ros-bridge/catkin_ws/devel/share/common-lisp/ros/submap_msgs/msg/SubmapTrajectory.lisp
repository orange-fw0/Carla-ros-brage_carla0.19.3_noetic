; Auto-generated. Do not edit!


(cl:in-package submap_msgs-msg)


;//! \htmlinclude SubmapTrajectory.msg.html

(cl:defclass <SubmapTrajectory> (roslisp-msg-protocol:ros-message)
  ((distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (positions
    :reader positions
    :initarg :positions
    :type (cl:vector submap_msgs-msg:Position)
   :initform (cl:make-array 0 :element-type 'submap_msgs-msg:Position :initial-element (cl:make-instance 'submap_msgs-msg:Position))))
)

(cl:defclass SubmapTrajectory (<SubmapTrajectory>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SubmapTrajectory>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SubmapTrajectory)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name submap_msgs-msg:<SubmapTrajectory> is deprecated: use submap_msgs-msg:SubmapTrajectory instead.")))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <SubmapTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:distance-val is deprecated.  Use submap_msgs-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'positions-val :lambda-list '(m))
(cl:defmethod positions-val ((m <SubmapTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:positions-val is deprecated.  Use submap_msgs-msg:positions instead.")
  (positions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SubmapTrajectory>) ostream)
  "Serializes a message object of type '<SubmapTrajectory>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'positions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'positions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SubmapTrajectory>) istream)
  "Deserializes a message object of type '<SubmapTrajectory>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'positions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'positions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'submap_msgs-msg:Position))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SubmapTrajectory>)))
  "Returns string type for a message object of type '<SubmapTrajectory>"
  "submap_msgs/SubmapTrajectory")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SubmapTrajectory)))
  "Returns string type for a message object of type 'SubmapTrajectory"
  "submap_msgs/SubmapTrajectory")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SubmapTrajectory>)))
  "Returns md5sum for a message object of type '<SubmapTrajectory>"
  "aecb4b9dd86e97ea0eef1ea45e4a9304")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SubmapTrajectory)))
  "Returns md5sum for a message object of type 'SubmapTrajectory"
  "aecb4b9dd86e97ea0eef1ea45e4a9304")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SubmapTrajectory>)))
  "Returns full string definition for message of type '<SubmapTrajectory>"
  (cl:format cl:nil "float64 distance~%submap_msgs/Position[] positions~%~%================================================================================~%MSG: submap_msgs/Position~%geometry_msgs/Quaternion orientation~%geometry_msgs/Vector3 translation~%float64 timestamp~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SubmapTrajectory)))
  "Returns full string definition for message of type 'SubmapTrajectory"
  (cl:format cl:nil "float64 distance~%submap_msgs/Position[] positions~%~%================================================================================~%MSG: submap_msgs/Position~%geometry_msgs/Quaternion orientation~%geometry_msgs/Vector3 translation~%float64 timestamp~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SubmapTrajectory>))
  (cl:+ 0
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'positions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SubmapTrajectory>))
  "Converts a ROS message object to a list"
  (cl:list 'SubmapTrajectory
    (cl:cons ':distance (distance msg))
    (cl:cons ':positions (positions msg))
))
