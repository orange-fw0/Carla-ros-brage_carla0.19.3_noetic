; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude FusionAPAMeta.msg.html

(cl:defclass <FusionAPAMeta> (roslisp-msg-protocol:ros-message)
  ((timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
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
    :initform 0))
)

(cl:defclass FusionAPAMeta (<FusionAPAMeta>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FusionAPAMeta>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FusionAPAMeta)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<FusionAPAMeta> is deprecated: use worldmodel_msgs-msg:FusionAPAMeta instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <FusionAPAMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:timestamp_us-val is deprecated.  Use worldmodel_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'pipeline_start_timestamp_us-val :lambda-list '(m))
(cl:defmethod pipeline_start_timestamp_us-val ((m <FusionAPAMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:pipeline_start_timestamp_us-val is deprecated.  Use worldmodel_msgs-msg:pipeline_start_timestamp_us instead.")
  (pipeline_start_timestamp_us m))

(cl:ensure-generic-function 'pipeline_finish_timestamp_us-val :lambda-list '(m))
(cl:defmethod pipeline_finish_timestamp_us-val ((m <FusionAPAMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:pipeline_finish_timestamp_us-val is deprecated.  Use worldmodel_msgs-msg:pipeline_finish_timestamp_us instead.")
  (pipeline_finish_timestamp_us m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FusionAPAMeta>) ostream)
  "Serializes a message object of type '<FusionAPAMeta>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FusionAPAMeta>) istream)
  "Deserializes a message object of type '<FusionAPAMeta>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FusionAPAMeta>)))
  "Returns string type for a message object of type '<FusionAPAMeta>"
  "worldmodel_msgs/FusionAPAMeta")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FusionAPAMeta)))
  "Returns string type for a message object of type 'FusionAPAMeta"
  "worldmodel_msgs/FusionAPAMeta")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FusionAPAMeta>)))
  "Returns md5sum for a message object of type '<FusionAPAMeta>"
  "31c194913ed8a92c5988ed26f06b7127")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FusionAPAMeta)))
  "Returns md5sum for a message object of type 'FusionAPAMeta"
  "31c194913ed8a92c5988ed26f06b7127")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FusionAPAMeta>)))
  "Returns full string definition for message of type '<FusionAPAMeta>"
  (cl:format cl:nil "uint64 timestamp_us~%uint64 pipeline_start_timestamp_us~%uint64 pipeline_finish_timestamp_us~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FusionAPAMeta)))
  "Returns full string definition for message of type 'FusionAPAMeta"
  (cl:format cl:nil "uint64 timestamp_us~%uint64 pipeline_start_timestamp_us~%uint64 pipeline_finish_timestamp_us~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FusionAPAMeta>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FusionAPAMeta>))
  "Converts a ROS message object to a list"
  (cl:list 'FusionAPAMeta
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':pipeline_start_timestamp_us (pipeline_start_timestamp_us msg))
    (cl:cons ':pipeline_finish_timestamp_us (pipeline_finish_timestamp_us msg))
))
