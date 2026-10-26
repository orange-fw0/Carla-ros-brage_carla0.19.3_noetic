; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude Emergency.msg.html

(cl:defclass <Emergency> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (jerk_factor
    :reader jerk_factor
    :initarg :jerk_factor
    :type cl:float
    :initform 0.0)
   (stationary_obstacle_car_info
    :reader stationary_obstacle_car_info
    :initarg :stationary_obstacle_car_info
    :type planning_msgs-msg:StationaryObstacleCarInfo
    :initform (cl:make-instance 'planning_msgs-msg:StationaryObstacleCarInfo)))
)

(cl:defclass Emergency (<Emergency>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Emergency>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Emergency)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<Emergency> is deprecated: use planning_msgs-msg:Emergency instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <Emergency>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:available-val is deprecated.  Use planning_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'jerk_factor-val :lambda-list '(m))
(cl:defmethod jerk_factor-val ((m <Emergency>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:jerk_factor-val is deprecated.  Use planning_msgs-msg:jerk_factor instead.")
  (jerk_factor m))

(cl:ensure-generic-function 'stationary_obstacle_car_info-val :lambda-list '(m))
(cl:defmethod stationary_obstacle_car_info-val ((m <Emergency>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:stationary_obstacle_car_info-val is deprecated.  Use planning_msgs-msg:stationary_obstacle_car_info instead.")
  (stationary_obstacle_car_info m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Emergency>)))
    "Constants for message type '<Emergency>"
  '((:JERK_FACTOR . 1)
    (:STATIONARY_OBSTACLE_CAR_INFO . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Emergency)))
    "Constants for message type 'Emergency"
  '((:JERK_FACTOR . 1)
    (:STATIONARY_OBSTACLE_CAR_INFO . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Emergency>) ostream)
  "Serializes a message object of type '<Emergency>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'jerk_factor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'stationary_obstacle_car_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Emergency>) istream)
  "Deserializes a message object of type '<Emergency>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'jerk_factor) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'stationary_obstacle_car_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Emergency>)))
  "Returns string type for a message object of type '<Emergency>"
  "planning_msgs/Emergency")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Emergency)))
  "Returns string type for a message object of type 'Emergency"
  "planning_msgs/Emergency")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Emergency>)))
  "Returns md5sum for a message object of type '<Emergency>"
  "6f83ebd615dbb6d827fe50140fb96456")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Emergency)))
  "Returns md5sum for a message object of type 'Emergency"
  "6f83ebd615dbb6d827fe50140fb96456")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Emergency>)))
  "Returns full string definition for message of type '<Emergency>"
  (cl:format cl:nil "uint8 JERK_FACTOR = 1~%uint8 STATIONARY_OBSTACLE_CAR_INFO = 2~%uint8 available~%float64 jerk_factor~%planning_msgs/StationaryObstacleCarInfo stationary_obstacle_car_info~%~%================================================================================~%MSG: planning_msgs/StationaryObstacleCarInfo~%bool close_to_obstacle~%float64 steering_wheel_rad_limit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Emergency)))
  "Returns full string definition for message of type 'Emergency"
  (cl:format cl:nil "uint8 JERK_FACTOR = 1~%uint8 STATIONARY_OBSTACLE_CAR_INFO = 2~%uint8 available~%float64 jerk_factor~%planning_msgs/StationaryObstacleCarInfo stationary_obstacle_car_info~%~%================================================================================~%MSG: planning_msgs/StationaryObstacleCarInfo~%bool close_to_obstacle~%float64 steering_wheel_rad_limit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Emergency>))
  (cl:+ 0
     1
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'stationary_obstacle_car_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Emergency>))
  "Converts a ROS message object to a list"
  (cl:list 'Emergency
    (cl:cons ':available (available msg))
    (cl:cons ':jerk_factor (jerk_factor msg))
    (cl:cons ':stationary_obstacle_car_info (stationary_obstacle_car_info msg))
))
