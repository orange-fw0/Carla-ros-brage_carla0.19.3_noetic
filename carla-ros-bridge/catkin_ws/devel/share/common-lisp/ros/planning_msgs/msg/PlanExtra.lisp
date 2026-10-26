; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude PlanExtra.msg.html

(cl:defclass <PlanExtra> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (version
    :reader version
    :initarg :version
    :type cl:string
    :initform "")
   (json
    :reader json
    :initarg :json
    :type cl:string
    :initform ""))
)

(cl:defclass PlanExtra (<PlanExtra>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanExtra>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanExtra)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<PlanExtra> is deprecated: use planning_msgs-msg:PlanExtra instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <PlanExtra>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:available-val is deprecated.  Use planning_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'version-val :lambda-list '(m))
(cl:defmethod version-val ((m <PlanExtra>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:version-val is deprecated.  Use planning_msgs-msg:version instead.")
  (version m))

(cl:ensure-generic-function 'json-val :lambda-list '(m))
(cl:defmethod json-val ((m <PlanExtra>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:json-val is deprecated.  Use planning_msgs-msg:json instead.")
  (json m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PlanExtra>)))
    "Constants for message type '<PlanExtra>"
  '((:VERSION . 1)
    (:JSON . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PlanExtra)))
    "Constants for message type 'PlanExtra"
  '((:VERSION . 1)
    (:JSON . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanExtra>) ostream)
  "Serializes a message object of type '<PlanExtra>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'version))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'version))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'json))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'json))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanExtra>) istream)
  "Deserializes a message object of type '<PlanExtra>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'version) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'version) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'json) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'json) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanExtra>)))
  "Returns string type for a message object of type '<PlanExtra>"
  "planning_msgs/PlanExtra")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanExtra)))
  "Returns string type for a message object of type 'PlanExtra"
  "planning_msgs/PlanExtra")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanExtra>)))
  "Returns md5sum for a message object of type '<PlanExtra>"
  "b91373d8e7a0b760646b0ed5575ac94e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanExtra)))
  "Returns md5sum for a message object of type 'PlanExtra"
  "b91373d8e7a0b760646b0ed5575ac94e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanExtra>)))
  "Returns full string definition for message of type '<PlanExtra>"
  (cl:format cl:nil "uint8 VERSION = 1~%uint8 JSON = 2~%uint8 available~%string version~%string json~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanExtra)))
  "Returns full string definition for message of type 'PlanExtra"
  (cl:format cl:nil "uint8 VERSION = 1~%uint8 JSON = 2~%uint8 available~%string version~%string json~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanExtra>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'version))
     4 (cl:length (cl:slot-value msg 'json))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanExtra>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanExtra
    (cl:cons ':available (available msg))
    (cl:cons ':version (version msg))
    (cl:cons ':json (json msg))
))
