; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude BoschRadarSensorStatus.msg.html

(cl:defclass <BoschRadarSensorStatus> (roslisp-msg-protocol:ros-message)
  ((sensor_tag
    :reader sensor_tag
    :initarg :sensor_tag
    :type cl:string
    :initform "")
   (hardware_failure
    :reader hardware_failure
    :initarg :hardware_failure
    :type cl:fixnum
    :initform 0)
   (alignment_failure
    :reader alignment_failure
    :initarg :alignment_failure
    :type cl:fixnum
    :initform 0)
   (sgu_failure
    :reader sgu_failure
    :initarg :sgu_failure
    :type cl:fixnum
    :initform 0)
   (sensor_dirty
    :reader sensor_dirty
    :initarg :sensor_dirty
    :type cl:fixnum
    :initform 0)
   (other_failure
    :reader other_failure
    :initarg :other_failure
    :type cl:fixnum
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (details
    :reader details
    :initarg :details
    :type cl:string
    :initform ""))
)

(cl:defclass BoschRadarSensorStatus (<BoschRadarSensorStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BoschRadarSensorStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BoschRadarSensorStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<BoschRadarSensorStatus> is deprecated: use perception_interface_msgs-msg:BoschRadarSensorStatus instead.")))

(cl:ensure-generic-function 'sensor_tag-val :lambda-list '(m))
(cl:defmethod sensor_tag-val ((m <BoschRadarSensorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:sensor_tag-val is deprecated.  Use perception_interface_msgs-msg:sensor_tag instead.")
  (sensor_tag m))

(cl:ensure-generic-function 'hardware_failure-val :lambda-list '(m))
(cl:defmethod hardware_failure-val ((m <BoschRadarSensorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:hardware_failure-val is deprecated.  Use perception_interface_msgs-msg:hardware_failure instead.")
  (hardware_failure m))

(cl:ensure-generic-function 'alignment_failure-val :lambda-list '(m))
(cl:defmethod alignment_failure-val ((m <BoschRadarSensorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:alignment_failure-val is deprecated.  Use perception_interface_msgs-msg:alignment_failure instead.")
  (alignment_failure m))

(cl:ensure-generic-function 'sgu_failure-val :lambda-list '(m))
(cl:defmethod sgu_failure-val ((m <BoschRadarSensorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:sgu_failure-val is deprecated.  Use perception_interface_msgs-msg:sgu_failure instead.")
  (sgu_failure m))

(cl:ensure-generic-function 'sensor_dirty-val :lambda-list '(m))
(cl:defmethod sensor_dirty-val ((m <BoschRadarSensorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:sensor_dirty-val is deprecated.  Use perception_interface_msgs-msg:sensor_dirty instead.")
  (sensor_dirty m))

(cl:ensure-generic-function 'other_failure-val :lambda-list '(m))
(cl:defmethod other_failure-val ((m <BoschRadarSensorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:other_failure-val is deprecated.  Use perception_interface_msgs-msg:other_failure instead.")
  (other_failure m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <BoschRadarSensorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:status-val is deprecated.  Use perception_interface_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'details-val :lambda-list '(m))
(cl:defmethod details-val ((m <BoschRadarSensorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:details-val is deprecated.  Use perception_interface_msgs-msg:details instead.")
  (details m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BoschRadarSensorStatus>) ostream)
  "Serializes a message object of type '<BoschRadarSensorStatus>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sensor_tag))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sensor_tag))
  (cl:let* ((signed (cl:slot-value msg 'hardware_failure)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'alignment_failure)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'sgu_failure)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'sensor_dirty)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'other_failure)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'status)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'details))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'details))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BoschRadarSensorStatus>) istream)
  "Deserializes a message object of type '<BoschRadarSensorStatus>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sensor_tag) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sensor_tag) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hardware_failure) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'alignment_failure) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sgu_failure) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sensor_dirty) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'other_failure) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'details) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'details) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BoschRadarSensorStatus>)))
  "Returns string type for a message object of type '<BoschRadarSensorStatus>"
  "perception_interface_msgs/BoschRadarSensorStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BoschRadarSensorStatus)))
  "Returns string type for a message object of type 'BoschRadarSensorStatus"
  "perception_interface_msgs/BoschRadarSensorStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BoschRadarSensorStatus>)))
  "Returns md5sum for a message object of type '<BoschRadarSensorStatus>"
  "4a4e73d46d61946dedbe1686d258c98b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BoschRadarSensorStatus)))
  "Returns md5sum for a message object of type 'BoschRadarSensorStatus"
  "4a4e73d46d61946dedbe1686d258c98b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BoschRadarSensorStatus>)))
  "Returns full string definition for message of type '<BoschRadarSensorStatus>"
  (cl:format cl:nil "string sensor_tag~%int16 hardware_failure~%int16 alignment_failure~%int16 sgu_failure~%int16 sensor_dirty~%int16 other_failure~%uint64 status~%string details~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BoschRadarSensorStatus)))
  "Returns full string definition for message of type 'BoschRadarSensorStatus"
  (cl:format cl:nil "string sensor_tag~%int16 hardware_failure~%int16 alignment_failure~%int16 sgu_failure~%int16 sensor_dirty~%int16 other_failure~%uint64 status~%string details~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BoschRadarSensorStatus>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'sensor_tag))
     2
     2
     2
     2
     2
     8
     4 (cl:length (cl:slot-value msg 'details))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BoschRadarSensorStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'BoschRadarSensorStatus
    (cl:cons ':sensor_tag (sensor_tag msg))
    (cl:cons ':hardware_failure (hardware_failure msg))
    (cl:cons ':alignment_failure (alignment_failure msg))
    (cl:cons ':sgu_failure (sgu_failure msg))
    (cl:cons ':sensor_dirty (sensor_dirty msg))
    (cl:cons ':other_failure (other_failure msg))
    (cl:cons ':status (status msg))
    (cl:cons ':details (details msg))
))
