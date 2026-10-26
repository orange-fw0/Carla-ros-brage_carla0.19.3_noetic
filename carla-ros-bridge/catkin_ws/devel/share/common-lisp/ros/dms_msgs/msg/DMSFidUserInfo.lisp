; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSFidUserInfo.msg.html

(cl:defclass <DMSFidUserInfo> (roslisp-msg-protocol:ros-message)
  ((user_id
    :reader user_id
    :initarg :user_id
    :type cl:string
    :initform "")
   (create_time
    :reader create_time
    :initarg :create_time
    :type cl:string
    :initform ""))
)

(cl:defclass DMSFidUserInfo (<DMSFidUserInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSFidUserInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSFidUserInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSFidUserInfo> is deprecated: use dms_msgs-msg:DMSFidUserInfo instead.")))

(cl:ensure-generic-function 'user_id-val :lambda-list '(m))
(cl:defmethod user_id-val ((m <DMSFidUserInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:user_id-val is deprecated.  Use dms_msgs-msg:user_id instead.")
  (user_id m))

(cl:ensure-generic-function 'create_time-val :lambda-list '(m))
(cl:defmethod create_time-val ((m <DMSFidUserInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:create_time-val is deprecated.  Use dms_msgs-msg:create_time instead.")
  (create_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSFidUserInfo>) ostream)
  "Serializes a message object of type '<DMSFidUserInfo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'user_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'user_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'create_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'create_time))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSFidUserInfo>) istream)
  "Deserializes a message object of type '<DMSFidUserInfo>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'user_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'user_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'create_time) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'create_time) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSFidUserInfo>)))
  "Returns string type for a message object of type '<DMSFidUserInfo>"
  "dms_msgs/DMSFidUserInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSFidUserInfo)))
  "Returns string type for a message object of type 'DMSFidUserInfo"
  "dms_msgs/DMSFidUserInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSFidUserInfo>)))
  "Returns md5sum for a message object of type '<DMSFidUserInfo>"
  "8566b8925ece3c605f335f81182b84d6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSFidUserInfo)))
  "Returns md5sum for a message object of type 'DMSFidUserInfo"
  "8566b8925ece3c605f335f81182b84d6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSFidUserInfo>)))
  "Returns full string definition for message of type '<DMSFidUserInfo>"
  (cl:format cl:nil "string user_id~%string create_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSFidUserInfo)))
  "Returns full string definition for message of type 'DMSFidUserInfo"
  (cl:format cl:nil "string user_id~%string create_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSFidUserInfo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'user_id))
     4 (cl:length (cl:slot-value msg 'create_time))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSFidUserInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSFidUserInfo
    (cl:cons ':user_id (user_id msg))
    (cl:cons ':create_time (create_time msg))
))
