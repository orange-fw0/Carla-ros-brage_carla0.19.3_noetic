; Auto-generated. Do not edit!


(cl:in-package e2e_planning_msgs-msg)


;//! \htmlinclude DLPResult.msg.html

(cl:defclass <DLPResult> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (meta
    :reader meta
    :initarg :meta
    :type e2e_planning_msgs-msg:DLPResultMeta
    :initform (cl:make-instance 'e2e_planning_msgs-msg:DLPResultMeta))
   (dlp_cruise_data
    :reader dlp_cruise_data
    :initarg :dlp_cruise_data
    :type e2e_planning_msgs-msg:DLPCruiseData
    :initform (cl:make-instance 'e2e_planning_msgs-msg:DLPCruiseData))
   (dlp_lane_change_data
    :reader dlp_lane_change_data
    :initarg :dlp_lane_change_data
    :type e2e_planning_msgs-msg:DLPLaneChangeData
    :initform (cl:make-instance 'e2e_planning_msgs-msg:DLPLaneChangeData))
   (reserved_info
    :reader reserved_info
    :initarg :reserved_info
    :type cl:string
    :initform ""))
)

(cl:defclass DLPResult (<DLPResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DLPResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DLPResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name e2e_planning_msgs-msg:<DLPResult> is deprecated: use e2e_planning_msgs-msg:DLPResult instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DLPResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_planning_msgs-msg:header-val is deprecated.  Use e2e_planning_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'meta-val :lambda-list '(m))
(cl:defmethod meta-val ((m <DLPResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_planning_msgs-msg:meta-val is deprecated.  Use e2e_planning_msgs-msg:meta instead.")
  (meta m))

(cl:ensure-generic-function 'dlp_cruise_data-val :lambda-list '(m))
(cl:defmethod dlp_cruise_data-val ((m <DLPResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_planning_msgs-msg:dlp_cruise_data-val is deprecated.  Use e2e_planning_msgs-msg:dlp_cruise_data instead.")
  (dlp_cruise_data m))

(cl:ensure-generic-function 'dlp_lane_change_data-val :lambda-list '(m))
(cl:defmethod dlp_lane_change_data-val ((m <DLPResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_planning_msgs-msg:dlp_lane_change_data-val is deprecated.  Use e2e_planning_msgs-msg:dlp_lane_change_data instead.")
  (dlp_lane_change_data m))

(cl:ensure-generic-function 'reserved_info-val :lambda-list '(m))
(cl:defmethod reserved_info-val ((m <DLPResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_planning_msgs-msg:reserved_info-val is deprecated.  Use e2e_planning_msgs-msg:reserved_info instead.")
  (reserved_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DLPResult>) ostream)
  "Serializes a message object of type '<DLPResult>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dlp_cruise_data) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dlp_lane_change_data) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DLPResult>) istream)
  "Deserializes a message object of type '<DLPResult>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dlp_cruise_data) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dlp_lane_change_data) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DLPResult>)))
  "Returns string type for a message object of type '<DLPResult>"
  "e2e_planning_msgs/DLPResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DLPResult)))
  "Returns string type for a message object of type 'DLPResult"
  "e2e_planning_msgs/DLPResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DLPResult>)))
  "Returns md5sum for a message object of type '<DLPResult>"
  "2086b723c652ff11338f4b79fe989ce4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DLPResult)))
  "Returns md5sum for a message object of type 'DLPResult"
  "2086b723c652ff11338f4b79fe989ce4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DLPResult>)))
  "Returns full string definition for message of type '<DLPResult>"
  (cl:format cl:nil "std_msgs/Header header~%e2e_planning_msgs/DLPResultMeta meta~%e2e_planning_msgs/DLPCruiseData dlp_cruise_data~%e2e_planning_msgs/DLPLaneChangeData dlp_lane_change_data~%string reserved_info~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: e2e_planning_msgs/DLPResultMeta~%uint64 timestamp_us~%~%================================================================================~%MSG: e2e_planning_msgs/DLPCruiseData~%e2e_planning_msgs/DLPTrajectory[] dlp_cruise_trajectories~%e2e_planning_msgs/DLPTrajectories dlp_agent_prediction_trajectories~%string reserved_info~%~%================================================================================~%MSG: e2e_planning_msgs/DLPTrajectory~%e2e_planning_msgs/DLPTrajectoryPoint[] points~%e2e_planning_msgs/DLPTrajectoryTypeEnum type~%uint8 anchor_type~%uint64 anchor_id~%perception_interface_msgs/Point3d goal_point~%uint8 multi_modality_id~%uint64 object_id~%uint64 timestamp_us~%float64 score~%string reserved_info~%~%================================================================================~%MSG: e2e_planning_msgs/DLPTrajectoryPoint~%perception_interface_msgs/Point3d position~%perception_interface_msgs/Vector3d velocity~%perception_interface_msgs/Vector3d acceleration~%perception_interface_msgs/Vector3d jerk~%float64 heading_angle~%float64 score~%uint64 timestamp_us~%bool valid~%~%================================================================================~%MSG: perception_interface_msgs/Point3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: perception_interface_msgs/Vector3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: e2e_planning_msgs/DLPTrajectoryTypeEnum~%uint8 DLP_TRAJECTORY_CRUISE = 0~%uint8 DLP_TRAJECTORY_LANE_CHANGE = 1~%uint8 DLP_TRAJECTORY_REF_PATH = 2~%uint8 DLP_TRAJECTORY_PREDICTION = 3~%uint8 value~%~%================================================================================~%MSG: e2e_planning_msgs/DLPTrajectories~%e2e_planning_msgs/DLPTrajectory[] dlp_trajectories~%~%================================================================================~%MSG: e2e_planning_msgs/DLPLaneChangeData~%e2e_planning_msgs/DLPLaneInfo[] multi_source_dlp_lane_infos~%e2e_planning_msgs/DLPLaneChangeDecision[] dlp_lane_change_decisions~%e2e_planning_msgs/DLPTrajectory[] dlp_trajectories~%e2e_planning_msgs/DLPTrajectories dlp_agent_prediction_trajectories~%string reserved_info~%~%================================================================================~%MSG: e2e_planning_msgs/DLPLaneInfo~%int32 request_type~%int32 lane_id~%float64 score~%string source~%~%================================================================================~%MSG: e2e_planning_msgs/DLPLaneChangeDecision~%int32 request_type~%int32 direction~%int32 target_lane_id~%float64 score~%string source~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DLPResult)))
  "Returns full string definition for message of type 'DLPResult"
  (cl:format cl:nil "std_msgs/Header header~%e2e_planning_msgs/DLPResultMeta meta~%e2e_planning_msgs/DLPCruiseData dlp_cruise_data~%e2e_planning_msgs/DLPLaneChangeData dlp_lane_change_data~%string reserved_info~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: e2e_planning_msgs/DLPResultMeta~%uint64 timestamp_us~%~%================================================================================~%MSG: e2e_planning_msgs/DLPCruiseData~%e2e_planning_msgs/DLPTrajectory[] dlp_cruise_trajectories~%e2e_planning_msgs/DLPTrajectories dlp_agent_prediction_trajectories~%string reserved_info~%~%================================================================================~%MSG: e2e_planning_msgs/DLPTrajectory~%e2e_planning_msgs/DLPTrajectoryPoint[] points~%e2e_planning_msgs/DLPTrajectoryTypeEnum type~%uint8 anchor_type~%uint64 anchor_id~%perception_interface_msgs/Point3d goal_point~%uint8 multi_modality_id~%uint64 object_id~%uint64 timestamp_us~%float64 score~%string reserved_info~%~%================================================================================~%MSG: e2e_planning_msgs/DLPTrajectoryPoint~%perception_interface_msgs/Point3d position~%perception_interface_msgs/Vector3d velocity~%perception_interface_msgs/Vector3d acceleration~%perception_interface_msgs/Vector3d jerk~%float64 heading_angle~%float64 score~%uint64 timestamp_us~%bool valid~%~%================================================================================~%MSG: perception_interface_msgs/Point3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: perception_interface_msgs/Vector3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: e2e_planning_msgs/DLPTrajectoryTypeEnum~%uint8 DLP_TRAJECTORY_CRUISE = 0~%uint8 DLP_TRAJECTORY_LANE_CHANGE = 1~%uint8 DLP_TRAJECTORY_REF_PATH = 2~%uint8 DLP_TRAJECTORY_PREDICTION = 3~%uint8 value~%~%================================================================================~%MSG: e2e_planning_msgs/DLPTrajectories~%e2e_planning_msgs/DLPTrajectory[] dlp_trajectories~%~%================================================================================~%MSG: e2e_planning_msgs/DLPLaneChangeData~%e2e_planning_msgs/DLPLaneInfo[] multi_source_dlp_lane_infos~%e2e_planning_msgs/DLPLaneChangeDecision[] dlp_lane_change_decisions~%e2e_planning_msgs/DLPTrajectory[] dlp_trajectories~%e2e_planning_msgs/DLPTrajectories dlp_agent_prediction_trajectories~%string reserved_info~%~%================================================================================~%MSG: e2e_planning_msgs/DLPLaneInfo~%int32 request_type~%int32 lane_id~%float64 score~%string source~%~%================================================================================~%MSG: e2e_planning_msgs/DLPLaneChangeDecision~%int32 request_type~%int32 direction~%int32 target_lane_id~%float64 score~%string source~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DLPResult>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dlp_cruise_data))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dlp_lane_change_data))
     4 (cl:length (cl:slot-value msg 'reserved_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DLPResult>))
  "Converts a ROS message object to a list"
  (cl:list 'DLPResult
    (cl:cons ':header (header msg))
    (cl:cons ':meta (meta msg))
    (cl:cons ':dlp_cruise_data (dlp_cruise_data msg))
    (cl:cons ':dlp_lane_change_data (dlp_lane_change_data msg))
    (cl:cons ':reserved_info (reserved_info msg))
))
