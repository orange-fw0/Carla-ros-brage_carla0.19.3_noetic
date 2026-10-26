; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude L2DMSDrowsinessConfidenceTypeEnum.msg.html

(cl:defclass <L2DMSDrowsinessConfidenceTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass L2DMSDrowsinessConfidenceTypeEnum (<L2DMSDrowsinessConfidenceTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <L2DMSDrowsinessConfidenceTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'L2DMSDrowsinessConfidenceTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<L2DMSDrowsinessConfidenceTypeEnum> is deprecated: use dms_msgs-msg:L2DMSDrowsinessConfidenceTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <L2DMSDrowsinessConfidenceTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:value-val is deprecated.  Use dms_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<L2DMSDrowsinessConfidenceTypeEnum>)))
    "Constants for message type '<L2DMSDrowsinessConfidenceTypeEnum>"
  '((:DROWSINESS_CONFIDENCE_LEVEL_0 . 0)
    (:DROWSINESS_CONFIDENCE_LEVEL_1 . 1)
    (:DROWSINESS_CONFIDENCE_LEVEL_2 . 2)
    (:DROWSINESS_CONFIDENCE_LEVEL_3 . 3)
    (:DROWSINESS_CONFIDENCE_LEVEL_4 . 4)
    (:DROWSINESS_CONFIDENCE_LEVEL_5 . 5)
    (:DROWSINESS_CONFIDENCE_LEVEL_6 . 6)
    (:DROWSINESS_CONFIDENCE_LEVEL_7 . 7)
    (:DROWSINESS_CONFIDENCE_LEVEL_8 . 8)
    (:DROWSINESS_CONFIDENCE_LEVEL_9 . 9))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'L2DMSDrowsinessConfidenceTypeEnum)))
    "Constants for message type 'L2DMSDrowsinessConfidenceTypeEnum"
  '((:DROWSINESS_CONFIDENCE_LEVEL_0 . 0)
    (:DROWSINESS_CONFIDENCE_LEVEL_1 . 1)
    (:DROWSINESS_CONFIDENCE_LEVEL_2 . 2)
    (:DROWSINESS_CONFIDENCE_LEVEL_3 . 3)
    (:DROWSINESS_CONFIDENCE_LEVEL_4 . 4)
    (:DROWSINESS_CONFIDENCE_LEVEL_5 . 5)
    (:DROWSINESS_CONFIDENCE_LEVEL_6 . 6)
    (:DROWSINESS_CONFIDENCE_LEVEL_7 . 7)
    (:DROWSINESS_CONFIDENCE_LEVEL_8 . 8)
    (:DROWSINESS_CONFIDENCE_LEVEL_9 . 9))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <L2DMSDrowsinessConfidenceTypeEnum>) ostream)
  "Serializes a message object of type '<L2DMSDrowsinessConfidenceTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <L2DMSDrowsinessConfidenceTypeEnum>) istream)
  "Deserializes a message object of type '<L2DMSDrowsinessConfidenceTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<L2DMSDrowsinessConfidenceTypeEnum>)))
  "Returns string type for a message object of type '<L2DMSDrowsinessConfidenceTypeEnum>"
  "dms_msgs/L2DMSDrowsinessConfidenceTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'L2DMSDrowsinessConfidenceTypeEnum)))
  "Returns string type for a message object of type 'L2DMSDrowsinessConfidenceTypeEnum"
  "dms_msgs/L2DMSDrowsinessConfidenceTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<L2DMSDrowsinessConfidenceTypeEnum>)))
  "Returns md5sum for a message object of type '<L2DMSDrowsinessConfidenceTypeEnum>"
  "2ffb67f5fd3d0a4103d5cafc77b18006")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'L2DMSDrowsinessConfidenceTypeEnum)))
  "Returns md5sum for a message object of type 'L2DMSDrowsinessConfidenceTypeEnum"
  "2ffb67f5fd3d0a4103d5cafc77b18006")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<L2DMSDrowsinessConfidenceTypeEnum>)))
  "Returns full string definition for message of type '<L2DMSDrowsinessConfidenceTypeEnum>"
  (cl:format cl:nil "uint16 DROWSINESS_CONFIDENCE_LEVEL_0 = 0~%uint16 DROWSINESS_CONFIDENCE_LEVEL_1 = 1~%uint16 DROWSINESS_CONFIDENCE_LEVEL_2 = 2~%uint16 DROWSINESS_CONFIDENCE_LEVEL_3 = 3~%uint16 DROWSINESS_CONFIDENCE_LEVEL_4 = 4~%uint16 DROWSINESS_CONFIDENCE_LEVEL_5 = 5~%uint16 DROWSINESS_CONFIDENCE_LEVEL_6 = 6~%uint16 DROWSINESS_CONFIDENCE_LEVEL_7 = 7~%uint16 DROWSINESS_CONFIDENCE_LEVEL_8 = 8~%uint16 DROWSINESS_CONFIDENCE_LEVEL_9 = 9~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'L2DMSDrowsinessConfidenceTypeEnum)))
  "Returns full string definition for message of type 'L2DMSDrowsinessConfidenceTypeEnum"
  (cl:format cl:nil "uint16 DROWSINESS_CONFIDENCE_LEVEL_0 = 0~%uint16 DROWSINESS_CONFIDENCE_LEVEL_1 = 1~%uint16 DROWSINESS_CONFIDENCE_LEVEL_2 = 2~%uint16 DROWSINESS_CONFIDENCE_LEVEL_3 = 3~%uint16 DROWSINESS_CONFIDENCE_LEVEL_4 = 4~%uint16 DROWSINESS_CONFIDENCE_LEVEL_5 = 5~%uint16 DROWSINESS_CONFIDENCE_LEVEL_6 = 6~%uint16 DROWSINESS_CONFIDENCE_LEVEL_7 = 7~%uint16 DROWSINESS_CONFIDENCE_LEVEL_8 = 8~%uint16 DROWSINESS_CONFIDENCE_LEVEL_9 = 9~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <L2DMSDrowsinessConfidenceTypeEnum>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <L2DMSDrowsinessConfidenceTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'L2DMSDrowsinessConfidenceTypeEnum
    (cl:cons ':value (value msg))
))
