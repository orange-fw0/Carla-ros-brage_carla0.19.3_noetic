; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude L3DMSDistractionConfidenceTypeEnum.msg.html

(cl:defclass <L3DMSDistractionConfidenceTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass L3DMSDistractionConfidenceTypeEnum (<L3DMSDistractionConfidenceTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <L3DMSDistractionConfidenceTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'L3DMSDistractionConfidenceTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<L3DMSDistractionConfidenceTypeEnum> is deprecated: use dms_msgs-msg:L3DMSDistractionConfidenceTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <L3DMSDistractionConfidenceTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:value-val is deprecated.  Use dms_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<L3DMSDistractionConfidenceTypeEnum>)))
    "Constants for message type '<L3DMSDistractionConfidenceTypeEnum>"
  '((:NOT_AVAILABLE_CONFIDENCE . 0)
    (:DISTRACTION_CONFIDENCE_LEVEL_1 . 1)
    (:DISTRACTION_CONFIDENCE_LEVEL_2 . 2)
    (:DISTRACTION_CONFIDENCE_LEVEL_3 . 3)
    (:DISTRACTION_CONFIDENCE_LEVEL_4 . 4)
    (:DISTRACTION_CONFIDENCE_LEVEL_5 . 5)
    (:DISTRACTION_CONFIDENCE_LEVEL_6 . 6)
    (:DISTRACTION_CONFIDENCE_LEVEL_7 . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'L3DMSDistractionConfidenceTypeEnum)))
    "Constants for message type 'L3DMSDistractionConfidenceTypeEnum"
  '((:NOT_AVAILABLE_CONFIDENCE . 0)
    (:DISTRACTION_CONFIDENCE_LEVEL_1 . 1)
    (:DISTRACTION_CONFIDENCE_LEVEL_2 . 2)
    (:DISTRACTION_CONFIDENCE_LEVEL_3 . 3)
    (:DISTRACTION_CONFIDENCE_LEVEL_4 . 4)
    (:DISTRACTION_CONFIDENCE_LEVEL_5 . 5)
    (:DISTRACTION_CONFIDENCE_LEVEL_6 . 6)
    (:DISTRACTION_CONFIDENCE_LEVEL_7 . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <L3DMSDistractionConfidenceTypeEnum>) ostream)
  "Serializes a message object of type '<L3DMSDistractionConfidenceTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <L3DMSDistractionConfidenceTypeEnum>) istream)
  "Deserializes a message object of type '<L3DMSDistractionConfidenceTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<L3DMSDistractionConfidenceTypeEnum>)))
  "Returns string type for a message object of type '<L3DMSDistractionConfidenceTypeEnum>"
  "dms_msgs/L3DMSDistractionConfidenceTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'L3DMSDistractionConfidenceTypeEnum)))
  "Returns string type for a message object of type 'L3DMSDistractionConfidenceTypeEnum"
  "dms_msgs/L3DMSDistractionConfidenceTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<L3DMSDistractionConfidenceTypeEnum>)))
  "Returns md5sum for a message object of type '<L3DMSDistractionConfidenceTypeEnum>"
  "26a1aac810af23af74a0b0c0863f997e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'L3DMSDistractionConfidenceTypeEnum)))
  "Returns md5sum for a message object of type 'L3DMSDistractionConfidenceTypeEnum"
  "26a1aac810af23af74a0b0c0863f997e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<L3DMSDistractionConfidenceTypeEnum>)))
  "Returns full string definition for message of type '<L3DMSDistractionConfidenceTypeEnum>"
  (cl:format cl:nil "uint16 NOT_AVAILABLE_CONFIDENCE = 0~%uint16 DISTRACTION_CONFIDENCE_LEVEL_1 = 1~%uint16 DISTRACTION_CONFIDENCE_LEVEL_2 = 2~%uint16 DISTRACTION_CONFIDENCE_LEVEL_3 = 3~%uint16 DISTRACTION_CONFIDENCE_LEVEL_4 = 4~%uint16 DISTRACTION_CONFIDENCE_LEVEL_5 = 5~%uint16 DISTRACTION_CONFIDENCE_LEVEL_6 = 6~%uint16 DISTRACTION_CONFIDENCE_LEVEL_7 = 7~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'L3DMSDistractionConfidenceTypeEnum)))
  "Returns full string definition for message of type 'L3DMSDistractionConfidenceTypeEnum"
  (cl:format cl:nil "uint16 NOT_AVAILABLE_CONFIDENCE = 0~%uint16 DISTRACTION_CONFIDENCE_LEVEL_1 = 1~%uint16 DISTRACTION_CONFIDENCE_LEVEL_2 = 2~%uint16 DISTRACTION_CONFIDENCE_LEVEL_3 = 3~%uint16 DISTRACTION_CONFIDENCE_LEVEL_4 = 4~%uint16 DISTRACTION_CONFIDENCE_LEVEL_5 = 5~%uint16 DISTRACTION_CONFIDENCE_LEVEL_6 = 6~%uint16 DISTRACTION_CONFIDENCE_LEVEL_7 = 7~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <L3DMSDistractionConfidenceTypeEnum>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <L3DMSDistractionConfidenceTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'L3DMSDistractionConfidenceTypeEnum
    (cl:cons ':value (value msg))
))
