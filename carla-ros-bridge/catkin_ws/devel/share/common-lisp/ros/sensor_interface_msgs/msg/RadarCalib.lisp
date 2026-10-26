; Auto-generated. Do not edit!


(cl:in-package sensor_interface_msgs-msg)


;//! \htmlinclude RadarCalib.msg.html

(cl:defclass <RadarCalib> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0)
   (radar_id
    :reader radar_id
    :initarg :radar_id
    :type cl:fixnum
    :initform 0)
   (r_s2b
    :reader r_s2b
    :initarg :r_s2b
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (t_s2b
    :reader t_s2b
    :initarg :t_s2b
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass RadarCalib (<RadarCalib>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarCalib>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarCalib)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_interface_msgs-msg:<RadarCalib> is deprecated: use sensor_interface_msgs-msg:RadarCalib instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <RadarCalib>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:state-val is deprecated.  Use sensor_interface_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'radar_id-val :lambda-list '(m))
(cl:defmethod radar_id-val ((m <RadarCalib>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:radar_id-val is deprecated.  Use sensor_interface_msgs-msg:radar_id instead.")
  (radar_id m))

(cl:ensure-generic-function 'r_s2b-val :lambda-list '(m))
(cl:defmethod r_s2b-val ((m <RadarCalib>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:r_s2b-val is deprecated.  Use sensor_interface_msgs-msg:r_s2b instead.")
  (r_s2b m))

(cl:ensure-generic-function 't_s2b-val :lambda-list '(m))
(cl:defmethod t_s2b-val ((m <RadarCalib>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:t_s2b-val is deprecated.  Use sensor_interface_msgs-msg:t_s2b instead.")
  (t_s2b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarCalib>) ostream)
  "Serializes a message object of type '<RadarCalib>"
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'radar_id)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'r_s2b))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'r_s2b))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 't_s2b))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 't_s2b))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarCalib>) istream)
  "Deserializes a message object of type '<RadarCalib>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'radar_id)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'r_s2b) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'r_s2b)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 't_s2b) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 't_s2b)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarCalib>)))
  "Returns string type for a message object of type '<RadarCalib>"
  "sensor_interface_msgs/RadarCalib")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarCalib)))
  "Returns string type for a message object of type 'RadarCalib"
  "sensor_interface_msgs/RadarCalib")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarCalib>)))
  "Returns md5sum for a message object of type '<RadarCalib>"
  "0d00cb5e5b04fb8e831eddff0ebefbba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarCalib)))
  "Returns md5sum for a message object of type 'RadarCalib"
  "0d00cb5e5b04fb8e831eddff0ebefbba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarCalib>)))
  "Returns full string definition for message of type '<RadarCalib>"
  (cl:format cl:nil "int8 state~%uint8 radar_id~%float64[] r_s2b~%float64[] t_s2b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarCalib)))
  "Returns full string definition for message of type 'RadarCalib"
  (cl:format cl:nil "int8 state~%uint8 radar_id~%float64[] r_s2b~%float64[] t_s2b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarCalib>))
  (cl:+ 0
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'r_s2b) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 't_s2b) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarCalib>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarCalib
    (cl:cons ':state (state msg))
    (cl:cons ':radar_id (radar_id msg))
    (cl:cons ':r_s2b (r_s2b msg))
    (cl:cons ':t_s2b (t_s2b msg))
))
