; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude PredictionTrajectoryPoint.msg.html

(cl:defclass <PredictionTrajectoryPoint> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (theta
    :reader theta
    :initarg :theta
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (prob
    :reader prob
    :initarg :prob
    :type cl:float
    :initform 0.0)
   (std_dev_x
    :reader std_dev_x
    :initarg :std_dev_x
    :type cl:float
    :initform 0.0)
   (std_dev_y
    :reader std_dev_y
    :initarg :std_dev_y
    :type cl:float
    :initform 0.0)
   (sigma_xy
    :reader sigma_xy
    :initarg :sigma_xy
    :type cl:float
    :initform 0.0)
   (std_dev_yaw
    :reader std_dev_yaw
    :initarg :std_dev_yaw
    :type cl:float
    :initform 0.0)
   (std_dev_speed
    :reader std_dev_speed
    :initarg :std_dev_speed
    :type cl:float
    :initform 0.0)
   (relative_ego_x
    :reader relative_ego_x
    :initarg :relative_ego_x
    :type cl:float
    :initform 0.0)
   (relative_ego_y
    :reader relative_ego_y
    :initarg :relative_ego_y
    :type cl:float
    :initform 0.0)
   (relative_ego_yaw
    :reader relative_ego_yaw
    :initarg :relative_ego_yaw
    :type cl:float
    :initform 0.0)
   (relative_ego_speed
    :reader relative_ego_speed
    :initarg :relative_ego_speed
    :type cl:float
    :initform 0.0)
   (relative_ego_std_dev_x
    :reader relative_ego_std_dev_x
    :initarg :relative_ego_std_dev_x
    :type cl:float
    :initform 0.0)
   (relative_ego_std_dev_y
    :reader relative_ego_std_dev_y
    :initarg :relative_ego_std_dev_y
    :type cl:float
    :initform 0.0)
   (relative_ego_std_dev_yaw
    :reader relative_ego_std_dev_yaw
    :initarg :relative_ego_std_dev_yaw
    :type cl:float
    :initform 0.0)
   (relative_ego_std_dev_speed
    :reader relative_ego_std_dev_speed
    :initarg :relative_ego_std_dev_speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass PredictionTrajectoryPoint (<PredictionTrajectoryPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PredictionTrajectoryPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PredictionTrajectoryPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<PredictionTrajectoryPoint> is deprecated: use momenta_msgs-msg:PredictionTrajectoryPoint instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <PredictionTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:x-val is deprecated.  Use momenta_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <PredictionTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:y-val is deprecated.  Use momenta_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <PredictionTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:yaw-val is deprecated.  Use momenta_msgs-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <PredictionTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:theta-val is deprecated.  Use momenta_msgs-msg:theta instead.")
  (theta m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <PredictionTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:speed-val is deprecated.  Use momenta_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'prob-val :lambda-list '(m))
(cl:defmethod prob-val ((m <PredictionTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:prob-val is deprecated.  Use momenta_msgs-msg:prob instead.")
  (prob m))

(cl:ensure-generic-function 'std_dev_x-val :lambda-list '(m))
(cl:defmethod std_dev_x-val ((m <PredictionTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:std_dev_x-val is deprecated.  Use momenta_msgs-msg:std_dev_x instead.")
  (std_dev_x m))

(cl:ensure-generic-function 'std_dev_y-val :lambda-list '(m))
(cl:defmethod std_dev_y-val ((m <PredictionTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:std_dev_y-val is deprecated.  Use momenta_msgs-msg:std_dev_y instead.")
  (std_dev_y m))

(cl:ensure-generic-function 'sigma_xy-val :lambda-list '(m))
(cl:defmethod sigma_xy-val ((m <PredictionTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:sigma_xy-val is deprecated.  Use momenta_msgs-msg:sigma_xy instead.")
  (sigma_xy m))

(cl:ensure-generic-function 'std_dev_yaw-val :lambda-list '(m))
(cl:defmethod std_dev_yaw-val ((m <PredictionTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:std_dev_yaw-val is deprecated.  Use momenta_msgs-msg:std_dev_yaw instead.")
  (std_dev_yaw m))

(cl:ensure-generic-function 'std_dev_speed-val :lambda-list '(m))
(cl:defmethod std_dev_speed-val ((m <PredictionTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:std_dev_speed-val is deprecated.  Use momenta_msgs-msg:std_dev_speed instead.")
  (std_dev_speed m))

(cl:ensure-generic-function 'relative_ego_x-val :lambda-list '(m))
(cl:defmethod relative_ego_x-val ((m <PredictionTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:relative_ego_x-val is deprecated.  Use momenta_msgs-msg:relative_ego_x instead.")
  (relative_ego_x m))

(cl:ensure-generic-function 'relative_ego_y-val :lambda-list '(m))
(cl:defmethod relative_ego_y-val ((m <PredictionTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:relative_ego_y-val is deprecated.  Use momenta_msgs-msg:relative_ego_y instead.")
  (relative_ego_y m))

(cl:ensure-generic-function 'relative_ego_yaw-val :lambda-list '(m))
(cl:defmethod relative_ego_yaw-val ((m <PredictionTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:relative_ego_yaw-val is deprecated.  Use momenta_msgs-msg:relative_ego_yaw instead.")
  (relative_ego_yaw m))

(cl:ensure-generic-function 'relative_ego_speed-val :lambda-list '(m))
(cl:defmethod relative_ego_speed-val ((m <PredictionTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:relative_ego_speed-val is deprecated.  Use momenta_msgs-msg:relative_ego_speed instead.")
  (relative_ego_speed m))

(cl:ensure-generic-function 'relative_ego_std_dev_x-val :lambda-list '(m))
(cl:defmethod relative_ego_std_dev_x-val ((m <PredictionTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:relative_ego_std_dev_x-val is deprecated.  Use momenta_msgs-msg:relative_ego_std_dev_x instead.")
  (relative_ego_std_dev_x m))

(cl:ensure-generic-function 'relative_ego_std_dev_y-val :lambda-list '(m))
(cl:defmethod relative_ego_std_dev_y-val ((m <PredictionTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:relative_ego_std_dev_y-val is deprecated.  Use momenta_msgs-msg:relative_ego_std_dev_y instead.")
  (relative_ego_std_dev_y m))

(cl:ensure-generic-function 'relative_ego_std_dev_yaw-val :lambda-list '(m))
(cl:defmethod relative_ego_std_dev_yaw-val ((m <PredictionTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:relative_ego_std_dev_yaw-val is deprecated.  Use momenta_msgs-msg:relative_ego_std_dev_yaw instead.")
  (relative_ego_std_dev_yaw m))

(cl:ensure-generic-function 'relative_ego_std_dev_speed-val :lambda-list '(m))
(cl:defmethod relative_ego_std_dev_speed-val ((m <PredictionTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:relative_ego_std_dev_speed-val is deprecated.  Use momenta_msgs-msg:relative_ego_std_dev_speed instead.")
  (relative_ego_std_dev_speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PredictionTrajectoryPoint>) ostream)
  "Serializes a message object of type '<PredictionTrajectoryPoint>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'prob))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'std_dev_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'std_dev_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sigma_xy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'std_dev_yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'std_dev_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'relative_ego_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'relative_ego_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'relative_ego_yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'relative_ego_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'relative_ego_std_dev_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'relative_ego_std_dev_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'relative_ego_std_dev_yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'relative_ego_std_dev_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PredictionTrajectoryPoint>) istream)
  "Deserializes a message object of type '<PredictionTrajectoryPoint>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'prob) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'std_dev_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'std_dev_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sigma_xy) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'std_dev_yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'std_dev_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'relative_ego_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'relative_ego_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'relative_ego_yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'relative_ego_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'relative_ego_std_dev_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'relative_ego_std_dev_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'relative_ego_std_dev_yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'relative_ego_std_dev_speed) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PredictionTrajectoryPoint>)))
  "Returns string type for a message object of type '<PredictionTrajectoryPoint>"
  "momenta_msgs/PredictionTrajectoryPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PredictionTrajectoryPoint)))
  "Returns string type for a message object of type 'PredictionTrajectoryPoint"
  "momenta_msgs/PredictionTrajectoryPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PredictionTrajectoryPoint>)))
  "Returns md5sum for a message object of type '<PredictionTrajectoryPoint>"
  "23e1a168b285327e8067dea64564ddb9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PredictionTrajectoryPoint)))
  "Returns md5sum for a message object of type 'PredictionTrajectoryPoint"
  "23e1a168b285327e8067dea64564ddb9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PredictionTrajectoryPoint>)))
  "Returns full string definition for message of type '<PredictionTrajectoryPoint>"
  (cl:format cl:nil "float32 x~%float32 y~%float32 yaw~%float32 theta~%float32 speed~%float32 prob~%float32 std_dev_x~%float32 std_dev_y~%float32 sigma_xy~%float32 std_dev_yaw~%float32 std_dev_speed~%float32 relative_ego_x~%float32 relative_ego_y~%float32 relative_ego_yaw~%float32 relative_ego_speed~%float32 relative_ego_std_dev_x~%float32 relative_ego_std_dev_y~%float32 relative_ego_std_dev_yaw~%float32 relative_ego_std_dev_speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PredictionTrajectoryPoint)))
  "Returns full string definition for message of type 'PredictionTrajectoryPoint"
  (cl:format cl:nil "float32 x~%float32 y~%float32 yaw~%float32 theta~%float32 speed~%float32 prob~%float32 std_dev_x~%float32 std_dev_y~%float32 sigma_xy~%float32 std_dev_yaw~%float32 std_dev_speed~%float32 relative_ego_x~%float32 relative_ego_y~%float32 relative_ego_yaw~%float32 relative_ego_speed~%float32 relative_ego_std_dev_x~%float32 relative_ego_std_dev_y~%float32 relative_ego_std_dev_yaw~%float32 relative_ego_std_dev_speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PredictionTrajectoryPoint>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PredictionTrajectoryPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'PredictionTrajectoryPoint
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':theta (theta msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':prob (prob msg))
    (cl:cons ':std_dev_x (std_dev_x msg))
    (cl:cons ':std_dev_y (std_dev_y msg))
    (cl:cons ':sigma_xy (sigma_xy msg))
    (cl:cons ':std_dev_yaw (std_dev_yaw msg))
    (cl:cons ':std_dev_speed (std_dev_speed msg))
    (cl:cons ':relative_ego_x (relative_ego_x msg))
    (cl:cons ':relative_ego_y (relative_ego_y msg))
    (cl:cons ':relative_ego_yaw (relative_ego_yaw msg))
    (cl:cons ':relative_ego_speed (relative_ego_speed msg))
    (cl:cons ':relative_ego_std_dev_x (relative_ego_std_dev_x msg))
    (cl:cons ':relative_ego_std_dev_y (relative_ego_std_dev_y msg))
    (cl:cons ':relative_ego_std_dev_yaw (relative_ego_std_dev_yaw msg))
    (cl:cons ':relative_ego_std_dev_speed (relative_ego_std_dev_speed msg))
))
