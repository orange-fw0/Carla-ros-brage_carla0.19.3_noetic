; Auto-generated. Do not edit!


(cl:in-package sensor_interface_msgs-msg)


;//! \htmlinclude UssEnvelopeDiag.msg.html

(cl:defclass <UssEnvelopeDiag> (roslisp-msg-protocol:ros-message)
  ((aRawient_temperature
    :reader aRawient_temperature
    :initarg :aRawient_temperature
    :type cl:fixnum
    :initform 0)
   (cont_wav_noise_l
    :reader cont_wav_noise_l
    :initarg :cont_wav_noise_l
    :type cl:fixnum
    :initform 0)
   (cont_wav_noise_h
    :reader cont_wav_noise_h
    :initarg :cont_wav_noise_h
    :type cl:fixnum
    :initform 0)
   (sensor_status_valid
    :reader sensor_status_valid
    :initarg :sensor_status_valid
    :type cl:boolean
    :initform cl:nil)
   (sensor_com_status_valid
    :reader sensor_com_status_valid
    :initarg :sensor_com_status_valid
    :type cl:boolean
    :initform cl:nil)
   (thermal_warning
    :reader thermal_warning
    :initarg :thermal_warning
    :type cl:boolean
    :initform cl:nil)
   (tx_fail
    :reader tx_fail
    :initarg :tx_fail
    :type cl:boolean
    :initform cl:nil)
   (sensor_disturbed
    :reader sensor_disturbed
    :initarg :sensor_disturbed
    :type cl:boolean
    :initform cl:nil)
   (white_band_noise
    :reader white_band_noise
    :initarg :white_band_noise
    :type cl:boolean
    :initform cl:nil)
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:integer
    :initform 0))
)

