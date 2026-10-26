; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSSteeringWheelOcclusionTypeEnum.msg.html

(cl:defclass <DMSSteeringWheelOcclusionTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DMSSteeringWheelOcclusionTypeEnum (<DMSSteeringWheelOcclusionTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSSteeringWheelOcclusionTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSSteeringWheelOcclusionTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSSteeringWheelOcclusionTypeEnum> is deprecated: use dms_msgs-msg:DMSSteeringWheelOcclusionTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <DMSSteeringWheelOcclusionTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:value-val is deprecated.  Use dms_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSSteeringWheelOcclusionTypeEnum>)))
    "Constants for message type '<DMSSteeringWheelOcclusionTypeEnum>"
  '((:STEERING_WHEEL_BLOCK . 0)
    (:STEERING_WHEEL_NO_BLOCK . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSSteeringWheelOcclusionTypeEnum)))
    "Constants for message type 'DMSSteeringWheelOcclusionTypeEnum"
  '((:STEERING_WHEEL_BLOCK . 0)
    (:STEERING_WHEEL_NO_BLOCK . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSSteeringWheelOcclusionTypeEnum>) ostream)
  "Serializes a message object of type '<DMSSteeringWheelOcclusionTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSSteeringWheelOcclusionTypeEnum>) istream)
  "Deserializes a message object of type '<DMSSteeringWheelOcclusionTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSSteeringWheelOcclusionTypeEnum>)))
  "Returns string type for a message object of type '<DMSSteeringWheelOcclusionTypeEnum>"
  "dms_msgs/DMSSteeringWheelOcclusionTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSSteeringWheelOcclusionTypeEnum)))
  "Returns string type for a message object of type 'DMSSteeringWheelOcclusionTypeEnum"
  "dms_msgs/DMSSteeringWheelOcclusionTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSSteeringWheelOcclusionTypeEnum>)))
  "Returns md5sum for a message object of type '<DMSSteeringWheelOcclusionTypeEnum>"
  "fada77ece78739cd5129d6b4d8543d85")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSSteeringWheelOcclusionTypeEnum)))
  "Returns md5sum for a message object of type 'DMSSteeringWheelOcclusionTypeEnum"
  "fada77ece78739cd5129d6b4d8543d85")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSSteeringWheelOcclusionTypeEnum>)))
  "Returns full string definition for message of type '<DMSSteeringWheelOcclusionTypeEnum>"
  (cl:format cl:nil "uint8 STEERING_WHEEL_BLOCK = 0~%uint8 STEERING_WHEEL_NO_BLOCK = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSSteeringWheelOcclusionTypeEnum)))
  "Returns full string definition for message of type 'DMSSteeringWheelOcclusionTypeEnum"
  (cl:format cl:nil "uint8 STEERING_WHEEL_BLOCK = 0~%uint8 STEERING_WHEEL_NO_BLOCK = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSSteeringWheelOcclusionTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSSteeringWheelOcclusionTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSSteeringWheelOcclusionTypeEnum
    (cl:cons ':value (value msg))
))
