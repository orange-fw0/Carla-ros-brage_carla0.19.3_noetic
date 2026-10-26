; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude TrafficSignNodeDriveToEnum.msg.html

(cl:defclass <TrafficSignNodeDriveToEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrafficSignNodeDriveToEnum (<TrafficSignNodeDriveToEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficSignNodeDriveToEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficSignNodeDriveToEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<TrafficSignNodeDriveToEnum> is deprecated: use landmark_msgs-msg:TrafficSignNodeDriveToEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TrafficSignNodeDriveToEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficSignNodeDriveToEnum>)))
    "Constants for message type '<TrafficSignNodeDriveToEnum>"
  '((:TRAFFIC_SIGN_NODE_DRIVETO_LEFT . 0)
    (:TRAFFIC_SIGN_NODE_DRIVETO_RIGHT . 1)
    (:TRAFFIC_SIGN_NODE_DRIVETO_LEFT_RIGHT . 2)
    (:TRAFFIC_SIGN_NODE_DRIVETO_INVALID . 100)
    (:TRAFFIC_SIGN_NODE_DRIVETO_UNKNOWN . 101)
    (:TRAFFIC_SIGN_NODE_DRIVETO_OTHER . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficSignNodeDriveToEnum)))
    "Constants for message type 'TrafficSignNodeDriveToEnum"
  '((:TRAFFIC_SIGN_NODE_DRIVETO_LEFT . 0)
    (:TRAFFIC_SIGN_NODE_DRIVETO_RIGHT . 1)
    (:TRAFFIC_SIGN_NODE_DRIVETO_LEFT_RIGHT . 2)
    (:TRAFFIC_SIGN_NODE_DRIVETO_INVALID . 100)
    (:TRAFFIC_SIGN_NODE_DRIVETO_UNKNOWN . 101)
    (:TRAFFIC_SIGN_NODE_DRIVETO_OTHER . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficSignNodeDriveToEnum>) ostream)
  "Serializes a message object of type '<TrafficSignNodeDriveToEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficSignNodeDriveToEnum>) istream)
  "Deserializes a message object of type '<TrafficSignNodeDriveToEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficSignNodeDriveToEnum>)))
  "Returns string type for a message object of type '<TrafficSignNodeDriveToEnum>"
  "landmark_msgs/TrafficSignNodeDriveToEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficSignNodeDriveToEnum)))
  "Returns string type for a message object of type 'TrafficSignNodeDriveToEnum"
  "landmark_msgs/TrafficSignNodeDriveToEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficSignNodeDriveToEnum>)))
  "Returns md5sum for a message object of type '<TrafficSignNodeDriveToEnum>"
  "5f50c8a101b70293a2529d45e8ea2c7f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficSignNodeDriveToEnum)))
  "Returns md5sum for a message object of type 'TrafficSignNodeDriveToEnum"
  "5f50c8a101b70293a2529d45e8ea2c7f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficSignNodeDriveToEnum>)))
  "Returns full string definition for message of type '<TrafficSignNodeDriveToEnum>"
  (cl:format cl:nil "uint8 TRAFFIC_SIGN_NODE_DRIVETO_LEFT = 0~%uint8 TRAFFIC_SIGN_NODE_DRIVETO_RIGHT = 1~%uint8 TRAFFIC_SIGN_NODE_DRIVETO_LEFT_RIGHT = 2~%uint8 TRAFFIC_SIGN_NODE_DRIVETO_INVALID = 100~%uint8 TRAFFIC_SIGN_NODE_DRIVETO_UNKNOWN = 101~%uint8 TRAFFIC_SIGN_NODE_DRIVETO_OTHER = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficSignNodeDriveToEnum)))
  "Returns full string definition for message of type 'TrafficSignNodeDriveToEnum"
  (cl:format cl:nil "uint8 TRAFFIC_SIGN_NODE_DRIVETO_LEFT = 0~%uint8 TRAFFIC_SIGN_NODE_DRIVETO_RIGHT = 1~%uint8 TRAFFIC_SIGN_NODE_DRIVETO_LEFT_RIGHT = 2~%uint8 TRAFFIC_SIGN_NODE_DRIVETO_INVALID = 100~%uint8 TRAFFIC_SIGN_NODE_DRIVETO_UNKNOWN = 101~%uint8 TRAFFIC_SIGN_NODE_DRIVETO_OTHER = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficSignNodeDriveToEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficSignNodeDriveToEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficSignNodeDriveToEnum
    (cl:cons ':value (value msg))
))
