; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude Velocity.msg.html

(cl:defclass <Velocity> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (target_value
    :reader target_value
    :initarg :target_value
    :type cl:float
    :initform 0.0)
   (vel_points
    :reader vel_points
    :initarg :vel_points
    :type (cl:vector planning_msgs-msg:VelocityPoint)
   :initform (cl:make-array 0 :element-type 'planning_msgs-msg:VelocityPoint :initial-element (cl:make-instance 'planning_msgs-msg:VelocityPoint)))
   (cruise_velocity
    :reader cruise_velocity
    :initarg :cruise_velocity
    :type cl:float
    :initform 0.0))
)

(cl:defclass Velocity (<Velocity>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Velocity>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Velocity)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<Velocity> is deprecated: use planning_msgs-msg:Velocity instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <Velocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:available-val is deprecated.  Use planning_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'target_value-val :lambda-list '(m))
(cl:defmethod target_value-val ((m <Velocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:target_value-val is deprecated.  Use planning_msgs-msg:target_value instead.")
  (target_value m))

(cl:ensure-generic-function 'vel_points-val :lambda-list '(m))
(cl:defmethod vel_points-val ((m <Velocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:vel_points-val is deprecated.  Use planning_msgs-msg:vel_points instead.")
  (vel_points m))

(cl:ensure-generic-function 'cruise_velocity-val :lambda-list '(m))
(cl:defmethod cruise_velocity-val ((m <Velocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:cruise_velocity-val is deprecated.  Use planning_msgs-msg:cruise_velocity instead.")
  (cruise_velocity m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Velocity>)))
    "Constants for message type '<Velocity>"
  '((:TARGET_VALUE . 1)
    (:VEL_POINTS . 2)
    (:CRUISE_VELOCITY . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Velocity)))
    "Constants for message type 'Velocity"
  '((:TARGET_VALUE . 1)
    (:VEL_POINTS . 2)
    (:CRUISE_VELOCITY . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Velocity>) ostream)
  "Serializes a message object of type '<Velocity>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'target_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'vel_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'vel_points))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cruise_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Velocity>) istream)
  "Deserializes a message object of type '<Velocity>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_value) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'vel_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'vel_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'planning_msgs-msg:VelocityPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cruise_velocity) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Velocity>)))
  "Returns string type for a message object of type '<Velocity>"
  "planning_msgs/Velocity")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Velocity)))
  "Returns string type for a message object of type 'Velocity"
  "planning_msgs/Velocity")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Velocity>)))
  "Returns md5sum for a message object of type '<Velocity>"
  "5398aa30721f6b627106914fa0b80c03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Velocity)))
  "Returns md5sum for a message object of type 'Velocity"
  "5398aa30721f6b627106914fa0b80c03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Velocity>)))
  "Returns full string definition for message of type '<Velocity>"
  (cl:format cl:nil "uint8 TARGET_VALUE = 1~%uint8 VEL_POINTS = 2~%uint8 CRUISE_VELOCITY = 4~%uint8 available~%float64 target_value~%planning_msgs/VelocityPoint[] vel_points~%float64 cruise_velocity~%~%================================================================================~%MSG: planning_msgs/VelocityPoint~%float64 target_velocity~%float64 relative_time~%float64 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Velocity)))
  "Returns full string definition for message of type 'Velocity"
  (cl:format cl:nil "uint8 TARGET_VALUE = 1~%uint8 VEL_POINTS = 2~%uint8 CRUISE_VELOCITY = 4~%uint8 available~%float64 target_value~%planning_msgs/VelocityPoint[] vel_points~%float64 cruise_velocity~%~%================================================================================~%MSG: planning_msgs/VelocityPoint~%float64 target_velocity~%float64 relative_time~%float64 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Velocity>))
  (cl:+ 0
     1
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'vel_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Velocity>))
  "Converts a ROS message object to a list"
  (cl:list 'Velocity
    (cl:cons ':available (available msg))
    (cl:cons ':target_value (target_value msg))
    (cl:cons ':vel_points (vel_points msg))
    (cl:cons ':cruise_velocity (cruise_velocity msg))
))
