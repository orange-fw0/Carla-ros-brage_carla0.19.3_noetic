; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude PathTuningParams.msg.html

(cl:defclass <PathTuningParams> (roslisp-msg-protocol:ros-message)
  ((max_num_iterations
    :reader max_num_iterations
    :initarg :max_num_iterations
    :type cl:integer
    :initform 0)
   (soft_boundary_scale
    :reader soft_boundary_scale
    :initarg :soft_boundary_scale
    :type cl:float
    :initform 0.0)
   (hard_boundary_scale
    :reader hard_boundary_scale
    :initarg :hard_boundary_scale
    :type cl:float
    :initform 0.0)
   (init_curvature_scale
    :reader init_curvature_scale
    :initarg :init_curvature_scale
    :type cl:float
    :initform 0.0)
   (curvature_limit_scale
    :reader curvature_limit_scale
    :initarg :curvature_limit_scale
    :type cl:float
    :initform 0.0)
   (lat_accel_scale
    :reader lat_accel_scale
    :initarg :lat_accel_scale
    :type cl:float
    :initform 0.0)
   (lat_jerk_scale
    :reader lat_jerk_scale
    :initarg :lat_jerk_scale
    :type cl:float
    :initform 0.0)
   (heading_scale
    :reader heading_scale
    :initarg :heading_scale
    :type cl:float
    :initform 0.0)
   (ref_centering_scale
    :reader ref_centering_scale
    :initarg :ref_centering_scale
    :type cl:float
    :initform 0.0)
   (prev_plan_centering_scale
    :reader prev_plan_centering_scale
    :initarg :prev_plan_centering_scale
    :type cl:float
    :initform 0.0))
)

