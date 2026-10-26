; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude StationaryObstacleCarInfo.msg.html

(cl:defclass <StationaryObstacleCarInfo> (roslisp-msg-protocol:ros-message)
  ((close_to_obstacle
    :reader close_to_obstacle
    :initarg :close_to_obstacle
    :type cl:boolean
    :initform cl:nil)
   (steering_wheel_rad_limit
    :reader steering_wheel_rad_limit
    :initarg :steering_wheel_rad_limit
    :type cl:float
    :initform 0.0))
)

(cl:defclass StationaryObstacleCarInfo (<StationaryObstacleCarInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StationaryObstacleCarInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StationaryObstacleCarInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<StationaryObstacleCarInfo> is deprecated: use planning_msgs-msg:StationaryObstacleCarInfo instead.")))

(cl:ensure-generic-function 'close_to_obstacle-val :lambda-list '(m))
(cl:defmethod close_to_obstacle-val ((m <StationaryObstacleCarInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:close_to_obstacle-val is deprecated.  Use planning_msgs-msg:close_to_obstacle instead.")
  (close_to_obstacle m))

(cl:ensure-generic-function 'steering_wheel_rad_limit-val :lambda-list '(m))
(cl:defmethod steering_wheel_rad_limit-val ((m <StationaryObstacleCarInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:steering_wheel_rad_limit-val is deprecated.  Use planning_msgs-msg:steering_wheel_rad_limit instead.")
  (steering_wheel_rad_limit m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StationaryObstacleCarInfo>) ostream)
  "Serializes a message object of type '<StationaryObstacleCarInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'close_to_obstacle) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'steering_wheel_rad_limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StationaryObstacleCarInfo>) istream)
  "Deserializes a message object of type '<StationaryObstacleCarInfo>"
    (cl:setf (cl:slot-value msg 'close_to_obstacle) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steering_wheel_rad_limit) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StationaryObstacleCarInfo>)))
  "Returns string type for a message object of type '<StationaryObstacleCarInfo>"
  "planning_msgs/StationaryObstacleCarInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StationaryObstacleCarInfo)))
  "Returns string type for a message object of type 'StationaryObstacleCarInfo"
  "planning_msgs/StationaryObstacleCarInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StationaryObstacleCarInfo>)))
  "Returns md5sum for a message object of type '<StationaryObstacleCarInfo>"
  "0165017c0b62d496f0fe338d65fcd41e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StationaryObstacleCarInfo)))
  "Returns md5sum for a message object of type 'StationaryObstacleCarInfo"
  "0165017c0b62d496f0fe338d65fcd41e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StationaryObstacleCarInfo>)))
  "Returns full string definition for message of type '<StationaryObstacleCarInfo>"
  (cl:format cl:nil "bool close_to_obstacle~%float64 steering_wheel_rad_limit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StationaryObstacleCarInfo)))
  "Returns full string definition for message of type 'StationaryObstacleCarInfo"
  (cl:format cl:nil "bool close_to_obstacle~%float64 steering_wheel_rad_limit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StationaryObstacleCarInfo>))
  (cl:+ 0
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StationaryObstacleCarInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'StationaryObstacleCarInfo
    (cl:cons ':close_to_obstacle (close_to_obstacle msg))
    (cl:cons ':steering_wheel_rad_limit (steering_wheel_rad_limit msg))
))
