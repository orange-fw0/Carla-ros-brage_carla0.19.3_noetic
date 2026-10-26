; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude VseSysState.msg.html

(cl:defclass <VseSysState> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VseSysState (<VseSysState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VseSysState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VseSysState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<VseSysState> is deprecated: use endpoint_msgs-msg:VseSysState instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <VseSysState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VseSysState>)))
    "Constants for message type '<VseSysState>"
  '((:INAVTIVE . 0)
    (:ACTIVE . 1)
    (:FAULT . 2)
    (:WARMING_UP . 3)
    (:NOT_READY . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VseSysState)))
    "Constants for message type 'VseSysState"
  '((:INAVTIVE . 0)
    (:ACTIVE . 1)
    (:FAULT . 2)
    (:WARMING_UP . 3)
    (:NOT_READY . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VseSysState>) ostream)
  "Serializes a message object of type '<VseSysState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VseSysState>) istream)
  "Deserializes a message object of type '<VseSysState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VseSysState>)))
  "Returns string type for a message object of type '<VseSysState>"
  "endpoint_msgs/VseSysState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VseSysState)))
  "Returns string type for a message object of type 'VseSysState"
  "endpoint_msgs/VseSysState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VseSysState>)))
  "Returns md5sum for a message object of type '<VseSysState>"
  "320626dfbde82aa2c03a9a8dbd07b6c2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VseSysState)))
  "Returns md5sum for a message object of type 'VseSysState"
  "320626dfbde82aa2c03a9a8dbd07b6c2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VseSysState>)))
  "Returns full string definition for message of type '<VseSysState>"
  (cl:format cl:nil "uint8 INAVTIVE = 0~%uint8 ACTIVE = 1~%uint8 FAULT = 2~%uint8 WARMING_UP = 3~%uint8 NOT_READY = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VseSysState)))
  "Returns full string definition for message of type 'VseSysState"
  (cl:format cl:nil "uint8 INAVTIVE = 0~%uint8 ACTIVE = 1~%uint8 FAULT = 2~%uint8 WARMING_UP = 3~%uint8 NOT_READY = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VseSysState>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VseSysState>))
  "Converts a ROS message object to a list"
  (cl:list 'VseSysState
    (cl:cons ':value (value msg))
))
