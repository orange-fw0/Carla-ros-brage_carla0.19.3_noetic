; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude RegErrorTypeEnum.msg.html

(cl:defclass <RegErrorTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RegErrorTypeEnum (<RegErrorTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RegErrorTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RegErrorTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<RegErrorTypeEnum> is deprecated: use dms_msgs-msg:RegErrorTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RegErrorTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:value-val is deprecated.  Use dms_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RegErrorTypeEnum>)))
    "Constants for message type '<RegErrorTypeEnum>"
  '((:NO_ERROR . 0)
    (:CAMERA_ABNORMAL . 1)
    (:NO_FACE . 2)
    (:LOW_FACE_QUALITY . 3)
    (:FACE_NOT_ALIVE . 4)
    (:LARGE_HEAD_POSE . 5)
    (:ID_EXISTS . 6)
    (:FACE_WRITTEN_FAIL . 7)
    (:TIME_OUT . 8)
    (:FACE_EXISTS . 9)
    (:SYSTEM_ERROR . 10)
    (:RESERVED . 11)
    (:RESERVED1 . 12)
    (:RESERVED2 . 13))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RegErrorTypeEnum)))
    "Constants for message type 'RegErrorTypeEnum"
  '((:NO_ERROR . 0)
    (:CAMERA_ABNORMAL . 1)
    (:NO_FACE . 2)
    (:LOW_FACE_QUALITY . 3)
    (:FACE_NOT_ALIVE . 4)
    (:LARGE_HEAD_POSE . 5)
    (:ID_EXISTS . 6)
    (:FACE_WRITTEN_FAIL . 7)
    (:TIME_OUT . 8)
    (:FACE_EXISTS . 9)
    (:SYSTEM_ERROR . 10)
    (:RESERVED . 11)
    (:RESERVED1 . 12)
    (:RESERVED2 . 13))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RegErrorTypeEnum>) ostream)
  "Serializes a message object of type '<RegErrorTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RegErrorTypeEnum>) istream)
  "Deserializes a message object of type '<RegErrorTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RegErrorTypeEnum>)))
  "Returns string type for a message object of type '<RegErrorTypeEnum>"
  "dms_msgs/RegErrorTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RegErrorTypeEnum)))
  "Returns string type for a message object of type 'RegErrorTypeEnum"
  "dms_msgs/RegErrorTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RegErrorTypeEnum>)))
  "Returns md5sum for a message object of type '<RegErrorTypeEnum>"
  "703b8b24ad4385f3c01adecd25a86cc2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RegErrorTypeEnum)))
  "Returns md5sum for a message object of type 'RegErrorTypeEnum"
  "703b8b24ad4385f3c01adecd25a86cc2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RegErrorTypeEnum>)))
  "Returns full string definition for message of type '<RegErrorTypeEnum>"
  (cl:format cl:nil "uint8 NO_ERROR = 0~%uint8 CAMERA_ABNORMAL = 1~%uint8 NO_FACE = 2~%uint8 LOW_FACE_QUALITY = 3~%uint8 FACE_NOT_ALIVE = 4~%uint8 LARGE_HEAD_POSE = 5~%uint8 ID_EXISTS = 6~%uint8 FACE_WRITTEN_FAIL = 7~%uint8 TIME_OUT = 8~%uint8 FACE_EXISTS = 9~%uint8 SYSTEM_ERROR = 10~%uint8 RESERVED = 11~%uint8 RESERVED1 = 12~%uint8 RESERVED2 = 13~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RegErrorTypeEnum)))
  "Returns full string definition for message of type 'RegErrorTypeEnum"
  (cl:format cl:nil "uint8 NO_ERROR = 0~%uint8 CAMERA_ABNORMAL = 1~%uint8 NO_FACE = 2~%uint8 LOW_FACE_QUALITY = 3~%uint8 FACE_NOT_ALIVE = 4~%uint8 LARGE_HEAD_POSE = 5~%uint8 ID_EXISTS = 6~%uint8 FACE_WRITTEN_FAIL = 7~%uint8 TIME_OUT = 8~%uint8 FACE_EXISTS = 9~%uint8 SYSTEM_ERROR = 10~%uint8 RESERVED = 11~%uint8 RESERVED1 = 12~%uint8 RESERVED2 = 13~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RegErrorTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RegErrorTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'RegErrorTypeEnum
    (cl:cons ':value (value msg))
))
