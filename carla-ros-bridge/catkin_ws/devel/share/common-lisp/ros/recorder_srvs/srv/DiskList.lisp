; Auto-generated. Do not edit!


(cl:in-package recorder_srvs-srv)


;//! \htmlinclude DiskList-request.msg.html

(cl:defclass <DiskList-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass DiskList-request (<DiskList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DiskList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DiskList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name recorder_srvs-srv:<DiskList-request> is deprecated: use recorder_srvs-srv:DiskList-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DiskList-request>) ostream)
  "Serializes a message object of type '<DiskList-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DiskList-request>) istream)
  "Deserializes a message object of type '<DiskList-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DiskList-request>)))
  "Returns string type for a service object of type '<DiskList-request>"
  "recorder_srvs/DiskListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DiskList-request)))
  "Returns string type for a service object of type 'DiskList-request"
  "recorder_srvs/DiskListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DiskList-request>)))
  "Returns md5sum for a message object of type '<DiskList-request>"
  "f7561e9c15ed1890f077e05240578306")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DiskList-request)))
  "Returns md5sum for a message object of type 'DiskList-request"
  "f7561e9c15ed1890f077e05240578306")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DiskList-request>)))
  "Returns full string definition for message of type '<DiskList-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DiskList-request)))
  "Returns full string definition for message of type 'DiskList-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DiskList-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DiskList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DiskList-request
))
;//! \htmlinclude DiskList-response.msg.html

(cl:defclass <DiskList-response> (roslisp-msg-protocol:ros-message)
  ((sn
    :reader sn
    :initarg :sn
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (disk_type
    :reader disk_type
    :initarg :disk_type
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (status
    :reader status
    :initarg :status
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass DiskList-response (<DiskList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DiskList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DiskList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name recorder_srvs-srv:<DiskList-response> is deprecated: use recorder_srvs-srv:DiskList-response instead.")))

(cl:ensure-generic-function 'sn-val :lambda-list '(m))
(cl:defmethod sn-val ((m <DiskList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:sn-val is deprecated.  Use recorder_srvs-srv:sn instead.")
  (sn m))

(cl:ensure-generic-function 'disk_type-val :lambda-list '(m))
(cl:defmethod disk_type-val ((m <DiskList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:disk_type-val is deprecated.  Use recorder_srvs-srv:disk_type instead.")
  (disk_type m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <DiskList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:status-val is deprecated.  Use recorder_srvs-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DiskList-response>) ostream)
  "Serializes a message object of type '<DiskList-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sn))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'sn))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'disk_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'disk_type))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DiskList-response>) istream)
  "Deserializes a message object of type '<DiskList-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sn) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sn)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'disk_type) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'disk_type)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'status) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'status)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DiskList-response>)))
  "Returns string type for a service object of type '<DiskList-response>"
  "recorder_srvs/DiskListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DiskList-response)))
  "Returns string type for a service object of type 'DiskList-response"
  "recorder_srvs/DiskListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DiskList-response>)))
  "Returns md5sum for a message object of type '<DiskList-response>"
  "f7561e9c15ed1890f077e05240578306")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DiskList-response)))
  "Returns md5sum for a message object of type 'DiskList-response"
  "f7561e9c15ed1890f077e05240578306")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DiskList-response>)))
  "Returns full string definition for message of type '<DiskList-response>"
  (cl:format cl:nil "string[] sn~%string[] disk_type~%string[] status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DiskList-response)))
  "Returns full string definition for message of type 'DiskList-response"
  (cl:format cl:nil "string[] sn~%string[] disk_type~%string[] status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DiskList-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sn) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'disk_type) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'status) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DiskList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DiskList-response
    (cl:cons ':sn (sn msg))
    (cl:cons ':disk_type (disk_type msg))
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DiskList)))
  'DiskList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DiskList)))
  'DiskList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DiskList)))
  "Returns string type for a service object of type '<DiskList>"
  "recorder_srvs/DiskList")