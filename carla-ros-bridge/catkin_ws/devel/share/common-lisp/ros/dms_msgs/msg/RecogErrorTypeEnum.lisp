; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude RecogErrorTypeEnum.msg.html

(cl:defclass <RecogErrorTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RecogErrorTypeEnum (<RecogErrorTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecogErrorTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecogErrorTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<RecogErrorTypeEnum> is deprecated: use dms_msgs-msg:RecogErrorTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RecogErrorTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:value-val is deprecated.  Use dms_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RecogErrorTypeEnum>)))
    "Constants for message type '<RecogErrorTypeEnum>"
  '((:NO_ERROR . 0)
    (:CAMERA_ABNORMAL . 1)
    (:NO_FACE . 2)
    (:LOW_FACE_QUALITY . 3)
    (:FACE_NOT_ALIVE . 4)
    (:USER_NOT_EXIST . 5)
    (:TIME_OUT . 6)
    (:EMPTY_USER_LIST . 7)
    (:SYSTEM_ERROR . 8)
    (:RESERVED . 9)
    (:RESERVED1 . 10)
    (:RESERVED2 . 11))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RecogErrorTypeEnum)))
    "Constants for message type 'RecogErrorTypeEnum"
  '((:NO_ERROR . 0)
    (:CAMERA_ABNORMAL . 1)
    (:NO_FACE . 2)
    (:LOW_FACE_QUALITY . 3)
    (:FACE_NOT_ALIVE . 4)
    (:USER_NOT_EXIST . 5)
    (:TIME_OUT . 6)
    (:EMPTY_USER_LIST . 7)
    (:SYSTEM_ERROR . 8)
    (:RESERVED . 9)
    (:RESERVED1 . 10)
    (:RESERVED2 . 11))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecogErrorTypeEnum>) ostream)
  "Serializes a message object of type '<RecogErrorTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecogErrorTypeEnum>) istream)
  "Deserializes a message object of type '<RecogErrorTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RecogErrorTypeEnum>)))
  "Returns string type for a message object of type '<RecogErrorTypeEnum>"
  "dms_msgs/RecogErrorTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecogErrorTypeEnum)))
  "Returns string type for a message object of type 'RecogErrorTypeEnum"
  "dms_msgs/RecogErrorTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RecogErrorTypeEnum>)))
  "Returns md5sum for a message object of type '<RecogErrorTypeEnum>"
  "44be4a988bcf624885bede4b3b181ee3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecogErrorTypeEnum)))
  "Returns md5sum for a message object of type 'RecogErrorTypeEnum"
  "44be4a988bcf624885bede4b3b181ee3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecogErrorTypeEnum>)))
  "Returns full string definition for message of type '<RecogErrorTypeEnum>"
  (cl:format cl:nil "uint8 NO_ERROR = 0~%uint8 CAMERA_ABNORMAL = 1~%uint8 NO_FACE = 2~%uint8 LOW_FACE_QUALITY = 3~%uint8 FACE_NOT_ALIVE = 4~%uint8 USER_NOT_EXIST = 5~%uint8 TIME_OUT = 6~%uint8 EMPTY_USER_LIST = 7~%uint8 SYSTEM_ERROR = 8~%uint8 RESERVED = 9~%uint8 RESERVED1 = 10~%uint8 RESERVED2 = 11~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecogErrorTypeEnum)))
  "Returns full string definition for message of type 'RecogErrorTypeEnum"
  (cl:format cl:nil "uint8 NO_ERROR = 0~%uint8 CAMERA_ABNORMAL = 1~%uint8 NO_FACE = 2~%uint8 LOW_FACE_QUALITY = 3~%uint8 FACE_NOT_ALIVE = 4~%uint8 USER_NOT_EXIST = 5~%uint8 TIME_OUT = 6~%uint8 EMPTY_USER_LIST = 7~%uint8 SYSTEM_ERROR = 8~%uint8 RESERVED = 9~%uint8 RESERVED1 = 10~%uint8 RESERVED2 = 11~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecogErrorTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecogErrorTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'RecogErrorTypeEnum
    (cl:cons ':value (value msg))
))
