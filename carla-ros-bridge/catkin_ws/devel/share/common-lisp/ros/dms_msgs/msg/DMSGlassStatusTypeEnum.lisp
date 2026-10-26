; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSGlassStatusTypeEnum.msg.html

(cl:defclass <DMSGlassStatusTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DMSGlassStatusTypeEnum (<DMSGlassStatusTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSGlassStatusTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSGlassStatusTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSGlassStatusTypeEnum> is deprecated: use dms_msgs-msg:DMSGlassStatusTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <DMSGlassStatusTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:value-val is deprecated.  Use dms_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSGlassStatusTypeEnum>)))
    "Constants for message type '<DMSGlassStatusTypeEnum>"
  '((:DMS_GLASSES_IR_BLOCK_ON . 0)
    (:DMS_GLASSES_UNKNOWN . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSGlassStatusTypeEnum)))
    "Constants for message type 'DMSGlassStatusTypeEnum"
  '((:DMS_GLASSES_IR_BLOCK_ON . 0)
    (:DMS_GLASSES_UNKNOWN . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSGlassStatusTypeEnum>) ostream)
  "Serializes a message object of type '<DMSGlassStatusTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSGlassStatusTypeEnum>) istream)
  "Deserializes a message object of type '<DMSGlassStatusTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSGlassStatusTypeEnum>)))
  "Returns string type for a message object of type '<DMSGlassStatusTypeEnum>"
  "dms_msgs/DMSGlassStatusTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSGlassStatusTypeEnum)))
  "Returns string type for a message object of type 'DMSGlassStatusTypeEnum"
  "dms_msgs/DMSGlassStatusTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSGlassStatusTypeEnum>)))
  "Returns md5sum for a message object of type '<DMSGlassStatusTypeEnum>"
  "d5e5d934f27ac14be1282fc83d47addd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSGlassStatusTypeEnum)))
  "Returns md5sum for a message object of type 'DMSGlassStatusTypeEnum"
  "d5e5d934f27ac14be1282fc83d47addd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSGlassStatusTypeEnum>)))
  "Returns full string definition for message of type '<DMSGlassStatusTypeEnum>"
  (cl:format cl:nil "uint8 DMS_GLASSES_IR_BLOCK_ON = 0~%uint8 DMS_GLASSES_UNKNOWN = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSGlassStatusTypeEnum)))
  "Returns full string definition for message of type 'DMSGlassStatusTypeEnum"
  (cl:format cl:nil "uint8 DMS_GLASSES_IR_BLOCK_ON = 0~%uint8 DMS_GLASSES_UNKNOWN = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSGlassStatusTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSGlassStatusTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSGlassStatusTypeEnum
    (cl:cons ':value (value msg))
))
