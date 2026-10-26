; Auto-generated. Do not edit!


(cl:in-package sensor_interface_msgs-msg)


;//! \htmlinclude UltrasonicUpaData.msg.html

(cl:defclass <UltrasonicUpaData> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (meta
    :reader meta
    :initarg :meta
    :type sensor_interface_msgs-msg:UltrasonicResultMeta
    :initform (cl:make-instance 'sensor_interface_msgs-msg:UltrasonicResultMeta))
   (upadistance
    :reader upadistance
    :initarg :upadistance
    :type cl:float
    :initform 0.0)
   (reserved_info
    :reader reserved_info
    :initarg :reserved_info
    :type cl:string
    :initform ""))
)

(cl:defclass UltrasonicUpaData (<UltrasonicUpaData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UltrasonicUpaData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UltrasonicUpaData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_interface_msgs-msg:<UltrasonicUpaData> is deprecated: use sensor_interface_msgs-msg:UltrasonicUpaData instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <UltrasonicUpaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:available-val is deprecated.  Use sensor_interface_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'meta-val :lambda-list '(m))
(cl:defmethod meta-val ((m <UltrasonicUpaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:meta-val is deprecated.  Use sensor_interface_msgs-msg:meta instead.")
  (meta m))

(cl:ensure-generic-function 'upadistance-val :lambda-list '(m))
(cl:defmethod upadistance-val ((m <UltrasonicUpaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:upadistance-val is deprecated.  Use sensor_interface_msgs-msg:upadistance instead.")
  (upadistance m))

(cl:ensure-generic-function 'reserved_info-val :lambda-list '(m))
(cl:defmethod reserved_info-val ((m <UltrasonicUpaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:reserved_info-val is deprecated.  Use sensor_interface_msgs-msg:reserved_info instead.")
  (reserved_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UltrasonicUpaData>) ostream)
  "Serializes a message object of type '<UltrasonicUpaData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'upadistance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UltrasonicUpaData>) istream)
  "Deserializes a message object of type '<UltrasonicUpaData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'upadistance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reserved_info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reserved_info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UltrasonicUpaData>)))
  "Returns string type for a message object of type '<UltrasonicUpaData>"
  "sensor_interface_msgs/UltrasonicUpaData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UltrasonicUpaData)))
  "Returns string type for a message object of type 'UltrasonicUpaData"
  "sensor_interface_msgs/UltrasonicUpaData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UltrasonicUpaData>)))
  "Returns md5sum for a message object of type '<UltrasonicUpaData>"
  "32d6d66cd52cab1bd6234fade608e5f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UltrasonicUpaData)))
  "Returns md5sum for a message object of type 'UltrasonicUpaData"
  "32d6d66cd52cab1bd6234fade608e5f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UltrasonicUpaData>)))
  "Returns full string definition for message of type '<UltrasonicUpaData>"
  (cl:format cl:nil "uint8 available~%sensor_interface_msgs/UltrasonicResultMeta meta~%float32 upadistance~%string reserved_info~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicResultMeta~%uint64 timestamp_us~%uint64 seq~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UltrasonicUpaData)))
  "Returns full string definition for message of type 'UltrasonicUpaData"
  (cl:format cl:nil "uint8 available~%sensor_interface_msgs/UltrasonicResultMeta meta~%float32 upadistance~%string reserved_info~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicResultMeta~%uint64 timestamp_us~%uint64 seq~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UltrasonicUpaData>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta))
     4
     4 (cl:length (cl:slot-value msg 'reserved_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UltrasonicUpaData>))
  "Converts a ROS message object to a list"
  (cl:list 'UltrasonicUpaData
    (cl:cons ':available (available msg))
    (cl:cons ':meta (meta msg))
    (cl:cons ':upadistance (upadistance msg))
    (cl:cons ':reserved_info (reserved_info msg))
))
