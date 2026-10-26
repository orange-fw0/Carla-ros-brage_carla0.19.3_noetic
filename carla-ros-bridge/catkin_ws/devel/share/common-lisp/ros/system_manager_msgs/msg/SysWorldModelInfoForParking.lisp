; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude SysWorldModelInfoForParking.msg.html

(cl:defclass <SysWorldModelInfoForParking> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0))
)

(cl:defclass SysWorldModelInfoForParking (<SysWorldModelInfoForParking>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SysWorldModelInfoForParking>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SysWorldModelInfoForParking)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<SysWorldModelInfoForParking> is deprecated: use system_manager_msgs-msg:SysWorldModelInfoForParking instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <SysWorldModelInfoForParking>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:id-val is deprecated.  Use system_manager_msgs-msg:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SysWorldModelInfoForParking>) ostream)
  "Serializes a message object of type '<SysWorldModelInfoForParking>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SysWorldModelInfoForParking>) istream)
  "Deserializes a message object of type '<SysWorldModelInfoForParking>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SysWorldModelInfoForParking>)))
  "Returns string type for a message object of type '<SysWorldModelInfoForParking>"
  "system_manager_msgs/SysWorldModelInfoForParking")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SysWorldModelInfoForParking)))
  "Returns string type for a message object of type 'SysWorldModelInfoForParking"
  "system_manager_msgs/SysWorldModelInfoForParking")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SysWorldModelInfoForParking>)))
  "Returns md5sum for a message object of type '<SysWorldModelInfoForParking>"
  "309d4b30834b338cced19e5622a97a03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SysWorldModelInfoForParking)))
  "Returns md5sum for a message object of type 'SysWorldModelInfoForParking"
  "309d4b30834b338cced19e5622a97a03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SysWorldModelInfoForParking>)))
  "Returns full string definition for message of type '<SysWorldModelInfoForParking>"
  (cl:format cl:nil "uint32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SysWorldModelInfoForParking)))
  "Returns full string definition for message of type 'SysWorldModelInfoForParking"
  (cl:format cl:nil "uint32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SysWorldModelInfoForParking>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SysWorldModelInfoForParking>))
  "Converts a ROS message object to a list"
  (cl:list 'SysWorldModelInfoForParking
    (cl:cons ':id (id msg))
))
