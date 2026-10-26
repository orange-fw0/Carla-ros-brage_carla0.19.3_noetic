; Auto-generated. Do not edit!


(cl:in-package sensor_interface_msgs-msg)


;//! \htmlinclude UssEnvelopeId.msg.html

(cl:defclass <UssEnvelopeId> (roslisp-msg-protocol:ros-message)
  ((tx_sensor_id
    :reader tx_sensor_id
    :initarg :tx_sensor_id
    :type cl:fixnum
    :initform 0)
   (rx_sensor_id
    :reader rx_sensor_id
    :initarg :rx_sensor_id
    :type cl:fixnum
    :initform 0)
   (host_timestamp
    :reader host_timestamp
    :initarg :host_timestamp
    :type cl:integer
    :initform 0)
   (meta
    :reader meta
    :initarg :meta
    :type sensor_interface_msgs-msg:UltrasonicResultMeta
    :initform (cl:make-instance 'sensor_interface_msgs-msg:UltrasonicResultMeta)))
)

(cl:defclass UssEnvelopeId (<UssEnvelopeId>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UssEnvelopeId>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UssEnvelopeId)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_interface_msgs-msg:<UssEnvelopeId> is deprecated: use sensor_interface_msgs-msg:UssEnvelopeId instead.")))

(cl:ensure-generic-function 'tx_sensor_id-val :lambda-list '(m))
(cl:defmethod tx_sensor_id-val ((m <UssEnvelopeId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:tx_sensor_id-val is deprecated.  Use sensor_interface_msgs-msg:tx_sensor_id instead.")
  (tx_sensor_id m))

(cl:ensure-generic-function 'rx_sensor_id-val :lambda-list '(m))
(cl:defmethod rx_sensor_id-val ((m <UssEnvelopeId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:rx_sensor_id-val is deprecated.  Use sensor_interface_msgs-msg:rx_sensor_id instead.")
  (rx_sensor_id m))

(cl:ensure-generic-function 'host_timestamp-val :lambda-list '(m))
(cl:defmethod host_timestamp-val ((m <UssEnvelopeId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:host_timestamp-val is deprecated.  Use sensor_interface_msgs-msg:host_timestamp instead.")
  (host_timestamp m))

(cl:ensure-generic-function 'meta-val :lambda-list '(m))
(cl:defmethod meta-val ((m <UssEnvelopeId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:meta-val is deprecated.  Use sensor_interface_msgs-msg:meta instead.")
  (meta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UssEnvelopeId>) ostream)
  "Serializes a message object of type '<UssEnvelopeId>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tx_sensor_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rx_sensor_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'host_timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'host_timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'host_timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'host_timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'host_timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'host_timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'host_timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'host_timestamp)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UssEnvelopeId>) istream)
  "Deserializes a message object of type '<UssEnvelopeId>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tx_sensor_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rx_sensor_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'host_timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'host_timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'host_timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'host_timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'host_timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'host_timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'host_timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'host_timestamp)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UssEnvelopeId>)))
  "Returns string type for a message object of type '<UssEnvelopeId>"
  "sensor_interface_msgs/UssEnvelopeId")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UssEnvelopeId)))
  "Returns string type for a message object of type 'UssEnvelopeId"
  "sensor_interface_msgs/UssEnvelopeId")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UssEnvelopeId>)))
  "Returns md5sum for a message object of type '<UssEnvelopeId>"
  "a61116ae7661c86f18987f9ab42039db")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UssEnvelopeId)))
  "Returns md5sum for a message object of type 'UssEnvelopeId"
  "a61116ae7661c86f18987f9ab42039db")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UssEnvelopeId>)))
  "Returns full string definition for message of type '<UssEnvelopeId>"
  (cl:format cl:nil "uint8 tx_sensor_id~%uint8 rx_sensor_id~%uint64 host_timestamp~%sensor_interface_msgs/UltrasonicResultMeta meta~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicResultMeta~%uint64 timestamp_us~%uint64 seq~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UssEnvelopeId)))
  "Returns full string definition for message of type 'UssEnvelopeId"
  (cl:format cl:nil "uint8 tx_sensor_id~%uint8 rx_sensor_id~%uint64 host_timestamp~%sensor_interface_msgs/UltrasonicResultMeta meta~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicResultMeta~%uint64 timestamp_us~%uint64 seq~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UssEnvelopeId>))
  (cl:+ 0
     1
     1
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UssEnvelopeId>))
  "Converts a ROS message object to a list"
  (cl:list 'UssEnvelopeId
    (cl:cons ':tx_sensor_id (tx_sensor_id msg))
    (cl:cons ':rx_sensor_id (rx_sensor_id msg))
    (cl:cons ':host_timestamp (host_timestamp msg))
    (cl:cons ':meta (meta msg))
))
