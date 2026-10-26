; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude RoadSurfaceTypeEnum.msg.html

(cl:defclass <RoadSurfaceTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RoadSurfaceTypeEnum (<RoadSurfaceTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoadSurfaceTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoadSurfaceTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<RoadSurfaceTypeEnum> is deprecated: use landmark_msgs-msg:RoadSurfaceTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RoadSurfaceTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RoadSurfaceTypeEnum>)))
    "Constants for message type '<RoadSurfaceTypeEnum>"
  '((:ROAD_SURFACE_TYPE_DRIVABLE . 0)
    (:ROAD_SURFACE_TYPE_NONDRIVABLE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RoadSurfaceTypeEnum)))
    "Constants for message type 'RoadSurfaceTypeEnum"
  '((:ROAD_SURFACE_TYPE_DRIVABLE . 0)
    (:ROAD_SURFACE_TYPE_NONDRIVABLE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoadSurfaceTypeEnum>) ostream)
  "Serializes a message object of type '<RoadSurfaceTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoadSurfaceTypeEnum>) istream)
  "Deserializes a message object of type '<RoadSurfaceTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoadSurfaceTypeEnum>)))
  "Returns string type for a message object of type '<RoadSurfaceTypeEnum>"
  "landmark_msgs/RoadSurfaceTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoadSurfaceTypeEnum)))
  "Returns string type for a message object of type 'RoadSurfaceTypeEnum"
  "landmark_msgs/RoadSurfaceTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoadSurfaceTypeEnum>)))
  "Returns md5sum for a message object of type '<RoadSurfaceTypeEnum>"
  "da5ee784d1b4960c45c0bf94bf15f834")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoadSurfaceTypeEnum)))
  "Returns md5sum for a message object of type 'RoadSurfaceTypeEnum"
  "da5ee784d1b4960c45c0bf94bf15f834")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoadSurfaceTypeEnum>)))
  "Returns full string definition for message of type '<RoadSurfaceTypeEnum>"
  (cl:format cl:nil "uint8 ROAD_SURFACE_TYPE_DRIVABLE = 0~%uint8 ROAD_SURFACE_TYPE_NONDRIVABLE = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoadSurfaceTypeEnum)))
  "Returns full string definition for message of type 'RoadSurfaceTypeEnum"
  (cl:format cl:nil "uint8 ROAD_SURFACE_TYPE_DRIVABLE = 0~%uint8 ROAD_SURFACE_TYPE_NONDRIVABLE = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoadSurfaceTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoadSurfaceTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'RoadSurfaceTypeEnum
    (cl:cons ':value (value msg))
))
