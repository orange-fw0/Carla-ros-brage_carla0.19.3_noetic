; Auto-generated. Do not edit!


(cl:in-package submap_msgs-msg)


;//! \htmlinclude Slope.msg.html

(cl:defclass <Slope> (roslisp-msg-protocol:ros-message)
  ((enter
    :reader enter
    :initarg :enter
    :type submap_msgs-msg:Position
    :initform (cl:make-instance 'submap_msgs-msg:Position))
   (exit
    :reader exit
    :initarg :exit
    :type submap_msgs-msg:Position
    :initform (cl:make-instance 'submap_msgs-msg:Position))
   (detected_slope_pose
    :reader detected_slope_pose
    :initarg :detected_slope_pose
    :type submap_msgs-msg:Position
    :initform (cl:make-instance 'submap_msgs-msg:Position))
   (is_up
    :reader is_up
    :initarg :is_up
    :type cl:boolean
    :initform cl:nil)
   (finished
    :reader finished
    :initarg :finished
    :type cl:boolean
    :initform cl:nil)
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0)
   (slide_distance
    :reader slide_distance
    :initarg :slide_distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass Slope (<Slope>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Slope>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Slope)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name submap_msgs-msg:<Slope> is deprecated: use submap_msgs-msg:Slope instead.")))

(cl:ensure-generic-function 'enter-val :lambda-list '(m))
(cl:defmethod enter-val ((m <Slope>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:enter-val is deprecated.  Use submap_msgs-msg:enter instead.")
  (enter m))

(cl:ensure-generic-function 'exit-val :lambda-list '(m))
(cl:defmethod exit-val ((m <Slope>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:exit-val is deprecated.  Use submap_msgs-msg:exit instead.")
  (exit m))

(cl:ensure-generic-function 'detected_slope_pose-val :lambda-list '(m))
(cl:defmethod detected_slope_pose-val ((m <Slope>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:detected_slope_pose-val is deprecated.  Use submap_msgs-msg:detected_slope_pose instead.")
  (detected_slope_pose m))

(cl:ensure-generic-function 'is_up-val :lambda-list '(m))
(cl:defmethod is_up-val ((m <Slope>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:is_up-val is deprecated.  Use submap_msgs-msg:is_up instead.")
  (is_up m))

(cl:ensure-generic-function 'finished-val :lambda-list '(m))
(cl:defmethod finished-val ((m <Slope>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:finished-val is deprecated.  Use submap_msgs-msg:finished instead.")
  (finished m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <Slope>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:score-val is deprecated.  Use submap_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'slide_distance-val :lambda-list '(m))
(cl:defmethod slide_distance-val ((m <Slope>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:slide_distance-val is deprecated.  Use submap_msgs-msg:slide_distance instead.")
  (slide_distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Slope>) ostream)
  "Serializes a message object of type '<Slope>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'enter) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'exit) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'detected_slope_pose) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_up) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'finished) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'slide_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Slope>) istream)
  "Deserializes a message object of type '<Slope>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'enter) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'exit) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'detected_slope_pose) istream)
    (cl:setf (cl:slot-value msg 'is_up) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'finished) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'slide_distance) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Slope>)))
  "Returns string type for a message object of type '<Slope>"
  "submap_msgs/Slope")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Slope)))
  "Returns string type for a message object of type 'Slope"
  "submap_msgs/Slope")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Slope>)))
  "Returns md5sum for a message object of type '<Slope>"
  "fcf6315814e9d509950a72cf49c97c31")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Slope)))
  "Returns md5sum for a message object of type 'Slope"
  "fcf6315814e9d509950a72cf49c97c31")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Slope>)))
  "Returns full string definition for message of type '<Slope>"
  (cl:format cl:nil "submap_msgs/Position enter~%submap_msgs/Position exit~%submap_msgs/Position detected_slope_pose~%bool is_up~%bool finished~%float32 score~%float32 slide_distance~%~%================================================================================~%MSG: submap_msgs/Position~%geometry_msgs/Quaternion orientation~%geometry_msgs/Vector3 translation~%float64 timestamp~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Slope)))
  "Returns full string definition for message of type 'Slope"
  (cl:format cl:nil "submap_msgs/Position enter~%submap_msgs/Position exit~%submap_msgs/Position detected_slope_pose~%bool is_up~%bool finished~%float32 score~%float32 slide_distance~%~%================================================================================~%MSG: submap_msgs/Position~%geometry_msgs/Quaternion orientation~%geometry_msgs/Vector3 translation~%float64 timestamp~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Slope>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'enter))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'exit))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'detected_slope_pose))
     1
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Slope>))
  "Converts a ROS message object to a list"
  (cl:list 'Slope
    (cl:cons ':enter (enter msg))
    (cl:cons ':exit (exit msg))
    (cl:cons ':detected_slope_pose (detected_slope_pose msg))
    (cl:cons ':is_up (is_up msg))
    (cl:cons ':finished (finished msg))
    (cl:cons ':score (score msg))
    (cl:cons ':slide_distance (slide_distance msg))
))
