; Auto-generated. Do not edit!


(cl:in-package adas_msgs-msg)


;//! \htmlinclude RcwStatus.msg.html

(cl:defclass <RcwStatus> (roslisp-msg-protocol:ros-message)
  ((rcw_state
    :reader rcw_state
    :initarg :rcw_state
    :type cl:fixnum
    :initform 0)
   (rlw_state
    :reader rlw_state
    :initarg :rlw_state
    :type cl:fixnum
    :initform 0)
   (plw_state
    :reader plw_state
    :initarg :plw_state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RcwStatus (<RcwStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RcwStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RcwStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name adas_msgs-msg:<RcwStatus> is deprecated: use adas_msgs-msg:RcwStatus instead.")))

(cl:ensure-generic-function 'rcw_state-val :lambda-list '(m))
(cl:defmethod rcw_state-val ((m <RcwStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adas_msgs-msg:rcw_state-val is deprecated.  Use adas_msgs-msg:rcw_state instead.")
  (rcw_state m))

(cl:ensure-generic-function 'rlw_state-val :lambda-list '(m))
(cl:defmethod rlw_state-val ((m <RcwStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adas_msgs-msg:rlw_state-val is deprecated.  Use adas_msgs-msg:rlw_state instead.")
  (rlw_state m))

(cl:ensure-generic-function 'plw_state-val :lambda-list '(m))
(cl:defmethod plw_state-val ((m <RcwStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adas_msgs-msg:plw_state-val is deprecated.  Use adas_msgs-msg:plw_state instead.")
  (plw_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RcwStatus>) ostream)
  "Serializes a message object of type '<RcwStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rcw_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rlw_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'plw_state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RcwStatus>) istream)
  "Deserializes a message object of type '<RcwStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rcw_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rlw_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'plw_state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RcwStatus>)))
  "Returns string type for a message object of type '<RcwStatus>"
  "adas_msgs/RcwStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RcwStatus)))
  "Returns string type for a message object of type 'RcwStatus"
  "adas_msgs/RcwStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RcwStatus>)))
  "Returns md5sum for a message object of type '<RcwStatus>"
  "be1d15965bf623787477c33874ccdb3d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RcwStatus)))
  "Returns md5sum for a message object of type 'RcwStatus"
  "be1d15965bf623787477c33874ccdb3d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RcwStatus>)))
  "Returns full string definition for message of type '<RcwStatus>"
  (cl:format cl:nil "uint8 rcw_state~%uint8 rlw_state~%uint8 plw_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RcwStatus)))
  "Returns full string definition for message of type 'RcwStatus"
  (cl:format cl:nil "uint8 rcw_state~%uint8 rlw_state~%uint8 plw_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RcwStatus>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RcwStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'RcwStatus
    (cl:cons ':rcw_state (rcw_state msg))
    (cl:cons ':rlw_state (rlw_state msg))
    (cl:cons ':plw_state (plw_state msg))
))
