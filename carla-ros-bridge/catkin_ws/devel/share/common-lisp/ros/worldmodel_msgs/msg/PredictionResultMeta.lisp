; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude PredictionResultMeta.msg.html

(cl:defclass <PredictionResultMeta> (roslisp-msg-protocol:ros-message)
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
   (frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:string
    :initform ""))
)

(cl:defclass PredictionResultMeta (<PredictionResultMeta>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PredictionResultMeta>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PredictionResultMeta)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<PredictionResultMeta> is deprecated: use worldmodel_msgs-msg:PredictionResultMeta instead.")))

(cl:ensure-generic-function 'sensor_timestamp_us-val :lambda-list '(m))
(cl:defmethod sensor_timestamp_us-val ((m <PredictionResultMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:sensor_timestamp_us-val is deprecated.  Use worldmodel_msgs-msg:sensor_timestamp_us instead.")
  (sensor_timestamp_us m))

(cl:ensure-generic-function 'pipeline_start_timestamp_us-val :lambda-list '(m))
(cl:defmethod pipeline_start_timestamp_us-val ((m <PredictionResultMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:pipeline_start_timestamp_us-val is deprecated.  Use worldmodel_msgs-msg:pipeline_start_timestamp_us instead.")
  (pipeline_start_timestamp_us m))

(cl:ensure-generic-function 'pipeline_finish_timestamp_us-val :lambda-list '(m))
(cl:defmethod pipeline_finish_timestamp_us-val ((m <PredictionResultMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:pipeline_finish_timestamp_us-val is deprecated.  Use worldmodel_msgs-msg:pipeline_finish_timestamp_us instead.")
  (pipeline_finish_timestamp_us m))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <PredictionResultMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:frame_id-val is deprecated.  Use worldmodel_msgs-msg:frame_id instead.")
  (frame_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PredictionResultMeta>) ostream)
  "Serializes a message object of type '<PredictionResultMeta>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frame_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PredictionResultMeta>) istream)
  "Deserializes a message object of type '<PredictionResultMeta>"
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
      (cl:setf (cl:slot-value msg 'frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PredictionResultMeta>)))
  "Returns string type for a message object of type '<PredictionResultMeta>"
  "worldmodel_msgs/PredictionResultMeta")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PredictionResultMeta)))
  "Returns string type for a message object of type 'PredictionResultMeta"
  "worldmodel_msgs/PredictionResultMeta")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PredictionResultMeta>)))
  "Returns md5sum for a message object of type '<PredictionResultMeta>"
  "ca1db8fdea922c3985c22426c44ba00c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PredictionResultMeta)))
  "Returns md5sum for a message object of type 'PredictionResultMeta"
  "ca1db8fdea922c3985c22426c44ba00c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PredictionResultMeta>)))
  "Returns full string definition for message of type '<PredictionResultMeta>"
  (cl:format cl:nil "uint64 sensor_timestamp_us~%uint64 pipeline_start_timestamp_us~%uint64 pipeline_finish_timestamp_us~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PredictionResultMeta)))
  "Returns full string definition for message of type 'PredictionResultMeta"
  (cl:format cl:nil "uint64 sensor_timestamp_us~%uint64 pipeline_start_timestamp_us~%uint64 pipeline_finish_timestamp_us~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PredictionResultMeta>))
  (cl:+ 0
     8
     8
     8
     4 (cl:length (cl:slot-value msg 'frame_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PredictionResultMeta>))
  "Converts a ROS message object to a list"
  (cl:list 'PredictionResultMeta
    (cl:cons ':sensor_timestamp_us (sensor_timestamp_us msg))
    (cl:cons ':pipeline_start_timestamp_us (pipeline_start_timestamp_us msg))
    (cl:cons ':pipeline_finish_timestamp_us (pipeline_finish_timestamp_us msg))
    (cl:cons ':frame_id (frame_id msg))
))