(cl:defclass UssEnvelopeDiag (<UssEnvelopeDiag>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UssEnvelopeDiag>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UssEnvelopeDiag)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_interface_msgs-msg:<UssEnvelopeDiag> is deprecated: use sensor_interface_msgs-msg:UssEnvelopeDiag instead.")))

(cl:ensure-generic-function 'aRawient_temperature-val :lambda-list '(m))
(cl:defmethod aRawient_temperature-val ((m <UssEnvelopeDiag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:aRawient_temperature-val is deprecated.  Use sensor_interface_msgs-msg:aRawient_temperature instead.")
  (aRawient_temperature m))

(cl:ensure-generic-function 'cont_wav_noise_l-val :lambda-list '(m))
(cl:defmethod cont_wav_noise_l-val ((m <UssEnvelopeDiag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:cont_wav_noise_l-val is deprecated.  Use sensor_interface_msgs-msg:cont_wav_noise_l instead.")
  (cont_wav_noise_l m))

(cl:ensure-generic-function 'cont_wav_noise_h-val :lambda-list '(m))
(cl:defmethod cont_wav_noise_h-val ((m <UssEnvelopeDiag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:cont_wav_noise_h-val is deprecated.  Use sensor_interface_msgs-msg:cont_wav_noise_h instead.")
  (cont_wav_noise_h m))

(cl:ensure-generic-function 'sensor_status_valid-val :lambda-list '(m))
(cl:defmethod sensor_status_valid-val ((m <UssEnvelopeDiag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:sensor_status_valid-val is deprecated.  Use sensor_interface_msgs-msg:sensor_status_valid instead.")
  (sensor_status_valid m))

(cl:ensure-generic-function 'sensor_com_status_valid-val :lambda-list '(m))
(cl:defmethod sensor_com_status_valid-val ((m <UssEnvelopeDiag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:sensor_com_status_valid-val is deprecated.  Use sensor_interface_msgs-msg:sensor_com_status_valid instead.")
  (sensor_com_status_valid m))

(cl:ensure-generic-function 'thermal_warning-val :lambda-list '(m))
(cl:defmethod thermal_warning-val ((m <UssEnvelopeDiag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:thermal_warning-val is deprecated.  Use sensor_interface_msgs-msg:thermal_warning instead.")
  (thermal_warning m))

(cl:ensure-generic-function 'tx_fail-val :lambda-list '(m))
(cl:defmethod tx_fail-val ((m <UssEnvelopeDiag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:tx_fail-val is deprecated.  Use sensor_interface_msgs-msg:tx_fail instead.")
  (tx_fail m))

(cl:ensure-generic-function 'sensor_disturbed-val :lambda-list '(m))
(cl:defmethod sensor_disturbed-val ((m <UssEnvelopeDiag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:sensor_disturbed-val is deprecated.  Use sensor_interface_msgs-msg:sensor_disturbed instead.")
  (sensor_disturbed m))

(cl:ensure-generic-function 'white_band_noise-val :lambda-list '(m))
(cl:defmethod white_band_noise-val ((m <UssEnvelopeDiag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:white_band_noise-val is deprecated.  Use sensor_interface_msgs-msg:white_band_noise instead.")
  (white_band_noise m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <UssEnvelopeDiag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:reserved-val is deprecated.  Use sensor_interface_msgs-msg:reserved instead.")
  (reserved m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UssEnvelopeDiag>) ostream)
  "Serializes a message object of type '<UssEnvelopeDiag>"
  (cl:let* ((signed (cl:slot-value msg 'aRawient_temperature)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cont_wav_noise_l)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cont_wav_noise_h)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'sensor_status_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'sensor_com_status_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'thermal_warning) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'tx_fail) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'sensor_disturbed) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'white_band_noise) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'reserved)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UssEnvelopeDiag>) istream)
  "Deserializes a message object of type '<UssEnvelopeDiag>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'aRawient_temperature) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cont_wav_noise_l)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cont_wav_noise_h)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sensor_status_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'sensor_com_status_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'thermal_warning) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'tx_fail) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'sensor_disturbed) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'white_band_noise) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UssEnvelopeDiag>)))
  "Returns string type for a message object of type '<UssEnvelopeDiag>"
  "sensor_interface_msgs/UssEnvelopeDiag")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UssEnvelopeDiag)))
  "Returns string type for a message object of type 'UssEnvelopeDiag"
  "sensor_interface_msgs/UssEnvelopeDiag")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UssEnvelopeDiag>)))
  "Returns md5sum for a message object of type '<UssEnvelopeDiag>"
  "2af146137d90807c3d4b5c3b6eb99e23")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UssEnvelopeDiag)))
  "Returns md5sum for a message object of type 'UssEnvelopeDiag"
  "2af146137d90807c3d4b5c3b6eb99e23")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UssEnvelopeDiag>)))
  "Returns full string definition for message of type '<UssEnvelopeDiag>"
  (cl:format cl:nil "int8 aRawient_temperature~%uint8 cont_wav_noise_l~%uint8 cont_wav_noise_h~%bool sensor_status_valid~%bool sensor_com_status_valid~%bool thermal_warning~%bool tx_fail~%bool sensor_disturbed~%bool white_band_noise~%uint64 reserved~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UssEnvelopeDiag)))
  "Returns full string definition for message of type 'UssEnvelopeDiag"
  (cl:format cl:nil "int8 aRawient_temperature~%uint8 cont_wav_noise_l~%uint8 cont_wav_noise_h~%bool sensor_status_valid~%bool sensor_com_status_valid~%bool thermal_warning~%bool tx_fail~%bool sensor_disturbed~%bool white_band_noise~%uint64 reserved~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UssEnvelopeDiag>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UssEnvelopeDiag>))
  "Converts a ROS message object to a list"
  (cl:list 'UssEnvelopeDiag
    (cl:cons ':aRawient_temperature (aRawient_temperature msg))
    (cl:cons ':cont_wav_noise_l (cont_wav_noise_l msg))
    (cl:cons ':cont_wav_noise_h (cont_wav_noise_h msg))
    (cl:cons ':sensor_status_valid (sensor_status_valid msg))
    (cl:cons ':sensor_com_status_valid (sensor_com_status_valid msg))
    (cl:cons ':thermal_warning (thermal_warning msg))
    (cl:cons ':tx_fail (tx_fail msg))
    (cl:cons ':sensor_disturbed (sensor_disturbed msg))
    (cl:cons ':white_band_noise (white_band_noise msg))
    (cl:cons ':reserved (reserved msg))
))
