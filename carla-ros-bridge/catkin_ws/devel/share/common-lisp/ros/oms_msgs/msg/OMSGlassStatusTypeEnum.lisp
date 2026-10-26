; Auto-generated. Do not edit!


(cl:in-package oms_msgs-msg)


;//! \htmlinclude OMSGlassStatusTypeEnum.msg.html

(cl:defclass <OMSGlassStatusTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass OMSGlassStatusTypeEnum (<OMSGlassStatusTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OMSGlassStatusTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OMSGlassStatusTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name oms_msgs-msg:<OMSGlassStatusTypeEnum> is deprecated: use oms_msgs-msg:OMSGlassStatusTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <OMSGlassStatusTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:value-val is deprecated.  Use oms_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<OMSGlassStatusTypeEnum>)))
    "Constants for message type '<OMSGlassStatusTypeEnum>"
  '((:OMS_GLASSES_UNKNOWN . 0)
    (:OMS_GLASSES_IR_BLOCK_ON . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'OMSGlassStatusTypeEnum)))
    "Constants for message type 'OMSGlassStatusTypeEnum"
  '((:OMS_GLASSES_UNKNOWN . 0)
    (:OMS_GLASSES_IR_BLOCK_ON . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OMSGlassStatusTypeEnum>) ostream)
  "Serializes a message object of type '<OMSGlassStatusTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OMSGlassStatusTypeEnum>) istream)
  "Deserializes a message object of type '<OMSGlassStatusTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OMSGlassStatusTypeEnum>)))
  "Returns string type for a message object of type '<OMSGlassStatusTypeEnum>"
  "oms_msgs/OMSGlassStatusTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OMSGlassStatusTypeEnum)))
  "Returns string type for a message object of type 'OMSGlassStatusTypeEnum"
  "oms_msgs/OMSGlassStatusTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OMSGlassStatusTypeEnum>)))
  "Returns md5sum for a message object of type '<OMSGlassStatusTypeEnum>"
  "283d1e45a9eda6ebf9367c15eed76cbb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OMSGlassStatusTypeEnum)))
  "Returns md5sum for a message object of type 'OMSGlassStatusTypeEnum"
  "283d1e45a9eda6ebf9367c15eed76cbb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OMSGlassStatusTypeEnum>)))
  "Returns full string definition for message of type '<OMSGlassStatusTypeEnum>"
  (cl:format cl:nil "uint8 OMS_GLASSES_UNKNOWN = 0~%uint8 OMS_GLASSES_IR_BLOCK_ON = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OMSGlassStatusTypeEnum)))
  "Returns full string definition for message of type 'OMSGlassStatusTypeEnum"
  (cl:format cl:nil "uint8 OMS_GLASSES_UNKNOWN = 0~%uint8 OMS_GLASSES_IR_BLOCK_ON = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OMSGlassStatusTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OMSGlassStatusTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'OMSGlassStatusTypeEnum
    (cl:cons ':value (value msg))
))
