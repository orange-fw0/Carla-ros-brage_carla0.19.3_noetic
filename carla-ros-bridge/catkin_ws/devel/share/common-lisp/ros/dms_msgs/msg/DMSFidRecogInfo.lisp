; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSFidRecogInfo.msg.html

(cl:defclass <DMSFidRecogInfo> (roslisp-msg-protocol:ros-message)
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
   (recognize_timestamp_us
    :reader recognize_timestamp_us
    :initarg :recognize_timestamp_us
    :type cl:integer
    :initform 0)
   (recognize_cancel_timestamp_us
    :reader recognize_cancel_timestamp_us
    :initarg :recognize_cancel_timestamp_us
    :type cl:integer
    :initform 0)
   (recog_response
    :reader recog_response
    :initarg :recog_response
    :type dms_msgs-msg:RecogResponseTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:RecogResponseTypeEnum))
   (cancel_response
    :reader cancel_response
    :initarg :cancel_response
    :type dms_msgs-msg:CancelResponseTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:CancelResponseTypeEnum))
   (recog_status
    :reader recog_status
    :initarg :recog_status
    :type dms_msgs-msg:RecogStatusTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:RecogStatusTypeEnum))
   (recog_error
    :reader recog_error
    :initarg :recog_error
    :type dms_msgs-msg:RecogErrorTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:RecogErrorTypeEnum)))
)

