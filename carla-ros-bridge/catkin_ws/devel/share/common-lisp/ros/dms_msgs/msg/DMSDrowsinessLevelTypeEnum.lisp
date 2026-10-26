; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSDrowsinessLevelTypeEnum.msg.html

(cl:defclass <DMSDrowsinessLevelTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DMSDrowsinessLevelTypeEnum (<DMSDrowsinessLevelTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSDrowsinessLevelTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSDrowsinessLevelTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSDrowsinessLevelTypeEnum> is deprecated: use dms_msgs-msg:DMSDrowsinessLevelTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <DMSDrowsinessLevelTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:value-val is deprecated.  Use dms_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSDrowsinessLevelTypeEnum>)))
    "Constants for message type '<DMSDrowsinessLevelTypeEnum>"
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
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSDrowsinessLevelTypeEnum)))
    "Constants for message type 'DMSDrowsinessLevelTypeEnum"
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
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSDrowsinessLevelTypeEnum>) ostream)
  "Serializes a message object of type '<DMSDrowsinessLevelTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSDrowsinessLevelTypeEnum>) istream)
  "Deserializes a message object of type '<DMSDrowsinessLevelTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSDrowsinessLevelTypeEnum>)))
  "Returns string type for a message object of type '<DMSDrowsinessLevelTypeEnum>"
  "dms_msgs/DMSDrowsinessLevelTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSDrowsinessLevelTypeEnum)))
  "Returns string type for a message object of type 'DMSDrowsinessLevelTypeEnum"
  "dms_msgs/DMSDrowsinessLevelTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSDrowsinessLevelTypeEnum>)))
  "Returns md5sum for a message object of type '<DMSDrowsinessLevelTypeEnum>"
  "c3884627d7ea13e5d04b9ef0470d275e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSDrowsinessLevelTypeEnum)))
  "Returns md5sum for a message object of type 'DMSDrowsinessLevelTypeEnum"
  "c3884627d7ea13e5d04b9ef0470d275e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSDrowsinessLevelTypeEnum>)))
  "Returns full string definition for message of type '<DMSDrowsinessLevelTypeEnum>"
  (cl:format cl:nil "uint16 DROWSINESS_LEVEL_0 = 0~%uint16 DROWSINESS_LEVEL_1 = 1~%uint16 DROWSINESS_LEVEL_2 = 2~%uint16 DROWSINESS_LEVEL_3 = 3~%uint16 DROWSINESS_LEVEL_4 = 4~%uint16 DROWSINESS_LEVEL_5 = 5~%uint16 DROWSINESS_LEVEL_6 = 6~%uint16 DROWSINESS_LEVEL_7 = 7~%uint16 DROWSINESS_LEVEL_8 = 8~%uint16 DROWSINESS_LEVEL_9 = 9~%uint16 DROWSINESS_LEVEL_10 = 10~%uint16 DROWSINESS_LEVEL_11 = 11~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSDrowsinessLevelTypeEnum)))
  "Returns full string definition for message of type 'DMSDrowsinessLevelTypeEnum"
  (cl:format cl:nil "uint16 DROWSINESS_LEVEL_0 = 0~%uint16 DROWSINESS_LEVEL_1 = 1~%uint16 DROWSINESS_LEVEL_2 = 2~%uint16 DROWSINESS_LEVEL_3 = 3~%uint16 DROWSINESS_LEVEL_4 = 4~%uint16 DROWSINESS_LEVEL_5 = 5~%uint16 DROWSINESS_LEVEL_6 = 6~%uint16 DROWSINESS_LEVEL_7 = 7~%uint16 DROWSINESS_LEVEL_8 = 8~%uint16 DROWSINESS_LEVEL_9 = 9~%uint16 DROWSINESS_LEVEL_10 = 10~%uint16 DROWSINESS_LEVEL_11 = 11~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSDrowsinessLevelTypeEnum>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSDrowsinessLevelTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSDrowsinessLevelTypeEnum
    (cl:cons ':value (value msg))
))
