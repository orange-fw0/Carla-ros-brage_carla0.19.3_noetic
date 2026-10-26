; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude MapTask.msg.html

(cl:defclass <MapTask> (roslisp-msg-protocol:ros-message)
  ((current_tasks
    :reader current_tasks
    :initarg :current_tasks
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (left_lane_tasks
    :reader left_lane_tasks
    :initarg :left_lane_tasks
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (right_lane_tasks
    :reader right_lane_tasks
    :initarg :right_lane_tasks
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (first_task_ranges
    :reader first_task_ranges
    :initarg :first_task_ranges
    :type (cl:vector momenta_msgs-msg:MapTaskRange)
   :initform (cl:make-array 0 :element-type 'momenta_msgs-msg:MapTaskRange :initial-element (cl:make-instance 'momenta_msgs-msg:MapTaskRange))))
)

(cl:defclass MapTask (<MapTask>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapTask>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapTask)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<MapTask> is deprecated: use momenta_msgs-msg:MapTask instead.")))

(cl:ensure-generic-function 'current_tasks-val :lambda-list '(m))
(cl:defmethod current_tasks-val ((m <MapTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:current_tasks-val is deprecated.  Use momenta_msgs-msg:current_tasks instead.")
  (current_tasks m))

(cl:ensure-generic-function 'left_lane_tasks-val :lambda-list '(m))
(cl:defmethod left_lane_tasks-val ((m <MapTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:left_lane_tasks-val is deprecated.  Use momenta_msgs-msg:left_lane_tasks instead.")
  (left_lane_tasks m))

(cl:ensure-generic-function 'right_lane_tasks-val :lambda-list '(m))
(cl:defmethod right_lane_tasks-val ((m <MapTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:right_lane_tasks-val is deprecated.  Use momenta_msgs-msg:right_lane_tasks instead.")
  (right_lane_tasks m))

(cl:ensure-generic-function 'first_task_ranges-val :lambda-list '(m))
(cl:defmethod first_task_ranges-val ((m <MapTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:first_task_ranges-val is deprecated.  Use momenta_msgs-msg:first_task_ranges instead.")
  (first_task_ranges m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapTask>) ostream)
  "Serializes a message object of type '<MapTask>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'current_tasks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'current_tasks))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'left_lane_tasks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'left_lane_tasks))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'right_lane_tasks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'right_lane_tasks))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'first_task_ranges))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'first_task_ranges))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapTask>) istream)
  "Deserializes a message object of type '<MapTask>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'current_tasks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'current_tasks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'left_lane_tasks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'left_lane_tasks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'right_lane_tasks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'right_lane_tasks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'first_task_ranges) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'first_task_ranges)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'momenta_msgs-msg:MapTaskRange))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapTask>)))
  "Returns string type for a message object of type '<MapTask>"
  "momenta_msgs/MapTask")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapTask)))
  "Returns string type for a message object of type 'MapTask"
  "momenta_msgs/MapTask")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapTask>)))
  "Returns md5sum for a message object of type '<MapTask>"
  "a58556ba5dbcd3438ca23c11204497f1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapTask)))
  "Returns md5sum for a message object of type 'MapTask"
  "a58556ba5dbcd3438ca23c11204497f1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapTask>)))
  "Returns full string definition for message of type '<MapTask>"
  (cl:format cl:nil "int8[] current_tasks~%int8[] left_lane_tasks~%int8[] right_lane_tasks~%momenta_msgs/MapTaskRange[] first_task_ranges~%~%================================================================================~%MSG: momenta_msgs/MapTaskRange~%float64 begin_pos~%float64 end_pos~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapTask)))
  "Returns full string definition for message of type 'MapTask"
  (cl:format cl:nil "int8[] current_tasks~%int8[] left_lane_tasks~%int8[] right_lane_tasks~%momenta_msgs/MapTaskRange[] first_task_ranges~%~%================================================================================~%MSG: momenta_msgs/MapTaskRange~%float64 begin_pos~%float64 end_pos~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapTask>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'current_tasks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'left_lane_tasks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'right_lane_tasks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'first_task_ranges) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapTask>))
  "Converts a ROS message object to a list"
  (cl:list 'MapTask
    (cl:cons ':current_tasks (current_tasks msg))
    (cl:cons ':left_lane_tasks (left_lane_tasks msg))
    (cl:cons ':right_lane_tasks (right_lane_tasks msg))
    (cl:cons ':first_task_ranges (first_task_ranges msg))
))
