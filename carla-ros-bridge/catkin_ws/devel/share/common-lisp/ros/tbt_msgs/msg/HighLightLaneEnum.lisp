; Auto-generated. Do not edit!


(cl:in-package tbt_msgs-msg)


;//! \htmlinclude HighLightLaneEnum.msg.html

(cl:defclass <HighLightLaneEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass HighLightLaneEnum (<HighLightLaneEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HighLightLaneEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HighLightLaneEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tbt_msgs-msg:<HighLightLaneEnum> is deprecated: use tbt_msgs-msg:HighLightLaneEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <HighLightLaneEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:value-val is deprecated.  Use tbt_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<HighLightLaneEnum>)))
    "Constants for message type '<HighLightLaneEnum>"
  '((:DEFAULT . 0)
    (:HIGHLIGHT . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'HighLightLaneEnum)))
    "Constants for message type 'HighLightLaneEnum"
  '((:DEFAULT . 0)
    (:HIGHLIGHT . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HighLightLaneEnum>) ostream)
  "Serializes a message object of type '<HighLightLaneEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HighLightLaneEnum>) istream)
  "Deserializes a message object of type '<HighLightLaneEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HighLightLaneEnum>)))
  "Returns string type for a message object of type '<HighLightLaneEnum>"
  "tbt_msgs/HighLightLaneEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HighLightLaneEnum)))
  "Returns string type for a message object of type 'HighLightLaneEnum"
  "tbt_msgs/HighLightLaneEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HighLightLaneEnum>)))
  "Returns md5sum for a message object of type '<HighLightLaneEnum>"
  "a9703eadbf40a1c45737a6408eb750dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HighLightLaneEnum)))
  "Returns md5sum for a message object of type 'HighLightLaneEnum"
  "a9703eadbf40a1c45737a6408eb750dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HighLightLaneEnum>)))
  "Returns full string definition for message of type '<HighLightLaneEnum>"
  (cl:format cl:nil "uint8 Default = 0~%uint8 HighLight = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HighLightLaneEnum)))
  "Returns full string definition for message of type 'HighLightLaneEnum"
  (cl:format cl:nil "uint8 Default = 0~%uint8 HighLight = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HighLightLaneEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HighLightLaneEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'HighLightLaneEnum
    (cl:cons ':value (value msg))
))