(cl:defclass DMSFidRecogInfo (<DMSFidRecogInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSFidRecogInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSFidRecogInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSFidRecogInfo> is deprecated: use dms_msgs-msg:DMSFidRecogInfo instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <DMSFidRecogInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:available-val is deprecated.  Use dms_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'user_id-val :lambda-list '(m))
(cl:defmethod user_id-val ((m <DMSFidRecogInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:user_id-val is deprecated.  Use dms_msgs-msg:user_id instead.")
  (user_id m))

(cl:ensure-generic-function 'recognize_timestamp_us-val :lambda-list '(m))
(cl:defmethod recognize_timestamp_us-val ((m <DMSFidRecogInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:recognize_timestamp_us-val is deprecated.  Use dms_msgs-msg:recognize_timestamp_us instead.")
  (recognize_timestamp_us m))

(cl:ensure-generic-function 'recognize_cancel_timestamp_us-val :lambda-list '(m))
(cl:defmethod recognize_cancel_timestamp_us-val ((m <DMSFidRecogInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:recognize_cancel_timestamp_us-val is deprecated.  Use dms_msgs-msg:recognize_cancel_timestamp_us instead.")
  (recognize_cancel_timestamp_us m))

(cl:ensure-generic-function 'recog_response-val :lambda-list '(m))
(cl:defmethod recog_response-val ((m <DMSFidRecogInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:recog_response-val is deprecated.  Use dms_msgs-msg:recog_response instead.")
  (recog_response m))

(cl:ensure-generic-function 'cancel_response-val :lambda-list '(m))
(cl:defmethod cancel_response-val ((m <DMSFidRecogInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:cancel_response-val is deprecated.  Use dms_msgs-msg:cancel_response instead.")
  (cancel_response m))

(cl:ensure-generic-function 'recog_status-val :lambda-list '(m))
(cl:defmethod recog_status-val ((m <DMSFidRecogInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:recog_status-val is deprecated.  Use dms_msgs-msg:recog_status instead.")
  (recog_status m))

(cl:ensure-generic-function 'recog_error-val :lambda-list '(m))
(cl:defmethod recog_error-val ((m <DMSFidRecogInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:recog_error-val is deprecated.  Use dms_msgs-msg:recog_error instead.")
  (recog_error m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSFidRecogInfo>)))
    "Constants for message type '<DMSFidRecogInfo>"
  '((:REC_INFO_UN_AVAILABLE . 0)
    (:REC_INFO_AVAILABLE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSFidRecogInfo)))
    "Constants for message type 'DMSFidRecogInfo"
  '((:REC_INFO_UN_AVAILABLE . 0)
    (:REC_INFO_AVAILABLE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSFidRecogInfo>) ostream)
  "Serializes a message object of type '<DMSFidRecogInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'user_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'user_id))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'recognize_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'recognize_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'recognize_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'recognize_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'recognize_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'recognize_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'recognize_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'recognize_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'recognize_cancel_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'recognize_cancel_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'recognize_cancel_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'recognize_cancel_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'recognize_cancel_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'recognize_cancel_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'recognize_cancel_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'recognize_cancel_timestamp_us)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'recog_response) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cancel_response) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'recog_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'recog_error) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSFidRecogInfo>) istream)
  "Deserializes a message object of type '<DMSFidRecogInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'user_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'user_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'recognize_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'recognize_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'recognize_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'recognize_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'recognize_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'recognize_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'recognize_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'recognize_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'recognize_cancel_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'recognize_cancel_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'recognize_cancel_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'recognize_cancel_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'recognize_cancel_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'recognize_cancel_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'recognize_cancel_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'recognize_cancel_timestamp_us)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'recog_response) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cancel_response) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'recog_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'recog_error) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSFidRecogInfo>)))
  "Returns string type for a message object of type '<DMSFidRecogInfo>"
  "dms_msgs/DMSFidRecogInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSFidRecogInfo)))
  "Returns string type for a message object of type 'DMSFidRecogInfo"
  "dms_msgs/DMSFidRecogInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSFidRecogInfo>)))
  "Returns md5sum for a message object of type '<DMSFidRecogInfo>"
  "4912ec8eff8547313caab542459893d6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSFidRecogInfo)))
  "Returns md5sum for a message object of type 'DMSFidRecogInfo"
  "4912ec8eff8547313caab542459893d6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSFidRecogInfo>)))
  "Returns full string definition for message of type '<DMSFidRecogInfo>"
  (cl:format cl:nil "uint8 REC_INFO_UN_AVAILABLE = 0~%uint8 REC_INFO_AVAILABLE = 1~%uint8 available~%string user_id~%uint64 recognize_timestamp_us~%uint64 recognize_cancel_timestamp_us~%dms_msgs/RecogResponseTypeEnum recog_response~%dms_msgs/CancelResponseTypeEnum cancel_response~%dms_msgs/RecogStatusTypeEnum recog_status~%dms_msgs/RecogErrorTypeEnum recog_error~%~%================================================================================~%MSG: dms_msgs/RecogResponseTypeEnum~%uint8 RESPOND_FAIL = 0~%uint8 RESPOND_SUCCESS = 1~%uint8 RESERVED = 2~%uint8 RESERVED1 = 3~%uint8 value~%~%================================================================================~%MSG: dms_msgs/CancelResponseTypeEnum~%uint8 NO_ACTION = 0~%uint8 CANCEL_SUCCESS = 1~%uint8 CANCEL_FAIL = 2~%uint8 RESERVED = 3~%uint8 RESERVED1 = 4~%uint8 value~%~%================================================================================~%MSG: dms_msgs/RecogStatusTypeEnum~%uint8 NO_ACTION = 0~%uint8 Recognizing = 1~%uint8 Recog_SUCCESS = 2~%uint8 Recog_FAIL = 3~%uint8 RESERVED = 4~%uint8 RESERVED1 = 5~%uint8 value~%~%================================================================================~%MSG: dms_msgs/RecogErrorTypeEnum~%uint8 NO_ERROR = 0~%uint8 CAMERA_ABNORMAL = 1~%uint8 NO_FACE = 2~%uint8 LOW_FACE_QUALITY = 3~%uint8 FACE_NOT_ALIVE = 4~%uint8 USER_NOT_EXIST = 5~%uint8 TIME_OUT = 6~%uint8 EMPTY_USER_LIST = 7~%uint8 SYSTEM_ERROR = 8~%uint8 RESERVED = 9~%uint8 RESERVED1 = 10~%uint8 RESERVED2 = 11~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSFidRecogInfo)))
  "Returns full string definition for message of type 'DMSFidRecogInfo"
  (cl:format cl:nil "uint8 REC_INFO_UN_AVAILABLE = 0~%uint8 REC_INFO_AVAILABLE = 1~%uint8 available~%string user_id~%uint64 recognize_timestamp_us~%uint64 recognize_cancel_timestamp_us~%dms_msgs/RecogResponseTypeEnum recog_response~%dms_msgs/CancelResponseTypeEnum cancel_response~%dms_msgs/RecogStatusTypeEnum recog_status~%dms_msgs/RecogErrorTypeEnum recog_error~%~%================================================================================~%MSG: dms_msgs/RecogResponseTypeEnum~%uint8 RESPOND_FAIL = 0~%uint8 RESPOND_SUCCESS = 1~%uint8 RESERVED = 2~%uint8 RESERVED1 = 3~%uint8 value~%~%================================================================================~%MSG: dms_msgs/CancelResponseTypeEnum~%uint8 NO_ACTION = 0~%uint8 CANCEL_SUCCESS = 1~%uint8 CANCEL_FAIL = 2~%uint8 RESERVED = 3~%uint8 RESERVED1 = 4~%uint8 value~%~%================================================================================~%MSG: dms_msgs/RecogStatusTypeEnum~%uint8 NO_ACTION = 0~%uint8 Recognizing = 1~%uint8 Recog_SUCCESS = 2~%uint8 Recog_FAIL = 3~%uint8 RESERVED = 4~%uint8 RESERVED1 = 5~%uint8 value~%~%================================================================================~%MSG: dms_msgs/RecogErrorTypeEnum~%uint8 NO_ERROR = 0~%uint8 CAMERA_ABNORMAL = 1~%uint8 NO_FACE = 2~%uint8 LOW_FACE_QUALITY = 3~%uint8 FACE_NOT_ALIVE = 4~%uint8 USER_NOT_EXIST = 5~%uint8 TIME_OUT = 6~%uint8 EMPTY_USER_LIST = 7~%uint8 SYSTEM_ERROR = 8~%uint8 RESERVED = 9~%uint8 RESERVED1 = 10~%uint8 RESERVED2 = 11~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSFidRecogInfo>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'user_id))
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'recog_response))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cancel_response))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'recog_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'recog_error))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSFidRecogInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSFidRecogInfo
    (cl:cons ':available (available msg))
    (cl:cons ':user_id (user_id msg))
    (cl:cons ':recognize_timestamp_us (recognize_timestamp_us msg))
    (cl:cons ':recognize_cancel_timestamp_us (recognize_cancel_timestamp_us msg))
    (cl:cons ':recog_response (recog_response msg))
    (cl:cons ':cancel_response (cancel_response msg))
    (cl:cons ':recog_status (recog_status msg))
    (cl:cons ':recog_error (recog_error msg))
))
