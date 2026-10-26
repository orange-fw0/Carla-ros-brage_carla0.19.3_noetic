; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude LidarRoadEdgeTypeEnum.msg.html

(cl:defclass <LidarRoadEdgeTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LidarRoadEdgeTypeEnum (<LidarRoadEdgeTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarRoadEdgeTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarRoadEdgeTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<LidarRoadEdgeTypeEnum> is deprecated: use perception_interface_msgs-msg:LidarRoadEdgeTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LidarRoadEdgeTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LidarRoadEdgeTypeEnum>)))
    "Constants for message type '<LidarRoadEdgeTypeEnum>"
  '((:LIDAR_ROADEDGE_TYPE_CONTINUOUS . 0)
    (:LIDAR_ROADEDGE_TYPE_DISCONTINUOUS . 1)
    (:LIDAR_ROADEDGE_TYPE_CONSTRUCTION . 2)
    (:LIDAR_ROADEDGE_TYPE_RESERVED . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LidarRoadEdgeTypeEnum)))
    "Constants for message type 'LidarRoadEdgeTypeEnum"
  '((:LIDAR_ROADEDGE_TYPE_CONTINUOUS . 0)
    (:LIDAR_ROADEDGE_TYPE_DISCONTINUOUS . 1)
    (:LIDAR_ROADEDGE_TYPE_CONSTRUCTION . 2)
    (:LIDAR_ROADEDGE_TYPE_RESERVED . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarRoadEdgeTypeEnum>) ostream)
  "Serializes a message object of type '<LidarRoadEdgeTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarRoadEdgeTypeEnum>) istream)
  "Deserializes a message object of type '<LidarRoadEdgeTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarRoadEdgeTypeEnum>)))
  "Returns string type for a message object of type '<LidarRoadEdgeTypeEnum>"
  "perception_interface_msgs/LidarRoadEdgeTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarRoadEdgeTypeEnum)))
  "Returns string type for a message object of type 'LidarRoadEdgeTypeEnum"
  "perception_interface_msgs/LidarRoadEdgeTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarRoadEdgeTypeEnum>)))
  "Returns md5sum for a message object of type '<LidarRoadEdgeTypeEnum>"
  "1e3777724113064ade802c8e2f0604ed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarRoadEdgeTypeEnum)))
  "Returns md5sum for a message object of type 'LidarRoadEdgeTypeEnum"
  "1e3777724113064ade802c8e2f0604ed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarRoadEdgeTypeEnum>)))
  "Returns full string definition for message of type '<LidarRoadEdgeTypeEnum>"
  (cl:format cl:nil "uint8 LIDAR_ROADEDGE_TYPE_CONTINUOUS = 0~%uint8 LIDAR_ROADEDGE_TYPE_DISCONTINUOUS = 1~%uint8 LIDAR_ROADEDGE_TYPE_CONSTRUCTION = 2~%uint8 LIDAR_ROADEDGE_TYPE_RESERVED = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarRoadEdgeTypeEnum)))
  "Returns full string definition for message of type 'LidarRoadEdgeTypeEnum"
  (cl:format cl:nil "uint8 LIDAR_ROADEDGE_TYPE_CONTINUOUS = 0~%uint8 LIDAR_ROADEDGE_TYPE_DISCONTINUOUS = 1~%uint8 LIDAR_ROADEDGE_TYPE_CONSTRUCTION = 2~%uint8 LIDAR_ROADEDGE_TYPE_RESERVED = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarRoadEdgeTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarRoadEdgeTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarRoadEdgeTypeEnum
    (cl:cons ':value (value msg))
))
