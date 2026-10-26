; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude DlpStatus.msg.html

(cl:defclass <DlpStatus> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DlpStatus (<DlpStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DlpStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DlpStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<DlpStatus> is deprecated: use endpoint_msgs-msg:DlpStatus instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <DlpStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DlpStatus>)))
    "Constants for message type '<DlpStatus>"
  '((:NO_WARNING . 0)
    (:WARNING_LEVEL1 . 1)
    (:WARNING_LEVEL2 . 2)
    (:RESERVED . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DlpStatus)))
    "Constants for message type 'DlpStatus"
  '((:NO_WARNING . 0)
    (:WARNING_LEVEL1 . 1)
    (:WARNING_LEVEL2 . 2)
    (:RESERVED . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DlpStatus>) ostream)
  "Serializes a message object of type '<DlpStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DlpStatus>) istream)
  "Deserializes a message object of type '<DlpStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DlpStatus>)))
  "Returns string type for a message object of type '<DlpStatus>"
  "endpoint_msgs/DlpStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DlpStatus)))
  "Returns string type for a message object of type 'DlpStatus"
  "endpoint_msgs/DlpStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DlpStatus>)))
  "Returns md5sum for a message object of type '<DlpStatus>"
  "11501c2a174493ba0b45fd8ec01e98ce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DlpStatus)))
  "Returns md5sum for a message object of type 'DlpStatus"
  "11501c2a174493ba0b45fd8ec01e98ce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DlpStatus>)))
  "Returns full string definition for message of type '<DlpStatus>"
  (cl:format cl:nil "uint8 NO_WARNING = 0~%uint8 WARNING_LEVEL1 = 1~%uint8 WARNING_LEVEL2 = 2~%uint8 RESERVED = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DlpStatus)))
  "Returns full string definition for message of type 'DlpStatus"
  (cl:format cl:nil "uint8 NO_WARNING = 0~%uint8 WARNING_LEVEL1 = 1~%uint8 WARNING_LEVEL2 = 2~%uint8 RESERVED = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DlpStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DlpStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'DlpStatus
    (cl:cons ':value (value msg))
))
