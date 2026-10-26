; Auto-generated. Do not edit!


(cl:in-package oms_msgs-msg)


;//! \htmlinclude OMSCameraOcclusionTypeEnum.msg.html

(cl:defclass <OMSCameraOcclusionTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass OMSCameraOcclusionTypeEnum (<OMSCameraOcclusionTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OMSCameraOcclusionTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OMSCameraOcclusionTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name oms_msgs-msg:<OMSCameraOcclusionTypeEnum> is deprecated: use oms_msgs-msg:OMSCameraOcclusionTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <OMSCameraOcclusionTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:value-val is deprecated.  Use oms_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<OMSCameraOcclusionTypeEnum>)))
    "Constants for message type '<OMSCameraOcclusionTypeEnum>"
  '((:OMS_CAMERA_NO_BLOCK . 0)
    (:OMS_CAMERA_BLOCK . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'OMSCameraOcclusionTypeEnum)))
    "Constants for message type 'OMSCameraOcclusionTypeEnum"
  '((:OMS_CAMERA_NO_BLOCK . 0)
    (:OMS_CAMERA_BLOCK . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OMSCameraOcclusionTypeEnum>) ostream)
  "Serializes a message object of type '<OMSCameraOcclusionTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OMSCameraOcclusionTypeEnum>) istream)
  "Deserializes a message object of type '<OMSCameraOcclusionTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OMSCameraOcclusionTypeEnum>)))
  "Returns string type for a message object of type '<OMSCameraOcclusionTypeEnum>"
  "oms_msgs/OMSCameraOcclusionTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OMSCameraOcclusionTypeEnum)))
  "Returns string type for a message object of type 'OMSCameraOcclusionTypeEnum"
  "oms_msgs/OMSCameraOcclusionTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OMSCameraOcclusionTypeEnum>)))
  "Returns md5sum for a message object of type '<OMSCameraOcclusionTypeEnum>"
  "2f13c86e588737d39d13725ea759d5a0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OMSCameraOcclusionTypeEnum)))
  "Returns md5sum for a message object of type 'OMSCameraOcclusionTypeEnum"
  "2f13c86e588737d39d13725ea759d5a0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OMSCameraOcclusionTypeEnum>)))
  "Returns full string definition for message of type '<OMSCameraOcclusionTypeEnum>"
  (cl:format cl:nil "uint8 OMS_CAMERA_NO_BLOCK = 0~%uint8 OMS_CAMERA_BLOCK = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OMSCameraOcclusionTypeEnum)))
  "Returns full string definition for message of type 'OMSCameraOcclusionTypeEnum"
  (cl:format cl:nil "uint8 OMS_CAMERA_NO_BLOCK = 0~%uint8 OMS_CAMERA_BLOCK = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OMSCameraOcclusionTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OMSCameraOcclusionTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'OMSCameraOcclusionTypeEnum
    (cl:cons ':value (value msg))
))
