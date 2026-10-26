; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude AvdMsg.msg.html

(cl:defclass <AvdMsg> (roslisp-msg-protocol:ros-message)
  ((Id
    :reader Id
    :initarg :Id
    :type cl:integer
    :initform 0)
   (Property
    :reader Property
    :initarg :Property
    :type cl:string
    :initform "")
   (Ignore
    :reader Ignore
    :initarg :Ignore
    :type cl:boolean
    :initform cl:nil)
   (AvdDirection
    :reader AvdDirection
    :initarg :AvdDirection
    :type cl:string
    :initform ""))
)

(cl:defclass AvdMsg (<AvdMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AvdMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AvdMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<AvdMsg> is deprecated: use momenta_msgs-msg:AvdMsg instead.")))

(cl:ensure-generic-function 'Id-val :lambda-list '(m))
(cl:defmethod Id-val ((m <AvdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:Id-val is deprecated.  Use momenta_msgs-msg:Id instead.")
  (Id m))

(cl:ensure-generic-function 'Property-val :lambda-list '(m))
(cl:defmethod Property-val ((m <AvdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:Property-val is deprecated.  Use momenta_msgs-msg:Property instead.")
  (Property m))

(cl:ensure-generic-function 'Ignore-val :lambda-list '(m))
(cl:defmethod Ignore-val ((m <AvdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:Ignore-val is deprecated.  Use momenta_msgs-msg:Ignore instead.")
  (Ignore m))

(cl:ensure-generic-function 'AvdDirection-val :lambda-list '(m))
(cl:defmethod AvdDirection-val ((m <AvdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:AvdDirection-val is deprecated.  Use momenta_msgs-msg:AvdDirection instead.")
  (AvdDirection m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AvdMsg>) ostream)
  "Serializes a message object of type '<AvdMsg>"
  (cl:let* ((signed (cl:slot-value msg 'Id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Property))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Property))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Ignore) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'AvdDirection))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'AvdDirection))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AvdMsg>) istream)
  "Deserializes a message object of type '<AvdMsg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Property) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Property) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'Ignore) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'AvdDirection) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'AvdDirection) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AvdMsg>)))
  "Returns string type for a message object of type '<AvdMsg>"
  "momenta_msgs/AvdMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AvdMsg)))
  "Returns string type for a message object of type 'AvdMsg"
  "momenta_msgs/AvdMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AvdMsg>)))
  "Returns md5sum for a message object of type '<AvdMsg>"
  "8c5c10c820df4b4d90403966228982b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AvdMsg)))
  "Returns md5sum for a message object of type 'AvdMsg"
  "8c5c10c820df4b4d90403966228982b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AvdMsg>)))
  "Returns full string definition for message of type '<AvdMsg>"
  (cl:format cl:nil "int32 Id~%string Property~%bool Ignore~%string AvdDirection~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AvdMsg)))
  "Returns full string definition for message of type 'AvdMsg"
  (cl:format cl:nil "int32 Id~%string Property~%bool Ignore~%string AvdDirection~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AvdMsg>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'Property))
     1
     4 (cl:length (cl:slot-value msg 'AvdDirection))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AvdMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'AvdMsg
    (cl:cons ':Id (Id msg))
    (cl:cons ':Property (Property msg))
    (cl:cons ':Ignore (Ignore msg))
    (cl:cons ':AvdDirection (AvdDirection msg))
))
