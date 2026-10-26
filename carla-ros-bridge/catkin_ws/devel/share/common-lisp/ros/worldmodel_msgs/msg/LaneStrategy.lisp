; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude LaneStrategy.msg.html

(cl:defclass <LaneStrategy> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (lane_strategy_data
    :reader lane_strategy_data
    :initarg :lane_strategy_data
    :type worldmodel_msgs-msg:LaneStrategyData
    :initform (cl:make-instance 'worldmodel_msgs-msg:LaneStrategyData)))
)

(cl:defclass LaneStrategy (<LaneStrategy>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneStrategy>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneStrategy)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<LaneStrategy> is deprecated: use worldmodel_msgs-msg:LaneStrategy instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <LaneStrategy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:available-val is deprecated.  Use worldmodel_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'lane_strategy_data-val :lambda-list '(m))
(cl:defmethod lane_strategy_data-val ((m <LaneStrategy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:lane_strategy_data-val is deprecated.  Use worldmodel_msgs-msg:lane_strategy_data instead.")
  (lane_strategy_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LaneStrategy>)))
    "Constants for message type '<LaneStrategy>"
  '((:LANE_STRATEGY_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LaneStrategy)))
    "Constants for message type 'LaneStrategy"
  '((:LANE_STRATEGY_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneStrategy>) ostream)
  "Serializes a message object of type '<LaneStrategy>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lane_strategy_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneStrategy>) istream)
  "Deserializes a message object of type '<LaneStrategy>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lane_strategy_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneStrategy>)))
  "Returns string type for a message object of type '<LaneStrategy>"
  "worldmodel_msgs/LaneStrategy")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneStrategy)))
  "Returns string type for a message object of type 'LaneStrategy"
  "worldmodel_msgs/LaneStrategy")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneStrategy>)))
  "Returns md5sum for a message object of type '<LaneStrategy>"
  "b6b2b82a3f6242a39f4e3afb39f6a2c2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneStrategy)))
  "Returns md5sum for a message object of type 'LaneStrategy"
  "b6b2b82a3f6242a39f4e3afb39f6a2c2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneStrategy>)))
  "Returns full string definition for message of type '<LaneStrategy>"
  (cl:format cl:nil "uint8 LANE_STRATEGY_DATA = 1~%uint8 available~%worldmodel_msgs/LaneStrategyData lane_strategy_data~%~%================================================================================~%MSG: worldmodel_msgs/LaneStrategyData~%worldmodel_msgs/LaneChangeState[] strategy_start_with_current_lane~%worldmodel_msgs/LaneChangeState[] strategy_start_with_left_lane~%worldmodel_msgs/LaneChangeState[] strategy_start_with_right_lane~%worldmodel_msgs/Interval[] current_lane_change_available_interval~%worldmodel_msgs/Interval[] left_lane_change_available_interval~%worldmodel_msgs/Interval[] right_lane_change_available_interval~%~%================================================================================~%MSG: worldmodel_msgs/LaneChangeState~%uint8 FOLLOW = 0~%uint8 TURN_LEFT = 1~%uint8 TURN_RIGHT = 2~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/Interval~%float64 begin~%float64 end~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneStrategy)))
  "Returns full string definition for message of type 'LaneStrategy"
  (cl:format cl:nil "uint8 LANE_STRATEGY_DATA = 1~%uint8 available~%worldmodel_msgs/LaneStrategyData lane_strategy_data~%~%================================================================================~%MSG: worldmodel_msgs/LaneStrategyData~%worldmodel_msgs/LaneChangeState[] strategy_start_with_current_lane~%worldmodel_msgs/LaneChangeState[] strategy_start_with_left_lane~%worldmodel_msgs/LaneChangeState[] strategy_start_with_right_lane~%worldmodel_msgs/Interval[] current_lane_change_available_interval~%worldmodel_msgs/Interval[] left_lane_change_available_interval~%worldmodel_msgs/Interval[] right_lane_change_available_interval~%~%================================================================================~%MSG: worldmodel_msgs/LaneChangeState~%uint8 FOLLOW = 0~%uint8 TURN_LEFT = 1~%uint8 TURN_RIGHT = 2~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/Interval~%float64 begin~%float64 end~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneStrategy>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lane_strategy_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneStrategy>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneStrategy
    (cl:cons ':available (available msg))
    (cl:cons ':lane_strategy_data (lane_strategy_data msg))
))
