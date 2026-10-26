; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude RoadDirectionTypeEnum.msg.html

(cl:defclass <RoadDirectionTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RoadDirectionTypeEnum (<RoadDirectionTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoadDirectionTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoadDirectionTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<RoadDirectionTypeEnum> is deprecated: use landmark_msgs-msg:RoadDirectionTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RoadDirectionTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RoadDirectionTypeEnum>)))
    "Constants for message type '<RoadDirectionTypeEnum>"
  '((:ROAD_DIRECTION_TYPE_UNKNOWN . 0)
    (:ROAD_DIRECTION_TYPE_NONE . 1)
    (:ROAD_DIRECTION_TYPE_A_B . 2)
    (:ROAD_DIRECTION_TYPE_B_A . 3)
    (:ROAD_DIRECTION_TYPE_BOTH . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RoadDirectionTypeEnum)))
    "Constants for message type 'RoadDirectionTypeEnum"
  '((:ROAD_DIRECTION_TYPE_UNKNOWN . 0)
    (:ROAD_DIRECTION_TYPE_NONE . 1)
    (:ROAD_DIRECTION_TYPE_A_B . 2)
    (:ROAD_DIRECTION_TYPE_B_A . 3)
    (:ROAD_DIRECTION_TYPE_BOTH . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoadDirectionTypeEnum>) ostream)
  "Serializes a message object of type '<RoadDirectionTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoadDirectionTypeEnum>) istream)
  "Deserializes a message object of type '<RoadDirectionTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoadDirectionTypeEnum>)))
  "Returns string type for a message object of type '<RoadDirectionTypeEnum>"
  "landmark_msgs/RoadDirectionTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoadDirectionTypeEnum)))
  "Returns string type for a message object of type 'RoadDirectionTypeEnum"
  "landmark_msgs/RoadDirectionTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoadDirectionTypeEnum>)))
  "Returns md5sum for a message object of type '<RoadDirectionTypeEnum>"
  "fdc5a550579f50c659fdb824ae82a68e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoadDirectionTypeEnum)))
  "Returns md5sum for a message object of type 'RoadDirectionTypeEnum"
  "fdc5a550579f50c659fdb824ae82a68e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoadDirectionTypeEnum>)))
  "Returns full string definition for message of type '<RoadDirectionTypeEnum>"
  (cl:format cl:nil "uint8 ROAD_DIRECTION_TYPE_UNKNOWN = 0~%uint8 ROAD_DIRECTION_TYPE_NONE = 1~%uint8 ROAD_DIRECTION_TYPE_A_B = 2~%uint8 ROAD_DIRECTION_TYPE_B_A = 3~%uint8 ROAD_DIRECTION_TYPE_BOTH = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoadDirectionTypeEnum)))
  "Returns full string definition for message of type 'RoadDirectionTypeEnum"
  (cl:format cl:nil "uint8 ROAD_DIRECTION_TYPE_UNKNOWN = 0~%uint8 ROAD_DIRECTION_TYPE_NONE = 1~%uint8 ROAD_DIRECTION_TYPE_A_B = 2~%uint8 ROAD_DIRECTION_TYPE_B_A = 3~%uint8 ROAD_DIRECTION_TYPE_BOTH = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoadDirectionTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoadDirectionTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'RoadDirectionTypeEnum
    (cl:cons ':value (value msg))
))
