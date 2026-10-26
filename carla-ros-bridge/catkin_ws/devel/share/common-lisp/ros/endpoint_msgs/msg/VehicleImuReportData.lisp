; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude VehicleImuReportData.msg.html

(cl:defclass <VehicleImuReportData> (roslisp-msg-protocol:ros-message)
  ((timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (linear_acceleration_lat
    :reader linear_acceleration_lat
    :initarg :linear_acceleration_lat
    :type cl:float
    :initform 0.0)
   (linear_acceleration_lon
    :reader linear_acceleration_lon
    :initarg :linear_acceleration_lon
    :type cl:float
    :initform 0.0)
   (linear_acceleration_vert
    :reader linear_acceleration_vert
    :initarg :linear_acceleration_vert
    :type cl:float
    :initform 0.0)
   (angular_velocity_roll
    :reader angular_velocity_roll
    :initarg :angular_velocity_roll
    :type cl:float
    :initform 0.0)
   (angular_velocity_pitch
    :reader angular_velocity_pitch
    :initarg :angular_velocity_pitch
    :type cl:float
    :initform 0.0)
   (angular_velocity_yaw
    :reader angular_velocity_yaw
    :initarg :angular_velocity_yaw
    :type cl:float
    :initform 0.0)
   (valid
    :reader valid
    :initarg :valid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass VehicleImuReportData (<VehicleImuReportData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleImuReportData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleImuReportData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<VehicleImuReportData> is deprecated: use endpoint_msgs-msg:VehicleImuReportData instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <VehicleImuReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:timestamp_us-val is deprecated.  Use endpoint_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'linear_acceleration_lat-val :lambda-list '(m))
(cl:defmethod linear_acceleration_lat-val ((m <VehicleImuReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:linear_acceleration_lat-val is deprecated.  Use endpoint_msgs-msg:linear_acceleration_lat instead.")
  (linear_acceleration_lat m))

(cl:ensure-generic-function 'linear_acceleration_lon-val :lambda-list '(m))
(cl:defmethod linear_acceleration_lon-val ((m <VehicleImuReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:linear_acceleration_lon-val is deprecated.  Use endpoint_msgs-msg:linear_acceleration_lon instead.")
  (linear_acceleration_lon m))

(cl:ensure-generic-function 'linear_acceleration_vert-val :lambda-list '(m))
(cl:defmethod linear_acceleration_vert-val ((m <VehicleImuReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:linear_acceleration_vert-val is deprecated.  Use endpoint_msgs-msg:linear_acceleration_vert instead.")
  (linear_acceleration_vert m))

(cl:ensure-generic-function 'angular_velocity_roll-val :lambda-list '(m))
(cl:defmethod angular_velocity_roll-val ((m <VehicleImuReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:angular_velocity_roll-val is deprecated.  Use endpoint_msgs-msg:angular_velocity_roll instead.")
  (angular_velocity_roll m))

(cl:ensure-generic-function 'angular_velocity_pitch-val :lambda-list '(m))
(cl:defmethod angular_velocity_pitch-val ((m <VehicleImuReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:angular_velocity_pitch-val is deprecated.  Use endpoint_msgs-msg:angular_velocity_pitch instead.")
  (angular_velocity_pitch m))

(cl:ensure-generic-function 'angular_velocity_yaw-val :lambda-list '(m))
(cl:defmethod angular_velocity_yaw-val ((m <VehicleImuReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:angular_velocity_yaw-val is deprecated.  Use endpoint_msgs-msg:angular_velocity_yaw instead.")
  (angular_velocity_yaw m))

(cl:ensure-generic-function 'valid-val :lambda-list '(m))
(cl:defmethod valid-val ((m <VehicleImuReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:valid-val is deprecated.  Use endpoint_msgs-msg:valid instead.")
  (valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleImuReportData>) ostream)
  "Serializes a message object of type '<VehicleImuReportData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'linear_acceleration_lat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'linear_acceleration_lon))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'linear_acceleration_vert))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angular_velocity_roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angular_velocity_pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angular_velocity_yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleImuReportData>) istream)
  "Deserializes a message object of type '<VehicleImuReportData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear_acceleration_lat) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear_acceleration_lon) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear_acceleration_vert) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular_velocity_roll) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular_velocity_pitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular_velocity_yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleImuReportData>)))
  "Returns string type for a message object of type '<VehicleImuReportData>"
  "endpoint_msgs/VehicleImuReportData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleImuReportData)))
  "Returns string type for a message object of type 'VehicleImuReportData"
  "endpoint_msgs/VehicleImuReportData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleImuReportData>)))
  "Returns md5sum for a message object of type '<VehicleImuReportData>"
  "a88bce10ffda34b3908a00ee4f04bd9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleImuReportData)))
  "Returns md5sum for a message object of type 'VehicleImuReportData"
  "a88bce10ffda34b3908a00ee4f04bd9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleImuReportData>)))
  "Returns full string definition for message of type '<VehicleImuReportData>"
  (cl:format cl:nil "uint64 timestamp_us~%float32 linear_acceleration_lat~%float32 linear_acceleration_lon~%float32 linear_acceleration_vert~%float32 angular_velocity_roll~%float32 angular_velocity_pitch~%float32 angular_velocity_yaw~%bool valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleImuReportData)))
  "Returns full string definition for message of type 'VehicleImuReportData"
  (cl:format cl:nil "uint64 timestamp_us~%float32 linear_acceleration_lat~%float32 linear_acceleration_lon~%float32 linear_acceleration_vert~%float32 angular_velocity_roll~%float32 angular_velocity_pitch~%float32 angular_velocity_yaw~%bool valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleImuReportData>))
  (cl:+ 0
     8
     4
     4
     4
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleImuReportData>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleImuReportData
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':linear_acceleration_lat (linear_acceleration_lat msg))
    (cl:cons ':linear_acceleration_lon (linear_acceleration_lon msg))
    (cl:cons ':linear_acceleration_vert (linear_acceleration_vert msg))
    (cl:cons ':angular_velocity_roll (angular_velocity_roll msg))
    (cl:cons ':angular_velocity_pitch (angular_velocity_pitch msg))
    (cl:cons ':angular_velocity_yaw (angular_velocity_yaw msg))
    (cl:cons ':valid (valid msg))
))
