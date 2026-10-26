; Auto-generated. Do not edit!


(cl:in-package pnp_msgs-msg)


;//! \htmlinclude MapDownloadStatus.msg.html

(cl:defclass <MapDownloadStatus> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type pnp_msgs-msg:DownloadStatusEnum
    :initform (cl:make-instance 'pnp_msgs-msg:DownloadStatusEnum))
   (progress
    :reader progress
    :initarg :progress
    :type cl:fixnum
    :initform 0)
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:string
    :initform ""))
)

(cl:defclass MapDownloadStatus (<MapDownloadStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapDownloadStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapDownloadStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pnp_msgs-msg:<MapDownloadStatus> is deprecated: use pnp_msgs-msg:MapDownloadStatus instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <MapDownloadStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:id-val is deprecated.  Use pnp_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <MapDownloadStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:status-val is deprecated.  Use pnp_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'progress-val :lambda-list '(m))
(cl:defmethod progress-val ((m <MapDownloadStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:progress-val is deprecated.  Use pnp_msgs-msg:progress instead.")
  (progress m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <MapDownloadStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:reserved-val is deprecated.  Use pnp_msgs-msg:reserved instead.")
  (reserved m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapDownloadStatus>) ostream)
  "Serializes a message object of type '<MapDownloadStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'progress)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapDownloadStatus>) istream)
  "Deserializes a message object of type '<MapDownloadStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'progress)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reserved) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reserved) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapDownloadStatus>)))
  "Returns string type for a message object of type '<MapDownloadStatus>"
  "pnp_msgs/MapDownloadStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapDownloadStatus)))
  "Returns string type for a message object of type 'MapDownloadStatus"
  "pnp_msgs/MapDownloadStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapDownloadStatus>)))
  "Returns md5sum for a message object of type '<MapDownloadStatus>"
  "ff8c586ca872f50ab53f3cb8def515eb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapDownloadStatus)))
  "Returns md5sum for a message object of type 'MapDownloadStatus"
  "ff8c586ca872f50ab53f3cb8def515eb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapDownloadStatus>)))
  "Returns full string definition for message of type '<MapDownloadStatus>"
  (cl:format cl:nil "uint32 id~%pnp_msgs/DownloadStatusEnum status~%uint8 progress~%string reserved~%~%================================================================================~%MSG: pnp_msgs/DownloadStatusEnum~%uint8 UNKNOWN = 0~%uint8 SUCCESS = 1~%uint8 DOWNLOADING = 2~%uint8 WAITING = 3~%uint8 FAILED = 4~%uint8 ERROR_TIMEOUT = 100~%uint8 ERROR_NETWORK = 101~%uint8 ERROR_DISK_FULL = 102~%uint8 ERROR_PERMISSION = 103~%uint8 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapDownloadStatus)))
  "Returns full string definition for message of type 'MapDownloadStatus"
  (cl:format cl:nil "uint32 id~%pnp_msgs/DownloadStatusEnum status~%uint8 progress~%string reserved~%~%================================================================================~%MSG: pnp_msgs/DownloadStatusEnum~%uint8 UNKNOWN = 0~%uint8 SUCCESS = 1~%uint8 DOWNLOADING = 2~%uint8 WAITING = 3~%uint8 FAILED = 4~%uint8 ERROR_TIMEOUT = 100~%uint8 ERROR_NETWORK = 101~%uint8 ERROR_DISK_FULL = 102~%uint8 ERROR_PERMISSION = 103~%uint8 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapDownloadStatus>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
     1
     4 (cl:length (cl:slot-value msg 'reserved))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapDownloadStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'MapDownloadStatus
    (cl:cons ':id (id msg))
    (cl:cons ':status (status msg))
    (cl:cons ':progress (progress msg))
    (cl:cons ':reserved (reserved msg))
))
