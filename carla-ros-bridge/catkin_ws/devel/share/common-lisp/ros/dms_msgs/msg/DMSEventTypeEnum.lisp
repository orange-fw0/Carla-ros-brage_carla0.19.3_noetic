; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSEventTypeEnum.msg.html

(cl:defclass <DMSEventTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DMSEventTypeEnum (<DMSEventTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSEventTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSEventTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSEventTypeEnum> is deprecated: use dms_msgs-msg:DMSEventTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <DMSEventTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:value-val is deprecated.  Use dms_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSEventTypeEnum>)))
    "Constants for message type '<DMSEventTypeEnum>"
  '((:DMS_EVENT_UNKNOWN . 0)
    (:DMS_EVENT_FEATURE_EXTRACT_SUCCESS . 1)
    (:DMS_EVENT_FEATURE_EXTRACT_FAIL . 2)
    (:DMS_EVENT_WARNING_EYE_CLOSE . 100)
    (:DMS_EVENT_WARNING_YAWN . 101)
    (:DMS_EVENT_WARNING_DRINK . 102)
    (:DMS_EVENT_WARNING_PHONE_CALL . 103)
    (:DMS_EVENT_WARNING_SMOKE . 104)
    (:DMS_EVENT_WARNING_DROWSINESS . 105)
    (:DMS_EVENT_DISTRACTION . 106)
    (:DMS_EVENT_EXTRINSIC_CALIBRATION_SUCCESS . 107)
    (:DMS_EVENT_EXTRINSIC_CALIBRATION_FAIL . 108)
    (:DMS_EVENT_EXTRINSIC_CALIBRATION_STRICT_MODE1_SUCCESS . 109)
    (:DMS_EVENT_EXTRINSIC_CALIBRATION_STRICT_MODE2_SUCCESS . 110)
    (:DMS_EVENT_EXTRINSIC_CALIBRATION_LOOSE_MODE_SUCCESS . 111)
    (:DMS_EVENT_EXTRINSIC_CALIBRATION_BACKUP_MODE_SUCCESS . 112)
    (:DMS_EVENT_HEAD_SHAKE . 109)
    (:DMS_EVENT_HEAD_NOD . 110)
    (:DMS_EVENT_MUTE . 111)
    (:DMS_EVENT_RESERVED . 112)
    (:DMS_EVENT_RESERVED1 . 113)
    (:DMS_EVENT_RESERVED2 . 114)
    (:DMS_EVENT_RESERVED3 . 115)
    (:DMS_EVENT_RESERVED4 . 116))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSEventTypeEnum)))
    "Constants for message type 'DMSEventTypeEnum"
  '((:DMS_EVENT_UNKNOWN . 0)
    (:DMS_EVENT_FEATURE_EXTRACT_SUCCESS . 1)
    (:DMS_EVENT_FEATURE_EXTRACT_FAIL . 2)
    (:DMS_EVENT_WARNING_EYE_CLOSE . 100)
    (:DMS_EVENT_WARNING_YAWN . 101)
    (:DMS_EVENT_WARNING_DRINK . 102)
    (:DMS_EVENT_WARNING_PHONE_CALL . 103)
    (:DMS_EVENT_WARNING_SMOKE . 104)
    (:DMS_EVENT_WARNING_DROWSINESS . 105)
    (:DMS_EVENT_DISTRACTION . 106)
    (:DMS_EVENT_EXTRINSIC_CALIBRATION_SUCCESS . 107)
    (:DMS_EVENT_EXTRINSIC_CALIBRATION_FAIL . 108)
    (:DMS_EVENT_EXTRINSIC_CALIBRATION_STRICT_MODE1_SUCCESS . 109)
    (:DMS_EVENT_EXTRINSIC_CALIBRATION_STRICT_MODE2_SUCCESS . 110)
    (:DMS_EVENT_EXTRINSIC_CALIBRATION_LOOSE_MODE_SUCCESS . 111)
    (:DMS_EVENT_EXTRINSIC_CALIBRATION_BACKUP_MODE_SUCCESS . 112)
    (:DMS_EVENT_HEAD_SHAKE . 109)
    (:DMS_EVENT_HEAD_NOD . 110)
    (:DMS_EVENT_MUTE . 111)
    (:DMS_EVENT_RESERVED . 112)
    (:DMS_EVENT_RESERVED1 . 113)
    (:DMS_EVENT_RESERVED2 . 114)
    (:DMS_EVENT_RESERVED3 . 115)
    (:DMS_EVENT_RESERVED4 . 116))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSEventTypeEnum>) ostream)
  "Serializes a message object of type '<DMSEventTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSEventTypeEnum>) istream)
  "Deserializes a message object of type '<DMSEventTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSEventTypeEnum>)))
  "Returns string type for a message object of type '<DMSEventTypeEnum>"
  "dms_msgs/DMSEventTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSEventTypeEnum)))
  "Returns string type for a message object of type 'DMSEventTypeEnum"
  "dms_msgs/DMSEventTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSEventTypeEnum>)))
  "Returns md5sum for a message object of type '<DMSEventTypeEnum>"
  "5853275112e4617a2e255aef5f1e0d4f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSEventTypeEnum)))
  "Returns md5sum for a message object of type 'DMSEventTypeEnum"
  "5853275112e4617a2e255aef5f1e0d4f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSEventTypeEnum>)))
  "Returns full string definition for message of type '<DMSEventTypeEnum>"
  (cl:format cl:nil "uint8 DMS_EVENT_UNKNOWN = 0~%uint8 DMS_EVENT_FEATURE_EXTRACT_SUCCESS = 1~%uint8 DMS_EVENT_FEATURE_EXTRACT_FAIL = 2~%uint8 DMS_EVENT_WARNING_EYE_CLOSE = 100~%uint8 DMS_EVENT_WARNING_YAWN = 101~%uint8 DMS_EVENT_WARNING_DRINK = 102~%uint8 DMS_EVENT_WARNING_PHONE_CALL = 103~%uint8 DMS_EVENT_WARNING_SMOKE = 104~%uint8 DMS_EVENT_WARNING_DROWSINESS = 105~%uint8 DMS_EVENT_DISTRACTION = 106~%uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_SUCCESS = 107~%uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_FAIL = 108~%uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_STRICT_MODE1_SUCCESS = 109~%uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_STRICT_MODE2_SUCCESS = 110~%uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_LOOSE_MODE_SUCCESS = 111~%uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_BACKUP_MODE_SUCCESS = 112~%uint8 DMS_EVENT_HEAD_SHAKE = 109~%uint8 DMS_EVENT_HEAD_NOD = 110~%uint8 DMS_EVENT_MUTE = 111~%uint8 DMS_EVENT_RESERVED = 112~%uint8 DMS_EVENT_RESERVED1 = 113~%uint8 DMS_EVENT_RESERVED2 = 114~%uint8 DMS_EVENT_RESERVED3 = 115~%uint8 DMS_EVENT_RESERVED4 = 116~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSEventTypeEnum)))
  "Returns full string definition for message of type 'DMSEventTypeEnum"
  (cl:format cl:nil "uint8 DMS_EVENT_UNKNOWN = 0~%uint8 DMS_EVENT_FEATURE_EXTRACT_SUCCESS = 1~%uint8 DMS_EVENT_FEATURE_EXTRACT_FAIL = 2~%uint8 DMS_EVENT_WARNING_EYE_CLOSE = 100~%uint8 DMS_EVENT_WARNING_YAWN = 101~%uint8 DMS_EVENT_WARNING_DRINK = 102~%uint8 DMS_EVENT_WARNING_PHONE_CALL = 103~%uint8 DMS_EVENT_WARNING_SMOKE = 104~%uint8 DMS_EVENT_WARNING_DROWSINESS = 105~%uint8 DMS_EVENT_DISTRACTION = 106~%uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_SUCCESS = 107~%uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_FAIL = 108~%uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_STRICT_MODE1_SUCCESS = 109~%uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_STRICT_MODE2_SUCCESS = 110~%uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_LOOSE_MODE_SUCCESS = 111~%uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_BACKUP_MODE_SUCCESS = 112~%uint8 DMS_EVENT_HEAD_SHAKE = 109~%uint8 DMS_EVENT_HEAD_NOD = 110~%uint8 DMS_EVENT_MUTE = 111~%uint8 DMS_EVENT_RESERVED = 112~%uint8 DMS_EVENT_RESERVED1 = 113~%uint8 DMS_EVENT_RESERVED2 = 114~%uint8 DMS_EVENT_RESERVED3 = 115~%uint8 DMS_EVENT_RESERVED4 = 116~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSEventTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSEventTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSEventTypeEnum
    (cl:cons ':value (value msg))
))
