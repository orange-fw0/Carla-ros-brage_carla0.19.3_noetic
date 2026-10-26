; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude MpcTrajectory.msg.html

(cl:defclass <MpcTrajectory> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (path_points
    :reader path_points
    :initarg :path_points
    :type (cl:vector planning_msgs-msg:MpcTrajectoryPoint)
   :initform (cl:make-array 0 :element-type 'planning_msgs-msg:MpcTrajectoryPoint :initial-element (cl:make-instance 'planning_msgs-msg:MpcTrajectoryPoint))))
)

(cl:defclass MpcTrajectory (<MpcTrajectory>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MpcTrajectory>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MpcTrajectory)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<MpcTrajectory> is deprecated: use planning_msgs-msg:MpcTrajectory instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <MpcTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:available-val is deprecated.  Use planning_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'path_points-val :lambda-list '(m))
(cl:defmethod path_points-val ((m <MpcTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:path_points-val is deprecated.  Use planning_msgs-msg:path_points instead.")
  (path_points m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MpcTrajectory>)))
    "Constants for message type '<MpcTrajectory>"
  '((:PATH_POINTS . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MpcTrajectory)))
    "Constants for message type 'MpcTrajectory"
  '((:PATH_POINTS . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MpcTrajectory>) ostream)
  "Serializes a message object of type '<MpcTrajectory>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'path_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'path_points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MpcTrajectory>) istream)
  "Deserializes a message object of type '<MpcTrajectory>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'path_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'path_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'planning_msgs-msg:MpcTrajectoryPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MpcTrajectory>)))
  "Returns string type for a message object of type '<MpcTrajectory>"
  "planning_msgs/MpcTrajectory")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MpcTrajectory)))
  "Returns string type for a message object of type 'MpcTrajectory"
  "planning_msgs/MpcTrajectory")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MpcTrajectory>)))
  "Returns md5sum for a message object of type '<MpcTrajectory>"
  "7b8eefe241d56cb45b880a40fc4d7a0a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MpcTrajectory)))
  "Returns md5sum for a message object of type 'MpcTrajectory"
  "7b8eefe241d56cb45b880a40fc4d7a0a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MpcTrajectory>)))
  "Returns full string definition for message of type '<MpcTrajectory>"
  (cl:format cl:nil "uint8 PATH_POINTS = 1~%uint8 available~%planning_msgs/MpcTrajectoryPoint[] path_points~%~%================================================================================~%MSG: planning_msgs/MpcTrajectoryPoint~%planning_msgs/Point2d position_enu~%float64 heading_yaw~%~%================================================================================~%MSG: planning_msgs/Point2d~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MpcTrajectory)))
  "Returns full string definition for message of type 'MpcTrajectory"
  (cl:format cl:nil "uint8 PATH_POINTS = 1~%uint8 available~%planning_msgs/MpcTrajectoryPoint[] path_points~%~%================================================================================~%MSG: planning_msgs/MpcTrajectoryPoint~%planning_msgs/Point2d position_enu~%float64 heading_yaw~%~%================================================================================~%MSG: planning_msgs/Point2d~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MpcTrajectory>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'path_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MpcTrajectory>))
  "Converts a ROS message object to a list"
  (cl:list 'MpcTrajectory
    (cl:cons ':available (available msg))
    (cl:cons ':path_points (path_points msg))
))
