; Auto-generated. Do not edit!


(cl:in-package oms_msgs-msg)


;//! \htmlinclude OMSObjectDetResult.msg.html

(cl:defclass <OMSObjectDetResult> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0)
   (object_rect
    :reader object_rect
    :initarg :object_rect
    :type oms_msgs-msg:OMSRect2f
    :initform (cl:make-instance 'oms_msgs-msg:OMSRect2f)))
)

(cl:defclass OMSObjectDetResult (<OMSObjectDetResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OMSObjectDetResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OMSObjectDetResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name oms_msgs-msg:<OMSObjectDetResult> is deprecated: use oms_msgs-msg:OMSObjectDetResult instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <OMSObjectDetResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:value-val is deprecated.  Use oms_msgs-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'object_rect-val :lambda-list '(m))
(cl:defmethod object_rect-val ((m <OMSObjectDetResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:object_rect-val is deprecated.  Use oms_msgs-msg:object_rect instead.")
  (object_rect m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<OMSObjectDetResult>)))
    "Constants for message type '<OMSObjectDetResult>"
  '((:UNAVAILABLE . 0)
    (:AVAILABLE . 1)
    (:UNCERTAIN . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'OMSObjectDetResult)))
    "Constants for message type 'OMSObjectDetResult"
  '((:UNAVAILABLE . 0)
    (:AVAILABLE . 1)
    (:UNCERTAIN . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OMSObjectDetResult>) ostream)
  "Serializes a message object of type '<OMSObjectDetResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'object_rect) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OMSObjectDetResult>) istream)
  "Deserializes a message object of type '<OMSObjectDetResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'object_rect) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OMSObjectDetResult>)))
  "Returns string type for a message object of type '<OMSObjectDetResult>"
  "oms_msgs/OMSObjectDetResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OMSObjectDetResult)))
  "Returns string type for a message object of type 'OMSObjectDetResult"
  "oms_msgs/OMSObjectDetResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OMSObjectDetResult>)))
  "Returns md5sum for a message object of type '<OMSObjectDetResult>"
  "834406bfe4388fd0961e17a62fc3d81f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OMSObjectDetResult)))
  "Returns md5sum for a message object of type 'OMSObjectDetResult"
  "834406bfe4388fd0961e17a62fc3d81f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OMSObjectDetResult>)))
  "Returns full string definition for message of type '<OMSObjectDetResult>"
  (cl:format cl:nil "uint8 UNAVAILABLE = 0~%uint8 AVAILABLE = 1~%uint8 UNCERTAIN = 2~%uint8 value~%oms_msgs/OMSRect2f object_rect~%~%================================================================================~%MSG: oms_msgs/OMSRect2f~%float32 left~%float32 top~%float32 right~%float32 bottom~%float32 score~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OMSObjectDetResult)))
  "Returns full string definition for message of type 'OMSObjectDetResult"
  (cl:format cl:nil "uint8 UNAVAILABLE = 0~%uint8 AVAILABLE = 1~%uint8 UNCERTAIN = 2~%uint8 value~%oms_msgs/OMSRect2f object_rect~%~%================================================================================~%MSG: oms_msgs/OMSRect2f~%float32 left~%float32 top~%float32 right~%float32 bottom~%float32 score~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OMSObjectDetResult>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'object_rect))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OMSObjectDetResult>))
  "Converts a ROS message object to a list"
  (cl:list 'OMSObjectDetResult
    (cl:cons ':value (value msg))
    (cl:cons ':object_rect (object_rect msg))
))
