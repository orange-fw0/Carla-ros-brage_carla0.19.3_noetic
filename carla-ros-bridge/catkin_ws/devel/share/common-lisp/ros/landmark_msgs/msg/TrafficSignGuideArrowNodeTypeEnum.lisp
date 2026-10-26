; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude TrafficSignGuideArrowNodeTypeEnum.msg.html

(cl:defclass <TrafficSignGuideArrowNodeTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrafficSignGuideArrowNodeTypeEnum (<TrafficSignGuideArrowNodeTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficSignGuideArrowNodeTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficSignGuideArrowNodeTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<TrafficSignGuideArrowNodeTypeEnum> is deprecated: use landmark_msgs-msg:TrafficSignGuideArrowNodeTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TrafficSignGuideArrowNodeTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficSignGuideArrowNodeTypeEnum>)))
    "Constants for message type '<TrafficSignGuideArrowNodeTypeEnum>"
  '((:UNKNOWN . 0)
    (:DIRECTIONAL_ARROW_POINTING_UP . 1)
    (:DIRECTIONAL_ARROW_POINTING_BACK . 2)
    (:DIRECTIONAL_ARROW_POINTING_LEFT . 3)
    (:DIRECTIONAL_ARROW_POINTING_RIGHT . 4)
    (:DIRECTIONAL_ARROW_POINTING_UP_LEFT . 5)
    (:DIRECTIONAL_ARROW_POINTING_UP_RIGHT . 6))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficSignGuideArrowNodeTypeEnum)))
    "Constants for message type 'TrafficSignGuideArrowNodeTypeEnum"
  '((:UNKNOWN . 0)
    (:DIRECTIONAL_ARROW_POINTING_UP . 1)
    (:DIRECTIONAL_ARROW_POINTING_BACK . 2)
    (:DIRECTIONAL_ARROW_POINTING_LEFT . 3)
    (:DIRECTIONAL_ARROW_POINTING_RIGHT . 4)
    (:DIRECTIONAL_ARROW_POINTING_UP_LEFT . 5)
    (:DIRECTIONAL_ARROW_POINTING_UP_RIGHT . 6))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficSignGuideArrowNodeTypeEnum>) ostream)
  "Serializes a message object of type '<TrafficSignGuideArrowNodeTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficSignGuideArrowNodeTypeEnum>) istream)
  "Deserializes a message object of type '<TrafficSignGuideArrowNodeTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficSignGuideArrowNodeTypeEnum>)))
  "Returns string type for a message object of type '<TrafficSignGuideArrowNodeTypeEnum>"
  "landmark_msgs/TrafficSignGuideArrowNodeTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficSignGuideArrowNodeTypeEnum)))
  "Returns string type for a message object of type 'TrafficSignGuideArrowNodeTypeEnum"
  "landmark_msgs/TrafficSignGuideArrowNodeTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficSignGuideArrowNodeTypeEnum>)))
  "Returns md5sum for a message object of type '<TrafficSignGuideArrowNodeTypeEnum>"
  "33f0645f5603126209602a4469db6328")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficSignGuideArrowNodeTypeEnum)))
  "Returns md5sum for a message object of type 'TrafficSignGuideArrowNodeTypeEnum"
  "33f0645f5603126209602a4469db6328")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficSignGuideArrowNodeTypeEnum>)))
  "Returns full string definition for message of type '<TrafficSignGuideArrowNodeTypeEnum>"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 DIRECTIONAL_ARROW_POINTING_UP = 1~%uint8 DIRECTIONAL_ARROW_POINTING_BACK = 2~%uint8 DIRECTIONAL_ARROW_POINTING_LEFT = 3~%uint8 DIRECTIONAL_ARROW_POINTING_RIGHT = 4~%uint8 DIRECTIONAL_ARROW_POINTING_UP_LEFT = 5~%uint8 DIRECTIONAL_ARROW_POINTING_UP_RIGHT = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficSignGuideArrowNodeTypeEnum)))
  "Returns full string definition for message of type 'TrafficSignGuideArrowNodeTypeEnum"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 DIRECTIONAL_ARROW_POINTING_UP = 1~%uint8 DIRECTIONAL_ARROW_POINTING_BACK = 2~%uint8 DIRECTIONAL_ARROW_POINTING_LEFT = 3~%uint8 DIRECTIONAL_ARROW_POINTING_RIGHT = 4~%uint8 DIRECTIONAL_ARROW_POINTING_UP_LEFT = 5~%uint8 DIRECTIONAL_ARROW_POINTING_UP_RIGHT = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficSignGuideArrowNodeTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficSignGuideArrowNodeTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficSignGuideArrowNodeTypeEnum
    (cl:cons ':value (value msg))
))
