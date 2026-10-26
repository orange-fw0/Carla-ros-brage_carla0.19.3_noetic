; Auto-generated. Do not edit!


(cl:in-package tos_msgs-msg)


;//! \htmlinclude TOSRequestRenderODInfo.msg.html

(cl:defclass <TOSRequestRenderODInfo> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (target_s
    :reader target_s
    :initarg :target_s
    :type cl:float
    :initform 0.0)
   (target_l
    :reader target_l
    :initarg :target_l
    :type cl:float
    :initform 0.0))
)

(cl:defclass TOSRequestRenderODInfo (<TOSRequestRenderODInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TOSRequestRenderODInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TOSRequestRenderODInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tos_msgs-msg:<TOSRequestRenderODInfo> is deprecated: use tos_msgs-msg:TOSRequestRenderODInfo instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <TOSRequestRenderODInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:id-val is deprecated.  Use tos_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'target_s-val :lambda-list '(m))
(cl:defmethod target_s-val ((m <TOSRequestRenderODInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:target_s-val is deprecated.  Use tos_msgs-msg:target_s instead.")
  (target_s m))

(cl:ensure-generic-function 'target_l-val :lambda-list '(m))
(cl:defmethod target_l-val ((m <TOSRequestRenderODInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:target_l-val is deprecated.  Use tos_msgs-msg:target_l instead.")
  (target_l m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TOSRequestRenderODInfo>) ostream)
  "Serializes a message object of type '<TOSRequestRenderODInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'target_s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'target_l))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TOSRequestRenderODInfo>) istream)
  "Deserializes a message object of type '<TOSRequestRenderODInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_s) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_l) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TOSRequestRenderODInfo>)))
  "Returns string type for a message object of type '<TOSRequestRenderODInfo>"
  "tos_msgs/TOSRequestRenderODInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TOSRequestRenderODInfo)))
  "Returns string type for a message object of type 'TOSRequestRenderODInfo"
  "tos_msgs/TOSRequestRenderODInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TOSRequestRenderODInfo>)))
  "Returns md5sum for a message object of type '<TOSRequestRenderODInfo>"
  "8a972246949806bb2f0407b295673a74")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TOSRequestRenderODInfo)))
  "Returns md5sum for a message object of type 'TOSRequestRenderODInfo"
  "8a972246949806bb2f0407b295673a74")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TOSRequestRenderODInfo>)))
  "Returns full string definition for message of type '<TOSRequestRenderODInfo>"
  (cl:format cl:nil "uint32 id~%float64 target_s~%float64 target_l~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TOSRequestRenderODInfo)))
  "Returns full string definition for message of type 'TOSRequestRenderODInfo"
  (cl:format cl:nil "uint32 id~%float64 target_s~%float64 target_l~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TOSRequestRenderODInfo>))
  (cl:+ 0
     4
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TOSRequestRenderODInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'TOSRequestRenderODInfo
    (cl:cons ':id (id msg))
    (cl:cons ':target_s (target_s msg))
    (cl:cons ':target_l (target_l msg))
))
