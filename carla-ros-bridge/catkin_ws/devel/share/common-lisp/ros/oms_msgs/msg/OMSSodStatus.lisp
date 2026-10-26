; Auto-generated. Do not edit!


(cl:in-package oms_msgs-msg)


;//! \htmlinclude OMSSodStatus.msg.html

(cl:defclass <OMSSodStatus> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0)
   (seat_id
    :reader seat_id
    :initarg :seat_id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass OMSSodStatus (<OMSSodStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OMSSodStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OMSSodStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name oms_msgs-msg:<OMSSodStatus> is deprecated: use oms_msgs-msg:OMSSodStatus instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <OMSSodStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:value-val is deprecated.  Use oms_msgs-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'seat_id-val :lambda-list '(m))
(cl:defmethod seat_id-val ((m <OMSSodStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:seat_id-val is deprecated.  Use oms_msgs-msg:seat_id instead.")
  (seat_id m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<OMSSodStatus>)))
    "Constants for message type '<OMSSodStatus>"
  '((:UNAVAILABLE . 0)
    (:OCCUPIED . 1)
    (:UNOCCUPIED . 2)
    (:UNCERTAIN . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'OMSSodStatus)))
    "Constants for message type 'OMSSodStatus"
  '((:UNAVAILABLE . 0)
    (:OCCUPIED . 1)
    (:UNOCCUPIED . 2)
    (:UNCERTAIN . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OMSSodStatus>) ostream)
  "Serializes a message object of type '<OMSSodStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seat_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OMSSodStatus>) istream)
  "Deserializes a message object of type '<OMSSodStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seat_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OMSSodStatus>)))
  "Returns string type for a message object of type '<OMSSodStatus>"
  "oms_msgs/OMSSodStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OMSSodStatus)))
  "Returns string type for a message object of type 'OMSSodStatus"
  "oms_msgs/OMSSodStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OMSSodStatus>)))
  "Returns md5sum for a message object of type '<OMSSodStatus>"
  "9fd1a2bf39837db4df483bd667904c5d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OMSSodStatus)))
  "Returns md5sum for a message object of type 'OMSSodStatus"
  "9fd1a2bf39837db4df483bd667904c5d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OMSSodStatus>)))
  "Returns full string definition for message of type '<OMSSodStatus>"
  (cl:format cl:nil "uint8 UNAVAILABLE = 0~%uint8 OCCUPIED = 1~%uint8 UNOCCUPIED = 2~%uint8 UNCERTAIN = 3~%uint8 value~%uint8 seat_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OMSSodStatus)))
  "Returns full string definition for message of type 'OMSSodStatus"
  (cl:format cl:nil "uint8 UNAVAILABLE = 0~%uint8 OCCUPIED = 1~%uint8 UNOCCUPIED = 2~%uint8 UNCERTAIN = 3~%uint8 value~%uint8 seat_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OMSSodStatus>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OMSSodStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'OMSSodStatus
    (cl:cons ':value (value msg))
    (cl:cons ':seat_id (seat_id msg))
))
