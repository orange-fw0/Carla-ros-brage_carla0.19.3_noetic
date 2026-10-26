; Auto-generated. Do not edit!


(cl:in-package e2e_planning_msgs-msg)


;//! \htmlinclude DLPLaneChangeDecision.msg.html

(cl:defclass <DLPLaneChangeDecision> (roslisp-msg-protocol:ros-message)
  ((request_type
    :reader request_type
    :initarg :request_type
    :type cl:integer
    :initform 0)
   (direction
    :reader direction
    :initarg :direction
    :type cl:integer
    :initform 0)
   (target_lane_id
    :reader target_lane_id
    :initarg :target_lane_id
    :type cl:integer
    :initform 0)
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0)
   (source
    :reader source
    :initarg :source
    :type cl:string
    :initform ""))
)

(cl:defclass DLPLaneChangeDecision (<DLPLaneChangeDecision>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DLPLaneChangeDecision>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DLPLaneChangeDecision)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name e2e_planning_msgs-msg:<DLPLaneChangeDecision> is deprecated: use e2e_planning_msgs-msg:DLPLaneChangeDecision instead.")))

(cl:ensure-generic-function 'request_type-val :lambda-list '(m))
(cl:defmethod request_type-val ((m <DLPLaneChangeDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_planning_msgs-msg:request_type-val is deprecated.  Use e2e_planning_msgs-msg:request_type instead.")
  (request_type m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <DLPLaneChangeDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_planning_msgs-msg:direction-val is deprecated.  Use e2e_planning_msgs-msg:direction instead.")
  (direction m))

(cl:ensure-generic-function 'target_lane_id-val :lambda-list '(m))
(cl:defmethod target_lane_id-val ((m <DLPLaneChangeDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_planning_msgs-msg:target_lane_id-val is deprecated.  Use e2e_planning_msgs-msg:target_lane_id instead.")
  (target_lane_id m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <DLPLaneChangeDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_planning_msgs-msg:score-val is deprecated.  Use e2e_planning_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'source-val :lambda-list '(m))
(cl:defmethod source-val ((m <DLPLaneChangeDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_planning_msgs-msg:source-val is deprecated.  Use e2e_planning_msgs-msg:source instead.")
  (source m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DLPLaneChangeDecision>) ostream)
  "Serializes a message object of type '<DLPLaneChangeDecision>"
  (cl:let* ((signed (cl:slot-value msg 'request_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'direction)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'target_lane_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'source))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'source))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DLPLaneChangeDecision>) istream)
  "Deserializes a message object of type '<DLPLaneChangeDecision>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'request_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'direction) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_lane_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'source) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'source) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DLPLaneChangeDecision>)))
  "Returns string type for a message object of type '<DLPLaneChangeDecision>"
  "e2e_planning_msgs/DLPLaneChangeDecision")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DLPLaneChangeDecision)))
  "Returns string type for a message object of type 'DLPLaneChangeDecision"
  "e2e_planning_msgs/DLPLaneChangeDecision")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DLPLaneChangeDecision>)))
  "Returns md5sum for a message object of type '<DLPLaneChangeDecision>"
  "16e2c167d9cc0a8bff7205af1eb74484")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DLPLaneChangeDecision)))
  "Returns md5sum for a message object of type 'DLPLaneChangeDecision"
  "16e2c167d9cc0a8bff7205af1eb74484")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DLPLaneChangeDecision>)))
  "Returns full string definition for message of type '<DLPLaneChangeDecision>"
  (cl:format cl:nil "int32 request_type~%int32 direction~%int32 target_lane_id~%float64 score~%string source~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DLPLaneChangeDecision)))
  "Returns full string definition for message of type 'DLPLaneChangeDecision"
  (cl:format cl:nil "int32 request_type~%int32 direction~%int32 target_lane_id~%float64 score~%string source~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DLPLaneChangeDecision>))
  (cl:+ 0
     4
     4
     4
     8
     4 (cl:length (cl:slot-value msg 'source))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DLPLaneChangeDecision>))
  "Converts a ROS message object to a list"
  (cl:list 'DLPLaneChangeDecision
    (cl:cons ':request_type (request_type msg))
    (cl:cons ':direction (direction msg))
    (cl:cons ':target_lane_id (target_lane_id msg))
    (cl:cons ':score (score msg))
    (cl:cons ':source (source msg))
))
