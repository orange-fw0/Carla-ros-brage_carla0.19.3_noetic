; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude SBPResultExtra.msg.html

(cl:defclass <SBPResultExtra> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (json
    :reader json
    :initarg :json
    :type cl:string
    :initform ""))
)

(cl:defclass SBPResultExtra (<SBPResultExtra>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SBPResultExtra>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SBPResultExtra)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<SBPResultExtra> is deprecated: use planning_msgs-msg:SBPResultExtra instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <SBPResultExtra>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:available-val is deprecated.  Use planning_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'json-val :lambda-list '(m))
(cl:defmethod json-val ((m <SBPResultExtra>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:json-val is deprecated.  Use planning_msgs-msg:json instead.")
  (json m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SBPResultExtra>)))
    "Constants for message type '<SBPResultExtra>"
  '((:JSON . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SBPResultExtra)))
    "Constants for message type 'SBPResultExtra"
  '((:JSON . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SBPResultExtra>) ostream)
  "Serializes a message object of type '<SBPResultExtra>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'json))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'json))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SBPResultExtra>) istream)
  "Deserializes a message object of type '<SBPResultExtra>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SBPResultExtra>)))
  "Returns string type for a message object of type '<SBPResultExtra>"
  "planning_msgs/SBPResultExtra")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SBPResultExtra)))
  "Returns string type for a message object of type 'SBPResultExtra"
  "planning_msgs/SBPResultExtra")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SBPResultExtra>)))
  "Returns md5sum for a message object of type '<SBPResultExtra>"
  "9e548927e18008b822eac38074c080e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SBPResultExtra)))
  "Returns md5sum for a message object of type 'SBPResultExtra"
  "9e548927e18008b822eac38074c080e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SBPResultExtra>)))
  "Returns full string definition for message of type '<SBPResultExtra>"
  (cl:format cl:nil "uint8 JSON = 1~%uint8 available~%string json~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SBPResultExtra)))
  "Returns full string definition for message of type 'SBPResultExtra"
  (cl:format cl:nil "uint8 JSON = 1~%uint8 available~%string json~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SBPResultExtra>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'json))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SBPResultExtra>))
  "Converts a ROS message object to a list"
  (cl:list 'SBPResultExtra
    (cl:cons ':available (available msg))
    (cl:cons ':json (json msg))
))
