; Auto-generated. Do not edit!


(cl:in-package oms_msgs-msg)


;//! \htmlinclude OMSSeatBeltStatus.msg.html

(cl:defclass <OMSSeatBeltStatus> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0)
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0))
)

(cl:defclass OMSSeatBeltStatus (<OMSSeatBeltStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OMSSeatBeltStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OMSSeatBeltStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name oms_msgs-msg:<OMSSeatBeltStatus> is deprecated: use oms_msgs-msg:OMSSeatBeltStatus instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <OMSSeatBeltStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:value-val is deprecated.  Use oms_msgs-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <OMSSeatBeltStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:score-val is deprecated.  Use oms_msgs-msg:score instead.")
  (score m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<OMSSeatBeltStatus>)))
    "Constants for message type '<OMSSeatBeltStatus>"
  '((:UNAVAILABLE . 0)
    (:BUCKLE_UP . 1)
    (:UNBUCKLE . 2)
    (:UNCERTAIN . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'OMSSeatBeltStatus)))
    "Constants for message type 'OMSSeatBeltStatus"
  '((:UNAVAILABLE . 0)
    (:BUCKLE_UP . 1)
    (:UNBUCKLE . 2)
    (:UNCERTAIN . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OMSSeatBeltStatus>) ostream)
  "Serializes a message object of type '<OMSSeatBeltStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OMSSeatBeltStatus>) istream)
  "Deserializes a message object of type '<OMSSeatBeltStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OMSSeatBeltStatus>)))
  "Returns string type for a message object of type '<OMSSeatBeltStatus>"
  "oms_msgs/OMSSeatBeltStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OMSSeatBeltStatus)))
  "Returns string type for a message object of type 'OMSSeatBeltStatus"
  "oms_msgs/OMSSeatBeltStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OMSSeatBeltStatus>)))
  "Returns md5sum for a message object of type '<OMSSeatBeltStatus>"
  "4e581bd539b4f10b905bace158bdebf0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OMSSeatBeltStatus)))
  "Returns md5sum for a message object of type 'OMSSeatBeltStatus"
  "4e581bd539b4f10b905bace158bdebf0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OMSSeatBeltStatus>)))
  "Returns full string definition for message of type '<OMSSeatBeltStatus>"
  (cl:format cl:nil "uint8 UNAVAILABLE = 0~%uint8 BUCKLE_UP = 1~%uint8 UNBUCKLE = 2~%uint8 UNCERTAIN = 3~%uint8 value~%float32 score~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OMSSeatBeltStatus)))
  "Returns full string definition for message of type 'OMSSeatBeltStatus"
  (cl:format cl:nil "uint8 UNAVAILABLE = 0~%uint8 BUCKLE_UP = 1~%uint8 UNBUCKLE = 2~%uint8 UNCERTAIN = 3~%uint8 value~%float32 score~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OMSSeatBeltStatus>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OMSSeatBeltStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'OMSSeatBeltStatus
    (cl:cons ':value (value msg))
    (cl:cons ':score (score msg))
))
