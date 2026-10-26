; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude BrakeReq.msg.html

(cl:defclass <BrakeReq> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass BrakeReq (<BrakeReq>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BrakeReq>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BrakeReq)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<BrakeReq> is deprecated: use system_manager_msgs-msg:BrakeReq instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <BrakeReq>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:value-val is deprecated.  Use system_manager_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<BrakeReq>)))
    "Constants for message type '<BrakeReq>"
  '((:NO_REQ . 0)
    (:HEAVY_BRAKE . 1)
    (:NO_BRAKE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'BrakeReq)))
    "Constants for message type 'BrakeReq"
  '((:NO_REQ . 0)
    (:HEAVY_BRAKE . 1)
    (:NO_BRAKE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BrakeReq>) ostream)
  "Serializes a message object of type '<BrakeReq>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BrakeReq>) istream)
  "Deserializes a message object of type '<BrakeReq>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BrakeReq>)))
  "Returns string type for a message object of type '<BrakeReq>"
  "system_manager_msgs/BrakeReq")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BrakeReq)))
  "Returns string type for a message object of type 'BrakeReq"
  "system_manager_msgs/BrakeReq")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BrakeReq>)))
  "Returns md5sum for a message object of type '<BrakeReq>"
  "def8a1c4b5d870b2a9ac7ec7ad1ea4df")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BrakeReq)))
  "Returns md5sum for a message object of type 'BrakeReq"
  "def8a1c4b5d870b2a9ac7ec7ad1ea4df")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BrakeReq>)))
  "Returns full string definition for message of type '<BrakeReq>"
  (cl:format cl:nil "uint8 NO_REQ = 0~%uint8 HEAVY_BRAKE = 1~%uint8 NO_BRAKE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BrakeReq)))
  "Returns full string definition for message of type 'BrakeReq"
  (cl:format cl:nil "uint8 NO_REQ = 0~%uint8 HEAVY_BRAKE = 1~%uint8 NO_BRAKE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BrakeReq>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BrakeReq>))
  "Converts a ROS message object to a list"
  (cl:list 'BrakeReq
    (cl:cons ':value (value msg))
))
