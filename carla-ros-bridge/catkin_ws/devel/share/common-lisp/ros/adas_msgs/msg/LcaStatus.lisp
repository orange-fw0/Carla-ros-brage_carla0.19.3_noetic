; Auto-generated. Do not edit!


(cl:in-package adas_msgs-msg)


;//! \htmlinclude LcaStatus.msg.html

(cl:defclass <LcaStatus> (roslisp-msg-protocol:ros-message)
  ((left_state
    :reader left_state
    :initarg :left_state
    :type cl:fixnum
    :initform 0)
   (right_state
    :reader right_state
    :initarg :right_state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LcaStatus (<LcaStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LcaStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LcaStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name adas_msgs-msg:<LcaStatus> is deprecated: use adas_msgs-msg:LcaStatus instead.")))

(cl:ensure-generic-function 'left_state-val :lambda-list '(m))
(cl:defmethod left_state-val ((m <LcaStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adas_msgs-msg:left_state-val is deprecated.  Use adas_msgs-msg:left_state instead.")
  (left_state m))

(cl:ensure-generic-function 'right_state-val :lambda-list '(m))
(cl:defmethod right_state-val ((m <LcaStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adas_msgs-msg:right_state-val is deprecated.  Use adas_msgs-msg:right_state instead.")
  (right_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LcaStatus>) ostream)
  "Serializes a message object of type '<LcaStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LcaStatus>) istream)
  "Deserializes a message object of type '<LcaStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LcaStatus>)))
  "Returns string type for a message object of type '<LcaStatus>"
  "adas_msgs/LcaStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LcaStatus)))
  "Returns string type for a message object of type 'LcaStatus"
  "adas_msgs/LcaStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LcaStatus>)))
  "Returns md5sum for a message object of type '<LcaStatus>"
  "2c8ee4997687f4f1b0e5cdcde2cac0d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LcaStatus)))
  "Returns md5sum for a message object of type 'LcaStatus"
  "2c8ee4997687f4f1b0e5cdcde2cac0d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LcaStatus>)))
  "Returns full string definition for message of type '<LcaStatus>"
  (cl:format cl:nil "uint8 left_state~%uint8 right_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LcaStatus)))
  "Returns full string definition for message of type 'LcaStatus"
  (cl:format cl:nil "uint8 left_state~%uint8 right_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LcaStatus>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LcaStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'LcaStatus
    (cl:cons ':left_state (left_state msg))
    (cl:cons ':right_state (right_state msg))
))
