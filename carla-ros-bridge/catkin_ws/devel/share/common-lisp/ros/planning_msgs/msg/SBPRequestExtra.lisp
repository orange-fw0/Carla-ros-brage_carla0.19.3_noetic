; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude SBPRequestExtra.msg.html

(cl:defclass <SBPRequestExtra> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SBPRequestExtra (<SBPRequestExtra>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SBPRequestExtra>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SBPRequestExtra)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<SBPRequestExtra> is deprecated: use planning_msgs-msg:SBPRequestExtra instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <SBPRequestExtra>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:available-val is deprecated.  Use planning_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'json-val :lambda-list '(m))
(cl:defmethod json-val ((m <SBPRequestExtra>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:json-val is deprecated.  Use planning_msgs-msg:json instead.")
  (json m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SBPRequestExtra>)))
    "Constants for message type '<SBPRequestExtra>"
  '((:JSON . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SBPRequestExtra)))
    "Constants for message type 'SBPRequestExtra"
  '((:JSON . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SBPRequestExtra>) ostream)
  "Serializes a message object of type '<SBPRequestExtra>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'json))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'json))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SBPRequestExtra>) istream)
  "Deserializes a message object of type '<SBPRequestExtra>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SBPRequestExtra>)))
  "Returns string type for a message object of type '<SBPRequestExtra>"
  "planning_msgs/SBPRequestExtra")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SBPRequestExtra)))
  "Returns string type for a message object of type 'SBPRequestExtra"
  "planning_msgs/SBPRequestExtra")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SBPRequestExtra>)))
  "Returns md5sum for a message object of type '<SBPRequestExtra>"
  "9e548927e18008b822eac38074c080e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SBPRequestExtra)))
  "Returns md5sum for a message object of type 'SBPRequestExtra"
  "9e548927e18008b822eac38074c080e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SBPRequestExtra>)))
  "Returns full string definition for message of type '<SBPRequestExtra>"
  (cl:format cl:nil "uint8 JSON = 1~%uint8 available~%string json~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SBPRequestExtra)))
  "Returns full string definition for message of type 'SBPRequestExtra"
  (cl:format cl:nil "uint8 JSON = 1~%uint8 available~%string json~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SBPRequestExtra>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'json))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SBPRequestExtra>))
  "Converts a ROS message object to a list"
  (cl:list 'SBPRequestExtra
    (cl:cons ':available (available msg))
    (cl:cons ':json (json msg))
))
