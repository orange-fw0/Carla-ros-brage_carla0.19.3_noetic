; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude ApaVcurCtlMode.msg.html

(cl:defclass <ApaVcurCtlMode> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ApaVcurCtlMode (<ApaVcurCtlMode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ApaVcurCtlMode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ApaVcurCtlMode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<ApaVcurCtlMode> is deprecated: use endpoint_msgs-msg:ApaVcurCtlMode instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ApaVcurCtlMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ApaVcurCtlMode>)))
    "Constants for message type '<ApaVcurCtlMode>"
  '((:NORMAL . 0)
    (:DR_SWITCH_MODE . 1)
    (:OBSTACLE_CROSSING_MODE . 2)
    (:RESERVED1 . 3)
    (:RESERVED2 . 4)
    (:RESERVED3 . 5)
    (:RESERVED4 . 6)
    (:RESERVED5 . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ApaVcurCtlMode)))
    "Constants for message type 'ApaVcurCtlMode"
  '((:NORMAL . 0)
    (:DR_SWITCH_MODE . 1)
    (:OBSTACLE_CROSSING_MODE . 2)
    (:RESERVED1 . 3)
    (:RESERVED2 . 4)
    (:RESERVED3 . 5)
    (:RESERVED4 . 6)
    (:RESERVED5 . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ApaVcurCtlMode>) ostream)
  "Serializes a message object of type '<ApaVcurCtlMode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ApaVcurCtlMode>) istream)
  "Deserializes a message object of type '<ApaVcurCtlMode>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ApaVcurCtlMode>)))
  "Returns string type for a message object of type '<ApaVcurCtlMode>"
  "endpoint_msgs/ApaVcurCtlMode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ApaVcurCtlMode)))
  "Returns string type for a message object of type 'ApaVcurCtlMode"
  "endpoint_msgs/ApaVcurCtlMode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ApaVcurCtlMode>)))
  "Returns md5sum for a message object of type '<ApaVcurCtlMode>"
  "48cc0ba24bde1d7e1b1e41532bdcd7dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ApaVcurCtlMode)))
  "Returns md5sum for a message object of type 'ApaVcurCtlMode"
  "48cc0ba24bde1d7e1b1e41532bdcd7dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ApaVcurCtlMode>)))
  "Returns full string definition for message of type '<ApaVcurCtlMode>"
  (cl:format cl:nil "uint8 NORMAL = 0~%uint8 DR_SWITCH_MODE = 1~%uint8 OBSTACLE_CROSSING_MODE = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 RESERVED4 = 6~%uint8 RESERVED5 = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ApaVcurCtlMode)))
  "Returns full string definition for message of type 'ApaVcurCtlMode"
  (cl:format cl:nil "uint8 NORMAL = 0~%uint8 DR_SWITCH_MODE = 1~%uint8 OBSTACLE_CROSSING_MODE = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 RESERVED4 = 6~%uint8 RESERVED5 = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ApaVcurCtlMode>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ApaVcurCtlMode>))
  "Converts a ROS message object to a list"
  (cl:list 'ApaVcurCtlMode
    (cl:cons ':value (value msg))
))
