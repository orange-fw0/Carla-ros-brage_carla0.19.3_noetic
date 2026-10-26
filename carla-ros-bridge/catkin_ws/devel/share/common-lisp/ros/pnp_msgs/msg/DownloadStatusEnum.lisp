; Auto-generated. Do not edit!


(cl:in-package pnp_msgs-msg)


;//! \htmlinclude DownloadStatusEnum.msg.html

(cl:defclass <DownloadStatusEnum> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DownloadStatusEnum (<DownloadStatusEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DownloadStatusEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DownloadStatusEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pnp_msgs-msg:<DownloadStatusEnum> is deprecated: use pnp_msgs-msg:DownloadStatusEnum instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <DownloadStatusEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:status-val is deprecated.  Use pnp_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DownloadStatusEnum>)))
    "Constants for message type '<DownloadStatusEnum>"
  '((:UNKNOWN . 0)
    (:SUCCESS . 1)
    (:DOWNLOADING . 2)
    (:WAITING . 3)
    (:FAILED . 4)
    (:ERROR_TIMEOUT . 100)
    (:ERROR_NETWORK . 101)
    (:ERROR_DISK_FULL . 102)
    (:ERROR_PERMISSION . 103))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DownloadStatusEnum)))
    "Constants for message type 'DownloadStatusEnum"
  '((:UNKNOWN . 0)
    (:SUCCESS . 1)
    (:DOWNLOADING . 2)
    (:WAITING . 3)
    (:FAILED . 4)
    (:ERROR_TIMEOUT . 100)
    (:ERROR_NETWORK . 101)
    (:ERROR_DISK_FULL . 102)
    (:ERROR_PERMISSION . 103))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DownloadStatusEnum>) ostream)
  "Serializes a message object of type '<DownloadStatusEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DownloadStatusEnum>) istream)
  "Deserializes a message object of type '<DownloadStatusEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DownloadStatusEnum>)))
  "Returns string type for a message object of type '<DownloadStatusEnum>"
  "pnp_msgs/DownloadStatusEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DownloadStatusEnum)))
  "Returns string type for a message object of type 'DownloadStatusEnum"
  "pnp_msgs/DownloadStatusEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DownloadStatusEnum>)))
  "Returns md5sum for a message object of type '<DownloadStatusEnum>"
  "42c07cefb0526e56a353247602ed2068")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DownloadStatusEnum)))
  "Returns md5sum for a message object of type 'DownloadStatusEnum"
  "42c07cefb0526e56a353247602ed2068")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DownloadStatusEnum>)))
  "Returns full string definition for message of type '<DownloadStatusEnum>"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 SUCCESS = 1~%uint8 DOWNLOADING = 2~%uint8 WAITING = 3~%uint8 FAILED = 4~%uint8 ERROR_TIMEOUT = 100~%uint8 ERROR_NETWORK = 101~%uint8 ERROR_DISK_FULL = 102~%uint8 ERROR_PERMISSION = 103~%uint8 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DownloadStatusEnum)))
  "Returns full string definition for message of type 'DownloadStatusEnum"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 SUCCESS = 1~%uint8 DOWNLOADING = 2~%uint8 WAITING = 3~%uint8 FAILED = 4~%uint8 ERROR_TIMEOUT = 100~%uint8 ERROR_NETWORK = 101~%uint8 ERROR_DISK_FULL = 102~%uint8 ERROR_PERMISSION = 103~%uint8 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DownloadStatusEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DownloadStatusEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'DownloadStatusEnum
    (cl:cons ':status (status msg))
))
