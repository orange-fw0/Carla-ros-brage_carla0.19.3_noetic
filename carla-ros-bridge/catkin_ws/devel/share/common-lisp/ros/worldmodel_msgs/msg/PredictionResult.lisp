; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude PredictionResult.msg.html

(cl:defclass <PredictionResult> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (meta
    :reader meta
    :initarg :meta
    :type worldmodel_msgs-msg:PredictionResultMeta
    :initform (cl:make-instance 'worldmodel_msgs-msg:PredictionResultMeta))
   (object_prediction_data
    :reader object_prediction_data
    :initarg :object_prediction_data
    :type (cl:vector worldmodel_msgs-msg:ObjectPredictionData)
   :initform (cl:make-array 0 :element-type 'worldmodel_msgs-msg:ObjectPredictionData :initial-element (cl:make-instance 'worldmodel_msgs-msg:ObjectPredictionData))))
)

(cl:defclass PredictionResult (<PredictionResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PredictionResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PredictionResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<PredictionResult> is deprecated: use worldmodel_msgs-msg:PredictionResult instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PredictionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:header-val is deprecated.  Use worldmodel_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'meta-val :lambda-list '(m))
(cl:defmethod meta-val ((m <PredictionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:meta-val is deprecated.  Use worldmodel_msgs-msg:meta instead.")
  (meta m))

(cl:ensure-generic-function 'object_prediction_data-val :lambda-list '(m))
(cl:defmethod object_prediction_data-val ((m <PredictionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:object_prediction_data-val is deprecated.  Use worldmodel_msgs-msg:object_prediction_data instead.")
  (object_prediction_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PredictionResult>) ostream)
  "Serializes a message object of type '<PredictionResult>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'object_prediction_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'object_prediction_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PredictionResult>) istream)
  "Deserializes a message object of type '<PredictionResult>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'object_prediction_data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'object_prediction_data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'worldmodel_msgs-msg:ObjectPredictionData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PredictionResult>)))
  "Returns string type for a message object of type '<PredictionResult>"
  "worldmodel_msgs/PredictionResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PredictionResult)))
  "Returns string type for a message object of type 'PredictionResult"
  "worldmodel_msgs/PredictionResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PredictionResult>)))
  "Returns md5sum for a message object of type '<PredictionResult>"
  "10924c289eea7b16586c77c49438ff19")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PredictionResult)))
  "Returns md5sum for a message object of type 'PredictionResult"
  "10924c289eea7b16586c77c49438ff19")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PredictionResult>)))
  "Returns full string definition for message of type '<PredictionResult>"
  (cl:format cl:nil "std_msgs/Header header~%worldmodel_msgs/PredictionResultMeta meta~%worldmodel_msgs/ObjectPredictionData[] object_prediction_data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: worldmodel_msgs/PredictionResultMeta~%uint64 sensor_timestamp_us~%uint64 pipeline_start_timestamp_us~%uint64 pipeline_finish_timestamp_us~%string frame_id~%~%================================================================================~%MSG: worldmodel_msgs/ObjectPredictionData~%uint64 object_id~%worldmodel_msgs/PredictionTrajectory[] trajectories~%string extra_json~%perception_interface_msgs/PerceptionObjectTypeEnum object_type~%~%================================================================================~%MSG: worldmodel_msgs/PredictionTrajectory~%float32 confidence~%float32 prediction_interval~%worldmodel_msgs/IntentionType intention~%worldmodel_msgs/LateralIntention[] lateral_intents~%worldmodel_msgs/LongitudinalIntention[] longtudinal_intents~%worldmodel_msgs/PredictionTrajectoryPoint[] trajectory_points~%string extra_json~%~%================================================================================~%MSG: worldmodel_msgs/IntentionType~%int32 INVALID = -1~%int32 FREE_MOVE = 0~%int32 KEEP_LANE = 1~%int32 LEFT_CHANGE_LANE_OUT = 2~%int32 LEFT_CHANGE_LANE_IN = 3~%int32 RIGHT_CHANGE_LANE_OUT = 4~%int32 RIGHT_CHANGE_LANE_IN = 5~%int32 GO_STRAIGHT = 11~%int32 TURN_LEFT = 12~%int32 TURN_RIGHT = 13~%int32 U_TURN = 14~%int32 value~%~%================================================================================~%MSG: worldmodel_msgs/LateralIntention~%uint16 INVALID = 0~%uint16 GO_STRAIGHT = 1~%uint16 TURN_LEFT = 2~%uint16 TURN_RIGHT = 3~%uint16 U_TURN = 4~%uint16 CHANGE_LANE_LEFT = 5~%uint16 CHANGE_LANE_RIGHT = 6~%float32 score~%uint16 value~%~%================================================================================~%MSG: worldmodel_msgs/LongitudinalIntention~%uint16 INVALID = 0~%uint16 ACCELERATE = 1~%uint16 DECELERATE = 2~%uint16 CRUISE = 3~%uint16 START_MOVE = 4~%uint16 STATIONARY = 5~%uint16 REVERSE = 6~%float32 score~%uint16 value~%~%================================================================================~%MSG: worldmodel_msgs/PredictionTrajectoryPoint~%perception_interface_msgs/Point2f position~%float32 yaw~%float32 theta~%float32 velocity~%float32 confidence~%worldmodel_msgs/Matrix2f covariance_xy~%~%================================================================================~%MSG: perception_interface_msgs/Point2f~%float32 x~%float32 y~%~%================================================================================~%MSG: worldmodel_msgs/Matrix2f~%float32 x00~%float32 x01~%float32 x10~%float32 x11~%~%================================================================================~%MSG: perception_interface_msgs/PerceptionObjectTypeEnum~%uint8 OBJECT_TYPE_UNKNOWN = 0~%uint8 OBJECT_TYPE_RAW = 1~%uint8 OBJECT_TYPE_NORMAL = 2~%uint8 OBJECT_TYPE_RADAR_ONLY = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PredictionResult)))
  "Returns full string definition for message of type 'PredictionResult"
  (cl:format cl:nil "std_msgs/Header header~%worldmodel_msgs/PredictionResultMeta meta~%worldmodel_msgs/ObjectPredictionData[] object_prediction_data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: worldmodel_msgs/PredictionResultMeta~%uint64 sensor_timestamp_us~%uint64 pipeline_start_timestamp_us~%uint64 pipeline_finish_timestamp_us~%string frame_id~%~%================================================================================~%MSG: worldmodel_msgs/ObjectPredictionData~%uint64 object_id~%worldmodel_msgs/PredictionTrajectory[] trajectories~%string extra_json~%perception_interface_msgs/PerceptionObjectTypeEnum object_type~%~%================================================================================~%MSG: worldmodel_msgs/PredictionTrajectory~%float32 confidence~%float32 prediction_interval~%worldmodel_msgs/IntentionType intention~%worldmodel_msgs/LateralIntention[] lateral_intents~%worldmodel_msgs/LongitudinalIntention[] longtudinal_intents~%worldmodel_msgs/PredictionTrajectoryPoint[] trajectory_points~%string extra_json~%~%================================================================================~%MSG: worldmodel_msgs/IntentionType~%int32 INVALID = -1~%int32 FREE_MOVE = 0~%int32 KEEP_LANE = 1~%int32 LEFT_CHANGE_LANE_OUT = 2~%int32 LEFT_CHANGE_LANE_IN = 3~%int32 RIGHT_CHANGE_LANE_OUT = 4~%int32 RIGHT_CHANGE_LANE_IN = 5~%int32 GO_STRAIGHT = 11~%int32 TURN_LEFT = 12~%int32 TURN_RIGHT = 13~%int32 U_TURN = 14~%int32 value~%~%================================================================================~%MSG: worldmodel_msgs/LateralIntention~%uint16 INVALID = 0~%uint16 GO_STRAIGHT = 1~%uint16 TURN_LEFT = 2~%uint16 TURN_RIGHT = 3~%uint16 U_TURN = 4~%uint16 CHANGE_LANE_LEFT = 5~%uint16 CHANGE_LANE_RIGHT = 6~%float32 score~%uint16 value~%~%================================================================================~%MSG: worldmodel_msgs/LongitudinalIntention~%uint16 INVALID = 0~%uint16 ACCELERATE = 1~%uint16 DECELERATE = 2~%uint16 CRUISE = 3~%uint16 START_MOVE = 4~%uint16 STATIONARY = 5~%uint16 REVERSE = 6~%float32 score~%uint16 value~%~%================================================================================~%MSG: worldmodel_msgs/PredictionTrajectoryPoint~%perception_interface_msgs/Point2f position~%float32 yaw~%float32 theta~%float32 velocity~%float32 confidence~%worldmodel_msgs/Matrix2f covariance_xy~%~%================================================================================~%MSG: perception_interface_msgs/Point2f~%float32 x~%float32 y~%~%================================================================================~%MSG: worldmodel_msgs/Matrix2f~%float32 x00~%float32 x01~%float32 x10~%float32 x11~%~%================================================================================~%MSG: perception_interface_msgs/PerceptionObjectTypeEnum~%uint8 OBJECT_TYPE_UNKNOWN = 0~%uint8 OBJECT_TYPE_RAW = 1~%uint8 OBJECT_TYPE_NORMAL = 2~%uint8 OBJECT_TYPE_RADAR_ONLY = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PredictionResult>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'object_prediction_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PredictionResult>))
  "Converts a ROS message object to a list"
  (cl:list 'PredictionResult
    (cl:cons ':header (header msg))
    (cl:cons ':meta (meta msg))
    (cl:cons ':object_prediction_data (object_prediction_data msg))
))
