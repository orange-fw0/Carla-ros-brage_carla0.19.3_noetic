; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSFidDelInfo.msg.html

(cl:defclass <DMSFidDelInfo> (roslisp-msg-protocol:ros-message)
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
   (delete_timestamp_us
    :reader delete_timestamp_us
    :initarg :delete_timestamp_us
    :type cl:integer
    :initform 0)
   (del_response
    :reader del_response
    :initarg :del_response
    :type dms_msgs-msg:DelResponseTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:DelResponseTypeEnum))
   (del_status
    :reader del_status
    :initarg :del_status
    :type dms_msgs-msg:DelStatusTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:DelStatusTypeEnum))
   (del_error
    :reader del_error
    :initarg :del_error
    :type dms_msgs-msg:DelErrorTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:DelErrorTypeEnum)))
)

(cl:defclass DMSFidDelInfo (<DMSFidDelInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSFidDelInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSFidDelInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSFidDelInfo> is deprecated: use dms_msgs-msg:DMSFidDelInfo instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <DMSFidDelInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:available-val is deprecated.  Use dms_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'user_id-val :lambda-list '(m))
(cl:defmethod user_id-val ((m <DMSFidDelInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:user_id-val is deprecated.  Use dms_msgs-msg:user_id instead.")
  (user_id m))

(cl:ensure-generic-function 'delete_timestamp_us-val :lambda-list '(m))
(cl:defmethod delete_timestamp_us-val ((m <DMSFidDelInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:delete_timestamp_us-val is deprecated.  Use dms_msgs-msg:delete_timestamp_us instead.")
  (delete_timestamp_us m))

(cl:ensure-generic-function 'del_response-val :lambda-list '(m))
(cl:defmethod del_response-val ((m <DMSFidDelInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:del_response-val is deprecated.  Use dms_msgs-msg:del_response instead.")
  (del_response m))

(cl:ensure-generic-function 'del_status-val :lambda-list '(m))
(cl:defmethod del_status-val ((m <DMSFidDelInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:del_status-val is deprecated.  Use dms_msgs-msg:del_status instead.")
  (del_status m))

(cl:ensure-generic-function 'del_error-val :lambda-list '(m))
(cl:defmethod del_error-val ((m <DMSFidDelInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:del_error-val is deprecated.  Use dms_msgs-msg:del_error instead.")
  (del_error m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSFidDelInfo>)))
    "Constants for message type '<DMSFidDelInfo>"
  '((:DEL_INFO_UN_AVAILABLE . 0)
    (:DEL_INFO_AVAILABLE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSFidDelInfo)))
    "Constants for message type 'DMSFidDelInfo"
  '((:DEL_INFO_UN_AVAILABLE . 0)
    (:DEL_INFO_AVAILABLE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSFidDelInfo>) ostream)
  "Serializes a message object of type '<DMSFidDelInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'user_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'user_id))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'delete_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'delete_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'delete_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'delete_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'delete_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'delete_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'delete_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'delete_timestamp_us)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'del_response) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'del_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'del_error) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSFidDelInfo>) istream)
  "Deserializes a message object of type '<DMSFidDelInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'user_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'user_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'delete_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'delete_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'delete_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'delete_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'delete_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'delete_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'delete_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'delete_timestamp_us)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'del_response) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'del_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'del_error) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSFidDelInfo>)))
  "Returns string type for a message object of type '<DMSFidDelInfo>"
  "dms_msgs/DMSFidDelInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSFidDelInfo)))
  "Returns string type for a message object of type 'DMSFidDelInfo"
  "dms_msgs/DMSFidDelInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSFidDelInfo>)))
  "Returns md5sum for a message object of type '<DMSFidDelInfo>"
  "63889ef8b3b279e0186cff225e9a6eb2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSFidDelInfo)))
  "Returns md5sum for a message object of type 'DMSFidDelInfo"
  "63889ef8b3b279e0186cff225e9a6eb2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSFidDelInfo>)))
  "Returns full string definition for message of type '<DMSFidDelInfo>"
  (cl:format cl:nil "uint8 DEL_INFO_UN_AVAILABLE = 0~%uint8 DEL_INFO_AVAILABLE = 1~%uint8 available~%string user_id~%uint64 delete_timestamp_us~%dms_msgs/DelResponseTypeEnum del_response~%dms_msgs/DelStatusTypeEnum del_status~%dms_msgs/DelErrorTypeEnum del_error~%~%================================================================================~%MSG: dms_msgs/DelResponseTypeEnum~%uint8 NO_ACTION = 0~%uint8 RESPOND_SUCCESS = 1~%uint8 RESPOND_FAIL = 2~%uint8 RESERVED = 3~%uint8 RESERVED1 = 4~%uint8 value~%~%================================================================================~%MSG: dms_msgs/DelStatusTypeEnum~%uint8 DEL_FAIL = 0~%uint8 DELETING = 1~%uint8 DEL_SUCCESS = 2~%uint8 RESERVED = 3~%uint8 RESERVED1 = 4~%uint8 value~%~%================================================================================~%MSG: dms_msgs/DelErrorTypeEnum~%uint8 NO_ERROR = 0~%uint8 NO_USER = 1~%uint8 TIME_OUT = 2~%uint8 SYSTEM_ERROR = 3~%uint8 RESERVED = 4~%uint8 RESERVED1 = 5~%uint8 RESERVED2 = 6~%uint8 RESERVED3 = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSFidDelInfo)))
  "Returns full string definition for message of type 'DMSFidDelInfo"
  (cl:format cl:nil "uint8 DEL_INFO_UN_AVAILABLE = 0~%uint8 DEL_INFO_AVAILABLE = 1~%uint8 available~%string user_id~%uint64 delete_timestamp_us~%dms_msgs/DelResponseTypeEnum del_response~%dms_msgs/DelStatusTypeEnum del_status~%dms_msgs/DelErrorTypeEnum del_error~%~%================================================================================~%MSG: dms_msgs/DelResponseTypeEnum~%uint8 NO_ACTION = 0~%uint8 RESPOND_SUCCESS = 1~%uint8 RESPOND_FAIL = 2~%uint8 RESERVED = 3~%uint8 RESERVED1 = 4~%uint8 value~%~%================================================================================~%MSG: dms_msgs/DelStatusTypeEnum~%uint8 DEL_FAIL = 0~%uint8 DELETING = 1~%uint8 DEL_SUCCESS = 2~%uint8 RESERVED = 3~%uint8 RESERVED1 = 4~%uint8 value~%~%================================================================================~%MSG: dms_msgs/DelErrorTypeEnum~%uint8 NO_ERROR = 0~%uint8 NO_USER = 1~%uint8 TIME_OUT = 2~%uint8 SYSTEM_ERROR = 3~%uint8 RESERVED = 4~%uint8 RESERVED1 = 5~%uint8 RESERVED2 = 6~%uint8 RESERVED3 = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSFidDelInfo>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'user_id))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'del_response))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'del_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'del_error))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSFidDelInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSFidDelInfo
    (cl:cons ':available (available msg))
    (cl:cons ':user_id (user_id msg))
    (cl:cons ':delete_timestamp_us (delete_timestamp_us msg))
    (cl:cons ':del_response (del_response msg))
    (cl:cons ':del_status (del_status msg))
    (cl:cons ':del_error (del_error msg))
))
