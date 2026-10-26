; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude RoadTypeEnum.msg.html

(cl:defclass <RoadTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RoadTypeEnum (<RoadTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoadTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoadTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<RoadTypeEnum> is deprecated: use system_manager_msgs-msg:RoadTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RoadTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:value-val is deprecated.  Use system_manager_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RoadTypeEnum>)))
    "Constants for message type '<RoadTypeEnum>"
  '((:UNKNOWN . 0)
    (:LEVEL . 1)
    (:DOWNHILL . 2)
    (:UPHILL . 3)
    (:GROUND_PARKING . 4)
    (:PUBLIC_ROAD . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RoadTypeEnum)))
    "Constants for message type 'RoadTypeEnum"
  '((:UNKNOWN . 0)
    (:LEVEL . 1)
    (:DOWNHILL . 2)
    (:UPHILL . 3)
    (:GROUND_PARKING . 4)
    (:PUBLIC_ROAD . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoadTypeEnum>) ostream)
  "Serializes a message object of type '<RoadTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoadTypeEnum>) istream)
  "Deserializes a message object of type '<RoadTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoadTypeEnum>)))
  "Returns string type for a message object of type '<RoadTypeEnum>"
  "system_manager_msgs/RoadTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoadTypeEnum)))
  "Returns string type for a message object of type 'RoadTypeEnum"
  "system_manager_msgs/RoadTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoadTypeEnum>)))
  "Returns md5sum for a message object of type '<RoadTypeEnum>"
  "c0ce95b67aad696d2b352a4e91ec64aa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoadTypeEnum)))
  "Returns md5sum for a message object of type 'RoadTypeEnum"
  "c0ce95b67aad696d2b352a4e91ec64aa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoadTypeEnum>)))
  "Returns full string definition for message of type '<RoadTypeEnum>"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 LEVEL = 1~%uint8 DOWNHILL = 2~%uint8 UPHILL = 3~%uint8 GROUND_PARKING = 4~%uint8 PUBLIC_ROAD = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoadTypeEnum)))
  "Returns full string definition for message of type 'RoadTypeEnum"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 LEVEL = 1~%uint8 DOWNHILL = 2~%uint8 UPHILL = 3~%uint8 GROUND_PARKING = 4~%uint8 PUBLIC_ROAD = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoadTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoadTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'RoadTypeEnum
    (cl:cons ':value (value msg))
))
