; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude Trajectory.msg.html

(cl:defclass <Trajectory> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (polynomial_curve
    :reader polynomial_curve
    :initarg :polynomial_curve
    :type planning_msgs-msg:Curve
    :initform (cl:make-instance 'planning_msgs-msg:Curve))
   (path
    :reader path
    :initarg :path
    :type (cl:vector planning_msgs-msg:PathPoint)
   :initform (cl:make-array 0 :element-type 'planning_msgs-msg:PathPoint :initial-element (cl:make-instance 'planning_msgs-msg:PathPoint)))
   (velocity
    :reader velocity
    :initarg :velocity
    :type planning_msgs-msg:Velocity
    :initform (cl:make-instance 'planning_msgs-msg:Velocity))
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type planning_msgs-msg:Acceleration
    :initform (cl:make-instance 'planning_msgs-msg:Acceleration))
   (frenet_state
    :reader frenet_state
    :initarg :frenet_state
    :type (cl:vector planning_msgs-msg:FrenetState)
   :initform (cl:make-array 0 :element-type 'planning_msgs-msg:FrenetState :initial-element (cl:make-instance 'planning_msgs-msg:FrenetState))))
)

(cl:defclass Trajectory (<Trajectory>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Trajectory>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Trajectory)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<Trajectory> is deprecated: use planning_msgs-msg:Trajectory instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <Trajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:available-val is deprecated.  Use planning_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'polynomial_curve-val :lambda-list '(m))
(cl:defmethod polynomial_curve-val ((m <Trajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:polynomial_curve-val is deprecated.  Use planning_msgs-msg:polynomial_curve instead.")
  (polynomial_curve m))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <Trajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:path-val is deprecated.  Use planning_msgs-msg:path instead.")
  (path m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <Trajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:velocity-val is deprecated.  Use planning_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <Trajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:acceleration-val is deprecated.  Use planning_msgs-msg:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'frenet_state-val :lambda-list '(m))
(cl:defmethod frenet_state-val ((m <Trajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:frenet_state-val is deprecated.  Use planning_msgs-msg:frenet_state instead.")
  (frenet_state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Trajectory>)))
    "Constants for message type '<Trajectory>"
  '((:POLYNOMIAL_CURVE . 1)
    (:PATH . 2)
    (:VELOCITY . 4)
    (:ACCELERATION . 8)
    (:FRENET_STATE . 16))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Trajectory)))
    "Constants for message type 'Trajectory"
  '((:POLYNOMIAL_CURVE . 1)
    (:PATH . 2)
    (:VELOCITY . 4)
    (:ACCELERATION . 8)
    (:FRENET_STATE . 16))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Trajectory>) ostream)
  "Serializes a message object of type '<Trajectory>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'polynomial_curve) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'path))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'frenet_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'frenet_state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Trajectory>) istream)
  "Deserializes a message object of type '<Trajectory>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'polynomial_curve) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'path) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'path)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'planning_msgs-msg:PathPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'frenet_state) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'frenet_state)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'planning_msgs-msg:FrenetState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Trajectory>)))
  "Returns string type for a message object of type '<Trajectory>"
  "planning_msgs/Trajectory")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Trajectory)))
  "Returns string type for a message object of type 'Trajectory"
  "planning_msgs/Trajectory")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Trajectory>)))
  "Returns md5sum for a message object of type '<Trajectory>"
  "4709d14119face393301256d616e8ba3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Trajectory)))
  "Returns md5sum for a message object of type 'Trajectory"
  "4709d14119face393301256d616e8ba3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Trajectory>)))
  "Returns full string definition for message of type '<Trajectory>"
  (cl:format cl:nil "uint8 POLYNOMIAL_CURVE = 1~%uint8 PATH = 2~%uint8 VELOCITY = 4~%uint8 ACCELERATION = 8~%uint8 FRENET_STATE = 16~%uint8 available~%planning_msgs/Curve polynomial_curve~%planning_msgs/PathPoint[] path~%planning_msgs/Velocity velocity~%planning_msgs/Acceleration acceleration~%planning_msgs/FrenetState[] frenet_state~%~%================================================================================~%MSG: planning_msgs/Curve~%float64[] polynomial~%float64 start_x~%float64 end_x~%~%================================================================================~%MSG: planning_msgs/PathPoint~%planning_msgs/Point2d position_enu~%float64 heading_yaw~%float64 curvature~%float64 path_follow_strength~%~%================================================================================~%MSG: planning_msgs/Point2d~%float64 x~%float64 y~%~%================================================================================~%MSG: planning_msgs/Velocity~%uint8 TARGET_VALUE = 1~%uint8 VEL_POINTS = 2~%uint8 CRUISE_VELOCITY = 4~%uint8 available~%float64 target_value~%planning_msgs/VelocityPoint[] vel_points~%float64 cruise_velocity~%~%================================================================================~%MSG: planning_msgs/VelocityPoint~%float64 target_velocity~%float64 relative_time~%float64 distance~%~%================================================================================~%MSG: planning_msgs/Acceleration~%uint8 RANGE_LIMIT = 1~%uint8 ACC_POINTS = 2~%uint8 available~%planning_msgs/AccelerationRange range_limit~%planning_msgs/AccelerationPoint[] acc_points~%~%================================================================================~%MSG: planning_msgs/AccelerationRange~%float64 max~%float64 min~%~%================================================================================~%MSG: planning_msgs/AccelerationPoint~%float64 acc~%float64 jerk~%~%================================================================================~%MSG: planning_msgs/FrenetState~%planning_msgs/Point2d position_frenet~%float64 dl~%float64 ddl~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Trajectory)))
  "Returns full string definition for message of type 'Trajectory"
  (cl:format cl:nil "uint8 POLYNOMIAL_CURVE = 1~%uint8 PATH = 2~%uint8 VELOCITY = 4~%uint8 ACCELERATION = 8~%uint8 FRENET_STATE = 16~%uint8 available~%planning_msgs/Curve polynomial_curve~%planning_msgs/PathPoint[] path~%planning_msgs/Velocity velocity~%planning_msgs/Acceleration acceleration~%planning_msgs/FrenetState[] frenet_state~%~%================================================================================~%MSG: planning_msgs/Curve~%float64[] polynomial~%float64 start_x~%float64 end_x~%~%================================================================================~%MSG: planning_msgs/PathPoint~%planning_msgs/Point2d position_enu~%float64 heading_yaw~%float64 curvature~%float64 path_follow_strength~%~%================================================================================~%MSG: planning_msgs/Point2d~%float64 x~%float64 y~%~%================================================================================~%MSG: planning_msgs/Velocity~%uint8 TARGET_VALUE = 1~%uint8 VEL_POINTS = 2~%uint8 CRUISE_VELOCITY = 4~%uint8 available~%float64 target_value~%planning_msgs/VelocityPoint[] vel_points~%float64 cruise_velocity~%~%================================================================================~%MSG: planning_msgs/VelocityPoint~%float64 target_velocity~%float64 relative_time~%float64 distance~%~%================================================================================~%MSG: planning_msgs/Acceleration~%uint8 RANGE_LIMIT = 1~%uint8 ACC_POINTS = 2~%uint8 available~%planning_msgs/AccelerationRange range_limit~%planning_msgs/AccelerationPoint[] acc_points~%~%================================================================================~%MSG: planning_msgs/AccelerationRange~%float64 max~%float64 min~%~%================================================================================~%MSG: planning_msgs/AccelerationPoint~%float64 acc~%float64 jerk~%~%================================================================================~%MSG: planning_msgs/FrenetState~%planning_msgs/Point2d position_frenet~%float64 dl~%float64 ddl~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Trajectory>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'polynomial_curve))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'path) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'frenet_state) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Trajectory>))
  "Converts a ROS message object to a list"
  (cl:list 'Trajectory
    (cl:cons ':available (available msg))
    (cl:cons ':polynomial_curve (polynomial_curve msg))
    (cl:cons ':path (path msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':frenet_state (frenet_state msg))
))
