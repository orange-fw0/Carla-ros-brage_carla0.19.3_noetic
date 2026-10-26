; Auto-generated. Do not edit!


(cl:in-package e2e_planning_msgs-msg)


;//! \htmlinclude DLPCruiseData.msg.html

(cl:defclass <DLPCruiseData> (roslisp-msg-protocol:ros-message)
  ((dlp_cruise_trajectories
    :reader dlp_cruise_trajectories
    :initarg :dlp_cruise_trajectories
    :type (cl:vector e2e_planning_msgs-msg:DLPTrajectory)
   :initform (cl:make-array 0 :element-type 'e2e_planning_msgs-msg:DLPTrajectory :initial-element (cl:make-instance 'e2e_planning_msgs-msg:DLPTrajectory)))
   (dlp_agent_prediction_trajectories
    :reader dlp_agent_prediction_trajectories
    :initarg :dlp_agent_prediction_trajectories
    :type e2e_planning_msgs-msg:DLPTrajectories
    :initform (cl:make-instance 'e2e_planning_msgs-msg:DLPTrajectories))
   (reserved_info
    :reader reserved_info
    :initarg :reserved_info
    :type cl:string
    :initform ""))
)

(cl:defclass DLPCruiseData (<DLPCruiseData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DLPCruiseData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DLPCruiseData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name e2e_planning_msgs-msg:<DLPCruiseData> is deprecated: use e2e_planning_msgs-msg:DLPCruiseData instead.")))

(cl:ensure-generic-function 'dlp_cruise_trajectories-val :lambda-list '(m))
(cl:defmethod dlp_cruise_trajectories-val ((m <DLPCruiseData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_planning_msgs-msg:dlp_cruise_trajectories-val is deprecated.  Use e2e_planning_msgs-msg:dlp_cruise_trajectories instead.")
  (dlp_cruise_trajectories m))

(cl:ensure-generic-function 'dlp_agent_prediction_trajectories-val :lambda-list '(m))
(cl:defmethod dlp_agent_prediction_trajectories-val ((m <DLPCruiseData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_planning_msgs-msg:dlp_agent_prediction_trajectories-val is deprecated.  Use e2e_planning_msgs-msg:dlp_agent_prediction_trajectories instead.")
  (dlp_agent_prediction_trajectories m))

(cl:ensure-generic-function 'reserved_info-val :lambda-list '(m))
(cl:defmethod reserved_info-val ((m <DLPCruiseData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_planning_msgs-msg:reserved_info-val is deprecated.  Use e2e_planning_msgs-msg:reserved_info instead.")
  (reserved_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DLPCruiseData>) ostream)
  "Serializes a message object of type '<DLPCruiseData>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'dlp_cruise_trajectories))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'dlp_cruise_trajectories))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dlp_agent_prediction_trajectories) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DLPCruiseData>) istream)
  "Deserializes a message object of type '<DLPCruiseData>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'dlp_cruise_trajectories) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'dlp_cruise_trajectories)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'e2e_planning_msgs-msg:DLPTrajectory))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dlp_agent_prediction_trajectories) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reserved_info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reserved_info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DLPCruiseData>)))
  "Returns string type for a message object of type '<DLPCruiseData>"
  "e2e_planning_msgs/DLPCruiseData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DLPCruiseData)))
  "Returns string type for a message object of type 'DLPCruiseData"
  "e2e_planning_msgs/DLPCruiseData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DLPCruiseData>)))
  "Returns md5sum for a message object of type '<DLPCruiseData>"
  "71a32eee841e5ca466d4a00390d650cd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DLPCruiseData)))
  "Returns md5sum for a message object of type 'DLPCruiseData"
  "71a32eee841e5ca466d4a00390d650cd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DLPCruiseData>)))
  "Returns full string definition for message of type '<DLPCruiseData>"
  (cl:format cl:nil "e2e_planning_msgs/DLPTrajectory[] dlp_cruise_trajectories~%e2e_planning_msgs/DLPTrajectories dlp_agent_prediction_trajectories~%string reserved_info~%~%================================================================================~%MSG: e2e_planning_msgs/DLPTrajectory~%e2e_planning_msgs/DLPTrajectoryPoint[] points~%e2e_planning_msgs/DLPTrajectoryTypeEnum type~%uint8 anchor_type~%uint64 anchor_id~%perception_interface_msgs/Point3d goal_point~%uint8 multi_modality_id~%uint64 object_id~%uint64 timestamp_us~%float64 score~%string reserved_info~%~%================================================================================~%MSG: e2e_planning_msgs/DLPTrajectoryPoint~%perception_interface_msgs/Point3d position~%perception_interface_msgs/Vector3d velocity~%perception_interface_msgs/Vector3d acceleration~%perception_interface_msgs/Vector3d jerk~%float64 heading_angle~%float64 score~%uint64 timestamp_us~%bool valid~%~%================================================================================~%MSG: perception_interface_msgs/Point3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: perception_interface_msgs/Vector3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: e2e_planning_msgs/DLPTrajectoryTypeEnum~%uint8 DLP_TRAJECTORY_CRUISE = 0~%uint8 DLP_TRAJECTORY_LANE_CHANGE = 1~%uint8 DLP_TRAJECTORY_REF_PATH = 2~%uint8 DLP_TRAJECTORY_PREDICTION = 3~%uint8 value~%~%================================================================================~%MSG: e2e_planning_msgs/DLPTrajectories~%e2e_planning_msgs/DLPTrajectory[] dlp_trajectories~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DLPCruiseData)))
  "Returns full string definition for message of type 'DLPCruiseData"
  (cl:format cl:nil "e2e_planning_msgs/DLPTrajectory[] dlp_cruise_trajectories~%e2e_planning_msgs/DLPTrajectories dlp_agent_prediction_trajectories~%string reserved_info~%~%================================================================================~%MSG: e2e_planning_msgs/DLPTrajectory~%e2e_planning_msgs/DLPTrajectoryPoint[] points~%e2e_planning_msgs/DLPTrajectoryTypeEnum type~%uint8 anchor_type~%uint64 anchor_id~%perception_interface_msgs/Point3d goal_point~%uint8 multi_modality_id~%uint64 object_id~%uint64 timestamp_us~%float64 score~%string reserved_info~%~%================================================================================~%MSG: e2e_planning_msgs/DLPTrajectoryPoint~%perception_interface_msgs/Point3d position~%perception_interface_msgs/Vector3d velocity~%perception_interface_msgs/Vector3d acceleration~%perception_interface_msgs/Vector3d jerk~%float64 heading_angle~%float64 score~%uint64 timestamp_us~%bool valid~%~%================================================================================~%MSG: perception_interface_msgs/Point3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: perception_interface_msgs/Vector3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: e2e_planning_msgs/DLPTrajectoryTypeEnum~%uint8 DLP_TRAJECTORY_CRUISE = 0~%uint8 DLP_TRAJECTORY_LANE_CHANGE = 1~%uint8 DLP_TRAJECTORY_REF_PATH = 2~%uint8 DLP_TRAJECTORY_PREDICTION = 3~%uint8 value~%~%================================================================================~%MSG: e2e_planning_msgs/DLPTrajectories~%e2e_planning_msgs/DLPTrajectory[] dlp_trajectories~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DLPCruiseData>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'dlp_cruise_trajectories) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dlp_agent_prediction_trajectories))
     4 (cl:length (cl:slot-value msg 'reserved_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DLPCruiseData>))
  "Converts a ROS message object to a list"
  (cl:list 'DLPCruiseData
    (cl:cons ':dlp_cruise_trajectories (dlp_cruise_trajectories msg))
    (cl:cons ':dlp_agent_prediction_trajectories (dlp_agent_prediction_trajectories msg))
    (cl:cons ':reserved_info (reserved_info msg))
))
