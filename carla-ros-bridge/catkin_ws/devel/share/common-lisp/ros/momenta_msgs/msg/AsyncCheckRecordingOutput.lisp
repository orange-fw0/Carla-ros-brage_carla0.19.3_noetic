; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude AsyncCheckRecordingOutput.msg.html

(cl:defclass <AsyncCheckRecordingOutput> (roslisp-msg-protocol:ros-message)
  ((key_num
    :reader key_num
    :initarg :key_num
    :type cl:integer
    :initform 0)
   (service_response
    :reader service_response
    :initarg :service_response
    :type cl:boolean
    :initform cl:nil)
   (collection_disk_recording
    :reader collection_disk_recording
    :initarg :collection_disk_recording
    :type cl:boolean
    :initform cl:nil)
   (export_disk_recording
    :reader export_disk_recording
    :initarg :export_disk_recording
    :type cl:boolean
    :initform cl:nil)
   (any_disk_recording
    :reader any_disk_recording
    :initarg :any_disk_recording
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AsyncCheckRecordingOutput (<AsyncCheckRecordingOutput>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AsyncCheckRecordingOutput>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AsyncCheckRecordingOutput)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<AsyncCheckRecordingOutput> is deprecated: use momenta_msgs-msg:AsyncCheckRecordingOutput instead.")))

(cl:ensure-generic-function 'key_num-val :lambda-list '(m))
(cl:defmethod key_num-val ((m <AsyncCheckRecordingOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:key_num-val is deprecated.  Use momenta_msgs-msg:key_num instead.")
  (key_num m))

(cl:ensure-generic-function 'service_response-val :lambda-list '(m))
(cl:defmethod service_response-val ((m <AsyncCheckRecordingOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:service_response-val is deprecated.  Use momenta_msgs-msg:service_response instead.")
  (service_response m))

(cl:ensure-generic-function 'collection_disk_recording-val :lambda-list '(m))
(cl:defmethod collection_disk_recording-val ((m <AsyncCheckRecordingOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:collection_disk_recording-val is deprecated.  Use momenta_msgs-msg:collection_disk_recording instead.")
  (collection_disk_recording m))

(cl:ensure-generic-function 'export_disk_recording-val :lambda-list '(m))
(cl:defmethod export_disk_recording-val ((m <AsyncCheckRecordingOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:export_disk_recording-val is deprecated.  Use momenta_msgs-msg:export_disk_recording instead.")
  (export_disk_recording m))

(cl:ensure-generic-function 'any_disk_recording-val :lambda-list '(m))
(cl:defmethod any_disk_recording-val ((m <AsyncCheckRecordingOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:any_disk_recording-val is deprecated.  Use momenta_msgs-msg:any_disk_recording instead.")
  (any_disk_recording m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AsyncCheckRecordingOutput>) ostream)
  "Serializes a message object of type '<AsyncCheckRecordingOutput>"
  (cl:let* ((signed (cl:slot-value msg 'key_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'service_response) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'collection_disk_recording) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'export_disk_recording) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'any_disk_recording) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AsyncCheckRecordingOutput>) istream)
  "Deserializes a message object of type '<AsyncCheckRecordingOutput>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'key_num) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:setf (cl:slot-value msg 'service_response) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'collection_disk_recording) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'export_disk_recording) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'any_disk_recording) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AsyncCheckRecordingOutput>)))
  "Returns string type for a message object of type '<AsyncCheckRecordingOutput>"
  "momenta_msgs/AsyncCheckRecordingOutput")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AsyncCheckRecordingOutput)))
  "Returns string type for a message object of type 'AsyncCheckRecordingOutput"
  "momenta_msgs/AsyncCheckRecordingOutput")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AsyncCheckRecordingOutput>)))
  "Returns md5sum for a message object of type '<AsyncCheckRecordingOutput>"
  "139a52bcb58adb276452c2e48ad73665")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AsyncCheckRecordingOutput)))
  "Returns md5sum for a message object of type 'AsyncCheckRecordingOutput"
  "139a52bcb58adb276452c2e48ad73665")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AsyncCheckRecordingOutput>)))
  "Returns full string definition for message of type '<AsyncCheckRecordingOutput>"
  (cl:format cl:nil "int64 key_num~%bool service_response~%bool collection_disk_recording~%bool export_disk_recording~%bool any_disk_recording~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AsyncCheckRecordingOutput)))
  "Returns full string definition for message of type 'AsyncCheckRecordingOutput"
  (cl:format cl:nil "int64 key_num~%bool service_response~%bool collection_disk_recording~%bool export_disk_recording~%bool any_disk_recording~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AsyncCheckRecordingOutput>))
  (cl:+ 0
     8
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AsyncCheckRecordingOutput>))
  "Converts a ROS message object to a list"
  (cl:list 'AsyncCheckRecordingOutput
    (cl:cons ':key_num (key_num msg))
    (cl:cons ':service_response (service_response msg))
    (cl:cons ':collection_disk_recording (collection_disk_recording msg))
    (cl:cons ':export_disk_recording (export_disk_recording msg))
    (cl:cons ':any_disk_recording (any_disk_recording msg))
))
