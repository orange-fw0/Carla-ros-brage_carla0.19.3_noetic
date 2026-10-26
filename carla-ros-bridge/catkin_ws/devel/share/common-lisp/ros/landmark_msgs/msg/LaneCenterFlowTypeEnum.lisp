; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude LaneCenterFlowTypeEnum.msg.html

(cl:defclass <LaneCenterFlowTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LaneCenterFlowTypeEnum (<LaneCenterFlowTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneCenterFlowTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneCenterFlowTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<LaneCenterFlowTypeEnum> is deprecated: use landmark_msgs-msg:LaneCenterFlowTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LaneCenterFlowTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LaneCenterFlowTypeEnum>)))
    "Constants for message type '<LaneCenterFlowTypeEnum>"
  '((:LANE_CENTER_FLOW_TYPE_UNKNOWN . 0)
    (:LANE_CENTER_FLOW_TYPE_SAME . 1)
    (:LANE_CENTER_FLOW_TYPE_REVERSE . 2)
    (:LANE_CENTER_FLOW_TYPE_BOTH . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LaneCenterFlowTypeEnum)))
    "Constants for message type 'LaneCenterFlowTypeEnum"
  '((:LANE_CENTER_FLOW_TYPE_UNKNOWN . 0)
    (:LANE_CENTER_FLOW_TYPE_SAME . 1)
    (:LANE_CENTER_FLOW_TYPE_REVERSE . 2)
    (:LANE_CENTER_FLOW_TYPE_BOTH . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneCenterFlowTypeEnum>) ostream)
  "Serializes a message object of type '<LaneCenterFlowTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneCenterFlowTypeEnum>) istream)
  "Deserializes a message object of type '<LaneCenterFlowTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneCenterFlowTypeEnum>)))
  "Returns string type for a message object of type '<LaneCenterFlowTypeEnum>"
  "landmark_msgs/LaneCenterFlowTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneCenterFlowTypeEnum)))
  "Returns string type for a message object of type 'LaneCenterFlowTypeEnum"
  "landmark_msgs/LaneCenterFlowTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneCenterFlowTypeEnum>)))
  "Returns md5sum for a message object of type '<LaneCenterFlowTypeEnum>"
  "b0f2b286f3f6b9eeb1cfd1c7e60de711")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneCenterFlowTypeEnum)))
  "Returns md5sum for a message object of type 'LaneCenterFlowTypeEnum"
  "b0f2b286f3f6b9eeb1cfd1c7e60de711")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneCenterFlowTypeEnum>)))
  "Returns full string definition for message of type '<LaneCenterFlowTypeEnum>"
  (cl:format cl:nil "uint8 LANE_CENTER_FLOW_TYPE_UNKNOWN = 0~%uint8 LANE_CENTER_FLOW_TYPE_SAME = 1~%uint8 LANE_CENTER_FLOW_TYPE_REVERSE = 2~%uint8 LANE_CENTER_FLOW_TYPE_BOTH = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneCenterFlowTypeEnum)))
  "Returns full string definition for message of type 'LaneCenterFlowTypeEnum"
  (cl:format cl:nil "uint8 LANE_CENTER_FLOW_TYPE_UNKNOWN = 0~%uint8 LANE_CENTER_FLOW_TYPE_SAME = 1~%uint8 LANE_CENTER_FLOW_TYPE_REVERSE = 2~%uint8 LANE_CENTER_FLOW_TYPE_BOTH = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneCenterFlowTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneCenterFlowTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneCenterFlowTypeEnum
    (cl:cons ':value (value msg))
))
