; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude Curve.msg.html

(cl:defclass <Curve> (roslisp-msg-protocol:ros-message)
  ((polynomial
    :reader polynomial
    :initarg :polynomial
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (start_x
    :reader start_x
    :initarg :start_x
    :type cl:float
    :initform 0.0)
   (end_x
    :reader end_x
    :initarg :end_x
    :type cl:float
    :initform 0.0))
)

(cl:defclass Curve (<Curve>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Curve>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Curve)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<Curve> is deprecated: use planning_msgs-msg:Curve instead.")))

(cl:ensure-generic-function 'polynomial-val :lambda-list '(m))
(cl:defmethod polynomial-val ((m <Curve>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:polynomial-val is deprecated.  Use planning_msgs-msg:polynomial instead.")
  (polynomial m))

(cl:ensure-generic-function 'start_x-val :lambda-list '(m))
(cl:defmethod start_x-val ((m <Curve>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:start_x-val is deprecated.  Use planning_msgs-msg:start_x instead.")
  (start_x m))

(cl:ensure-generic-function 'end_x-val :lambda-list '(m))
(cl:defmethod end_x-val ((m <Curve>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:end_x-val is deprecated.  Use planning_msgs-msg:end_x instead.")
  (end_x m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Curve>) ostream)
  "Serializes a message object of type '<Curve>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'polynomial))))
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
   (cl:slot-value msg 'polynomial))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'start_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'end_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Curve>) istream)
  "Deserializes a message object of type '<Curve>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'polynomial) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'polynomial)))
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'start_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'end_x) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Curve>)))
  "Returns string type for a message object of type '<Curve>"
  "planning_msgs/Curve")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Curve)))
  "Returns string type for a message object of type 'Curve"
  "planning_msgs/Curve")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Curve>)))
  "Returns md5sum for a message object of type '<Curve>"
  "7be1d35f078cd84c7b6565543f55ab98")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Curve)))
  "Returns md5sum for a message object of type 'Curve"
  "7be1d35f078cd84c7b6565543f55ab98")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Curve>)))
  "Returns full string definition for message of type '<Curve>"
  (cl:format cl:nil "float64[] polynomial~%float64 start_x~%float64 end_x~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Curve)))
  "Returns full string definition for message of type 'Curve"
  (cl:format cl:nil "float64[] polynomial~%float64 start_x~%float64 end_x~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Curve>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'polynomial) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Curve>))
  "Converts a ROS message object to a list"
  (cl:list 'Curve
    (cl:cons ':polynomial (polynomial msg))
    (cl:cons ':start_x (start_x msg))
    (cl:cons ':end_x (end_x msg))
))
