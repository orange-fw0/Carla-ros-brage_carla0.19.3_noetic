; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude GearReq.msg.html

(cl:defclass <GearReq> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GearReq (<GearReq>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GearReq>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GearReq)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<GearReq> is deprecated: use system_manager_msgs-msg:GearReq instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <GearReq>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:value-val is deprecated.  Use system_manager_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GearReq>)))
    "Constants for message type '<GearReq>"
  '((:NO_REQ . 0)
    (:GEAR_P . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GearReq)))
    "Constants for message type 'GearReq"
  '((:NO_REQ . 0)
    (:GEAR_P . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GearReq>) ostream)
  "Serializes a message object of type '<GearReq>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GearReq>) istream)
  "Deserializes a message object of type '<GearReq>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GearReq>)))
  "Returns string type for a message object of type '<GearReq>"
  "system_manager_msgs/GearReq")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GearReq)))
  "Returns string type for a message object of type 'GearReq"
  "system_manager_msgs/GearReq")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GearReq>)))
  "Returns md5sum for a message object of type '<GearReq>"
  "6d5d13ef0bb1bb6e17f6c024cc95a83e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GearReq)))
  "Returns md5sum for a message object of type 'GearReq"
  "6d5d13ef0bb1bb6e17f6c024cc95a83e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GearReq>)))
  "Returns full string definition for message of type '<GearReq>"
  (cl:format cl:nil "uint8 NO_REQ = 0~%uint8 GEAR_P = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GearReq)))
  "Returns full string definition for message of type 'GearReq"
  (cl:format cl:nil "uint8 NO_REQ = 0~%uint8 GEAR_P = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GearReq>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GearReq>))
  "Converts a ROS message object to a list"
  (cl:list 'GearReq
    (cl:cons ':value (value msg))
))
