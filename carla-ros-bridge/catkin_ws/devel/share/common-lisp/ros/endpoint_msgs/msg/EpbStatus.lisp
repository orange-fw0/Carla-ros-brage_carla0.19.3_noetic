; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude EpbStatus.msg.html

(cl:defclass <EpbStatus> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass EpbStatus (<EpbStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EpbStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EpbStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<EpbStatus> is deprecated: use endpoint_msgs-msg:EpbStatus instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <EpbStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<EpbStatus>)))
    "Constants for message type '<EpbStatus>"
  '((:RELEASE . 0)
    (:PULLING . 1)
    (:PULL . 2)
    (:RELEASING . 3)
    (:RESERVED . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'EpbStatus)))
    "Constants for message type 'EpbStatus"
  '((:RELEASE . 0)
    (:PULLING . 1)
    (:PULL . 2)
    (:RELEASING . 3)
    (:RESERVED . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EpbStatus>) ostream)
  "Serializes a message object of type '<EpbStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EpbStatus>) istream)
  "Deserializes a message object of type '<EpbStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EpbStatus>)))
  "Returns string type for a message object of type '<EpbStatus>"
  "endpoint_msgs/EpbStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EpbStatus)))
  "Returns string type for a message object of type 'EpbStatus"
  "endpoint_msgs/EpbStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EpbStatus>)))
  "Returns md5sum for a message object of type '<EpbStatus>"
  "66f63b1bf26a5a5eef8e62bbe2c809c6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EpbStatus)))
  "Returns md5sum for a message object of type 'EpbStatus"
  "66f63b1bf26a5a5eef8e62bbe2c809c6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EpbStatus>)))
  "Returns full string definition for message of type '<EpbStatus>"
  (cl:format cl:nil "uint8 RELEASE = 0~%uint8 PULLING = 1~%uint8 PULL = 2~%uint8 RELEASING = 3~%uint8 RESERVED = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EpbStatus)))
  "Returns full string definition for message of type 'EpbStatus"
  (cl:format cl:nil "uint8 RELEASE = 0~%uint8 PULLING = 1~%uint8 PULL = 2~%uint8 RELEASING = 3~%uint8 RESERVED = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EpbStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EpbStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'EpbStatus
    (cl:cons ':value (value msg))
))
