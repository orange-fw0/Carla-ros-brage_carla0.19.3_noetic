; Auto-generated. Do not edit!


(cl:in-package gps_imu_msgs-msg)


;//! \htmlinclude MLAImuBasic.msg.html

(cl:defclass <MLAImuBasic> (roslisp-msg-protocol:ros-message)
  ((accx
    :reader accx
    :initarg :accx
    :type cl:float
    :initform 0.0)
   (accy
    :reader accy
    :initarg :accy
    :type cl:float
    :initform 0.0)
   (accz
    :reader accz
    :initarg :accz
    :type cl:float
    :initform 0.0)
   (gyrox
    :reader gyrox
    :initarg :gyrox
    :type cl:float
    :initform 0.0)
   (gyroy
    :reader gyroy
    :initarg :gyroy
    :type cl:float
    :initform 0.0)
   (gyroz
    :reader gyroz
    :initarg :gyroz
    :type cl:float
    :initform 0.0)
   (temperature
    :reader temperature
    :initarg :temperature
    :type cl:float
    :initform 0.0))
)

(cl:defclass MLAImuBasic (<MLAImuBasic>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MLAImuBasic>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MLAImuBasic)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gps_imu_msgs-msg:<MLAImuBasic> is deprecated: use gps_imu_msgs-msg:MLAImuBasic instead.")))

(cl:ensure-generic-function 'accx-val :lambda-list '(m))
(cl:defmethod accx-val ((m <MLAImuBasic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_imu_msgs-msg:accx-val is deprecated.  Use gps_imu_msgs-msg:accx instead.")
  (accx m))

(cl:ensure-generic-function 'accy-val :lambda-list '(m))
(cl:defmethod accy-val ((m <MLAImuBasic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_imu_msgs-msg:accy-val is deprecated.  Use gps_imu_msgs-msg:accy instead.")
  (accy m))

(cl:ensure-generic-function 'accz-val :lambda-list '(m))
(cl:defmethod accz-val ((m <MLAImuBasic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_imu_msgs-msg:accz-val is deprecated.  Use gps_imu_msgs-msg:accz instead.")
  (accz m))

(cl:ensure-generic-function 'gyrox-val :lambda-list '(m))
(cl:defmethod gyrox-val ((m <MLAImuBasic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_imu_msgs-msg:gyrox-val is deprecated.  Use gps_imu_msgs-msg:gyrox instead.")
  (gyrox m))

(cl:ensure-generic-function 'gyroy-val :lambda-list '(m))
(cl:defmethod gyroy-val ((m <MLAImuBasic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_imu_msgs-msg:gyroy-val is deprecated.  Use gps_imu_msgs-msg:gyroy instead.")
  (gyroy m))

(cl:ensure-generic-function 'gyroz-val :lambda-list '(m))
(cl:defmethod gyroz-val ((m <MLAImuBasic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_imu_msgs-msg:gyroz-val is deprecated.  Use gps_imu_msgs-msg:gyroz instead.")
  (gyroz m))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <MLAImuBasic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_imu_msgs-msg:temperature-val is deprecated.  Use gps_imu_msgs-msg:temperature instead.")
  (temperature m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MLAImuBasic>) ostream)
  "Serializes a message object of type '<MLAImuBasic>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'accx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'accy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'accz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'gyrox))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'gyroy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'gyroz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MLAImuBasic>) istream)
  "Deserializes a message object of type '<MLAImuBasic>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accx) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accy) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accz) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gyrox) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gyroy) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gyroz) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temperature) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MLAImuBasic>)))
  "Returns string type for a message object of type '<MLAImuBasic>"
  "gps_imu_msgs/MLAImuBasic")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MLAImuBasic)))
  "Returns string type for a message object of type 'MLAImuBasic"
  "gps_imu_msgs/MLAImuBasic")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MLAImuBasic>)))
  "Returns md5sum for a message object of type '<MLAImuBasic>"
  "e48b0634009003373d93d35ff65e87fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MLAImuBasic)))
  "Returns md5sum for a message object of type 'MLAImuBasic"
  "e48b0634009003373d93d35ff65e87fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MLAImuBasic>)))
  "Returns full string definition for message of type '<MLAImuBasic>"
  (cl:format cl:nil "float64 accx~%float64 accy~%float64 accz~%float64 gyrox~%float64 gyroy~%float64 gyroz~%float64 temperature~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MLAImuBasic)))
  "Returns full string definition for message of type 'MLAImuBasic"
  (cl:format cl:nil "float64 accx~%float64 accy~%float64 accz~%float64 gyrox~%float64 gyroy~%float64 gyroz~%float64 temperature~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MLAImuBasic>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MLAImuBasic>))
  "Converts a ROS message object to a list"
  (cl:list 'MLAImuBasic
    (cl:cons ':accx (accx msg))
    (cl:cons ':accy (accy msg))
    (cl:cons ':accz (accz msg))
    (cl:cons ':gyrox (gyrox msg))
    (cl:cons ':gyroy (gyroy msg))
    (cl:cons ':gyroz (gyroz msg))
    (cl:cons ':temperature (temperature msg))
))
