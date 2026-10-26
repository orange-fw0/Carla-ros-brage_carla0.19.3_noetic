; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude VehESPSwitch.msg.html

(cl:defclass <VehESPSwitch> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VehESPSwitch (<VehESPSwitch>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehESPSwitch>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehESPSwitch)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<VehESPSwitch> is deprecated: use endpoint_msgs-msg:VehESPSwitch instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <VehESPSwitch>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VehESPSwitch>)))
    "Constants for message type '<VehESPSwitch>"
  '((:NONE . 0)
    (:ON . 1)
    (:OFF . 2)
    (:RESVERD . 3)
    (:INVALID . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VehESPSwitch)))
    "Constants for message type 'VehESPSwitch"
  '((:NONE . 0)
    (:ON . 1)
    (:OFF . 2)
    (:RESVERD . 3)
    (:INVALID . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehESPSwitch>) ostream)
  "Serializes a message object of type '<VehESPSwitch>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehESPSwitch>) istream)
  "Deserializes a message object of type '<VehESPSwitch>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehESPSwitch>)))
  "Returns string type for a message object of type '<VehESPSwitch>"
  "endpoint_msgs/VehESPSwitch")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehESPSwitch)))
  "Returns string type for a message object of type 'VehESPSwitch"
  "endpoint_msgs/VehESPSwitch")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehESPSwitch>)))
  "Returns md5sum for a message object of type '<VehESPSwitch>"
  "3af2755b55d059345b2e40474bda47a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehESPSwitch)))
  "Returns md5sum for a message object of type 'VehESPSwitch"
  "3af2755b55d059345b2e40474bda47a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehESPSwitch>)))
  "Returns full string definition for message of type '<VehESPSwitch>"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 ON = 1~%uint8 OFF = 2~%uint8 RESVERD = 3~%uint8 INVALID = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehESPSwitch)))
  "Returns full string definition for message of type 'VehESPSwitch"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 ON = 1~%uint8 OFF = 2~%uint8 RESVERD = 3~%uint8 INVALID = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehESPSwitch>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehESPSwitch>))
  "Converts a ROS message object to a list"
  (cl:list 'VehESPSwitch
    (cl:cons ':value (value msg))
))
