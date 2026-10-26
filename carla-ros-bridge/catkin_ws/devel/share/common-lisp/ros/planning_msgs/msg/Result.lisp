; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude Result.msg.html

(cl:defclass <Result> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (iteration_times
    :reader iteration_times
    :initarg :iteration_times
    :type cl:integer
    :initform 0)
   (trajectory
    :reader trajectory
    :initarg :trajectory
    :type (cl:vector planning_msgs-msg:SBPVehicleState)
   :initform (cl:make-array 0 :element-type 'planning_msgs-msg:SBPVehicleState :initial-element (cl:make-instance 'planning_msgs-msg:SBPVehicleState)))
   (num_segments
    :reader num_segments
    :initarg :num_segments
    :type cl:fixnum
    :initform 0)
   (failure_reason
    :reader failure_reason
    :initarg :failure_reason
    :type planning_msgs-msg:FailureReasonEnum
    :initform (cl:make-instance 'planning_msgs-msg:FailureReasonEnum)))
)

(cl:defclass Result (<Result>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Result>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Result)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<Result> is deprecated: use planning_msgs-msg:Result instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <Result>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:available-val is deprecated.  Use planning_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'iteration_times-val :lambda-list '(m))
(cl:defmethod iteration_times-val ((m <Result>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:iteration_times-val is deprecated.  Use planning_msgs-msg:iteration_times instead.")
  (iteration_times m))

(cl:ensure-generic-function 'trajectory-val :lambda-list '(m))
(cl:defmethod trajectory-val ((m <Result>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:trajectory-val is deprecated.  Use planning_msgs-msg:trajectory instead.")
  (trajectory m))

(cl:ensure-generic-function 'num_segments-val :lambda-list '(m))
(cl:defmethod num_segments-val ((m <Result>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:num_segments-val is deprecated.  Use planning_msgs-msg:num_segments instead.")
  (num_segments m))

(cl:ensure-generic-function 'failure_reason-val :lambda-list '(m))
(cl:defmethod failure_reason-val ((m <Result>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:failure_reason-val is deprecated.  Use planning_msgs-msg:failure_reason instead.")
  (failure_reason m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Result>)))
    "Constants for message type '<Result>"
  '((:ITERATION_TIMES . 1)
    (:TRAJECTORY . 2)
    (:NUM_SEGMENTS . 4)
    (:FAILURE_REASON . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Result)))
    "Constants for message type 'Result"
  '((:ITERATION_TIMES . 1)
    (:TRAJECTORY . 2)
    (:NUM_SEGMENTS . 4)
    (:FAILURE_REASON . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Result>) ostream)
  "Serializes a message object of type '<Result>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'iteration_times)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'trajectory))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'trajectory))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_segments)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'failure_reason) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Result>) istream)
  "Deserializes a message object of type '<Result>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'iteration_times) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'trajectory) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'trajectory)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'planning_msgs-msg:SBPVehicleState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_segments)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'failure_reason) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Result>)))
  "Returns string type for a message object of type '<Result>"
  "planning_msgs/Result")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Result)))
  "Returns string type for a message object of type 'Result"
  "planning_msgs/Result")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Result>)))
  "Returns md5sum for a message object of type '<Result>"
  "15596995cf3716cea00fa41baf53c382")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Result)))
  "Returns md5sum for a message object of type 'Result"
  "15596995cf3716cea00fa41baf53c382")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Result>)))
  "Returns full string definition for message of type '<Result>"
  (cl:format cl:nil "uint8 ITERATION_TIMES = 1~%uint8 TRAJECTORY = 2~%uint8 NUM_SEGMENTS = 4~%uint8 FAILURE_REASON = 8~%uint8 available~%int64 iteration_times~%planning_msgs/SBPVehicleState[] trajectory~%uint8 num_segments~%planning_msgs/FailureReasonEnum failure_reason~%~%================================================================================~%MSG: planning_msgs/SBPVehicleState~%geometry_msgs/Pose2D pose~%float32 steer~%planning_msgs/SteerModeEnum steer_mode~%int8 gear~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: planning_msgs/SteerModeEnum~%uint8 NORMAL = 0~%uint8 TWIST = 1~%uint8 TRANSLATION = 2~%uint8 value~%~%================================================================================~%MSG: planning_msgs/FailureReasonEnum~%uint8 INFEASIBLE = 1~%uint8 TIMEOUT = 2~%uint8 EXCEPTION = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Result)))
  "Returns full string definition for message of type 'Result"
  (cl:format cl:nil "uint8 ITERATION_TIMES = 1~%uint8 TRAJECTORY = 2~%uint8 NUM_SEGMENTS = 4~%uint8 FAILURE_REASON = 8~%uint8 available~%int64 iteration_times~%planning_msgs/SBPVehicleState[] trajectory~%uint8 num_segments~%planning_msgs/FailureReasonEnum failure_reason~%~%================================================================================~%MSG: planning_msgs/SBPVehicleState~%geometry_msgs/Pose2D pose~%float32 steer~%planning_msgs/SteerModeEnum steer_mode~%int8 gear~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: planning_msgs/SteerModeEnum~%uint8 NORMAL = 0~%uint8 TWIST = 1~%uint8 TRANSLATION = 2~%uint8 value~%~%================================================================================~%MSG: planning_msgs/FailureReasonEnum~%uint8 INFEASIBLE = 1~%uint8 TIMEOUT = 2~%uint8 EXCEPTION = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Result>))
  (cl:+ 0
     1
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'trajectory) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'failure_reason))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Result>))
  "Converts a ROS message object to a list"
  (cl:list 'Result
    (cl:cons ':available (available msg))
    (cl:cons ':iteration_times (iteration_times msg))
    (cl:cons ':trajectory (trajectory msg))
    (cl:cons ':num_segments (num_segments msg))
    (cl:cons ':failure_reason (failure_reason msg))
))
