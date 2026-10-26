; Auto-generated. Do not edit!


(cl:in-package oms_msgs-msg)


;//! \htmlinclude OMSAgeGroup.msg.html

(cl:defclass <OMSAgeGroup> (roslisp-msg-protocol:ros-message)
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

(cl:defclass OMSAgeGroup (<OMSAgeGroup>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OMSAgeGroup>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OMSAgeGroup)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name oms_msgs-msg:<OMSAgeGroup> is deprecated: use oms_msgs-msg:OMSAgeGroup instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <OMSAgeGroup>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:value-val is deprecated.  Use oms_msgs-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <OMSAgeGroup>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:score-val is deprecated.  Use oms_msgs-msg:score instead.")
  (score m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<OMSAgeGroup>)))
    "Constants for message type '<OMSAgeGroup>"
  '((:UNAVAILABLE . 0)
    (:BABY . 1)
    (:CHILD . 2)
    (:YOUTH . 3)
    (:OLD . 4)
    (:UNCERTAIN . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'OMSAgeGroup)))
    "Constants for message type 'OMSAgeGroup"
  '((:UNAVAILABLE . 0)
    (:BABY . 1)
    (:CHILD . 2)
    (:YOUTH . 3)
    (:OLD . 4)
    (:UNCERTAIN . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OMSAgeGroup>) ostream)
  "Serializes a message object of type '<OMSAgeGroup>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OMSAgeGroup>) istream)
  "Deserializes a message object of type '<OMSAgeGroup>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OMSAgeGroup>)))
  "Returns string type for a message object of type '<OMSAgeGroup>"
  "oms_msgs/OMSAgeGroup")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OMSAgeGroup)))
  "Returns string type for a message object of type 'OMSAgeGroup"
  "oms_msgs/OMSAgeGroup")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OMSAgeGroup>)))
  "Returns md5sum for a message object of type '<OMSAgeGroup>"
  "73f547e7c7e09cb75437ad8e401e6a45")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OMSAgeGroup)))
  "Returns md5sum for a message object of type 'OMSAgeGroup"
  "73f547e7c7e09cb75437ad8e401e6a45")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OMSAgeGroup>)))
  "Returns full string definition for message of type '<OMSAgeGroup>"
  (cl:format cl:nil "uint8 UNAVAILABLE = 0~%uint8 BABY = 1~%uint8 CHILD = 2~%uint8 YOUTH = 3~%uint8 OLD = 4~%uint8 UNCERTAIN = 5~%uint8 value~%float32 score~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OMSAgeGroup)))
  "Returns full string definition for message of type 'OMSAgeGroup"
  (cl:format cl:nil "uint8 UNAVAILABLE = 0~%uint8 BABY = 1~%uint8 CHILD = 2~%uint8 YOUTH = 3~%uint8 OLD = 4~%uint8 UNCERTAIN = 5~%uint8 value~%float32 score~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OMSAgeGroup>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OMSAgeGroup>))
  "Converts a ROS message object to a list"
  (cl:list 'OMSAgeGroup
    (cl:cons ':value (value msg))
    (cl:cons ':score (score msg))
))
