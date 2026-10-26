; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude Acceleration.msg.html

(cl:defclass <Acceleration> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (range_limit
    :reader range_limit
    :initarg :range_limit
    :type planning_msgs-msg:AccelerationRange
    :initform (cl:make-instance 'planning_msgs-msg:AccelerationRange))
   (acc_points
    :reader acc_points
    :initarg :acc_points
    :type (cl:vector planning_msgs-msg:AccelerationPoint)
   :initform (cl:make-array 0 :element-type 'planning_msgs-msg:AccelerationPoint :initial-element (cl:make-instance 'planning_msgs-msg:AccelerationPoint))))
)

(cl:defclass Acceleration (<Acceleration>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Acceleration>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Acceleration)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<Acceleration> is deprecated: use planning_msgs-msg:Acceleration instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <Acceleration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:available-val is deprecated.  Use planning_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'range_limit-val :lambda-list '(m))
(cl:defmethod range_limit-val ((m <Acceleration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:range_limit-val is deprecated.  Use planning_msgs-msg:range_limit instead.")
  (range_limit m))

(cl:ensure-generic-function 'acc_points-val :lambda-list '(m))
(cl:defmethod acc_points-val ((m <Acceleration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:acc_points-val is deprecated.  Use planning_msgs-msg:acc_points instead.")
  (acc_points m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Acceleration>)))
    "Constants for message type '<Acceleration>"
  '((:RANGE_LIMIT . 1)
    (:ACC_POINTS . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Acceleration)))
    "Constants for message type 'Acceleration"
  '((:RANGE_LIMIT . 1)
    (:ACC_POINTS . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Acceleration>) ostream)
  "Serializes a message object of type '<Acceleration>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'range_limit) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'acc_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'acc_points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Acceleration>) istream)
  "Deserializes a message object of type '<Acceleration>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'range_limit) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'acc_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'acc_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'planning_msgs-msg:AccelerationPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Acceleration>)))
  "Returns string type for a message object of type '<Acceleration>"
  "planning_msgs/Acceleration")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Acceleration)))
  "Returns string type for a message object of type 'Acceleration"
  "planning_msgs/Acceleration")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Acceleration>)))
  "Returns md5sum for a message object of type '<Acceleration>"
  "3fa08f11b412938ffaeb5a5b0b8fa0a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Acceleration)))
  "Returns md5sum for a message object of type 'Acceleration"
  "3fa08f11b412938ffaeb5a5b0b8fa0a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Acceleration>)))
  "Returns full string definition for message of type '<Acceleration>"
  (cl:format cl:nil "uint8 RANGE_LIMIT = 1~%uint8 ACC_POINTS = 2~%uint8 available~%planning_msgs/AccelerationRange range_limit~%planning_msgs/AccelerationPoint[] acc_points~%~%================================================================================~%MSG: planning_msgs/AccelerationRange~%float64 max~%float64 min~%~%================================================================================~%MSG: planning_msgs/AccelerationPoint~%float64 acc~%float64 jerk~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Acceleration)))
  "Returns full string definition for message of type 'Acceleration"
  (cl:format cl:nil "uint8 RANGE_LIMIT = 1~%uint8 ACC_POINTS = 2~%uint8 available~%planning_msgs/AccelerationRange range_limit~%planning_msgs/AccelerationPoint[] acc_points~%~%================================================================================~%MSG: planning_msgs/AccelerationRange~%float64 max~%float64 min~%~%================================================================================~%MSG: planning_msgs/AccelerationPoint~%float64 acc~%float64 jerk~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Acceleration>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'range_limit))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'acc_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Acceleration>))
  "Converts a ROS message object to a list"
  (cl:list 'Acceleration
    (cl:cons ':available (available msg))
    (cl:cons ':range_limit (range_limit msg))
    (cl:cons ':acc_points (acc_points msg))
))
