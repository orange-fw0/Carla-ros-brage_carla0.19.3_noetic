; Auto-generated. Do not edit!


(cl:in-package e2e_planning_msgs-msg)


;//! \htmlinclude DLPLaneChangeData.msg.html

(cl:defclass <DLPLaneChangeData> (roslisp-msg-protocol:ros-message)
  ((multi_source_dlp_lane_infos
    :reader multi_source_dlp_lane_infos
    :initarg :multi_source_dlp_lane_infos
    :type (cl:vector e2e_planning_msgs-msg:DLPLaneInfo)
   :initform (cl:make-array 0 :element-type 'e2e_planning_msgs-msg:DLPLaneInfo :initial-element (cl:make-instance 'e2e_planning_msgs-msg:DLPLaneInfo)))
   (dlp_lane_change_decisions
    :reader dlp_lane_change_decisions
    :initarg :dlp_lane_change_decisions
    :type (cl:vector e2e_planning_msgs-msg:DLPLaneChangeDecision)
   :initform (cl:make-array 0 :element-type 'e2e_planning_msgs-msg:DLPLaneChangeDecision :initial-element (cl:make-instance 'e2e_planning_msgs-msg:DLPLaneChangeDecision)))
   (dlp_trajectories
    :reader dlp_trajectories
    :initarg :dlp_trajectories
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

(cl:defclass DLPLaneChangeData (<DLPLaneChangeData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DLPLaneChangeData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DLPLaneChangeData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name e2e_planning_msgs-msg:<DLPLaneChangeData> is deprecated: use e2e_planning_msgs-msg:DLPLaneChangeData instead.")))

(cl:ensure-generic-function 'multi_source_dlp_lane_infos-val :lambda-list '(m))
(cl:defmethod multi_source_dlp_lane_infos-val ((m <DLPLaneChangeData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_planning_msgs-msg:multi_source_dlp_lane_infos-val is deprecated.  Use e2e_planning_msgs-msg:multi_source_dlp_lane_infos instead.")
  (multi_source_dlp_lane_infos m))

(cl:ensure-generic-function 'dlp_lane_change_decisions-val :lambda-list '(m))
(cl:defmethod dlp_lane_change_decisions-val ((m <DLPLaneChangeData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_planning_msgs-msg:dlp_lane_change_decisions-val is deprecated.  Use e2e_planning_msgs-msg:dlp_lane_change_decisions instead.")
  (dlp_lane_change_decisions m))

(cl:ensure-generic-function 'dlp_trajectories-val :lambda-list '(m))
(cl:defmethod dlp_trajectories-val ((m <DLPLaneChangeData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_planning_msgs-msg:dlp_trajectories-val is deprecated.  Use e2e_planning_msgs-msg:dlp_trajectories instead.")
  (dlp_trajectories m))

(cl:ensure-generic-function 'dlp_agent_prediction_trajectories-val :lambda-list '(m))
(cl:defmethod dlp_agent_prediction_trajectories-val ((m <DLPLaneChangeData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_planning_msgs-msg:dlp_agent_prediction_trajectories-val is deprecated.  Use e2e_planning_msgs-msg:dlp_agent_prediction_trajectories instead.")
  (dlp_agent_prediction_trajectories m))

(cl:ensure-generic-function 'reserved_info-val :lambda-list '(m))
(cl:defmethod reserved_info-val ((m <DLPLaneChangeData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_planning_msgs-msg:reserved_info-val is deprecated.  Use e2e_planning_msgs-msg:reserved_info instead.")
  (reserved_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DLPLaneChangeData>) ostream)
  "Serializes a message object of type '<DLPLaneChangeData>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'multi_source_dlp_lane_infos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'multi_source_dlp_lane_infos))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'dlp_lane_change_decisions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'dlp_lane_change_decisions))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'dlp_trajectories))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'dlp_trajectories))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dlp_agent_prediction_trajectories) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DLPLaneChangeData>) istream)
  "Deserializes a message object of type '<DLPLaneChangeData>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'multi_source_dlp_lane_infos) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'multi_source_dlp_lane_infos)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'e2e_planning_msgs-msg:DLPLaneInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'dlp_lane_change_decisions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'dlp_lane_change_decisions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'e2e_planning_msgs-msg:DLPLaneChangeDecision))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DLPLaneChangeData>)))
  "Returns string type for a message object of type '<DLPLaneChangeData>"
  "e2e_planning_msgs/DLPLaneChangeData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DLPLaneChangeData)))
  "Returns string type for a message object of type 'DLPLaneChangeData"
  "e2e_planning_msgs/DLPLaneChangeData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DLPLaneChangeData>)))
  "Returns md5sum for a message object of type '<DLPLaneChangeData>"
  "227b694b2f47efd57e9b91c46edd3153")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DLPLaneChangeData)))
  "Returns md5sum for a message object of type 'DLPLaneChangeData"
  "227b694b2f47efd57e9b91c46edd3153")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DLPLaneChangeData>)))
  "Returns full string definition for message of type '<DLPLaneChangeData>"
  (cl:format cl:nil "e2e_planning_msgs/DLPLaneInfo[] multi_source_dlp_lane_infos~%e2e_planning_msgs/DLPLaneChangeDecision[] dlp_lane_change_decisions~%e2e_planning_msgs/DLPTrajectory[] dlp_trajectories~%e2e_planning_msgs/DLPTrajectories dlp_agent_prediction_trajectories~%string reserved_info~%~%================================================================================~%MSG: e2e_planning_msgs/DLPLaneInfo~%int32 request_type~%int32 lane_id~%float64 score~%string source~%~%================================================================================~%MSG: e2e_planning_msgs/DLPLaneChangeDecision~%int32 request_type~%int32 direction~%int32 target_lane_id~%float64 score~%string source~%~%================================================================================~%MSG: e2e_planning_msgs/DLPTrajectory~%e2e_planning_msgs/DLPTrajectoryPoint[] points~%e2e_planning_msgs/DLPTrajectoryTypeEnum type~%uint8 anchor_type~%uint64 anchor_id~%perception_interface_msgs/Point3d goal_point~%uint8 multi_modality_id~%uint64 object_id~%uint64 timestamp_us~%float64 score~%string reserved_info~%~%================================================================================~%MSG: e2e_planning_msgs/DLPTrajectoryPoint~%perception_interface_msgs/Point3d position~%perception_interface_msgs/Vector3d velocity~%perception_interface_msgs/Vector3d acceleration~%perception_interface_msgs/Vector3d jerk~%float64 heading_angle~%float64 score~%uint64 timestamp_us~%bool valid~%~%================================================================================~%MSG: perception_interface_msgs/Point3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: perception_interface_msgs/Vector3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: e2e_planning_msgs/DLPTrajectoryTypeEnum~%uint8 DLP_TRAJECTORY_CRUISE = 0~%uint8 DLP_TRAJECTORY_LANE_CHANGE = 1~%uint8 DLP_TRAJECTORY_REF_PATH = 2~%uint8 DLP_TRAJECTORY_PREDICTION = 3~%uint8 value~%~%================================================================================~%MSG: e2e_planning_msgs/DLPTrajectories~%e2e_planning_msgs/DLPTrajectory[] dlp_trajectories~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DLPLaneChangeData)))
  "Returns full string definition for message of type 'DLPLaneChangeData"
  (cl:format cl:nil "e2e_planning_msgs/DLPLaneInfo[] multi_source_dlp_lane_infos~%e2e_planning_msgs/DLPLaneChangeDecision[] dlp_lane_change_decisions~%e2e_planning_msgs/DLPTrajectory[] dlp_trajectories~%e2e_planning_msgs/DLPTrajectories dlp_agent_prediction_trajectories~%string reserved_info~%~%================================================================================~%MSG: e2e_planning_msgs/DLPLaneInfo~%int32 request_type~%int32 lane_id~%float64 score~%string source~%~%================================================================================~%MSG: e2e_planning_msgs/DLPLaneChangeDecision~%int32 request_type~%int32 direction~%int32 target_lane_id~%float64 score~%string source~%~%================================================================================~%MSG: e2e_planning_msgs/DLPTrajectory~%e2e_planning_msgs/DLPTrajectoryPoint[] points~%e2e_planning_msgs/DLPTrajectoryTypeEnum type~%uint8 anchor_type~%uint64 anchor_id~%perception_interface_msgs/Point3d goal_point~%uint8 multi_modality_id~%uint64 object_id~%uint64 timestamp_us~%float64 score~%string reserved_info~%~%================================================================================~%MSG: e2e_planning_msgs/DLPTrajectoryPoint~%perception_interface_msgs/Point3d position~%perception_interface_msgs/Vector3d velocity~%perception_interface_msgs/Vector3d acceleration~%perception_interface_msgs/Vector3d jerk~%float64 heading_angle~%float64 score~%uint64 timestamp_us~%bool valid~%~%================================================================================~%MSG: perception_interface_msgs/Point3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: perception_interface_msgs/Vector3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: e2e_planning_msgs/DLPTrajectoryTypeEnum~%uint8 DLP_TRAJECTORY_CRUISE = 0~%uint8 DLP_TRAJECTORY_LANE_CHANGE = 1~%uint8 DLP_TRAJECTORY_REF_PATH = 2~%uint8 DLP_TRAJECTORY_PREDICTION = 3~%uint8 value~%~%================================================================================~%MSG: e2e_planning_msgs/DLPTrajectories~%e2e_planning_msgs/DLPTrajectory[] dlp_trajectories~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DLPLaneChangeData>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'multi_source_dlp_lane_infos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'dlp_lane_change_decisions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'dlp_trajectories) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dlp_agent_prediction_trajectories))
     4 (cl:length (cl:slot-value msg 'reserved_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DLPLaneChangeData>))
  "Converts a ROS message object to a list"
  (cl:list 'DLPLaneChangeData
    (cl:cons ':multi_source_dlp_lane_infos (multi_source_dlp_lane_infos msg))
    (cl:cons ':dlp_lane_change_decisions (dlp_lane_change_decisions msg))
    (cl:cons ':dlp_trajectories (dlp_trajectories msg))
    (cl:cons ':dlp_agent_prediction_trajectories (dlp_agent_prediction_trajectories msg))
    (cl:cons ':reserved_info (reserved_info msg))
))
