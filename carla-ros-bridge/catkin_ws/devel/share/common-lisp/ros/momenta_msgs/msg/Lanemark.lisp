; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude Lanemark.msg.html

(cl:defclass <Lanemark> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (prob
    :reader prob
    :initarg :prob
    :type cl:float
    :initform 0.0)
   (is_solid
    :reader is_solid
    :initarg :is_solid
    :type cl:boolean
    :initform cl:nil)
   (is_boundary
    :reader is_boundary
    :initarg :is_boundary
    :type cl:boolean
    :initform cl:nil)
   (color
    :reader color
    :initarg :color
    :type cl:fixnum
    :initform 0)
   (is_Yline
    :reader is_Yline
    :initarg :is_Yline
    :type cl:boolean
    :initform cl:nil)
   (is_biline
    :reader is_biline
    :initarg :is_biline
    :type cl:boolean
    :initform cl:nil)
   (pts_on_img
    :reader pts_on_img
    :initarg :pts_on_img
    :type (cl:vector geometry_msgs-msg:Pose2D)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose2D :initial-element (cl:make-instance 'geometry_msgs-msg:Pose2D)))
   (pts_on_bv
    :reader pts_on_bv
    :initarg :pts_on_bv
    :type (cl:vector geometry_msgs-msg:Pose2D)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose2D :initial-element (cl:make-instance 'geometry_msgs-msg:Pose2D))))
)

(cl:defclass Lanemark (<Lanemark>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Lanemark>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Lanemark)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<Lanemark> is deprecated: use momenta_msgs-msg:Lanemark instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Lanemark>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:id-val is deprecated.  Use momenta_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'prob-val :lambda-list '(m))
(cl:defmethod prob-val ((m <Lanemark>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:prob-val is deprecated.  Use momenta_msgs-msg:prob instead.")
  (prob m))

(cl:ensure-generic-function 'is_solid-val :lambda-list '(m))
(cl:defmethod is_solid-val ((m <Lanemark>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:is_solid-val is deprecated.  Use momenta_msgs-msg:is_solid instead.")
  (is_solid m))

(cl:ensure-generic-function 'is_boundary-val :lambda-list '(m))
(cl:defmethod is_boundary-val ((m <Lanemark>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:is_boundary-val is deprecated.  Use momenta_msgs-msg:is_boundary instead.")
  (is_boundary m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <Lanemark>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:color-val is deprecated.  Use momenta_msgs-msg:color instead.")
  (color m))

(cl:ensure-generic-function 'is_Yline-val :lambda-list '(m))
(cl:defmethod is_Yline-val ((m <Lanemark>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:is_Yline-val is deprecated.  Use momenta_msgs-msg:is_Yline instead.")
  (is_Yline m))

(cl:ensure-generic-function 'is_biline-val :lambda-list '(m))
(cl:defmethod is_biline-val ((m <Lanemark>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:is_biline-val is deprecated.  Use momenta_msgs-msg:is_biline instead.")
  (is_biline m))

(cl:ensure-generic-function 'pts_on_img-val :lambda-list '(m))
(cl:defmethod pts_on_img-val ((m <Lanemark>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:pts_on_img-val is deprecated.  Use momenta_msgs-msg:pts_on_img instead.")
  (pts_on_img m))

(cl:ensure-generic-function 'pts_on_bv-val :lambda-list '(m))
(cl:defmethod pts_on_bv-val ((m <Lanemark>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:pts_on_bv-val is deprecated.  Use momenta_msgs-msg:pts_on_bv instead.")
  (pts_on_bv m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Lanemark>) ostream)
  "Serializes a message object of type '<Lanemark>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'prob))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_solid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_boundary) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'color)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_Yline) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_biline) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pts_on_img))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pts_on_img))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pts_on_bv))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pts_on_bv))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Lanemark>) istream)
  "Deserializes a message object of type '<Lanemark>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'prob) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'is_solid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_boundary) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'color)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'is_Yline) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_biline) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pts_on_img) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pts_on_img)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose2D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pts_on_bv) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pts_on_bv)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose2D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Lanemark>)))
  "Returns string type for a message object of type '<Lanemark>"
  "momenta_msgs/Lanemark")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Lanemark)))
  "Returns string type for a message object of type 'Lanemark"
  "momenta_msgs/Lanemark")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Lanemark>)))
  "Returns md5sum for a message object of type '<Lanemark>"
  "91f7d0e27c50ffe0b860a789237c5ad2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Lanemark)))
  "Returns md5sum for a message object of type 'Lanemark"
  "91f7d0e27c50ffe0b860a789237c5ad2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Lanemark>)))
  "Returns full string definition for message of type '<Lanemark>"
  (cl:format cl:nil "uint32 id~%float32 prob~%bool is_solid~%bool is_boundary~%uint8 color~%bool is_Yline~%bool is_biline~%geometry_msgs/Pose2D[] pts_on_img~%geometry_msgs/Pose2D[] pts_on_bv~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Lanemark)))
  "Returns full string definition for message of type 'Lanemark"
  (cl:format cl:nil "uint32 id~%float32 prob~%bool is_solid~%bool is_boundary~%uint8 color~%bool is_Yline~%bool is_biline~%geometry_msgs/Pose2D[] pts_on_img~%geometry_msgs/Pose2D[] pts_on_bv~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Lanemark>))
  (cl:+ 0
     4
     4
     1
     1
     1
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pts_on_img) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pts_on_bv) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Lanemark>))
  "Converts a ROS message object to a list"
  (cl:list 'Lanemark
    (cl:cons ':id (id msg))
    (cl:cons ':prob (prob msg))
    (cl:cons ':is_solid (is_solid msg))
    (cl:cons ':is_boundary (is_boundary msg))
    (cl:cons ':color (color msg))
    (cl:cons ':is_Yline (is_Yline msg))
    (cl:cons ':is_biline (is_biline msg))
    (cl:cons ':pts_on_img (pts_on_img msg))
    (cl:cons ':pts_on_bv (pts_on_bv msg))
))
