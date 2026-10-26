; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude SysCameraServiceInfo.msg.html

(cl:defclass <SysCameraServiceInfo> (roslisp-msg-protocol:ros-message)
  ((path
    :reader path
    :initarg :path
    :type cl:string
    :initform ""))
)

(cl:defclass SysCameraServiceInfo (<SysCameraServiceInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SysCameraServiceInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SysCameraServiceInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<SysCameraServiceInfo> is deprecated: use system_manager_msgs-msg:SysCameraServiceInfo instead.")))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <SysCameraServiceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:path-val is deprecated.  Use system_manager_msgs-msg:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SysCameraServiceInfo>) ostream)
  "Serializes a message object of type '<SysCameraServiceInfo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SysCameraServiceInfo>) istream)
  "Deserializes a message object of type '<SysCameraServiceInfo>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SysCameraServiceInfo>)))
  "Returns string type for a message object of type '<SysCameraServiceInfo>"
  "system_manager_msgs/SysCameraServiceInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SysCameraServiceInfo)))
  "Returns string type for a message object of type 'SysCameraServiceInfo"
  "system_manager_msgs/SysCameraServiceInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SysCameraServiceInfo>)))
  "Returns md5sum for a message object of type '<SysCameraServiceInfo>"
  "1d00cd540af97efeb6b1589112fab63e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SysCameraServiceInfo)))
  "Returns md5sum for a message object of type 'SysCameraServiceInfo"
  "1d00cd540af97efeb6b1589112fab63e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SysCameraServiceInfo>)))
  "Returns full string definition for message of type '<SysCameraServiceInfo>"
  (cl:format cl:nil "string path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SysCameraServiceInfo)))
  "Returns full string definition for message of type 'SysCameraServiceInfo"
  (cl:format cl:nil "string path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SysCameraServiceInfo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SysCameraServiceInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'SysCameraServiceInfo
    (cl:cons ':path (path msg))
))
