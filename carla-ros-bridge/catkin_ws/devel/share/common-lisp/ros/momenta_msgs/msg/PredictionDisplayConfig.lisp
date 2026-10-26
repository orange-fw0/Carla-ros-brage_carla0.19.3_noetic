; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude PredictionDisplayConfig.msg.html

(cl:defclass <PredictionDisplayConfig> (roslisp-msg-protocol:ros-message)
  ((prediction_topic
    :reader prediction_topic
    :initarg :prediction_topic
    :type cl:string
    :initform "")
   (judge_topic
    :reader judge_topic
    :initarg :judge_topic
    :type cl:string
    :initform "")
   (track_ids
    :reader track_ids
    :initarg :track_ids
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass PredictionDisplayConfig (<PredictionDisplayConfig>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PredictionDisplayConfig>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PredictionDisplayConfig)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<PredictionDisplayConfig> is deprecated: use momenta_msgs-msg:PredictionDisplayConfig instead.")))

(cl:ensure-generic-function 'prediction_topic-val :lambda-list '(m))
(cl:defmethod prediction_topic-val ((m <PredictionDisplayConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:prediction_topic-val is deprecated.  Use momenta_msgs-msg:prediction_topic instead.")
  (prediction_topic m))

(cl:ensure-generic-function 'judge_topic-val :lambda-list '(m))
(cl:defmethod judge_topic-val ((m <PredictionDisplayConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:judge_topic-val is deprecated.  Use momenta_msgs-msg:judge_topic instead.")
  (judge_topic m))

(cl:ensure-generic-function 'track_ids-val :lambda-list '(m))
(cl:defmethod track_ids-val ((m <PredictionDisplayConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:track_ids-val is deprecated.  Use momenta_msgs-msg:track_ids instead.")
  (track_ids m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PredictionDisplayConfig>) ostream)
  "Serializes a message object of type '<PredictionDisplayConfig>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'prediction_topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'prediction_topic))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'judge_topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'judge_topic))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'track_ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) ele) ostream))
   (cl:slot-value msg 'track_ids))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PredictionDisplayConfig>) istream)
  "Deserializes a message object of type '<PredictionDisplayConfig>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'prediction_topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'prediction_topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'judge_topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'judge_topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'track_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'track_ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PredictionDisplayConfig>)))
  "Returns string type for a message object of type '<PredictionDisplayConfig>"
  "momenta_msgs/PredictionDisplayConfig")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PredictionDisplayConfig)))
  "Returns string type for a message object of type 'PredictionDisplayConfig"
  "momenta_msgs/PredictionDisplayConfig")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PredictionDisplayConfig>)))
  "Returns md5sum for a message object of type '<PredictionDisplayConfig>"
  "032ecc8c884a3b0f29ba4bf908dd506a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PredictionDisplayConfig)))
  "Returns md5sum for a message object of type 'PredictionDisplayConfig"
  "032ecc8c884a3b0f29ba4bf908dd506a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PredictionDisplayConfig>)))
  "Returns full string definition for message of type '<PredictionDisplayConfig>"
  (cl:format cl:nil "string prediction_topic~%string judge_topic~%uint64[] track_ids~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PredictionDisplayConfig)))
  "Returns full string definition for message of type 'PredictionDisplayConfig"
  (cl:format cl:nil "string prediction_topic~%string judge_topic~%uint64[] track_ids~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PredictionDisplayConfig>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'prediction_topic))
     4 (cl:length (cl:slot-value msg 'judge_topic))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'track_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PredictionDisplayConfig>))
  "Converts a ROS message object to a list"
  (cl:list 'PredictionDisplayConfig
    (cl:cons ':prediction_topic (prediction_topic msg))
    (cl:cons ':judge_topic (judge_topic msg))
    (cl:cons ':track_ids (track_ids msg))
))
