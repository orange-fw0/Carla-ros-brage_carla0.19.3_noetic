; Auto-generated. Do not edit!


(cl:in-package e2e_planning_msgs-msg)


;//! \htmlinclude DLPTrajectoryTypeEnum.msg.html

(cl:defclass <DLPTrajectoryTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DLPTrajectoryTypeEnum (<DLPTrajectoryTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DLPTrajectoryTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DLPTrajectoryTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name e2e_planning_msgs-msg:<DLPTrajectoryTypeEnum> is deprecated: use e2e_planning_msgs-msg:DLPTrajectoryTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <DLPTrajectoryTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_planning_msgs-msg:value-val is deprecated.  Use e2e_planning_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DLPTrajectoryTypeEnum>)))
    "Constants for message type '<DLPTrajectoryTypeEnum>"
  '((:DLP_TRAJECTORY_CRUISE . 0)
    (:DLP_TRAJECTORY_LANE_CHANGE . 1)
    (:DLP_TRAJECTORY_REF_PATH . 2)
    (:DLP_TRAJECTORY_PREDICTION . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DLPTrajectoryTypeEnum)))
    "Constants for message type 'DLPTrajectoryTypeEnum"
  '((:DLP_TRAJECTORY_CRUISE . 0)
    (:DLP_TRAJECTORY_LANE_CHANGE . 1)
    (:DLP_TRAJECTORY_REF_PATH . 2)
    (:DLP_TRAJECTORY_PREDICTION . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DLPTrajectoryTypeEnum>) ostream)
  "Serializes a message object of type '<DLPTrajectoryTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DLPTrajectoryTypeEnum>) istream)
  "Deserializes a message object of type '<DLPTrajectoryTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DLPTrajectoryTypeEnum>)))
  "Returns string type for a message object of type '<DLPTrajectoryTypeEnum>"
  "e2e_planning_msgs/DLPTrajectoryTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DLPTrajectoryTypeEnum)))
  "Returns string type for a message object of type 'DLPTrajectoryTypeEnum"
  "e2e_planning_msgs/DLPTrajectoryTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DLPTrajectoryTypeEnum>)))
  "Returns md5sum for a message object of type '<DLPTrajectoryTypeEnum>"
  "8869cfbf892bc1143f4a1ef3b30964e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DLPTrajectoryTypeEnum)))
  "Returns md5sum for a message object of type 'DLPTrajectoryTypeEnum"
  "8869cfbf892bc1143f4a1ef3b30964e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DLPTrajectoryTypeEnum>)))
  "Returns full string definition for message of type '<DLPTrajectoryTypeEnum>"
  (cl:format cl:nil "uint8 DLP_TRAJECTORY_CRUISE = 0~%uint8 DLP_TRAJECTORY_LANE_CHANGE = 1~%uint8 DLP_TRAJECTORY_REF_PATH = 2~%uint8 DLP_TRAJECTORY_PREDICTION = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DLPTrajectoryTypeEnum)))
  "Returns full string definition for message of type 'DLPTrajectoryTypeEnum"
  (cl:format cl:nil "uint8 DLP_TRAJECTORY_CRUISE = 0~%uint8 DLP_TRAJECTORY_LANE_CHANGE = 1~%uint8 DLP_TRAJECTORY_REF_PATH = 2~%uint8 DLP_TRAJECTORY_PREDICTION = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DLPTrajectoryTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DLPTrajectoryTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'DLPTrajectoryTypeEnum
    (cl:cons ':value (value msg))
))
