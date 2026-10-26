; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSFidCompareTypeEnum.msg.html

(cl:defclass <DMSFidCompareTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DMSFidCompareTypeEnum (<DMSFidCompareTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSFidCompareTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSFidCompareTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSFidCompareTypeEnum> is deprecated: use dms_msgs-msg:DMSFidCompareTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <DMSFidCompareTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:value-val is deprecated.  Use dms_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSFidCompareTypeEnum>)))
    "Constants for message type '<DMSFidCompareTypeEnum>"
  '((:DMS_FID_COMPARE_MISMATCH . 0)
    (:DMS_FID_COMPARE_MATCH . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSFidCompareTypeEnum)))
    "Constants for message type 'DMSFidCompareTypeEnum"
  '((:DMS_FID_COMPARE_MISMATCH . 0)
    (:DMS_FID_COMPARE_MATCH . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSFidCompareTypeEnum>) ostream)
  "Serializes a message object of type '<DMSFidCompareTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSFidCompareTypeEnum>) istream)
  "Deserializes a message object of type '<DMSFidCompareTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSFidCompareTypeEnum>)))
  "Returns string type for a message object of type '<DMSFidCompareTypeEnum>"
  "dms_msgs/DMSFidCompareTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSFidCompareTypeEnum)))
  "Returns string type for a message object of type 'DMSFidCompareTypeEnum"
  "dms_msgs/DMSFidCompareTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSFidCompareTypeEnum>)))
  "Returns md5sum for a message object of type '<DMSFidCompareTypeEnum>"
  "163593b0decb552f10a12592d380559f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSFidCompareTypeEnum)))
  "Returns md5sum for a message object of type 'DMSFidCompareTypeEnum"
  "163593b0decb552f10a12592d380559f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSFidCompareTypeEnum>)))
  "Returns full string definition for message of type '<DMSFidCompareTypeEnum>"
  (cl:format cl:nil "uint8 DMS_FID_COMPARE_MISMATCH = 0~%uint8 DMS_FID_COMPARE_MATCH = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSFidCompareTypeEnum)))
  "Returns full string definition for message of type 'DMSFidCompareTypeEnum"
  (cl:format cl:nil "uint8 DMS_FID_COMPARE_MISMATCH = 0~%uint8 DMS_FID_COMPARE_MATCH = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSFidCompareTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSFidCompareTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSFidCompareTypeEnum
    (cl:cons ':value (value msg))
))
