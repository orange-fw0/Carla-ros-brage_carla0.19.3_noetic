; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude FailureStatus.msg.html

(cl:defclass <FailureStatus> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass FailureStatus (<FailureStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FailureStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FailureStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<FailureStatus> is deprecated: use endpoint_msgs-msg:FailureStatus instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <FailureStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FailureStatus>)))
    "Constants for message type '<FailureStatus>"
  '((:NOFAILURE . 0)
    (:TEMPORARYFAILURE . 1)
    (:FAILURE . 2)
    (:RESERVED . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FailureStatus)))
    "Constants for message type 'FailureStatus"
  '((:NOFAILURE . 0)
    (:TEMPORARYFAILURE . 1)
    (:FAILURE . 2)
    (:RESERVED . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FailureStatus>) ostream)
  "Serializes a message object of type '<FailureStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FailureStatus>) istream)
  "Deserializes a message object of type '<FailureStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FailureStatus>)))
  "Returns string type for a message object of type '<FailureStatus>"
  "endpoint_msgs/FailureStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FailureStatus)))
  "Returns string type for a message object of type 'FailureStatus"
  "endpoint_msgs/FailureStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FailureStatus>)))
  "Returns md5sum for a message object of type '<FailureStatus>"
  "e0a9567c067cb186bcfa768f99b8baf5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FailureStatus)))
  "Returns md5sum for a message object of type 'FailureStatus"
  "e0a9567c067cb186bcfa768f99b8baf5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FailureStatus>)))
  "Returns full string definition for message of type '<FailureStatus>"
  (cl:format cl:nil "uint8 NOFAILURE = 0~%uint8 TEMPORARYFAILURE = 1~%uint8 FAILURE = 2~%uint8 RESERVED = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FailureStatus)))
  "Returns full string definition for message of type 'FailureStatus"
  (cl:format cl:nil "uint8 NOFAILURE = 0~%uint8 TEMPORARYFAILURE = 1~%uint8 FAILURE = 2~%uint8 RESERVED = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FailureStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FailureStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'FailureStatus
    (cl:cons ':value (value msg))
))
