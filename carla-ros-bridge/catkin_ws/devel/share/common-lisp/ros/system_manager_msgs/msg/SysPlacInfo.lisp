; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude SysPlacInfo.msg.html

(cl:defclass <SysPlacInfo> (roslisp-msg-protocol:ros-message)
  ((path
    :reader path
    :initarg :path
    :type cl:string
    :initform ""))
)

(cl:defclass SysPlacInfo (<SysPlacInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SysPlacInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SysPlacInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<SysPlacInfo> is deprecated: use system_manager_msgs-msg:SysPlacInfo instead.")))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <SysPlacInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:path-val is deprecated.  Use system_manager_msgs-msg:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SysPlacInfo>) ostream)
  "Serializes a message object of type '<SysPlacInfo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SysPlacInfo>) istream)
  "Deserializes a message object of type '<SysPlacInfo>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SysPlacInfo>)))
  "Returns string type for a message object of type '<SysPlacInfo>"
  "system_manager_msgs/SysPlacInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SysPlacInfo)))
  "Returns string type for a message object of type 'SysPlacInfo"
  "system_manager_msgs/SysPlacInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SysPlacInfo>)))
  "Returns md5sum for a message object of type '<SysPlacInfo>"
  "1d00cd540af97efeb6b1589112fab63e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SysPlacInfo)))
  "Returns md5sum for a message object of type 'SysPlacInfo"
  "1d00cd540af97efeb6b1589112fab63e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SysPlacInfo>)))
  "Returns full string definition for message of type '<SysPlacInfo>"
  (cl:format cl:nil "string path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SysPlacInfo)))
  "Returns full string definition for message of type 'SysPlacInfo"
  (cl:format cl:nil "string path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SysPlacInfo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SysPlacInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'SysPlacInfo
    (cl:cons ':path (path msg))
))
