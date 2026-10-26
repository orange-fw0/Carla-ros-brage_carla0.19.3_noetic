; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSDistractionReasonTypeEnum.msg.html

(cl:defclass <DMSDistractionReasonTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DMSDistractionReasonTypeEnum (<DMSDistractionReasonTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSDistractionReasonTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSDistractionReasonTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSDistractionReasonTypeEnum> is deprecated: use dms_msgs-msg:DMSDistractionReasonTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <DMSDistractionReasonTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:value-val is deprecated.  Use dms_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSDistractionReasonTypeEnum>)))
    "Constants for message type '<DMSDistractionReasonTypeEnum>"
  '((:HEADPOSE_TRIGER_DISTRACTION . 1)
    (:GAZE_ROI_TRIGER_DISTRACTION . 2)
    (:HEAD_ROI_TRIGER_DISTRACTION . 4)
    (:RESERVED . 8)
    (:RESERVED1 . 16)
    (:RESERVED2 . 32))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSDistractionReasonTypeEnum)))
    "Constants for message type 'DMSDistractionReasonTypeEnum"
  '((:HEADPOSE_TRIGER_DISTRACTION . 1)
    (:GAZE_ROI_TRIGER_DISTRACTION . 2)
    (:HEAD_ROI_TRIGER_DISTRACTION . 4)
    (:RESERVED . 8)
    (:RESERVED1 . 16)
    (:RESERVED2 . 32))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSDistractionReasonTypeEnum>) ostream)
  "Serializes a message object of type '<DMSDistractionReasonTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSDistractionReasonTypeEnum>) istream)
  "Deserializes a message object of type '<DMSDistractionReasonTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSDistractionReasonTypeEnum>)))
  "Returns string type for a message object of type '<DMSDistractionReasonTypeEnum>"
  "dms_msgs/DMSDistractionReasonTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSDistractionReasonTypeEnum)))
  "Returns string type for a message object of type 'DMSDistractionReasonTypeEnum"
  "dms_msgs/DMSDistractionReasonTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSDistractionReasonTypeEnum>)))
  "Returns md5sum for a message object of type '<DMSDistractionReasonTypeEnum>"
  "cb8af4ef451f0b2d489859cdfb1873bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSDistractionReasonTypeEnum)))
  "Returns md5sum for a message object of type 'DMSDistractionReasonTypeEnum"
  "cb8af4ef451f0b2d489859cdfb1873bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSDistractionReasonTypeEnum>)))
  "Returns full string definition for message of type '<DMSDistractionReasonTypeEnum>"
  (cl:format cl:nil "uint16 HEADPOSE_TRIGER_DISTRACTION = 1~%uint16 GAZE_ROI_TRIGER_DISTRACTION = 2~%uint16 HEAD_ROI_TRIGER_DISTRACTION = 4~%uint16 RESERVED = 8~%uint16 RESERVED1 = 16~%uint16 RESERVED2 = 32~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSDistractionReasonTypeEnum)))
  "Returns full string definition for message of type 'DMSDistractionReasonTypeEnum"
  (cl:format cl:nil "uint16 HEADPOSE_TRIGER_DISTRACTION = 1~%uint16 GAZE_ROI_TRIGER_DISTRACTION = 2~%uint16 HEAD_ROI_TRIGER_DISTRACTION = 4~%uint16 RESERVED = 8~%uint16 RESERVED1 = 16~%uint16 RESERVED2 = 32~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSDistractionReasonTypeEnum>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSDistractionReasonTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSDistractionReasonTypeEnum
    (cl:cons ':value (value msg))
))
