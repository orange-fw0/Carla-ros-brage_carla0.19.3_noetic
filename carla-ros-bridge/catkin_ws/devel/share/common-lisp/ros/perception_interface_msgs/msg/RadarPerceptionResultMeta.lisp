; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude RadarPerceptionResultMeta.msg.html

(cl:defclass <RadarPerceptionResultMeta> (roslisp-msg-protocol:ros-message)
  ((sensor_timestamp_us
    :reader sensor_timestamp_us
    :initarg :sensor_timestamp_us
    :type cl:integer
    :initform 0)
   (pipeline_start_timestamp_us
    :reader pipeline_start_timestamp_us
    :initarg :pipeline_start_timestamp_us
    :type cl:integer
    :initform 0)
   (pipeline_finish_timestamp_us
    :reader pipeline_finish_timestamp_us
    :initarg :pipeline_finish_timestamp_us
    :type cl:integer
    :initform 0)
   (version_tag
    :reader version_tag
    :initarg :version_tag
    :type cl:string
    :initform ""))
)

(cl:defclass RadarPerceptionResultMeta (<RadarPerceptionResultMeta>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarPerceptionResultMeta>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarPerceptionResultMeta)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<RadarPerceptionResultMeta> is deprecated: use perception_interface_msgs-msg:RadarPerceptionResultMeta instead.")))

(cl:ensure-generic-function 'sensor_timestamp_us-val :lambda-list '(m))
(cl:defmethod sensor_timestamp_us-val ((m <RadarPerceptionResultMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:sensor_timestamp_us-val is deprecated.  Use perception_interface_msgs-msg:sensor_timestamp_us instead.")
  (sensor_timestamp_us m))

(cl:ensure-generic-function 'pipeline_start_timestamp_us-val :lambda-list '(m))
(cl:defmethod pipeline_start_timestamp_us-val ((m <RadarPerceptionResultMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:pipeline_start_timestamp_us-val is deprecated.  Use perception_interface_msgs-msg:pipeline_start_timestamp_us instead.")
  (pipeline_start_timestamp_us m))

(cl:ensure-generic-function 'pipeline_finish_timestamp_us-val :lambda-list '(m))
(cl:defmethod pipeline_finish_timestamp_us-val ((m <RadarPerceptionResultMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:pipeline_finish_timestamp_us-val is deprecated.  Use perception_interface_msgs-msg:pipeline_finish_timestamp_us instead.")
  (pipeline_finish_timestamp_us m))

(cl:ensure-generic-function 'version_tag-val :lambda-list '(m))
(cl:defmethod version_tag-val ((m <RadarPerceptionResultMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:version_tag-val is deprecated.  Use perception_interface_msgs-msg:version_tag instead.")
  (version_tag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarPerceptionResultMeta>) ostream)
  "Serializes a message object of type '<RadarPerceptionResultMeta>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sensor_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sensor_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sensor_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'sensor_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'sensor_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'sensor_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'sensor_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pipeline_start_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pipeline_start_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'pipeline_start_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'pipeline_start_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'pipeline_start_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'pipeline_start_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'pipeline_start_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'pipeline_start_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pipeline_finish_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pipeline_finish_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'pipeline_finish_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'pipeline_finish_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'pipeline_finish_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'pipeline_finish_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'pipeline_finish_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'pipeline_finish_timestamp_us)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'version_tag))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'version_tag))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarPerceptionResultMeta>) istream)
  "Deserializes a message object of type '<RadarPerceptionResultMeta>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sensor_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sensor_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sensor_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'sensor_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'sensor_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'sensor_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'sensor_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pipeline_start_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pipeline_start_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'pipeline_start_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'pipeline_start_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'pipeline_start_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'pipeline_start_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'pipeline_start_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'pipeline_start_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pipeline_finish_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pipeline_finish_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'pipeline_finish_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'pipeline_finish_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'pipeline_finish_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'pipeline_finish_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'pipeline_finish_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'pipeline_finish_timestamp_us)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'version_tag) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'version_tag) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarPerceptionResultMeta>)))
  "Returns string type for a message object of type '<RadarPerceptionResultMeta>"
  "perception_interface_msgs/RadarPerceptionResultMeta")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarPerceptionResultMeta)))
  "Returns string type for a message object of type 'RadarPerceptionResultMeta"
  "perception_interface_msgs/RadarPerceptionResultMeta")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarPerceptionResultMeta>)))
  "Returns md5sum for a message object of type '<RadarPerceptionResultMeta>"
  "411963a5ed209c417b75f3a2adfc0de9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarPerceptionResultMeta)))
  "Returns md5sum for a message object of type 'RadarPerceptionResultMeta"
  "411963a5ed209c417b75f3a2adfc0de9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarPerceptionResultMeta>)))
  "Returns full string definition for message of type '<RadarPerceptionResultMeta>"
  (cl:format cl:nil "uint64 sensor_timestamp_us~%uint64 pipeline_start_timestamp_us~%uint64 pipeline_finish_timestamp_us~%string version_tag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarPerceptionResultMeta)))
  "Returns full string definition for message of type 'RadarPerceptionResultMeta"
  (cl:format cl:nil "uint64 sensor_timestamp_us~%uint64 pipeline_start_timestamp_us~%uint64 pipeline_finish_timestamp_us~%string version_tag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarPerceptionResultMeta>))
  (cl:+ 0
     8
     8
     8
     4 (cl:length (cl:slot-value msg 'version_tag))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarPerceptionResultMeta>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarPerceptionResultMeta
    (cl:cons ':sensor_timestamp_us (sensor_timestamp_us msg))
    (cl:cons ':pipeline_start_timestamp_us (pipeline_start_timestamp_us msg))
    (cl:cons ':pipeline_finish_timestamp_us (pipeline_finish_timestamp_us msg))
    (cl:cons ':version_tag (version_tag msg))
))
