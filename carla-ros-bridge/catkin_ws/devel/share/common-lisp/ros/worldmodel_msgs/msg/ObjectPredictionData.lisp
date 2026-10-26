; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude ObjectPredictionData.msg.html

(cl:defclass <ObjectPredictionData> (roslisp-msg-protocol:ros-message)
  ((object_id
    :reader object_id
    :initarg :object_id
    :type cl:integer
    :initform 0)
   (trajectories
    :reader trajectories
    :initarg :trajectories
    :type (cl:vector worldmodel_msgs-msg:PredictionTrajectory)
   :initform (cl:make-array 0 :element-type 'worldmodel_msgs-msg:PredictionTrajectory :initial-element (cl:make-instance 'worldmodel_msgs-msg:PredictionTrajectory)))
   (extra_json
    :reader extra_json
    :initarg :extra_json
    :type cl:string
    :initform "")
   (object_type
    :reader object_type
    :initarg :object_type
    :type perception_interface_msgs-msg:PerceptionObjectTypeEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:PerceptionObjectTypeEnum)))
)

(cl:defclass ObjectPredictionData (<ObjectPredictionData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectPredictionData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectPredictionData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<ObjectPredictionData> is deprecated: use worldmodel_msgs-msg:ObjectPredictionData instead.")))

(cl:ensure-generic-function 'object_id-val :lambda-list '(m))
(cl:defmethod object_id-val ((m <ObjectPredictionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:object_id-val is deprecated.  Use worldmodel_msgs-msg:object_id instead.")
  (object_id m))

(cl:ensure-generic-function 'trajectories-val :lambda-list '(m))
(cl:defmethod trajectories-val ((m <ObjectPredictionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:trajectories-val is deprecated.  Use worldmodel_msgs-msg:trajectories instead.")
  (trajectories m))

(cl:ensure-generic-function 'extra_json-val :lambda-list '(m))
(cl:defmethod extra_json-val ((m <ObjectPredictionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:extra_json-val is deprecated.  Use worldmodel_msgs-msg:extra_json instead.")
  (extra_json m))

(cl:ensure-generic-function 'object_type-val :lambda-list '(m))
(cl:defmethod object_type-val ((m <ObjectPredictionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:object_type-val is deprecated.  Use worldmodel_msgs-msg:object_type instead.")
  (object_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectPredictionData>) ostream)
  "Serializes a message object of type '<ObjectPredictionData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'object_id)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'trajectories))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'trajectories))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'extra_json))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'extra_json))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'object_type) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectPredictionData>) istream)
  "Deserializes a message object of type '<ObjectPredictionData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'trajectories) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'trajectories)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'worldmodel_msgs-msg:PredictionTrajectory))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'extra_json) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'extra_json) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'object_type) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectPredictionData>)))
  "Returns string type for a message object of type '<ObjectPredictionData>"
  "worldmodel_msgs/ObjectPredictionData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectPredictionData)))
  "Returns string type for a message object of type 'ObjectPredictionData"
  "worldmodel_msgs/ObjectPredictionData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectPredictionData>)))
  "Returns md5sum for a message object of type '<ObjectPredictionData>"
  "7c41ada686ede37812e69452eff1174f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectPredictionData)))
  "Returns md5sum for a message object of type 'ObjectPredictionData"
  "7c41ada686ede37812e69452eff1174f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectPredictionData>)))
  "Returns full string definition for message of type '<ObjectPredictionData>"
  (cl:format cl:nil "uint64 object_id~%worldmodel_msgs/PredictionTrajectory[] trajectories~%string extra_json~%perception_interface_msgs/PerceptionObjectTypeEnum object_type~%~%================================================================================~%MSG: worldmodel_msgs/PredictionTrajectory~%float32 confidence~%float32 prediction_interval~%worldmodel_msgs/IntentionType intention~%worldmodel_msgs/LateralIntention[] lateral_intents~%worldmodel_msgs/LongitudinalIntention[] longtudinal_intents~%worldmodel_msgs/PredictionTrajectoryPoint[] trajectory_points~%string extra_json~%~%================================================================================~%MSG: worldmodel_msgs/IntentionType~%int32 INVALID = -1~%int32 FREE_MOVE = 0~%int32 KEEP_LANE = 1~%int32 LEFT_CHANGE_LANE_OUT = 2~%int32 LEFT_CHANGE_LANE_IN = 3~%int32 RIGHT_CHANGE_LANE_OUT = 4~%int32 RIGHT_CHANGE_LANE_IN = 5~%int32 GO_STRAIGHT = 11~%int32 TURN_LEFT = 12~%int32 TURN_RIGHT = 13~%int32 U_TURN = 14~%int32 value~%~%================================================================================~%MSG: worldmodel_msgs/LateralIntention~%uint16 INVALID = 0~%uint16 GO_STRAIGHT = 1~%uint16 TURN_LEFT = 2~%uint16 TURN_RIGHT = 3~%uint16 U_TURN = 4~%uint16 CHANGE_LANE_LEFT = 5~%uint16 CHANGE_LANE_RIGHT = 6~%float32 score~%uint16 value~%~%================================================================================~%MSG: worldmodel_msgs/LongitudinalIntention~%uint16 INVALID = 0~%uint16 ACCELERATE = 1~%uint16 DECELERATE = 2~%uint16 CRUISE = 3~%uint16 START_MOVE = 4~%uint16 STATIONARY = 5~%uint16 REVERSE = 6~%float32 score~%uint16 value~%~%================================================================================~%MSG: worldmodel_msgs/PredictionTrajectoryPoint~%perception_interface_msgs/Point2f position~%float32 yaw~%float32 theta~%float32 velocity~%float32 confidence~%worldmodel_msgs/Matrix2f covariance_xy~%~%================================================================================~%MSG: perception_interface_msgs/Point2f~%float32 x~%float32 y~%~%================================================================================~%MSG: worldmodel_msgs/Matrix2f~%float32 x00~%float32 x01~%float32 x10~%float32 x11~%~%================================================================================~%MSG: perception_interface_msgs/PerceptionObjectTypeEnum~%uint8 OBJECT_TYPE_UNKNOWN = 0~%uint8 OBJECT_TYPE_RAW = 1~%uint8 OBJECT_TYPE_NORMAL = 2~%uint8 OBJECT_TYPE_RADAR_ONLY = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectPredictionData)))
  "Returns full string definition for message of type 'ObjectPredictionData"
  (cl:format cl:nil "uint64 object_id~%worldmodel_msgs/PredictionTrajectory[] trajectories~%string extra_json~%perception_interface_msgs/PerceptionObjectTypeEnum object_type~%~%================================================================================~%MSG: worldmodel_msgs/PredictionTrajectory~%float32 confidence~%float32 prediction_interval~%worldmodel_msgs/IntentionType intention~%worldmodel_msgs/LateralIntention[] lateral_intents~%worldmodel_msgs/LongitudinalIntention[] longtudinal_intents~%worldmodel_msgs/PredictionTrajectoryPoint[] trajectory_points~%string extra_json~%~%================================================================================~%MSG: worldmodel_msgs/IntentionType~%int32 INVALID = -1~%int32 FREE_MOVE = 0~%int32 KEEP_LANE = 1~%int32 LEFT_CHANGE_LANE_OUT = 2~%int32 LEFT_CHANGE_LANE_IN = 3~%int32 RIGHT_CHANGE_LANE_OUT = 4~%int32 RIGHT_CHANGE_LANE_IN = 5~%int32 GO_STRAIGHT = 11~%int32 TURN_LEFT = 12~%int32 TURN_RIGHT = 13~%int32 U_TURN = 14~%int32 value~%~%================================================================================~%MSG: worldmodel_msgs/LateralIntention~%uint16 INVALID = 0~%uint16 GO_STRAIGHT = 1~%uint16 TURN_LEFT = 2~%uint16 TURN_RIGHT = 3~%uint16 U_TURN = 4~%uint16 CHANGE_LANE_LEFT = 5~%uint16 CHANGE_LANE_RIGHT = 6~%float32 score~%uint16 value~%~%================================================================================~%MSG: worldmodel_msgs/LongitudinalIntention~%uint16 INVALID = 0~%uint16 ACCELERATE = 1~%uint16 DECELERATE = 2~%uint16 CRUISE = 3~%uint16 START_MOVE = 4~%uint16 STATIONARY = 5~%uint16 REVERSE = 6~%float32 score~%uint16 value~%~%================================================================================~%MSG: worldmodel_msgs/PredictionTrajectoryPoint~%perception_interface_msgs/Point2f position~%float32 yaw~%float32 theta~%float32 velocity~%float32 confidence~%worldmodel_msgs/Matrix2f covariance_xy~%~%================================================================================~%MSG: perception_interface_msgs/Point2f~%float32 x~%float32 y~%~%================================================================================~%MSG: worldmodel_msgs/Matrix2f~%float32 x00~%float32 x01~%float32 x10~%float32 x11~%~%================================================================================~%MSG: perception_interface_msgs/PerceptionObjectTypeEnum~%uint8 OBJECT_TYPE_UNKNOWN = 0~%uint8 OBJECT_TYPE_RAW = 1~%uint8 OBJECT_TYPE_NORMAL = 2~%uint8 OBJECT_TYPE_RADAR_ONLY = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectPredictionData>))
  (cl:+ 0
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'trajectories) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'extra_json))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'object_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectPredictionData>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectPredictionData
    (cl:cons ':object_id (object_id msg))
    (cl:cons ':trajectories (trajectories msg))
    (cl:cons ':extra_json (extra_json msg))
    (cl:cons ':object_type (object_type msg))
))
