; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude SafetyEvaluator.msg.html

(cl:defclass <SafetyEvaluator> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass SafetyEvaluator (<SafetyEvaluator>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SafetyEvaluator>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SafetyEvaluator)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<SafetyEvaluator> is deprecated: use planning_msgs-msg:SafetyEvaluator instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <SafetyEvaluator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:id-val is deprecated.  Use planning_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <SafetyEvaluator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:name-val is deprecated.  Use planning_msgs-msg:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SafetyEvaluator>) ostream)
  "Serializes a message object of type '<SafetyEvaluator>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SafetyEvaluator>) istream)
  "Deserializes a message object of type '<SafetyEvaluator>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SafetyEvaluator>)))
  "Returns string type for a message object of type '<SafetyEvaluator>"
  "planning_msgs/SafetyEvaluator")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SafetyEvaluator)))
  "Returns string type for a message object of type 'SafetyEvaluator"
  "planning_msgs/SafetyEvaluator")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SafetyEvaluator>)))
  "Returns md5sum for a message object of type '<SafetyEvaluator>"
  "527516197432b3d63ada52e8e4abaa34")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SafetyEvaluator)))
  "Returns md5sum for a message object of type 'SafetyEvaluator"
  "527516197432b3d63ada52e8e4abaa34")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SafetyEvaluator>)))
  "Returns full string definition for message of type '<SafetyEvaluator>"
  (cl:format cl:nil "uint8 id~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SafetyEvaluator)))
  "Returns full string definition for message of type 'SafetyEvaluator"
  (cl:format cl:nil "uint8 id~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SafetyEvaluator>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SafetyEvaluator>))
  "Converts a ROS message object to a list"
  (cl:list 'SafetyEvaluator
    (cl:cons ':id (id msg))
    (cl:cons ':name (name msg))
))
