; Auto-generated. Do not edit!


(cl:in-package mtime_msgs-msg)


;//! \htmlinclude Clock.msg.html

(cl:defclass <Clock> (roslisp-msg-protocol:ros-message)
  ((clock
    :reader clock
    :initarg :clock
    :type cl:integer
    :initform 0))
)

(cl:defclass Clock (<Clock>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Clock>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Clock)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mtime_msgs-msg:<Clock> is deprecated: use mtime_msgs-msg:Clock instead.")))

(cl:ensure-generic-function 'clock-val :lambda-list '(m))
(cl:defmethod clock-val ((m <Clock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mtime_msgs-msg:clock-val is deprecated.  Use mtime_msgs-msg:clock instead.")
  (clock m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Clock>) ostream)
  "Serializes a message object of type '<Clock>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'clock)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'clock)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'clock)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'clock)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'clock)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'clock)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'clock)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'clock)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Clock>) istream)
  "Deserializes a message object of type '<Clock>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'clock)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'clock)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'clock)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'clock)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'clock)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'clock)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'clock)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'clock)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Clock>)))
  "Returns string type for a message object of type '<Clock>"
  "mtime_msgs/Clock")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Clock)))
  "Returns string type for a message object of type 'Clock"
  "mtime_msgs/Clock")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Clock>)))
  "Returns md5sum for a message object of type '<Clock>"
  "89b5fa56644cb06ad9ca849c85532e41")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Clock)))
  "Returns md5sum for a message object of type 'Clock"
  "89b5fa56644cb06ad9ca849c85532e41")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Clock>)))
  "Returns full string definition for message of type '<Clock>"
  (cl:format cl:nil "uint64 clock~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Clock)))
  "Returns full string definition for message of type 'Clock"
  (cl:format cl:nil "uint64 clock~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Clock>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Clock>))
  "Converts a ROS message object to a list"
  (cl:list 'Clock
    (cl:cons ':clock (clock msg))
))
