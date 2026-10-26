; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude BrakeLightStatus.msg.html

(cl:defclass <BrakeLightStatus> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass BrakeLightStatus (<BrakeLightStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BrakeLightStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BrakeLightStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<BrakeLightStatus> is deprecated: use endpoint_msgs-msg:BrakeLightStatus instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <BrakeLightStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<BrakeLightStatus>)))
    "Constants for message type '<BrakeLightStatus>"
  '((:BRAKE_LIGHT_NONE . 0)
    (:BRAKE_LIGHT_OFF . 1)
    (:BRAKE_LIGHT_ON . 2)
    (:BRAKE_LIGHT_INVALID . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'BrakeLightStatus)))
    "Constants for message type 'BrakeLightStatus"
  '((:BRAKE_LIGHT_NONE . 0)
    (:BRAKE_LIGHT_OFF . 1)
    (:BRAKE_LIGHT_ON . 2)
    (:BRAKE_LIGHT_INVALID . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BrakeLightStatus>) ostream)
  "Serializes a message object of type '<BrakeLightStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BrakeLightStatus>) istream)
  "Deserializes a message object of type '<BrakeLightStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BrakeLightStatus>)))
  "Returns string type for a message object of type '<BrakeLightStatus>"
  "endpoint_msgs/BrakeLightStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BrakeLightStatus)))
  "Returns string type for a message object of type 'BrakeLightStatus"
  "endpoint_msgs/BrakeLightStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BrakeLightStatus>)))
  "Returns md5sum for a message object of type '<BrakeLightStatus>"
  "0aae8a987d8c5694512285e36f7b1026")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BrakeLightStatus)))
  "Returns md5sum for a message object of type 'BrakeLightStatus"
  "0aae8a987d8c5694512285e36f7b1026")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BrakeLightStatus>)))
  "Returns full string definition for message of type '<BrakeLightStatus>"
  (cl:format cl:nil "uint8 BRAKE_LIGHT_NONE = 0~%uint8 BRAKE_LIGHT_OFF = 1~%uint8 BRAKE_LIGHT_ON = 2~%uint8 BRAKE_LIGHT_INVALID = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BrakeLightStatus)))
  "Returns full string definition for message of type 'BrakeLightStatus"
  (cl:format cl:nil "uint8 BRAKE_LIGHT_NONE = 0~%uint8 BRAKE_LIGHT_OFF = 1~%uint8 BRAKE_LIGHT_ON = 2~%uint8 BRAKE_LIGHT_INVALID = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BrakeLightStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BrakeLightStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'BrakeLightStatus
    (cl:cons ':value (value msg))
))
