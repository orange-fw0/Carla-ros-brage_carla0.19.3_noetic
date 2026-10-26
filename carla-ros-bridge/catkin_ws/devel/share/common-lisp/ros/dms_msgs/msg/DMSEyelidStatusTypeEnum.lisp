; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSEyelidStatusTypeEnum.msg.html

(cl:defclass <DMSEyelidStatusTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DMSEyelidStatusTypeEnum (<DMSEyelidStatusTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSEyelidStatusTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSEyelidStatusTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSEyelidStatusTypeEnum> is deprecated: use dms_msgs-msg:DMSEyelidStatusTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <DMSEyelidStatusTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:value-val is deprecated.  Use dms_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSEyelidStatusTypeEnum>)))
    "Constants for message type '<DMSEyelidStatusTypeEnum>"
  '((:DMS_EYELID_STATE_OPEN . 0)
    (:DMS_EYELID_STATE_CLOSED . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSEyelidStatusTypeEnum)))
    "Constants for message type 'DMSEyelidStatusTypeEnum"
  '((:DMS_EYELID_STATE_OPEN . 0)
    (:DMS_EYELID_STATE_CLOSED . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSEyelidStatusTypeEnum>) ostream)
  "Serializes a message object of type '<DMSEyelidStatusTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSEyelidStatusTypeEnum>) istream)
  "Deserializes a message object of type '<DMSEyelidStatusTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSEyelidStatusTypeEnum>)))
  "Returns string type for a message object of type '<DMSEyelidStatusTypeEnum>"
  "dms_msgs/DMSEyelidStatusTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSEyelidStatusTypeEnum)))
  "Returns string type for a message object of type 'DMSEyelidStatusTypeEnum"
  "dms_msgs/DMSEyelidStatusTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSEyelidStatusTypeEnum>)))
  "Returns md5sum for a message object of type '<DMSEyelidStatusTypeEnum>"
  "266faf450bce9abe13ab45b19fcd7783")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSEyelidStatusTypeEnum)))
  "Returns md5sum for a message object of type 'DMSEyelidStatusTypeEnum"
  "266faf450bce9abe13ab45b19fcd7783")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSEyelidStatusTypeEnum>)))
  "Returns full string definition for message of type '<DMSEyelidStatusTypeEnum>"
  (cl:format cl:nil "uint8 DMS_EYELID_STATE_OPEN = 0~%uint8 DMS_EYELID_STATE_CLOSED = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSEyelidStatusTypeEnum)))
  "Returns full string definition for message of type 'DMSEyelidStatusTypeEnum"
  (cl:format cl:nil "uint8 DMS_EYELID_STATE_OPEN = 0~%uint8 DMS_EYELID_STATE_CLOSED = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSEyelidStatusTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSEyelidStatusTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSEyelidStatusTypeEnum
    (cl:cons ':value (value msg))
))
