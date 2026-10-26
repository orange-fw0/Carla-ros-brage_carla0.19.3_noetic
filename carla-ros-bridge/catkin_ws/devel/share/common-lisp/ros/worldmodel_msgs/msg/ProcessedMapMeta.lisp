; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude ProcessedMapMeta.msg.html

(cl:defclass <ProcessedMapMeta> (roslisp-msg-protocol:ros-message)
  ((egopose_timestamp_us
    :reader egopose_timestamp_us
    :initarg :egopose_timestamp_us
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

(cl:defclass ProcessedMapMeta (<ProcessedMapMeta>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProcessedMapMeta>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProcessedMapMeta)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<ProcessedMapMeta> is deprecated: use worldmodel_msgs-msg:ProcessedMapMeta instead.")))

(cl:ensure-generic-function 'egopose_timestamp_us-val :lambda-list '(m))
(cl:defmethod egopose_timestamp_us-val ((m <ProcessedMapMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:egopose_timestamp_us-val is deprecated.  Use worldmodel_msgs-msg:egopose_timestamp_us instead.")
  (egopose_timestamp_us m))

(cl:ensure-generic-function 'pipeline_start_timestamp_us-val :lambda-list '(m))
(cl:defmethod pipeline_start_timestamp_us-val ((m <ProcessedMapMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:pipeline_start_timestamp_us-val is deprecated.  Use worldmodel_msgs-msg:pipeline_start_timestamp_us instead.")
  (pipeline_start_timestamp_us m))

(cl:ensure-generic-function 'pipeline_finish_timestamp_us-val :lambda-list '(m))
(cl:defmethod pipeline_finish_timestamp_us-val ((m <ProcessedMapMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:pipeline_finish_timestamp_us-val is deprecated.  Use worldmodel_msgs-msg:pipeline_finish_timestamp_us instead.")
  (pipeline_finish_timestamp_us m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProcessedMapMeta>) ostream)
  "Serializes a message object of type '<ProcessedMapMeta>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'egopose_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'egopose_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'egopose_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'egopose_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'egopose_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'egopose_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'egopose_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'egopose_timestamp_us)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProcessedMapMeta>) istream)
  "Deserializes a message object of type '<ProcessedMapMeta>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'egopose_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'egopose_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'egopose_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'egopose_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'egopose_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'egopose_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'egopose_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'egopose_timestamp_us)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProcessedMapMeta>)))
  "Returns string type for a message object of type '<ProcessedMapMeta>"
  "worldmodel_msgs/ProcessedMapMeta")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProcessedMapMeta)))
  "Returns string type for a message object of type 'ProcessedMapMeta"
  "worldmodel_msgs/ProcessedMapMeta")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProcessedMapMeta>)))
  "Returns md5sum for a message object of type '<ProcessedMapMeta>"
  "a527f1edbbeb60e43336c01ad33ca2b9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProcessedMapMeta)))
  "Returns md5sum for a message object of type 'ProcessedMapMeta"
  "a527f1edbbeb60e43336c01ad33ca2b9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProcessedMapMeta>)))
  "Returns full string definition for message of type '<ProcessedMapMeta>"
  (cl:format cl:nil "uint64 egopose_timestamp_us~%uint64 pipeline_start_timestamp_us~%uint64 pipeline_finish_timestamp_us~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProcessedMapMeta)))
  "Returns full string definition for message of type 'ProcessedMapMeta"
  (cl:format cl:nil "uint64 egopose_timestamp_us~%uint64 pipeline_start_timestamp_us~%uint64 pipeline_finish_timestamp_us~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProcessedMapMeta>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProcessedMapMeta>))
  "Converts a ROS message object to a list"
  (cl:list 'ProcessedMapMeta
    (cl:cons ':egopose_timestamp_us (egopose_timestamp_us msg))
    (cl:cons ':pipeline_start_timestamp_us (pipeline_start_timestamp_us msg))
    (cl:cons ':pipeline_finish_timestamp_us (pipeline_finish_timestamp_us msg))
))
