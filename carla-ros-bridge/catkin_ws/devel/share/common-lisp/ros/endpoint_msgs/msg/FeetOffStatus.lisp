; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude FeetOffStatus.msg.html

(cl:defclass <FeetOffStatus> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass FeetOffStatus (<FeetOffStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FeetOffStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FeetOffStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<FeetOffStatus> is deprecated: use endpoint_msgs-msg:FeetOffStatus instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <FeetOffStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FeetOffStatus>)))
    "Constants for message type '<FeetOffStatus>"
  '((:FEET_OFF_STATUS_NONE . 0)
    (:FEET_OFF_STATUS_TRUE . 1)
    (:FEET_OFF_STATUS_FALSE . 2)
    (:FEET_OFF_STATUS_INVALUD . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FeetOffStatus)))
    "Constants for message type 'FeetOffStatus"
  '((:FEET_OFF_STATUS_NONE . 0)
    (:FEET_OFF_STATUS_TRUE . 1)
    (:FEET_OFF_STATUS_FALSE . 2)
    (:FEET_OFF_STATUS_INVALUD . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FeetOffStatus>) ostream)
  "Serializes a message object of type '<FeetOffStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FeetOffStatus>) istream)
  "Deserializes a message object of type '<FeetOffStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FeetOffStatus>)))
  "Returns string type for a message object of type '<FeetOffStatus>"
  "endpoint_msgs/FeetOffStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FeetOffStatus)))
  "Returns string type for a message object of type 'FeetOffStatus"
  "endpoint_msgs/FeetOffStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FeetOffStatus>)))
  "Returns md5sum for a message object of type '<FeetOffStatus>"
  "c8a5f95f67dd2d55b0c42ff5b60b9333")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FeetOffStatus)))
  "Returns md5sum for a message object of type 'FeetOffStatus"
  "c8a5f95f67dd2d55b0c42ff5b60b9333")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FeetOffStatus>)))
  "Returns full string definition for message of type '<FeetOffStatus>"
  (cl:format cl:nil "uint8 FEET_OFF_STATUS_NONE = 0~%uint8 FEET_OFF_STATUS_TRUE = 1~%uint8 FEET_OFF_STATUS_FALSE = 2~%uint8 FEET_OFF_STATUS_INVALUD = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FeetOffStatus)))
  "Returns full string definition for message of type 'FeetOffStatus"
  (cl:format cl:nil "uint8 FEET_OFF_STATUS_NONE = 0~%uint8 FEET_OFF_STATUS_TRUE = 1~%uint8 FEET_OFF_STATUS_FALSE = 2~%uint8 FEET_OFF_STATUS_INVALUD = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FeetOffStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FeetOffStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'FeetOffStatus
    (cl:cons ':value (value msg))
))
