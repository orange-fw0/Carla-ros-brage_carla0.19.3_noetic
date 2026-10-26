; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude PlanMeta.msg.html

(cl:defclass <PlanMeta> (roslisp-msg-protocol:ros-message)
  ((timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (plan_timestamp_us
    :reader plan_timestamp_us
    :initarg :plan_timestamp_us
    :type cl:integer
    :initform 0)
   (plan_strategy_name
    :reader plan_strategy_name
    :initarg :plan_strategy_name
    :type cl:string
    :initform ""))
)

(cl:defclass PlanMeta (<PlanMeta>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanMeta>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanMeta)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<PlanMeta> is deprecated: use planning_msgs-msg:PlanMeta instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <PlanMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:timestamp_us-val is deprecated.  Use planning_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'plan_timestamp_us-val :lambda-list '(m))
(cl:defmethod plan_timestamp_us-val ((m <PlanMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:plan_timestamp_us-val is deprecated.  Use planning_msgs-msg:plan_timestamp_us instead.")
  (plan_timestamp_us m))

(cl:ensure-generic-function 'plan_strategy_name-val :lambda-list '(m))
(cl:defmethod plan_strategy_name-val ((m <PlanMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:plan_strategy_name-val is deprecated.  Use planning_msgs-msg:plan_strategy_name instead.")
  (plan_strategy_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanMeta>) ostream)
  "Serializes a message object of type '<PlanMeta>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'plan_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'plan_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'plan_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'plan_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'plan_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'plan_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'plan_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'plan_timestamp_us)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'plan_strategy_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'plan_strategy_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanMeta>) istream)
  "Deserializes a message object of type '<PlanMeta>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'plan_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'plan_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'plan_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'plan_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'plan_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'plan_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'plan_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'plan_timestamp_us)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'plan_strategy_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'plan_strategy_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanMeta>)))
  "Returns string type for a message object of type '<PlanMeta>"
  "planning_msgs/PlanMeta")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanMeta)))
  "Returns string type for a message object of type 'PlanMeta"
  "planning_msgs/PlanMeta")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanMeta>)))
  "Returns md5sum for a message object of type '<PlanMeta>"
  "7a5c353efb2eb58dc573049b30eebe57")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanMeta)))
  "Returns md5sum for a message object of type 'PlanMeta"
  "7a5c353efb2eb58dc573049b30eebe57")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanMeta>)))
  "Returns full string definition for message of type '<PlanMeta>"
  (cl:format cl:nil "uint64 timestamp_us~%uint64 plan_timestamp_us~%string plan_strategy_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanMeta)))
  "Returns full string definition for message of type 'PlanMeta"
  (cl:format cl:nil "uint64 timestamp_us~%uint64 plan_timestamp_us~%string plan_strategy_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanMeta>))
  (cl:+ 0
     8
     8
     4 (cl:length (cl:slot-value msg 'plan_strategy_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanMeta>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanMeta
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':plan_timestamp_us (plan_timestamp_us msg))
    (cl:cons ':plan_strategy_name (plan_strategy_name msg))
))
