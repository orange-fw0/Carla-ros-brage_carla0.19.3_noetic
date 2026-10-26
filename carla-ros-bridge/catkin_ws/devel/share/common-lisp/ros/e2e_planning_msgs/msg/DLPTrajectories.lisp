; Auto-generated. Do not edit!


(cl:in-package e2e_planning_msgs-msg)


;//! \htmlinclude DLPTrajectories.msg.html

(cl:defclass <DLPTrajectories> (roslisp-msg-protocol:ros-message)
  ((dlp_trajectories
    :reader dlp_trajectories
    :initarg :dlp_trajectories
    :type (cl:vector e2e_planning_msgs-msg:DLPTrajectory)
   :initform (cl:make-array 0 :element-type 'e2e_planning_msgs-msg:DLPTrajectory :initial-element (cl:make-instance 'e2e_planning_msgs-msg:DLPTrajectory))))
)

(cl:defclass DLPTrajectories (<DLPTrajectories>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DLPTrajectories>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DLPTrajectories)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name e2e_planning_msgs-msg:<DLPTrajectories> is deprecated: use e2e_planning_msgs-msg:DLPTrajectories instead.")))

(cl:ensure-generic-function 'dlp_trajectories-val :lambda-list '(m))
(cl:defmethod dlp_trajectories-val ((m <DLPTrajectories>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_planning_msgs-msg:dlp_trajectories-val is deprecated.  Use e2e_planning_msgs-msg:dlp_trajectories instead.")
  (dlp_trajectories m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DLPTrajectories>) ostream)
  "Serializes a message object of type '<DLPTrajectories>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'dlp_trajectories))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'dlp_trajectories))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DLPTrajectories>) istream)
  "Deserializes a message object of type '<DLPTrajectories>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'dlp_trajectories) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'dlp_trajectories)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'e2e_planning_msgs-msg:DLPTrajectory))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DLPTrajectories>)))
  "Returns string type for a message object of type '<DLPTrajectories>"
  "e2e_planning_msgs/DLPTrajectories")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DLPTrajectories)))
  "Returns string type for a message object of type 'DLPTrajectories"
  "e2e_planning_msgs/DLPTrajectories")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DLPTrajectories>)))
  "Returns md5sum for a message object of type '<DLPTrajectories>"
  "b289bd74365be4c9eb63c50ee595629d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DLPTrajectories)))
  "Returns md5sum for a message object of type 'DLPTrajectories"
  "b289bd74365be4c9eb63c50ee595629d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DLPTrajectories>)))
  "Returns full string definition for message of type '<DLPTrajectories>"
  (cl:format cl:nil "e2e_planning_msgs/DLPTrajectory[] dlp_trajectories~%~%================================================================================~%MSG: e2e_planning_msgs/DLPTrajectory~%e2e_planning_msgs/DLPTrajectoryPoint[] points~%e2e_planning_msgs/DLPTrajectoryTypeEnum type~%uint8 anchor_type~%uint64 anchor_id~%perception_interface_msgs/Point3d goal_point~%uint8 multi_modality_id~%uint64 object_id~%uint64 timestamp_us~%float64 score~%string reserved_info~%~%================================================================================~%MSG: e2e_planning_msgs/DLPTrajectoryPoint~%perception_interface_msgs/Point3d position~%perception_interface_msgs/Vector3d velocity~%perception_interface_msgs/Vector3d acceleration~%perception_interface_msgs/Vector3d jerk~%float64 heading_angle~%float64 score~%uint64 timestamp_us~%bool valid~%~%================================================================================~%MSG: perception_interface_msgs/Point3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: perception_interface_msgs/Vector3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: e2e_planning_msgs/DLPTrajectoryTypeEnum~%uint8 DLP_TRAJECTORY_CRUISE = 0~%uint8 DLP_TRAJECTORY_LANE_CHANGE = 1~%uint8 DLP_TRAJECTORY_REF_PATH = 2~%uint8 DLP_TRAJECTORY_PREDICTION = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DLPTrajectories)))
  "Returns full string definition for message of type 'DLPTrajectories"
  (cl:format cl:nil "e2e_planning_msgs/DLPTrajectory[] dlp_trajectories~%~%================================================================================~%MSG: e2e_planning_msgs/DLPTrajectory~%e2e_planning_msgs/DLPTrajectoryPoint[] points~%e2e_planning_msgs/DLPTrajectoryTypeEnum type~%uint8 anchor_type~%uint64 anchor_id~%perception_interface_msgs/Point3d goal_point~%uint8 multi_modality_id~%uint64 object_id~%uint64 timestamp_us~%float64 score~%string reserved_info~%~%================================================================================~%MSG: e2e_planning_msgs/DLPTrajectoryPoint~%perception_interface_msgs/Point3d position~%perception_interface_msgs/Vector3d velocity~%perception_interface_msgs/Vector3d acceleration~%perception_interface_msgs/Vector3d jerk~%float64 heading_angle~%float64 score~%uint64 timestamp_us~%bool valid~%~%================================================================================~%MSG: perception_interface_msgs/Point3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: perception_interface_msgs/Vector3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: e2e_planning_msgs/DLPTrajectoryTypeEnum~%uint8 DLP_TRAJECTORY_CRUISE = 0~%uint8 DLP_TRAJECTORY_LANE_CHANGE = 1~%uint8 DLP_TRAJECTORY_REF_PATH = 2~%uint8 DLP_TRAJECTORY_PREDICTION = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DLPTrajectories>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'dlp_trajectories) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DLPTrajectories>))
  "Converts a ROS message object to a list"
  (cl:list 'DLPTrajectories
    (cl:cons ':dlp_trajectories (dlp_trajectories msg))
))
