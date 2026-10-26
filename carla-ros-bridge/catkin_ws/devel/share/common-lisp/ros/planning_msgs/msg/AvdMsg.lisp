; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude AvdMsg.msg.html

(cl:defclass <AvdMsg> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (property
    :reader property
    :initarg :property
    :type cl:string
    :initform "")
   (ignore
    :reader ignore
    :initarg :ignore
    :type cl:boolean
    :initform cl:nil)
   (avd_direction
    :reader avd_direction
    :initarg :avd_direction
    :type cl:string
    :initform "")
   (avd_priority
    :reader avd_priority
    :initarg :avd_priority
    :type cl:integer
    :initform 0)
   (blocked_time_begin
    :reader blocked_time_begin
    :initarg :blocked_time_begin
    :type cl:float
    :initform 0.0)
   (blocked_time_end
    :reader blocked_time_end
    :initarg :blocked_time_end
    :type cl:float
    :initform 0.0)
   (polygon
    :reader polygon
    :initarg :polygon
    :type (cl:vector planning_msgs-msg:Point2d)
   :initform (cl:make-array 0 :element-type 'planning_msgs-msg:Point2d :initial-element (cl:make-instance 'planning_msgs-msg:Point2d))))
)

(cl:defclass AvdMsg (<AvdMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AvdMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AvdMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<AvdMsg> is deprecated: use planning_msgs-msg:AvdMsg instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <AvdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:id-val is deprecated.  Use planning_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'property-val :lambda-list '(m))
(cl:defmethod property-val ((m <AvdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:property-val is deprecated.  Use planning_msgs-msg:property instead.")
  (property m))

(cl:ensure-generic-function 'ignore-val :lambda-list '(m))
(cl:defmethod ignore-val ((m <AvdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:ignore-val is deprecated.  Use planning_msgs-msg:ignore instead.")
  (ignore m))

(cl:ensure-generic-function 'avd_direction-val :lambda-list '(m))
(cl:defmethod avd_direction-val ((m <AvdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:avd_direction-val is deprecated.  Use planning_msgs-msg:avd_direction instead.")
  (avd_direction m))

(cl:ensure-generic-function 'avd_priority-val :lambda-list '(m))
(cl:defmethod avd_priority-val ((m <AvdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:avd_priority-val is deprecated.  Use planning_msgs-msg:avd_priority instead.")
  (avd_priority m))

(cl:ensure-generic-function 'blocked_time_begin-val :lambda-list '(m))
(cl:defmethod blocked_time_begin-val ((m <AvdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:blocked_time_begin-val is deprecated.  Use planning_msgs-msg:blocked_time_begin instead.")
  (blocked_time_begin m))

(cl:ensure-generic-function 'blocked_time_end-val :lambda-list '(m))
(cl:defmethod blocked_time_end-val ((m <AvdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:blocked_time_end-val is deprecated.  Use planning_msgs-msg:blocked_time_end instead.")
  (blocked_time_end m))

(cl:ensure-generic-function 'polygon-val :lambda-list '(m))
(cl:defmethod polygon-val ((m <AvdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:polygon-val is deprecated.  Use planning_msgs-msg:polygon instead.")
  (polygon m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AvdMsg>) ostream)
  "Serializes a message object of type '<AvdMsg>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'property))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'property))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ignore) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'avd_direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'avd_direction))
  (cl:let* ((signed (cl:slot-value msg 'avd_priority)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'blocked_time_begin))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'blocked_time_end))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'polygon))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'polygon))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AvdMsg>) istream)
  "Deserializes a message object of type '<AvdMsg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'property) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'property) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'ignore) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'avd_direction) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'avd_direction) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'avd_priority) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'blocked_time_begin) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'blocked_time_end) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'polygon) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'polygon)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'planning_msgs-msg:Point2d))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AvdMsg>)))
  "Returns string type for a message object of type '<AvdMsg>"
  "planning_msgs/AvdMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AvdMsg)))
  "Returns string type for a message object of type 'AvdMsg"
  "planning_msgs/AvdMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AvdMsg>)))
  "Returns md5sum for a message object of type '<AvdMsg>"
  "fb26dfd71fdfbbf1bd461ce100bc9db8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AvdMsg)))
  "Returns md5sum for a message object of type 'AvdMsg"
  "fb26dfd71fdfbbf1bd461ce100bc9db8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AvdMsg>)))
  "Returns full string definition for message of type '<AvdMsg>"
  (cl:format cl:nil "int32 id~%string property~%bool ignore~%string avd_direction~%int32 avd_priority~%float32 blocked_time_begin~%float32 blocked_time_end~%planning_msgs/Point2d[] polygon~%~%================================================================================~%MSG: planning_msgs/Point2d~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AvdMsg)))
  "Returns full string definition for message of type 'AvdMsg"
  (cl:format cl:nil "int32 id~%string property~%bool ignore~%string avd_direction~%int32 avd_priority~%float32 blocked_time_begin~%float32 blocked_time_end~%planning_msgs/Point2d[] polygon~%~%================================================================================~%MSG: planning_msgs/Point2d~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AvdMsg>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'property))
     1
     4 (cl:length (cl:slot-value msg 'avd_direction))
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'polygon) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AvdMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'AvdMsg
    (cl:cons ':id (id msg))
    (cl:cons ':property (property msg))
    (cl:cons ':ignore (ignore msg))
    (cl:cons ':avd_direction (avd_direction msg))
    (cl:cons ':avd_priority (avd_priority msg))
    (cl:cons ':blocked_time_begin (blocked_time_begin msg))
    (cl:cons ':blocked_time_end (blocked_time_end msg))
    (cl:cons ':polygon (polygon msg))
))
