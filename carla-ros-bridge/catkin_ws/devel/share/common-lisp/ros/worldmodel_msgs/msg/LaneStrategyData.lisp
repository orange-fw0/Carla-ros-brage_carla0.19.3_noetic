; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude LaneStrategyData.msg.html

(cl:defclass <LaneStrategyData> (roslisp-msg-protocol:ros-message)
  ((strategy_start_with_current_lane
    :reader strategy_start_with_current_lane
    :initarg :strategy_start_with_current_lane
    :type (cl:vector worldmodel_msgs-msg:LaneChangeState)
   :initform (cl:make-array 0 :element-type 'worldmodel_msgs-msg:LaneChangeState :initial-element (cl:make-instance 'worldmodel_msgs-msg:LaneChangeState)))
   (strategy_start_with_left_lane
    :reader strategy_start_with_left_lane
    :initarg :strategy_start_with_left_lane
    :type (cl:vector worldmodel_msgs-msg:LaneChangeState)
   :initform (cl:make-array 0 :element-type 'worldmodel_msgs-msg:LaneChangeState :initial-element (cl:make-instance 'worldmodel_msgs-msg:LaneChangeState)))
   (strategy_start_with_right_lane
    :reader strategy_start_with_right_lane
    :initarg :strategy_start_with_right_lane
    :type (cl:vector worldmodel_msgs-msg:LaneChangeState)
   :initform (cl:make-array 0 :element-type 'worldmodel_msgs-msg:LaneChangeState :initial-element (cl:make-instance 'worldmodel_msgs-msg:LaneChangeState)))
   (current_lane_change_available_interval
    :reader current_lane_change_available_interval
    :initarg :current_lane_change_available_interval
    :type (cl:vector worldmodel_msgs-msg:Interval)
   :initform (cl:make-array 0 :element-type 'worldmodel_msgs-msg:Interval :initial-element (cl:make-instance 'worldmodel_msgs-msg:Interval)))
   (left_lane_change_available_interval
    :reader left_lane_change_available_interval
    :initarg :left_lane_change_available_interval
    :type (cl:vector worldmodel_msgs-msg:Interval)
   :initform (cl:make-array 0 :element-type 'worldmodel_msgs-msg:Interval :initial-element (cl:make-instance 'worldmodel_msgs-msg:Interval)))
   (right_lane_change_available_interval
    :reader right_lane_change_available_interval
    :initarg :right_lane_change_available_interval
    :type (cl:vector worldmodel_msgs-msg:Interval)
   :initform (cl:make-array 0 :element-type 'worldmodel_msgs-msg:Interval :initial-element (cl:make-instance 'worldmodel_msgs-msg:Interval))))
)

