; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude PredictionTrajectory.msg.html

(cl:defclass <PredictionTrajectory> (roslisp-msg-protocol:ros-message)
  ((confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0)
   (prediction_interval
    :reader prediction_interval
    :initarg :prediction_interval
    :type cl:float
    :initform 0.0)
   (intention
    :reader intention
    :initarg :intention
    :type worldmodel_msgs-msg:IntentionType
    :initform (cl:make-instance 'worldmodel_msgs-msg:IntentionType))
   (lateral_intents
    :reader lateral_intents
    :initarg :lateral_intents
    :type (cl:vector worldmodel_msgs-msg:LateralIntention)
   :initform (cl:make-array 0 :element-type 'worldmodel_msgs-msg:LateralIntention :initial-element (cl:make-instance 'worldmodel_msgs-msg:LateralIntention)))
   (longtudinal_intents
    :reader longtudinal_intents
    :initarg :longtudinal_intents
    :type (cl:vector worldmodel_msgs-msg:LongitudinalIntention)
   :initform (cl:make-array 0 :element-type 'worldmodel_msgs-msg:LongitudinalIntention :initial-element (cl:make-instance 'worldmodel_msgs-msg:LongitudinalIntention)))
   (trajectory_points
    :reader trajectory_points
    :initarg :trajectory_points
    :type (cl:vector worldmodel_msgs-msg:PredictionTrajectoryPoint)
   :initform (cl:make-array 0 :element-type 'worldmodel_msgs-msg:PredictionTrajectoryPoint :initial-element (cl:make-instance 'worldmodel_msgs-msg:PredictionTrajectoryPoint)))
   (extra_json
    :reader extra_json
    :initarg :extra_json
    :type cl:string
    :initform ""))
)

