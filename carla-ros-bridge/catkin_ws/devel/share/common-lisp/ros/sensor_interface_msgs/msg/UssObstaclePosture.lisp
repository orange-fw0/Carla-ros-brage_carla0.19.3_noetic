; Auto-generated. Do not edit!


(cl:in-package sensor_interface_msgs-msg)


;//! \htmlinclude UssObstaclePosture.msg.html

(cl:defclass <UssObstaclePosture> (roslisp-msg-protocol:ros-message)
  ((timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:integer
    :initform 0)
   (posture_x
    :reader posture_x
    :initarg :posture_x
    :type cl:float
    :initform 0.0)
   (posture_y
    :reader posture_y
    :initarg :posture_y
    :type cl:float
    :initform 0.0)
   (posture_theta
    :reader posture_theta
    :initarg :posture_theta
    :type cl:float
    :initform 0.0))
)

(cl:defclass UssObstaclePosture (<UssObstaclePosture>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UssObstaclePosture>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UssObstaclePosture)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_interface_msgs-msg:<UssObstaclePosture> is deprecated: use sensor_interface_msgs-msg:UssObstaclePosture instead.")))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <UssObstaclePosture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:timestamp-val is deprecated.  Use sensor_interface_msgs-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'posture_x-val :lambda-list '(m))
(cl:defmethod posture_x-val ((m <UssObstaclePosture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:posture_x-val is deprecated.  Use sensor_interface_msgs-msg:posture_x instead.")
  (posture_x m))

(cl:ensure-generic-function 'posture_y-val :lambda-list '(m))
(cl:defmethod posture_y-val ((m <UssObstaclePosture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:posture_y-val is deprecated.  Use sensor_interface_msgs-msg:posture_y instead.")
  (posture_y m))

(cl:ensure-generic-function 'posture_theta-val :lambda-list '(m))
(cl:defmethod posture_theta-val ((m <UssObstaclePosture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:posture_theta-val is deprecated.  Use sensor_interface_msgs-msg:posture_theta instead.")
  (posture_theta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UssObstaclePosture>) ostream)
  "Serializes a message object of type '<UssObstaclePosture>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'posture_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'posture_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'posture_theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UssObstaclePosture>) istream)
  "Deserializes a message object of type '<UssObstaclePosture>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'posture_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'posture_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'posture_theta) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UssObstaclePosture>)))
  "Returns string type for a message object of type '<UssObstaclePosture>"
  "sensor_interface_msgs/UssObstaclePosture")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UssObstaclePosture)))
  "Returns string type for a message object of type 'UssObstaclePosture"
  "sensor_interface_msgs/UssObstaclePosture")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UssObstaclePosture>)))
  "Returns md5sum for a message object of type '<UssObstaclePosture>"
  "a42b2261ec94328995ebab19d0158fc8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UssObstaclePosture)))
  "Returns md5sum for a message object of type 'UssObstaclePosture"
  "a42b2261ec94328995ebab19d0158fc8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UssObstaclePosture>)))
  "Returns full string definition for message of type '<UssObstaclePosture>"
  (cl:format cl:nil "uint64 timestamp~%float32 posture_x~%float32 posture_y~%float32 posture_theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UssObstaclePosture)))
  "Returns full string definition for message of type 'UssObstaclePosture"
  (cl:format cl:nil "uint64 timestamp~%float32 posture_x~%float32 posture_y~%float32 posture_theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UssObstaclePosture>))
  (cl:+ 0
     8
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UssObstaclePosture>))
  "Converts a ROS message object to a list"
  (cl:list 'UssObstaclePosture
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':posture_x (posture_x msg))
    (cl:cons ':posture_y (posture_y msg))
    (cl:cons ':posture_theta (posture_theta msg))
))
