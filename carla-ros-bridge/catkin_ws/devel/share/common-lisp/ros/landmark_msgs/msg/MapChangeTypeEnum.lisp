; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude MapChangeTypeEnum.msg.html

(cl:defclass <MapChangeTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MapChangeTypeEnum (<MapChangeTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapChangeTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapChangeTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<MapChangeTypeEnum> is deprecated: use landmark_msgs-msg:MapChangeTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <MapChangeTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MapChangeTypeEnum>)))
    "Constants for message type '<MapChangeTypeEnum>"
  '((:MAP_CHANGE_TYPE_UNKNOWN . 0)
    (:MAP_CHANGE_TYPE_NO_CHANGE . 1)
    (:MAP_CHANGE_TYPE_LANE_BOUNDARY_TYPE_CHANGE . 2)
    (:MAP_CHANGE_TYPE_LANDMARK_GEOMETRY_CHANGE . 3)
    (:MAP_CHANGE_TYPE_OTHER_CHANGES . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MapChangeTypeEnum)))
    "Constants for message type 'MapChangeTypeEnum"
  '((:MAP_CHANGE_TYPE_UNKNOWN . 0)
    (:MAP_CHANGE_TYPE_NO_CHANGE . 1)
    (:MAP_CHANGE_TYPE_LANE_BOUNDARY_TYPE_CHANGE . 2)
    (:MAP_CHANGE_TYPE_LANDMARK_GEOMETRY_CHANGE . 3)
    (:MAP_CHANGE_TYPE_OTHER_CHANGES . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapChangeTypeEnum>) ostream)
  "Serializes a message object of type '<MapChangeTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapChangeTypeEnum>) istream)
  "Deserializes a message object of type '<MapChangeTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapChangeTypeEnum>)))
  "Returns string type for a message object of type '<MapChangeTypeEnum>"
  "landmark_msgs/MapChangeTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapChangeTypeEnum)))
  "Returns string type for a message object of type 'MapChangeTypeEnum"
  "landmark_msgs/MapChangeTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapChangeTypeEnum>)))
  "Returns md5sum for a message object of type '<MapChangeTypeEnum>"
  "f78ff6afc08b26767f3b8efa366d3410")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapChangeTypeEnum)))
  "Returns md5sum for a message object of type 'MapChangeTypeEnum"
  "f78ff6afc08b26767f3b8efa366d3410")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapChangeTypeEnum>)))
  "Returns full string definition for message of type '<MapChangeTypeEnum>"
  (cl:format cl:nil "uint8 MAP_CHANGE_TYPE_UNKNOWN = 0~%uint8 MAP_CHANGE_TYPE_NO_CHANGE = 1~%uint8 MAP_CHANGE_TYPE_LANE_BOUNDARY_TYPE_CHANGE = 2~%uint8 MAP_CHANGE_TYPE_LANDMARK_GEOMETRY_CHANGE = 3~%uint8 MAP_CHANGE_TYPE_OTHER_CHANGES = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapChangeTypeEnum)))
  "Returns full string definition for message of type 'MapChangeTypeEnum"
  (cl:format cl:nil "uint8 MAP_CHANGE_TYPE_UNKNOWN = 0~%uint8 MAP_CHANGE_TYPE_NO_CHANGE = 1~%uint8 MAP_CHANGE_TYPE_LANE_BOUNDARY_TYPE_CHANGE = 2~%uint8 MAP_CHANGE_TYPE_LANDMARK_GEOMETRY_CHANGE = 3~%uint8 MAP_CHANGE_TYPE_OTHER_CHANGES = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapChangeTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapChangeTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'MapChangeTypeEnum
    (cl:cons ':value (value msg))
))
