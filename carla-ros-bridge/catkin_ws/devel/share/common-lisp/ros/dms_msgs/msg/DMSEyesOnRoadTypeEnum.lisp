; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSEyesOnRoadTypeEnum.msg.html

(cl:defclass <DMSEyesOnRoadTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DMSEyesOnRoadTypeEnum (<DMSEyesOnRoadTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSEyesOnRoadTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSEyesOnRoadTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSEyesOnRoadTypeEnum> is deprecated: use dms_msgs-msg:DMSEyesOnRoadTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <DMSEyesOnRoadTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:value-val is deprecated.  Use dms_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSEyesOnRoadTypeEnum>)))
    "Constants for message type '<DMSEyesOnRoadTypeEnum>"
  '((:EYES_OFF_ROAD . 0)
    (:EYES_ON_ROAD . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSEyesOnRoadTypeEnum)))
    "Constants for message type 'DMSEyesOnRoadTypeEnum"
  '((:EYES_OFF_ROAD . 0)
    (:EYES_ON_ROAD . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSEyesOnRoadTypeEnum>) ostream)
  "Serializes a message object of type '<DMSEyesOnRoadTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSEyesOnRoadTypeEnum>) istream)
  "Deserializes a message object of type '<DMSEyesOnRoadTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSEyesOnRoadTypeEnum>)))
  "Returns string type for a message object of type '<DMSEyesOnRoadTypeEnum>"
  "dms_msgs/DMSEyesOnRoadTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSEyesOnRoadTypeEnum)))
  "Returns string type for a message object of type 'DMSEyesOnRoadTypeEnum"
  "dms_msgs/DMSEyesOnRoadTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSEyesOnRoadTypeEnum>)))
  "Returns md5sum for a message object of type '<DMSEyesOnRoadTypeEnum>"
  "b6140e69b34eb44af86daa1e3c1da2f6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSEyesOnRoadTypeEnum)))
  "Returns md5sum for a message object of type 'DMSEyesOnRoadTypeEnum"
  "b6140e69b34eb44af86daa1e3c1da2f6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSEyesOnRoadTypeEnum>)))
  "Returns full string definition for message of type '<DMSEyesOnRoadTypeEnum>"
  (cl:format cl:nil "uint8 EYES_OFF_ROAD = 0~%uint8 EYES_ON_ROAD = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSEyesOnRoadTypeEnum)))
  "Returns full string definition for message of type 'DMSEyesOnRoadTypeEnum"
  (cl:format cl:nil "uint8 EYES_OFF_ROAD = 0~%uint8 EYES_ON_ROAD = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSEyesOnRoadTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSEyesOnRoadTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSEyesOnRoadTypeEnum
    (cl:cons ':value (value msg))
))
