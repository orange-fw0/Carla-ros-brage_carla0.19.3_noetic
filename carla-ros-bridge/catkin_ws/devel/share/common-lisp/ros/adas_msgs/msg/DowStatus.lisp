; Auto-generated. Do not edit!


(cl:in-package adas_msgs-msg)


;//! \htmlinclude DowStatus.msg.html

(cl:defclass <DowStatus> (roslisp-msg-protocol:ros-message)
  ((left_front_state
    :reader left_front_state
    :initarg :left_front_state
    :type cl:fixnum
    :initform 0)
   (left_rear_state
    :reader left_rear_state
    :initarg :left_rear_state
    :type cl:fixnum
    :initform 0)
   (right_front_state
    :reader right_front_state
    :initarg :right_front_state
    :type cl:fixnum
    :initform 0)
   (right_rear_state
    :reader right_rear_state
    :initarg :right_rear_state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DowStatus (<DowStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DowStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DowStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name adas_msgs-msg:<DowStatus> is deprecated: use adas_msgs-msg:DowStatus instead.")))

(cl:ensure-generic-function 'left_front_state-val :lambda-list '(m))
(cl:defmethod left_front_state-val ((m <DowStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adas_msgs-msg:left_front_state-val is deprecated.  Use adas_msgs-msg:left_front_state instead.")
  (left_front_state m))

(cl:ensure-generic-function 'left_rear_state-val :lambda-list '(m))
(cl:defmethod left_rear_state-val ((m <DowStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adas_msgs-msg:left_rear_state-val is deprecated.  Use adas_msgs-msg:left_rear_state instead.")
  (left_rear_state m))

(cl:ensure-generic-function 'right_front_state-val :lambda-list '(m))
(cl:defmethod right_front_state-val ((m <DowStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adas_msgs-msg:right_front_state-val is deprecated.  Use adas_msgs-msg:right_front_state instead.")
  (right_front_state m))

(cl:ensure-generic-function 'right_rear_state-val :lambda-list '(m))
(cl:defmethod right_rear_state-val ((m <DowStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adas_msgs-msg:right_rear_state-val is deprecated.  Use adas_msgs-msg:right_rear_state instead.")
  (right_rear_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DowStatus>) ostream)
  "Serializes a message object of type '<DowStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left_front_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left_rear_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_front_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_rear_state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DowStatus>) istream)
  "Deserializes a message object of type '<DowStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left_front_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left_rear_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_front_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_rear_state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DowStatus>)))
  "Returns string type for a message object of type '<DowStatus>"
  "adas_msgs/DowStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DowStatus)))
  "Returns string type for a message object of type 'DowStatus"
  "adas_msgs/DowStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DowStatus>)))
  "Returns md5sum for a message object of type '<DowStatus>"
  "9cb3da686013d7fd71bdceb5c759fcd2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DowStatus)))
  "Returns md5sum for a message object of type 'DowStatus"
  "9cb3da686013d7fd71bdceb5c759fcd2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DowStatus>)))
  "Returns full string definition for message of type '<DowStatus>"
  (cl:format cl:nil "uint8 left_front_state~%uint8 left_rear_state~%uint8 right_front_state~%uint8 right_rear_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DowStatus)))
  "Returns full string definition for message of type 'DowStatus"
  (cl:format cl:nil "uint8 left_front_state~%uint8 left_rear_state~%uint8 right_front_state~%uint8 right_rear_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DowStatus>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DowStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'DowStatus
    (cl:cons ':left_front_state (left_front_state msg))
    (cl:cons ':left_rear_state (left_rear_state msg))
    (cl:cons ':right_front_state (right_front_state msg))
    (cl:cons ':right_rear_state (right_rear_state msg))
))