(cl:defclass PathTuningParams (<PathTuningParams>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PathTuningParams>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PathTuningParams)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<PathTuningParams> is deprecated: use planning_msgs-msg:PathTuningParams instead.")))

(cl:ensure-generic-function 'max_num_iterations-val :lambda-list '(m))
(cl:defmethod max_num_iterations-val ((m <PathTuningParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:max_num_iterations-val is deprecated.  Use planning_msgs-msg:max_num_iterations instead.")
  (max_num_iterations m))

(cl:ensure-generic-function 'soft_boundary_scale-val :lambda-list '(m))
(cl:defmethod soft_boundary_scale-val ((m <PathTuningParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:soft_boundary_scale-val is deprecated.  Use planning_msgs-msg:soft_boundary_scale instead.")
  (soft_boundary_scale m))

(cl:ensure-generic-function 'hard_boundary_scale-val :lambda-list '(m))
(cl:defmethod hard_boundary_scale-val ((m <PathTuningParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:hard_boundary_scale-val is deprecated.  Use planning_msgs-msg:hard_boundary_scale instead.")
  (hard_boundary_scale m))

(cl:ensure-generic-function 'init_curvature_scale-val :lambda-list '(m))
(cl:defmethod init_curvature_scale-val ((m <PathTuningParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:init_curvature_scale-val is deprecated.  Use planning_msgs-msg:init_curvature_scale instead.")
  (init_curvature_scale m))

(cl:ensure-generic-function 'curvature_limit_scale-val :lambda-list '(m))
(cl:defmethod curvature_limit_scale-val ((m <PathTuningParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:curvature_limit_scale-val is deprecated.  Use planning_msgs-msg:curvature_limit_scale instead.")
  (curvature_limit_scale m))

(cl:ensure-generic-function 'lat_accel_scale-val :lambda-list '(m))
(cl:defmethod lat_accel_scale-val ((m <PathTuningParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:lat_accel_scale-val is deprecated.  Use planning_msgs-msg:lat_accel_scale instead.")
  (lat_accel_scale m))

(cl:ensure-generic-function 'lat_jerk_scale-val :lambda-list '(m))
(cl:defmethod lat_jerk_scale-val ((m <PathTuningParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:lat_jerk_scale-val is deprecated.  Use planning_msgs-msg:lat_jerk_scale instead.")
  (lat_jerk_scale m))

(cl:ensure-generic-function 'heading_scale-val :lambda-list '(m))
(cl:defmethod heading_scale-val ((m <PathTuningParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:heading_scale-val is deprecated.  Use planning_msgs-msg:heading_scale instead.")
  (heading_scale m))

(cl:ensure-generic-function 'ref_centering_scale-val :lambda-list '(m))
(cl:defmethod ref_centering_scale-val ((m <PathTuningParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:ref_centering_scale-val is deprecated.  Use planning_msgs-msg:ref_centering_scale instead.")
  (ref_centering_scale m))

(cl:ensure-generic-function 'prev_plan_centering_scale-val :lambda-list '(m))
(cl:defmethod prev_plan_centering_scale-val ((m <PathTuningParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:prev_plan_centering_scale-val is deprecated.  Use planning_msgs-msg:prev_plan_centering_scale instead.")
  (prev_plan_centering_scale m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PathTuningParams>) ostream)
  "Serializes a message object of type '<PathTuningParams>"
  (cl:let* ((signed (cl:slot-value msg 'max_num_iterations)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'soft_boundary_scale))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'hard_boundary_scale))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'init_curvature_scale))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'curvature_limit_scale))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lat_accel_scale))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lat_jerk_scale))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'heading_scale))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ref_centering_scale))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'prev_plan_centering_scale))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PathTuningParams>) istream)
  "Deserializes a message object of type '<PathTuningParams>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'max_num_iterations) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'soft_boundary_scale) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'hard_boundary_scale) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'init_curvature_scale) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'curvature_limit_scale) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lat_accel_scale) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lat_jerk_scale) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heading_scale) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ref_centering_scale) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'prev_plan_centering_scale) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PathTuningParams>)))
  "Returns string type for a message object of type '<PathTuningParams>"
  "planning_msgs/PathTuningParams")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathTuningParams)))
  "Returns string type for a message object of type 'PathTuningParams"
  "planning_msgs/PathTuningParams")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PathTuningParams>)))
  "Returns md5sum for a message object of type '<PathTuningParams>"
  "4cf25fa9dc37ad1ef3bea3f90eac2d2a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PathTuningParams)))
  "Returns md5sum for a message object of type 'PathTuningParams"
  "4cf25fa9dc37ad1ef3bea3f90eac2d2a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PathTuningParams>)))
  "Returns full string definition for message of type '<PathTuningParams>"
  (cl:format cl:nil "int32 max_num_iterations~%float64 soft_boundary_scale~%float64 hard_boundary_scale~%float64 init_curvature_scale~%float64 curvature_limit_scale~%float64 lat_accel_scale~%float64 lat_jerk_scale~%float64 heading_scale~%float64 ref_centering_scale~%float64 prev_plan_centering_scale~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PathTuningParams)))
  "Returns full string definition for message of type 'PathTuningParams"
  (cl:format cl:nil "int32 max_num_iterations~%float64 soft_boundary_scale~%float64 hard_boundary_scale~%float64 init_curvature_scale~%float64 curvature_limit_scale~%float64 lat_accel_scale~%float64 lat_jerk_scale~%float64 heading_scale~%float64 ref_centering_scale~%float64 prev_plan_centering_scale~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PathTuningParams>))
  (cl:+ 0
     4
     8
     8
     8
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PathTuningParams>))
  "Converts a ROS message object to a list"
  (cl:list 'PathTuningParams
    (cl:cons ':max_num_iterations (max_num_iterations msg))
    (cl:cons ':soft_boundary_scale (soft_boundary_scale msg))
    (cl:cons ':hard_boundary_scale (hard_boundary_scale msg))
    (cl:cons ':init_curvature_scale (init_curvature_scale msg))
    (cl:cons ':curvature_limit_scale (curvature_limit_scale msg))
    (cl:cons ':lat_accel_scale (lat_accel_scale msg))
    (cl:cons ':lat_jerk_scale (lat_jerk_scale msg))
    (cl:cons ':heading_scale (heading_scale msg))
    (cl:cons ':ref_centering_scale (ref_centering_scale msg))
    (cl:cons ':prev_plan_centering_scale (prev_plan_centering_scale msg))
))
