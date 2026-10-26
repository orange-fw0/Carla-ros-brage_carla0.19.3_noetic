; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude LightReq.msg.html

(cl:defclass <LightReq> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LightReq (<LightReq>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LightReq>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LightReq)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<LightReq> is deprecated: use system_manager_msgs-msg:LightReq instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LightReq>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:value-val is deprecated.  Use system_manager_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LightReq>)))
    "Constants for message type '<LightReq>"
  '((:NO_REQ . 0)
    (:TURN_OFF . 1)
    (:EMERGENCY_FLASHER . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LightReq)))
    "Constants for message type 'LightReq"
  '((:NO_REQ . 0)
    (:TURN_OFF . 1)
    (:EMERGENCY_FLASHER . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LightReq>) ostream)
  "Serializes a message object of type '<LightReq>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LightReq>) istream)
  "Deserializes a message object of type '<LightReq>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LightReq>)))
  "Returns string type for a message object of type '<LightReq>"
  "system_manager_msgs/LightReq")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LightReq)))
  "Returns string type for a message object of type 'LightReq"
  "system_manager_msgs/LightReq")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LightReq>)))
  "Returns md5sum for a message object of type '<LightReq>"
  "bd57683a381bacc591ac314dfd2bd709")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LightReq)))
  "Returns md5sum for a message object of type 'LightReq"
  "bd57683a381bacc591ac314dfd2bd709")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LightReq>)))
  "Returns full string definition for message of type '<LightReq>"
  (cl:format cl:nil "uint8 NO_REQ = 0~%uint8 TURN_OFF = 1~%uint8 EMERGENCY_FLASHER = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LightReq)))
  "Returns full string definition for message of type 'LightReq"
  (cl:format cl:nil "uint8 NO_REQ = 0~%uint8 TURN_OFF = 1~%uint8 EMERGENCY_FLASHER = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LightReq>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LightReq>))
  "Converts a ROS message object to a list"
  (cl:list 'LightReq
    (cl:cons ':value (value msg))
))