(cl:defclass LaneStrategyData (<LaneStrategyData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneStrategyData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneStrategyData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<LaneStrategyData> is deprecated: use worldmodel_msgs-msg:LaneStrategyData instead.")))

(cl:ensure-generic-function 'strategy_start_with_current_lane-val :lambda-list '(m))
(cl:defmethod strategy_start_with_current_lane-val ((m <LaneStrategyData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:strategy_start_with_current_lane-val is deprecated.  Use worldmodel_msgs-msg:strategy_start_with_current_lane instead.")
  (strategy_start_with_current_lane m))

(cl:ensure-generic-function 'strategy_start_with_left_lane-val :lambda-list '(m))
(cl:defmethod strategy_start_with_left_lane-val ((m <LaneStrategyData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:strategy_start_with_left_lane-val is deprecated.  Use worldmodel_msgs-msg:strategy_start_with_left_lane instead.")
  (strategy_start_with_left_lane m))

(cl:ensure-generic-function 'strategy_start_with_right_lane-val :lambda-list '(m))
(cl:defmethod strategy_start_with_right_lane-val ((m <LaneStrategyData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:strategy_start_with_right_lane-val is deprecated.  Use worldmodel_msgs-msg:strategy_start_with_right_lane instead.")
  (strategy_start_with_right_lane m))

(cl:ensure-generic-function 'current_lane_change_available_interval-val :lambda-list '(m))
(cl:defmethod current_lane_change_available_interval-val ((m <LaneStrategyData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:current_lane_change_available_interval-val is deprecated.  Use worldmodel_msgs-msg:current_lane_change_available_interval instead.")
  (current_lane_change_available_interval m))

(cl:ensure-generic-function 'left_lane_change_available_interval-val :lambda-list '(m))
(cl:defmethod left_lane_change_available_interval-val ((m <LaneStrategyData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:left_lane_change_available_interval-val is deprecated.  Use worldmodel_msgs-msg:left_lane_change_available_interval instead.")
  (left_lane_change_available_interval m))

(cl:ensure-generic-function 'right_lane_change_available_interval-val :lambda-list '(m))
(cl:defmethod right_lane_change_available_interval-val ((m <LaneStrategyData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:right_lane_change_available_interval-val is deprecated.  Use worldmodel_msgs-msg:right_lane_change_available_interval instead.")
  (right_lane_change_available_interval m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneStrategyData>) ostream)
  "Serializes a message object of type '<LaneStrategyData>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'strategy_start_with_current_lane))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'strategy_start_with_current_lane))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'strategy_start_with_left_lane))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'strategy_start_with_left_lane))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'strategy_start_with_right_lane))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'strategy_start_with_right_lane))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'current_lane_change_available_interval))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'current_lane_change_available_interval))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'left_lane_change_available_interval))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'left_lane_change_available_interval))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'right_lane_change_available_interval))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'right_lane_change_available_interval))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneStrategyData>) istream)
  "Deserializes a message object of type '<LaneStrategyData>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'strategy_start_with_current_lane) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'strategy_start_with_current_lane)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'worldmodel_msgs-msg:LaneChangeState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'strategy_start_with_left_lane) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'strategy_start_with_left_lane)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'worldmodel_msgs-msg:LaneChangeState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'strategy_start_with_right_lane) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'strategy_start_with_right_lane)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'worldmodel_msgs-msg:LaneChangeState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'current_lane_change_available_interval) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'current_lane_change_available_interval)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'worldmodel_msgs-msg:Interval))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'left_lane_change_available_interval) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'left_lane_change_available_interval)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'worldmodel_msgs-msg:Interval))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'right_lane_change_available_interval) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'right_lane_change_available_interval)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'worldmodel_msgs-msg:Interval))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneStrategyData>)))
  "Returns string type for a message object of type '<LaneStrategyData>"
  "worldmodel_msgs/LaneStrategyData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneStrategyData)))
  "Returns string type for a message object of type 'LaneStrategyData"
  "worldmodel_msgs/LaneStrategyData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneStrategyData>)))
  "Returns md5sum for a message object of type '<LaneStrategyData>"
  "8c4049161b57995c7a9f1a3f35dc74a3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneStrategyData)))
  "Returns md5sum for a message object of type 'LaneStrategyData"
  "8c4049161b57995c7a9f1a3f35dc74a3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneStrategyData>)))
  "Returns full string definition for message of type '<LaneStrategyData>"
  (cl:format cl:nil "worldmodel_msgs/LaneChangeState[] strategy_start_with_current_lane~%worldmodel_msgs/LaneChangeState[] strategy_start_with_left_lane~%worldmodel_msgs/LaneChangeState[] strategy_start_with_right_lane~%worldmodel_msgs/Interval[] current_lane_change_available_interval~%worldmodel_msgs/Interval[] left_lane_change_available_interval~%worldmodel_msgs/Interval[] right_lane_change_available_interval~%~%================================================================================~%MSG: worldmodel_msgs/LaneChangeState~%uint8 FOLLOW = 0~%uint8 TURN_LEFT = 1~%uint8 TURN_RIGHT = 2~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/Interval~%float64 begin~%float64 end~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneStrategyData)))
  "Returns full string definition for message of type 'LaneStrategyData"
  (cl:format cl:nil "worldmodel_msgs/LaneChangeState[] strategy_start_with_current_lane~%worldmodel_msgs/LaneChangeState[] strategy_start_with_left_lane~%worldmodel_msgs/LaneChangeState[] strategy_start_with_right_lane~%worldmodel_msgs/Interval[] current_lane_change_available_interval~%worldmodel_msgs/Interval[] left_lane_change_available_interval~%worldmodel_msgs/Interval[] right_lane_change_available_interval~%~%================================================================================~%MSG: worldmodel_msgs/LaneChangeState~%uint8 FOLLOW = 0~%uint8 TURN_LEFT = 1~%uint8 TURN_RIGHT = 2~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/Interval~%float64 begin~%float64 end~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneStrategyData>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'strategy_start_with_current_lane) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'strategy_start_with_left_lane) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'strategy_start_with_right_lane) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'current_lane_change_available_interval) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'left_lane_change_available_interval) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'right_lane_change_available_interval) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneStrategyData>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneStrategyData
    (cl:cons ':strategy_start_with_current_lane (strategy_start_with_current_lane msg))
    (cl:cons ':strategy_start_with_left_lane (strategy_start_with_left_lane msg))
    (cl:cons ':strategy_start_with_right_lane (strategy_start_with_right_lane msg))
    (cl:cons ':current_lane_change_available_interval (current_lane_change_available_interval msg))
    (cl:cons ':left_lane_change_available_interval (left_lane_change_available_interval msg))
    (cl:cons ':right_lane_change_available_interval (right_lane_change_available_interval msg))
))
