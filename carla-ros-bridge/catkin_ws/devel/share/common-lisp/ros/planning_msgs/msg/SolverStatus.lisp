; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude SolverStatus.msg.html

(cl:defclass <SolverStatus> (roslisp-msg-protocol:ros-message)
  ((lat_motion_status
    :reader lat_motion_status
    :initarg :lat_motion_status
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (lat_solver_status
    :reader lat_solver_status
    :initarg :lat_solver_status
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (lon_motion_status
    :reader lon_motion_status
    :initarg :lon_motion_status
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (lon_solver_status
    :reader lon_solver_status
    :initarg :lon_solver_status
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass SolverStatus (<SolverStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SolverStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SolverStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<SolverStatus> is deprecated: use planning_msgs-msg:SolverStatus instead.")))

(cl:ensure-generic-function 'lat_motion_status-val :lambda-list '(m))
(cl:defmethod lat_motion_status-val ((m <SolverStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:lat_motion_status-val is deprecated.  Use planning_msgs-msg:lat_motion_status instead.")
  (lat_motion_status m))

(cl:ensure-generic-function 'lat_solver_status-val :lambda-list '(m))
(cl:defmethod lat_solver_status-val ((m <SolverStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:lat_solver_status-val is deprecated.  Use planning_msgs-msg:lat_solver_status instead.")
  (lat_solver_status m))

(cl:ensure-generic-function 'lon_motion_status-val :lambda-list '(m))
(cl:defmethod lon_motion_status-val ((m <SolverStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:lon_motion_status-val is deprecated.  Use planning_msgs-msg:lon_motion_status instead.")
  (lon_motion_status m))

(cl:ensure-generic-function 'lon_solver_status-val :lambda-list '(m))
(cl:defmethod lon_solver_status-val ((m <SolverStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:lon_solver_status-val is deprecated.  Use planning_msgs-msg:lon_solver_status instead.")
  (lon_solver_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SolverStatus>) ostream)
  "Serializes a message object of type '<SolverStatus>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lat_motion_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'lat_motion_status))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lat_solver_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'lat_solver_status))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lon_motion_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'lon_motion_status))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lon_solver_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'lon_solver_status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SolverStatus>) istream)
  "Deserializes a message object of type '<SolverStatus>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lat_motion_status) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lat_motion_status)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lat_solver_status) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lat_solver_status)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lon_motion_status) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lon_motion_status)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lon_solver_status) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lon_solver_status)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SolverStatus>)))
  "Returns string type for a message object of type '<SolverStatus>"
  "planning_msgs/SolverStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SolverStatus)))
  "Returns string type for a message object of type 'SolverStatus"
  "planning_msgs/SolverStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SolverStatus>)))
  "Returns md5sum for a message object of type '<SolverStatus>"
  "402b203189b794d7f6e7355152cdcb2f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SolverStatus)))
  "Returns md5sum for a message object of type 'SolverStatus"
  "402b203189b794d7f6e7355152cdcb2f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SolverStatus>)))
  "Returns full string definition for message of type '<SolverStatus>"
  (cl:format cl:nil "uint8[] lat_motion_status~%uint8[] lat_solver_status~%uint8[] lon_motion_status~%uint8[] lon_solver_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SolverStatus)))
  "Returns full string definition for message of type 'SolverStatus"
  (cl:format cl:nil "uint8[] lat_motion_status~%uint8[] lat_solver_status~%uint8[] lon_motion_status~%uint8[] lon_solver_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SolverStatus>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lat_motion_status) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lat_solver_status) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lon_motion_status) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lon_solver_status) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SolverStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'SolverStatus
    (cl:cons ':lat_motion_status (lat_motion_status msg))
    (cl:cons ':lat_solver_status (lat_solver_status msg))
    (cl:cons ':lon_motion_status (lon_motion_status msg))
    (cl:cons ':lon_solver_status (lon_solver_status msg))
))
