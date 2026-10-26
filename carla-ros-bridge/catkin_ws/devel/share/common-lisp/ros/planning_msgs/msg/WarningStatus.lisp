; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude WarningStatus.msg.html

(cl:defclass <WarningStatus> (roslisp-msg-protocol:ros-message)
  ((warning_status
    :reader warning_status
    :initarg :warning_status
    :type cl:integer
    :initform 0))
)

(cl:defclass WarningStatus (<WarningStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WarningStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WarningStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<WarningStatus> is deprecated: use planning_msgs-msg:WarningStatus instead.")))

(cl:ensure-generic-function 'warning_status-val :lambda-list '(m))
(cl:defmethod warning_status-val ((m <WarningStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:warning_status-val is deprecated.  Use planning_msgs-msg:warning_status instead.")
  (warning_status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WarningStatus>)))
    "Constants for message type '<WarningStatus>"
  '((:NARROW_ROAD . 1)
    (:OVERTAKE_CUTIN . 2)
    (:OVERTAKE_WISDOM_DODGE . 4)
    (:LANE_CHANGE_REMIND_LANE_END . 8)
    (:LANE_CHANGE_REMIND_CONSTRUCTION . 16)
    (:LANE_CHANGE_REMIND_ACCIDENT . 32)
    (:DECEL_WARNING . 64)
    (:PEDESTRIAN_WARNING . 128)
    (:LANE_CHANGE_START . 256)
    (:LANE_CHANGE_STOP . 512)
    (:FROINT_COLLISION . 1024)
    (:REAR_COLLISION . 2048)
    (:LANE_DEPARTURE . 4096)
    (:PARKING_LOT_UNAVALIABLE . 8192)
    (:AVOID_IN_LANE . 16384))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WarningStatus)))
    "Constants for message type 'WarningStatus"
  '((:NARROW_ROAD . 1)
    (:OVERTAKE_CUTIN . 2)
    (:OVERTAKE_WISDOM_DODGE . 4)
    (:LANE_CHANGE_REMIND_LANE_END . 8)
    (:LANE_CHANGE_REMIND_CONSTRUCTION . 16)
    (:LANE_CHANGE_REMIND_ACCIDENT . 32)
    (:DECEL_WARNING . 64)
    (:PEDESTRIAN_WARNING . 128)
    (:LANE_CHANGE_START . 256)
    (:LANE_CHANGE_STOP . 512)
    (:FROINT_COLLISION . 1024)
    (:REAR_COLLISION . 2048)
    (:LANE_DEPARTURE . 4096)
    (:PARKING_LOT_UNAVALIABLE . 8192)
    (:AVOID_IN_LANE . 16384))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WarningStatus>) ostream)
  "Serializes a message object of type '<WarningStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'warning_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'warning_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'warning_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'warning_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'warning_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'warning_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'warning_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'warning_status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WarningStatus>) istream)
  "Deserializes a message object of type '<WarningStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'warning_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'warning_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'warning_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'warning_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'warning_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'warning_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'warning_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'warning_status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WarningStatus>)))
  "Returns string type for a message object of type '<WarningStatus>"
  "planning_msgs/WarningStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WarningStatus)))
  "Returns string type for a message object of type 'WarningStatus"
  "planning_msgs/WarningStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WarningStatus>)))
  "Returns md5sum for a message object of type '<WarningStatus>"
  "d41f0a68994d54fc799ff00829b8e88d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WarningStatus)))
  "Returns md5sum for a message object of type 'WarningStatus"
  "d41f0a68994d54fc799ff00829b8e88d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WarningStatus>)))
  "Returns full string definition for message of type '<WarningStatus>"
  (cl:format cl:nil "uint64 NARROW_ROAD = 1~%uint64 OVERTAKE_CUTIN = 2~%uint64 OVERTAKE_WISDOM_DODGE = 4~%uint64 LANE_CHANGE_REMIND_LANE_END = 8~%uint64 LANE_CHANGE_REMIND_CONSTRUCTION = 16~%uint64 LANE_CHANGE_REMIND_ACCIDENT = 32~%uint64 DECEL_WARNING = 64~%uint64 PEDESTRIAN_WARNING = 128~%uint64 LANE_CHANGE_START = 256~%uint64 LANE_CHANGE_STOP = 512~%uint64 FROINT_COLLISION = 1024~%uint64 REAR_COLLISION = 2048~%uint64 LANE_DEPARTURE = 4096~%uint64 PARKING_LOT_UNAVALIABLE = 8192~%uint64 AVOID_IN_LANE = 16384~%uint64 warning_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WarningStatus)))
  "Returns full string definition for message of type 'WarningStatus"
  (cl:format cl:nil "uint64 NARROW_ROAD = 1~%uint64 OVERTAKE_CUTIN = 2~%uint64 OVERTAKE_WISDOM_DODGE = 4~%uint64 LANE_CHANGE_REMIND_LANE_END = 8~%uint64 LANE_CHANGE_REMIND_CONSTRUCTION = 16~%uint64 LANE_CHANGE_REMIND_ACCIDENT = 32~%uint64 DECEL_WARNING = 64~%uint64 PEDESTRIAN_WARNING = 128~%uint64 LANE_CHANGE_START = 256~%uint64 LANE_CHANGE_STOP = 512~%uint64 FROINT_COLLISION = 1024~%uint64 REAR_COLLISION = 2048~%uint64 LANE_DEPARTURE = 4096~%uint64 PARKING_LOT_UNAVALIABLE = 8192~%uint64 AVOID_IN_LANE = 16384~%uint64 warning_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WarningStatus>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WarningStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'WarningStatus
    (cl:cons ':warning_status (warning_status msg))
))
