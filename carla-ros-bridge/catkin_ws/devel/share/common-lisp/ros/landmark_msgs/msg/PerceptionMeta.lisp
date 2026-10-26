; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude PerceptionMeta.msg.html

(cl:defclass <PerceptionMeta> (roslisp-msg-protocol:ros-message)
  ((algorithm_name
    :reader algorithm_name
    :initarg :algorithm_name
    :type cl:string
    :initform "")
   (instance_name
    :reader instance_name
    :initarg :instance_name
    :type cl:string
    :initform "")
   (sensor_timestamp_us
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
   (relevant_frames
    :reader relevant_frames
    :initarg :relevant_frames
    :type (cl:vector landmark_msgs-msg:FrameMeta)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:FrameMeta :initial-element (cl:make-instance 'landmark_msgs-msg:FrameMeta)))
   (egopose_relevant_frame
    :reader egopose_relevant_frame
    :initarg :egopose_relevant_frame
    :type landmark_msgs-msg:EgoposeFrameMeta
    :initform (cl:make-instance 'landmark_msgs-msg:EgoposeFrameMeta))
   (version_tag
    :reader version_tag
    :initarg :version_tag
    :type cl:string
    :initform "")
   (ts_log
    :reader ts_log
    :initarg :ts_log
    :type cl:string
    :initform "")
   (sequence
    :reader sequence
    :initarg :sequence
    :type cl:integer
    :initform 0)
   (task_tag
    :reader task_tag
    :initarg :task_tag
    :type cl:string
    :initform ""))
)

(cl:defclass PerceptionMeta (<PerceptionMeta>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PerceptionMeta>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PerceptionMeta)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<PerceptionMeta> is deprecated: use landmark_msgs-msg:PerceptionMeta instead.")))

(cl:ensure-generic-function 'algorithm_name-val :lambda-list '(m))
(cl:defmethod algorithm_name-val ((m <PerceptionMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:algorithm_name-val is deprecated.  Use landmark_msgs-msg:algorithm_name instead.")
  (algorithm_name m))

(cl:ensure-generic-function 'instance_name-val :lambda-list '(m))
(cl:defmethod instance_name-val ((m <PerceptionMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:instance_name-val is deprecated.  Use landmark_msgs-msg:instance_name instead.")
  (instance_name m))

(cl:ensure-generic-function 'sensor_timestamp_us-val :lambda-list '(m))
(cl:defmethod sensor_timestamp_us-val ((m <PerceptionMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:sensor_timestamp_us-val is deprecated.  Use landmark_msgs-msg:sensor_timestamp_us instead.")
  (sensor_timestamp_us m))

(cl:ensure-generic-function 'pipeline_start_timestamp_us-val :lambda-list '(m))
(cl:defmethod pipeline_start_timestamp_us-val ((m <PerceptionMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:pipeline_start_timestamp_us-val is deprecated.  Use landmark_msgs-msg:pipeline_start_timestamp_us instead.")
  (pipeline_start_timestamp_us m))

(cl:ensure-generic-function 'pipeline_finish_timestamp_us-val :lambda-list '(m))
(cl:defmethod pipeline_finish_timestamp_us-val ((m <PerceptionMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:pipeline_finish_timestamp_us-val is deprecated.  Use landmark_msgs-msg:pipeline_finish_timestamp_us instead.")
  (pipeline_finish_timestamp_us m))

(cl:ensure-generic-function 'relevant_frames-val :lambda-list '(m))
(cl:defmethod relevant_frames-val ((m <PerceptionMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:relevant_frames-val is deprecated.  Use landmark_msgs-msg:relevant_frames instead.")
  (relevant_frames m))

(cl:ensure-generic-function 'egopose_relevant_frame-val :lambda-list '(m))
(cl:defmethod egopose_relevant_frame-val ((m <PerceptionMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:egopose_relevant_frame-val is deprecated.  Use landmark_msgs-msg:egopose_relevant_frame instead.")
  (egopose_relevant_frame m))

(cl:ensure-generic-function 'version_tag-val :lambda-list '(m))
(cl:defmethod version_tag-val ((m <PerceptionMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:version_tag-val is deprecated.  Use landmark_msgs-msg:version_tag instead.")
  (version_tag m))

(cl:ensure-generic-function 'ts_log-val :lambda-list '(m))
(cl:defmethod ts_log-val ((m <PerceptionMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:ts_log-val is deprecated.  Use landmark_msgs-msg:ts_log instead.")
  (ts_log m))

(cl:ensure-generic-function 'sequence-val :lambda-list '(m))
(cl:defmethod sequence-val ((m <PerceptionMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:sequence-val is deprecated.  Use landmark_msgs-msg:sequence instead.")
  (sequence m))

(cl:ensure-generic-function 'task_tag-val :lambda-list '(m))
(cl:defmethod task_tag-val ((m <PerceptionMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:task_tag-val is deprecated.  Use landmark_msgs-msg:task_tag instead.")
  (task_tag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PerceptionMeta>) ostream)
  "Serializes a message object of type '<PerceptionMeta>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'algorithm_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'algorithm_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'instance_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'instance_name))
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'relevant_frames))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'relevant_frames))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'egopose_relevant_frame) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'version_tag))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'version_tag))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ts_log))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ts_log))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sequence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sequence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sequence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sequence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'sequence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'sequence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'sequence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'sequence)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'task_tag))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'task_tag))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PerceptionMeta>) istream)
  "Deserializes a message object of type '<PerceptionMeta>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'algorithm_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'algorithm_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'instance_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'instance_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'relevant_frames) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'relevant_frames)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:FrameMeta))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'egopose_relevant_frame) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'version_tag) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'version_tag) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ts_log) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ts_log) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sequence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sequence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sequence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sequence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'sequence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'sequence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'sequence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'sequence)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'task_tag) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'task_tag) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PerceptionMeta>)))
  "Returns string type for a message object of type '<PerceptionMeta>"
  "landmark_msgs/PerceptionMeta")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PerceptionMeta)))
  "Returns string type for a message object of type 'PerceptionMeta"
  "landmark_msgs/PerceptionMeta")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PerceptionMeta>)))
  "Returns md5sum for a message object of type '<PerceptionMeta>"
  "a0ac2a0dbcdbff1e1000251c81dc5d53")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PerceptionMeta)))
  "Returns md5sum for a message object of type 'PerceptionMeta"
  "a0ac2a0dbcdbff1e1000251c81dc5d53")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PerceptionMeta>)))
  "Returns full string definition for message of type '<PerceptionMeta>"
  (cl:format cl:nil "string algorithm_name~%string instance_name~%uint64 sensor_timestamp_us~%uint64 pipeline_start_timestamp_us~%uint64 pipeline_finish_timestamp_us~%landmark_msgs/FrameMeta[] relevant_frames~%landmark_msgs/EgoposeFrameMeta egopose_relevant_frame~%string version_tag~%string ts_log~%uint64 sequence~%string task_tag~%~%================================================================================~%MSG: landmark_msgs/FrameMeta~%uint64 timestamp_us~%uint64 sequence~%landmark_msgs/CameraSourceEnum camera_source~%landmark_msgs/CameraModelEnum camera_model~%~%================================================================================~%MSG: landmark_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/CameraModelEnum~%uint8 CAMERA_MODEL_UNKNOWN = 0~%uint8 CAMERA_MODEL_RAW = 1~%uint8 CAMERA_MODEL_CYLINDER = 2~%uint8 CAMERA_MODEL_DEDISTORT = 3~%uint8 CAMERA_MODEL_PSTITCH = 4~%uint8 CAMERA_MODEL_RESERVED_A = 5~%uint8 CAMERA_MODEL_RESERVED_B = 6~%uint8 CAMERA_MODEL_RESERVED_C = 7~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/EgoposeFrameMeta~%uint64 timestamp_us~%uint64 sequence~%landmark_msgs/CameraSourceEnum sync_camera_source~%landmark_msgs/CameraModelEnum sync_camera_model~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PerceptionMeta)))
  "Returns full string definition for message of type 'PerceptionMeta"
  (cl:format cl:nil "string algorithm_name~%string instance_name~%uint64 sensor_timestamp_us~%uint64 pipeline_start_timestamp_us~%uint64 pipeline_finish_timestamp_us~%landmark_msgs/FrameMeta[] relevant_frames~%landmark_msgs/EgoposeFrameMeta egopose_relevant_frame~%string version_tag~%string ts_log~%uint64 sequence~%string task_tag~%~%================================================================================~%MSG: landmark_msgs/FrameMeta~%uint64 timestamp_us~%uint64 sequence~%landmark_msgs/CameraSourceEnum camera_source~%landmark_msgs/CameraModelEnum camera_model~%~%================================================================================~%MSG: landmark_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/CameraModelEnum~%uint8 CAMERA_MODEL_UNKNOWN = 0~%uint8 CAMERA_MODEL_RAW = 1~%uint8 CAMERA_MODEL_CYLINDER = 2~%uint8 CAMERA_MODEL_DEDISTORT = 3~%uint8 CAMERA_MODEL_PSTITCH = 4~%uint8 CAMERA_MODEL_RESERVED_A = 5~%uint8 CAMERA_MODEL_RESERVED_B = 6~%uint8 CAMERA_MODEL_RESERVED_C = 7~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/EgoposeFrameMeta~%uint64 timestamp_us~%uint64 sequence~%landmark_msgs/CameraSourceEnum sync_camera_source~%landmark_msgs/CameraModelEnum sync_camera_model~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PerceptionMeta>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'algorithm_name))
     4 (cl:length (cl:slot-value msg 'instance_name))
     8
     8
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'relevant_frames) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'egopose_relevant_frame))
     4 (cl:length (cl:slot-value msg 'version_tag))
     4 (cl:length (cl:slot-value msg 'ts_log))
     8
     4 (cl:length (cl:slot-value msg 'task_tag))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PerceptionMeta>))
  "Converts a ROS message object to a list"
  (cl:list 'PerceptionMeta
    (cl:cons ':algorithm_name (algorithm_name msg))
    (cl:cons ':instance_name (instance_name msg))
    (cl:cons ':sensor_timestamp_us (sensor_timestamp_us msg))
    (cl:cons ':pipeline_start_timestamp_us (pipeline_start_timestamp_us msg))
    (cl:cons ':pipeline_finish_timestamp_us (pipeline_finish_timestamp_us msg))
    (cl:cons ':relevant_frames (relevant_frames msg))
    (cl:cons ':egopose_relevant_frame (egopose_relevant_frame msg))
    (cl:cons ':version_tag (version_tag msg))
    (cl:cons ':ts_log (ts_log msg))
    (cl:cons ':sequence (sequence msg))
    (cl:cons ':task_tag (task_tag msg))
))
