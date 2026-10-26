; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude L3DMSDrowsinessLevelTypeEnum.msg.html

(cl:defclass <L3DMSDrowsinessLevelTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass L3DMSDrowsinessLevelTypeEnum (<L3DMSDrowsinessLevelTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <L3DMSDrowsinessLevelTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'L3DMSDrowsinessLevelTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<L3DMSDrowsinessLevelTypeEnum> is deprecated: use dms_msgs-msg:L3DMSDrowsinessLevelTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <L3DMSDrowsinessLevelTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:value-val is deprecated.  Use dms_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<L3DMSDrowsinessLevelTypeEnum>)))
    "Constants for message type '<L3DMSDrowsinessLevelTypeEnum>"
  '((:DROWSINESS_LEVEL_0 . 0)
    (:DROWSINESS_LEVEL_1 . 1)
    (:DROWSINESS_LEVEL_2 . 2)
    (:DROWSINESS_LEVEL_3 . 3)
    (:DROWSINESS_LEVEL_4 . 4)
    (:DROWSINESS_LEVEL_5 . 5)
    (:DROWSINESS_LEVEL_6 . 6)
    (:DROWSINESS_LEVEL_7 . 7)
    (:DROWSINESS_LEVEL_8 . 8)
    (:DROWSINESS_LEVEL_9 . 9)
    (:DROWSINESS_LEVEL_10 . 10)
    (:DROWSINESS_LEVEL_11 . 11))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'L3DMSDrowsinessLevelTypeEnum)))
    "Constants for message type 'L3DMSDrowsinessLevelTypeEnum"
  '((:DROWSINESS_LEVEL_0 . 0)
    (:DROWSINESS_LEVEL_1 . 1)
    (:DROWSINESS_LEVEL_2 . 2)
    (:DROWSINESS_LEVEL_3 . 3)
    (:DROWSINESS_LEVEL_4 . 4)
    (:DROWSINESS_LEVEL_5 . 5)
    (:DROWSINESS_LEVEL_6 . 6)
    (:DROWSINESS_LEVEL_7 . 7)
    (:DROWSINESS_LEVEL_8 . 8)
    (:DROWSINESS_LEVEL_9 . 9)
    (:DROWSINESS_LEVEL_10 . 10)
    (:DROWSINESS_LEVEL_11 . 11))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <L3DMSDrowsinessLevelTypeEnum>) ostream)
  "Serializes a message object of type '<L3DMSDrowsinessLevelTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <L3DMSDrowsinessLevelTypeEnum>) istream)
  "Deserializes a message object of type '<L3DMSDrowsinessLevelTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<L3DMSDrowsinessLevelTypeEnum>)))
  "Returns string type for a message object of type '<L3DMSDrowsinessLevelTypeEnum>"
  "dms_msgs/L3DMSDrowsinessLevelTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'L3DMSDrowsinessLevelTypeEnum)))
  "Returns string type for a message object of type 'L3DMSDrowsinessLevelTypeEnum"
  "dms_msgs/L3DMSDrowsinessLevelTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<L3DMSDrowsinessLevelTypeEnum>)))
  "Returns md5sum for a message object of type '<L3DMSDrowsinessLevelTypeEnum>"
  "c3884627d7ea13e5d04b9ef0470d275e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'L3DMSDrowsinessLevelTypeEnum)))
  "Returns md5sum for a message object of type 'L3DMSDrowsinessLevelTypeEnum"
  "c3884627d7ea13e5d04b9ef0470d275e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<L3DMSDrowsinessLevelTypeEnum>)))
  "Returns full string definition for message of type '<L3DMSDrowsinessLevelTypeEnum>"
  (cl:format cl:nil "uint16 DROWSINESS_LEVEL_0 = 0~%uint16 DROWSINESS_LEVEL_1 = 1~%uint16 DROWSINESS_LEVEL_2 = 2~%uint16 DROWSINESS_LEVEL_3 = 3~%uint16 DROWSINESS_LEVEL_4 = 4~%uint16 DROWSINESS_LEVEL_5 = 5~%uint16 DROWSINESS_LEVEL_6 = 6~%uint16 DROWSINESS_LEVEL_7 = 7~%uint16 DROWSINESS_LEVEL_8 = 8~%uint16 DROWSINESS_LEVEL_9 = 9~%uint16 DROWSINESS_LEVEL_10 = 10~%uint16 DROWSINESS_LEVEL_11 = 11~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'L3DMSDrowsinessLevelTypeEnum)))
  "Returns full string definition for message of type 'L3DMSDrowsinessLevelTypeEnum"
  (cl:format cl:nil "uint16 DROWSINESS_LEVEL_0 = 0~%uint16 DROWSINESS_LEVEL_1 = 1~%uint16 DROWSINESS_LEVEL_2 = 2~%uint16 DROWSINESS_LEVEL_3 = 3~%uint16 DROWSINESS_LEVEL_4 = 4~%uint16 DROWSINESS_LEVEL_5 = 5~%uint16 DROWSINESS_LEVEL_6 = 6~%uint16 DROWSINESS_LEVEL_7 = 7~%uint16 DROWSINESS_LEVEL_8 = 8~%uint16 DROWSINESS_LEVEL_9 = 9~%uint16 DROWSINESS_LEVEL_10 = 10~%uint16 DROWSINESS_LEVEL_11 = 11~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <L3DMSDrowsinessLevelTypeEnum>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <L3DMSDrowsinessLevelTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'L3DMSDrowsinessLevelTypeEnum
    (cl:cons ':value (value msg))
))
