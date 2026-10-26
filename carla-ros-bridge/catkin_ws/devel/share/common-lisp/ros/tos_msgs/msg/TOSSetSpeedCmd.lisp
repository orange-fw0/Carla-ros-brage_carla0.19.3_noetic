; Auto-generated. Do not edit!


(cl:in-package tos_msgs-msg)


;//! \htmlinclude TOSSetSpeedCmd.msg.html

(cl:defclass <TOSSetSpeedCmd> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (tos_set_speed
    :reader tos_set_speed
    :initarg :tos_set_speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass TOSSetSpeedCmd (<TOSSetSpeedCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TOSSetSpeedCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TOSSetSpeedCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tos_msgs-msg:<TOSSetSpeedCmd> is deprecated: use tos_msgs-msg:TOSSetSpeedCmd instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <TOSSetSpeedCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:available-val is deprecated.  Use tos_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'tos_set_speed-val :lambda-list '(m))
(cl:defmethod tos_set_speed-val ((m <TOSSetSpeedCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:tos_set_speed-val is deprecated.  Use tos_msgs-msg:tos_set_speed instead.")
  (tos_set_speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TOSSetSpeedCmd>) ostream)
  "Serializes a message object of type '<TOSSetSpeedCmd>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'tos_set_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TOSSetSpeedCmd>) istream)
  "Deserializes a message object of type '<TOSSetSpeedCmd>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tos_set_speed) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TOSSetSpeedCmd>)))
  "Returns string type for a message object of type '<TOSSetSpeedCmd>"
  "tos_msgs/TOSSetSpeedCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TOSSetSpeedCmd)))
  "Returns string type for a message object of type 'TOSSetSpeedCmd"
  "tos_msgs/TOSSetSpeedCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TOSSetSpeedCmd>)))
  "Returns md5sum for a message object of type '<TOSSetSpeedCmd>"
  "f16660392dbc6c56c5fcd09450314119")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TOSSetSpeedCmd)))
  "Returns md5sum for a message object of type 'TOSSetSpeedCmd"
  "f16660392dbc6c56c5fcd09450314119")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TOSSetSpeedCmd>)))
  "Returns full string definition for message of type '<TOSSetSpeedCmd>"
  (cl:format cl:nil "uint8 available~%float64 tos_set_speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TOSSetSpeedCmd)))
  "Returns full string definition for message of type 'TOSSetSpeedCmd"
  (cl:format cl:nil "uint8 available~%float64 tos_set_speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TOSSetSpeedCmd>))
  (cl:+ 0
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TOSSetSpeedCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'TOSSetSpeedCmd
    (cl:cons ':available (available msg))
    (cl:cons ':tos_set_speed (tos_set_speed msg))
))
