; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSFidRegInfo.msg.html

(cl:defclass <DMSFidRegInfo> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (user_id
    :reader user_id
    :initarg :user_id
    :type cl:string
    :initform "")
   (register_timestamp_us
    :reader register_timestamp_us
    :initarg :register_timestamp_us
    :type cl:integer
    :initform 0)
   (register_cancel_timestamp_us
    :reader register_cancel_timestamp_us
    :initarg :register_cancel_timestamp_us
    :type cl:integer
    :initform 0)
   (reg_response
    :reader reg_response
    :initarg :reg_response
    :type dms_msgs-msg:RegResponseTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:RegResponseTypeEnum))
   (cancel_response
    :reader cancel_response
    :initarg :cancel_response
    :type dms_msgs-msg:CancelResponseTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:CancelResponseTypeEnum))
   (reg_status
    :reader reg_status
    :initarg :reg_status
    :type dms_msgs-msg:RegStatusTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:RegStatusTypeEnum))
   (reg_error
    :reader reg_error
    :initarg :reg_error
    :type dms_msgs-msg:RegErrorTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:RegErrorTypeEnum)))
)

(cl:defclass DMSFidRegInfo (<DMSFidRegInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSFidRegInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSFidRegInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSFidRegInfo> is deprecated: use dms_msgs-msg:DMSFidRegInfo instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <DMSFidRegInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:available-val is deprecated.  Use dms_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'user_id-val :lambda-list '(m))
(cl:defmethod user_id-val ((m <DMSFidRegInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:user_id-val is deprecated.  Use dms_msgs-msg:user_id instead.")
  (user_id m))

(cl:ensure-generic-function 'register_timestamp_us-val :lambda-list '(m))
(cl:defmethod register_timestamp_us-val ((m <DMSFidRegInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:register_timestamp_us-val is deprecated.  Use dms_msgs-msg:register_timestamp_us instead.")
  (register_timestamp_us m))

(cl:ensure-generic-function 'register_cancel_timestamp_us-val :lambda-list '(m))
(cl:defmethod register_cancel_timestamp_us-val ((m <DMSFidRegInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:register_cancel_timestamp_us-val is deprecated.  Use dms_msgs-msg:register_cancel_timestamp_us instead.")
  (register_cancel_timestamp_us m))

(cl:ensure-generic-function 'reg_response-val :lambda-list '(m))
(cl:defmethod reg_response-val ((m <DMSFidRegInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:reg_response-val is deprecated.  Use dms_msgs-msg:reg_response instead.")
  (reg_response m))

(cl:ensure-generic-function 'cancel_response-val :lambda-list '(m))
(cl:defmethod cancel_response-val ((m <DMSFidRegInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:cancel_response-val is deprecated.  Use dms_msgs-msg:cancel_response instead.")
  (cancel_response m))

(cl:ensure-generic-function 'reg_status-val :lambda-list '(m))
(cl:defmethod reg_status-val ((m <DMSFidRegInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:reg_status-val is deprecated.  Use dms_msgs-msg:reg_status instead.")
  (reg_status m))

(cl:ensure-generic-function 'reg_error-val :lambda-list '(m))
(cl:defmethod reg_error-val ((m <DMSFidRegInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:reg_error-val is deprecated.  Use dms_msgs-msg:reg_error instead.")
  (reg_error m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSFidRegInfo>)))
    "Constants for message type '<DMSFidRegInfo>"
  '((:REG_INFO_UN_AVAILABLE . 0)
    (:REG_INFO_AVAILABLE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSFidRegInfo)))
    "Constants for message type 'DMSFidRegInfo"
  '((:REG_INFO_UN_AVAILABLE . 0)
    (:REG_INFO_AVAILABLE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSFidRegInfo>) ostream)
  "Serializes a message object of type '<DMSFidRegInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'user_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'user_id))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'register_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'register_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'register_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'register_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'register_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'register_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'register_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'register_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'register_cancel_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'register_cancel_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'register_cancel_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'register_cancel_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'register_cancel_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'register_cancel_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'register_cancel_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'register_cancel_timestamp_us)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reg_response) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cancel_response) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reg_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reg_error) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSFidRegInfo>) istream)
  "Deserializes a message object of type '<DMSFidRegInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'user_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'user_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'register_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'register_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'register_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'register_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'register_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'register_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'register_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'register_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'register_cancel_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'register_cancel_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'register_cancel_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'register_cancel_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'register_cancel_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'register_cancel_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'register_cancel_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'register_cancel_timestamp_us)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reg_response) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cancel_response) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reg_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reg_error) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSFidRegInfo>)))
  "Returns string type for a message object of type '<DMSFidRegInfo>"
  "dms_msgs/DMSFidRegInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSFidRegInfo)))
  "Returns string type for a message object of type 'DMSFidRegInfo"
  "dms_msgs/DMSFidRegInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSFidRegInfo>)))
  "Returns md5sum for a message object of type '<DMSFidRegInfo>"
  "ff9a6215410a19af27947d0bf3002983")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSFidRegInfo)))
  "Returns md5sum for a message object of type 'DMSFidRegInfo"
  "ff9a6215410a19af27947d0bf3002983")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSFidRegInfo>)))
  "Returns full string definition for message of type '<DMSFidRegInfo>"
  (cl:format cl:nil "uint8 REG_INFO_UN_AVAILABLE = 0~%uint8 REG_INFO_AVAILABLE = 1~%uint8 available~%string user_id~%uint64 register_timestamp_us~%uint64 register_cancel_timestamp_us~%dms_msgs/RegResponseTypeEnum reg_response~%dms_msgs/CancelResponseTypeEnum cancel_response~%dms_msgs/RegStatusTypeEnum reg_status~%dms_msgs/RegErrorTypeEnum reg_error~%~%================================================================================~%MSG: dms_msgs/RegResponseTypeEnum~%uint8 RESPOND_FAIL = 0~%uint8 RESPOND_SUCCESS = 1~%uint8 RESERVED = 2~%uint8 RESERVED1 = 3~%uint8 value~%~%================================================================================~%MSG: dms_msgs/CancelResponseTypeEnum~%uint8 NO_ACTION = 0~%uint8 CANCEL_SUCCESS = 1~%uint8 CANCEL_FAIL = 2~%uint8 RESERVED = 3~%uint8 RESERVED1 = 4~%uint8 value~%~%================================================================================~%MSG: dms_msgs/RegStatusTypeEnum~%uint8 NO_ACTION = 0~%uint8 REGISTERING = 1~%uint8 REGISTER_SUCCESS = 2~%uint8 REGISTER_FAIL = 3~%uint8 RESERVED = 4~%uint8 RESERVED1 = 5~%uint8 value~%~%================================================================================~%MSG: dms_msgs/RegErrorTypeEnum~%uint8 NO_ERROR = 0~%uint8 CAMERA_ABNORMAL = 1~%uint8 NO_FACE = 2~%uint8 LOW_FACE_QUALITY = 3~%uint8 FACE_NOT_ALIVE = 4~%uint8 LARGE_HEAD_POSE = 5~%uint8 ID_EXISTS = 6~%uint8 FACE_WRITTEN_FAIL = 7~%uint8 TIME_OUT = 8~%uint8 FACE_EXISTS = 9~%uint8 SYSTEM_ERROR = 10~%uint8 RESERVED = 11~%uint8 RESERVED1 = 12~%uint8 RESERVED2 = 13~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSFidRegInfo)))
  "Returns full string definition for message of type 'DMSFidRegInfo"
  (cl:format cl:nil "uint8 REG_INFO_UN_AVAILABLE = 0~%uint8 REG_INFO_AVAILABLE = 1~%uint8 available~%string user_id~%uint64 register_timestamp_us~%uint64 register_cancel_timestamp_us~%dms_msgs/RegResponseTypeEnum reg_response~%dms_msgs/CancelResponseTypeEnum cancel_response~%dms_msgs/RegStatusTypeEnum reg_status~%dms_msgs/RegErrorTypeEnum reg_error~%~%================================================================================~%MSG: dms_msgs/RegResponseTypeEnum~%uint8 RESPOND_FAIL = 0~%uint8 RESPOND_SUCCESS = 1~%uint8 RESERVED = 2~%uint8 RESERVED1 = 3~%uint8 value~%~%================================================================================~%MSG: dms_msgs/CancelResponseTypeEnum~%uint8 NO_ACTION = 0~%uint8 CANCEL_SUCCESS = 1~%uint8 CANCEL_FAIL = 2~%uint8 RESERVED = 3~%uint8 RESERVED1 = 4~%uint8 value~%~%================================================================================~%MSG: dms_msgs/RegStatusTypeEnum~%uint8 NO_ACTION = 0~%uint8 REGISTERING = 1~%uint8 REGISTER_SUCCESS = 2~%uint8 REGISTER_FAIL = 3~%uint8 RESERVED = 4~%uint8 RESERVED1 = 5~%uint8 value~%~%================================================================================~%MSG: dms_msgs/RegErrorTypeEnum~%uint8 NO_ERROR = 0~%uint8 CAMERA_ABNORMAL = 1~%uint8 NO_FACE = 2~%uint8 LOW_FACE_QUALITY = 3~%uint8 FACE_NOT_ALIVE = 4~%uint8 LARGE_HEAD_POSE = 5~%uint8 ID_EXISTS = 6~%uint8 FACE_WRITTEN_FAIL = 7~%uint8 TIME_OUT = 8~%uint8 FACE_EXISTS = 9~%uint8 SYSTEM_ERROR = 10~%uint8 RESERVED = 11~%uint8 RESERVED1 = 12~%uint8 RESERVED2 = 13~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSFidRegInfo>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'user_id))
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reg_response))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cancel_response))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reg_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reg_error))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSFidRegInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSFidRegInfo
    (cl:cons ':available (available msg))
    (cl:cons ':user_id (user_id msg))
    (cl:cons ':register_timestamp_us (register_timestamp_us msg))
    (cl:cons ':register_cancel_timestamp_us (register_cancel_timestamp_us msg))
    (cl:cons ':reg_response (reg_response msg))
    (cl:cons ':cancel_response (cancel_response msg))
    (cl:cons ':reg_status (reg_status msg))
    (cl:cons ':reg_error (reg_error msg))
))