(cl:defclass PredictionTrajectory (<PredictionTrajectory>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PredictionTrajectory>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PredictionTrajectory)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<PredictionTrajectory> is deprecated: use worldmodel_msgs-msg:PredictionTrajectory instead.")))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <PredictionTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:confidence-val is deprecated.  Use worldmodel_msgs-msg:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'prediction_interval-val :lambda-list '(m))
(cl:defmethod prediction_interval-val ((m <PredictionTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:prediction_interval-val is deprecated.  Use worldmodel_msgs-msg:prediction_interval instead.")
  (prediction_interval m))

(cl:ensure-generic-function 'intention-val :lambda-list '(m))
(cl:defmethod intention-val ((m <PredictionTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:intention-val is deprecated.  Use worldmodel_msgs-msg:intention instead.")
  (intention m))

(cl:ensure-generic-function 'lateral_intents-val :lambda-list '(m))
(cl:defmethod lateral_intents-val ((m <PredictionTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:lateral_intents-val is deprecated.  Use worldmodel_msgs-msg:lateral_intents instead.")
  (lateral_intents m))

(cl:ensure-generic-function 'longtudinal_intents-val :lambda-list '(m))
(cl:defmethod longtudinal_intents-val ((m <PredictionTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:longtudinal_intents-val is deprecated.  Use worldmodel_msgs-msg:longtudinal_intents instead.")
  (longtudinal_intents m))

(cl:ensure-generic-function 'trajectory_points-val :lambda-list '(m))
(cl:defmethod trajectory_points-val ((m <PredictionTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:trajectory_points-val is deprecated.  Use worldmodel_msgs-msg:trajectory_points instead.")
  (trajectory_points m))

(cl:ensure-generic-function 'extra_json-val :lambda-list '(m))
(cl:defmethod extra_json-val ((m <PredictionTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:extra_json-val is deprecated.  Use worldmodel_msgs-msg:extra_json instead.")
  (extra_json m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PredictionTrajectory>) ostream)
  "Serializes a message object of type '<PredictionTrajectory>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'prediction_interval))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'intention) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lateral_intents))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lateral_intents))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'longtudinal_intents))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'longtudinal_intents))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'trajectory_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'trajectory_points))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'extra_json))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'extra_json))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PredictionTrajectory>) istream)
  "Deserializes a message object of type '<PredictionTrajectory>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'prediction_interval) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'intention) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lateral_intents) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lateral_intents)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'worldmodel_msgs-msg:LateralIntention))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'longtudinal_intents) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'longtudinal_intents)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'worldmodel_msgs-msg:LongitudinalIntention))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'trajectory_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'trajectory_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'worldmodel_msgs-msg:PredictionTrajectoryPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'extra_json) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'extra_json) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PredictionTrajectory>)))
  "Returns string type for a message object of type '<PredictionTrajectory>"
  "worldmodel_msgs/PredictionTrajectory")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PredictionTrajectory)))
  "Returns string type for a message object of type 'PredictionTrajectory"
  "worldmodel_msgs/PredictionTrajectory")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PredictionTrajectory>)))
  "Returns md5sum for a message object of type '<PredictionTrajectory>"
  "5517c8aaac675df4ed45f9cb7b330f08")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PredictionTrajectory)))
  "Returns md5sum for a message object of type 'PredictionTrajectory"
  "5517c8aaac675df4ed45f9cb7b330f08")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PredictionTrajectory>)))
  "Returns full string definition for message of type '<PredictionTrajectory>"
  (cl:format cl:nil "float32 confidence~%float32 prediction_interval~%worldmodel_msgs/IntentionType intention~%worldmodel_msgs/LateralIntention[] lateral_intents~%worldmodel_msgs/LongitudinalIntention[] longtudinal_intents~%worldmodel_msgs/PredictionTrajectoryPoint[] trajectory_points~%string extra_json~%~%================================================================================~%MSG: worldmodel_msgs/IntentionType~%int32 INVALID = -1~%int32 FREE_MOVE = 0~%int32 KEEP_LANE = 1~%int32 LEFT_CHANGE_LANE_OUT = 2~%int32 LEFT_CHANGE_LANE_IN = 3~%int32 RIGHT_CHANGE_LANE_OUT = 4~%int32 RIGHT_CHANGE_LANE_IN = 5~%int32 GO_STRAIGHT = 11~%int32 TURN_LEFT = 12~%int32 TURN_RIGHT = 13~%int32 U_TURN = 14~%int32 value~%~%================================================================================~%MSG: worldmodel_msgs/LateralIntention~%uint16 INVALID = 0~%uint16 GO_STRAIGHT = 1~%uint16 TURN_LEFT = 2~%uint16 TURN_RIGHT = 3~%uint16 U_TURN = 4~%uint16 CHANGE_LANE_LEFT = 5~%uint16 CHANGE_LANE_RIGHT = 6~%float32 score~%uint16 value~%~%================================================================================~%MSG: worldmodel_msgs/LongitudinalIntention~%uint16 INVALID = 0~%uint16 ACCELERATE = 1~%uint16 DECELERATE = 2~%uint16 CRUISE = 3~%uint16 START_MOVE = 4~%uint16 STATIONARY = 5~%uint16 REVERSE = 6~%float32 score~%uint16 value~%~%================================================================================~%MSG: worldmodel_msgs/PredictionTrajectoryPoint~%perception_interface_msgs/Point2f position~%float32 yaw~%float32 theta~%float32 velocity~%float32 confidence~%worldmodel_msgs/Matrix2f covariance_xy~%~%================================================================================~%MSG: perception_interface_msgs/Point2f~%float32 x~%float32 y~%~%================================================================================~%MSG: worldmodel_msgs/Matrix2f~%float32 x00~%float32 x01~%float32 x10~%float32 x11~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PredictionTrajectory)))
  "Returns full string definition for message of type 'PredictionTrajectory"
  (cl:format cl:nil "float32 confidence~%float32 prediction_interval~%worldmodel_msgs/IntentionType intention~%worldmodel_msgs/LateralIntention[] lateral_intents~%worldmodel_msgs/LongitudinalIntention[] longtudinal_intents~%worldmodel_msgs/PredictionTrajectoryPoint[] trajectory_points~%string extra_json~%~%================================================================================~%MSG: worldmodel_msgs/IntentionType~%int32 INVALID = -1~%int32 FREE_MOVE = 0~%int32 KEEP_LANE = 1~%int32 LEFT_CHANGE_LANE_OUT = 2~%int32 LEFT_CHANGE_LANE_IN = 3~%int32 RIGHT_CHANGE_LANE_OUT = 4~%int32 RIGHT_CHANGE_LANE_IN = 5~%int32 GO_STRAIGHT = 11~%int32 TURN_LEFT = 12~%int32 TURN_RIGHT = 13~%int32 U_TURN = 14~%int32 value~%~%================================================================================~%MSG: worldmodel_msgs/LateralIntention~%uint16 INVALID = 0~%uint16 GO_STRAIGHT = 1~%uint16 TURN_LEFT = 2~%uint16 TURN_RIGHT = 3~%uint16 U_TURN = 4~%uint16 CHANGE_LANE_LEFT = 5~%uint16 CHANGE_LANE_RIGHT = 6~%float32 score~%uint16 value~%~%================================================================================~%MSG: worldmodel_msgs/LongitudinalIntention~%uint16 INVALID = 0~%uint16 ACCELERATE = 1~%uint16 DECELERATE = 2~%uint16 CRUISE = 3~%uint16 START_MOVE = 4~%uint16 STATIONARY = 5~%uint16 REVERSE = 6~%float32 score~%uint16 value~%~%================================================================================~%MSG: worldmodel_msgs/PredictionTrajectoryPoint~%perception_interface_msgs/Point2f position~%float32 yaw~%float32 theta~%float32 velocity~%float32 confidence~%worldmodel_msgs/Matrix2f covariance_xy~%~%================================================================================~%MSG: perception_interface_msgs/Point2f~%float32 x~%float32 y~%~%================================================================================~%MSG: worldmodel_msgs/Matrix2f~%float32 x00~%float32 x01~%float32 x10~%float32 x11~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PredictionTrajectory>))
  (cl:+ 0
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'intention))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lateral_intents) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'longtudinal_intents) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'trajectory_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'extra_json))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PredictionTrajectory>))
  "Converts a ROS message object to a list"
  (cl:list 'PredictionTrajectory
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':prediction_interval (prediction_interval msg))
    (cl:cons ':intention (intention msg))
    (cl:cons ':lateral_intents (lateral_intents msg))
    (cl:cons ':longtudinal_intents (longtudinal_intents msg))
    (cl:cons ':trajectory_points (trajectory_points msg))
    (cl:cons ':extra_json (extra_json msg))
))
