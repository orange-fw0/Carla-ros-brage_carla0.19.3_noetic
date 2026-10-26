; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude LeverStatus.msg.html

(cl:defclass <LeverStatus> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LeverStatus (<LeverStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LeverStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LeverStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<LeverStatus> is deprecated: use endpoint_msgs-msg:LeverStatus instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LeverStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LeverStatus>)))
    "Constants for message type '<LeverStatus>"
  '((:LEVER_STATE_OFF . 0)
    (:LEVER_STATE_LEFT . 1)
    (:LEVER_STATE_RIGHT . 2)
    (:LEVER_STATE_LEFT_INVALID . 3)
    (:LEVER_STATE_RIGHT_INVALID . 4)
    (:LEVER_STATE_LEFT_LIGHT . 5)
    (:LEVER_STATE_RIGHT_LIGHT . 6)
    (:LEVER_STATE_RESERVED1 . 7)
    (:LEVER_STATE_RESERVED3 . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LeverStatus)))
    "Constants for message type 'LeverStatus"
  '((:LEVER_STATE_OFF . 0)
    (:LEVER_STATE_LEFT . 1)
    (:LEVER_STATE_RIGHT . 2)
    (:LEVER_STATE_LEFT_INVALID . 3)
    (:LEVER_STATE_RIGHT_INVALID . 4)
    (:LEVER_STATE_LEFT_LIGHT . 5)
    (:LEVER_STATE_RIGHT_LIGHT . 6)
    (:LEVER_STATE_RESERVED1 . 7)
    (:LEVER_STATE_RESERVED3 . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LeverStatus>) ostream)
  "Serializes a message object of type '<LeverStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LeverStatus>) istream)
  "Deserializes a message object of type '<LeverStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LeverStatus>)))
  "Returns string type for a message object of type '<LeverStatus>"
  "endpoint_msgs/LeverStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LeverStatus)))
  "Returns string type for a message object of type 'LeverStatus"
  "endpoint_msgs/LeverStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LeverStatus>)))
  "Returns md5sum for a message object of type '<LeverStatus>"
  "15bad8e81cba86ce97105bd413cab318")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LeverStatus)))
  "Returns md5sum for a message object of type 'LeverStatus"
  "15bad8e81cba86ce97105bd413cab318")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LeverStatus>)))
  "Returns full string definition for message of type '<LeverStatus>"
  (cl:format cl:nil "uint8 LEVER_STATE_OFF = 0~%uint8 LEVER_STATE_LEFT = 1~%uint8 LEVER_STATE_RIGHT = 2~%uint8 LEVER_STATE_LEFT_INVALID = 3~%uint8 LEVER_STATE_RIGHT_INVALID = 4~%uint8 LEVER_STATE_LEFT_LIGHT = 5~%uint8 LEVER_STATE_RIGHT_LIGHT = 6~%uint8 LEVER_STATE_RESERVED1 = 7~%uint8 LEVER_STATE_RESERVED3 = 8~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LeverStatus)))
  "Returns full string definition for message of type 'LeverStatus"
  (cl:format cl:nil "uint8 LEVER_STATE_OFF = 0~%uint8 LEVER_STATE_LEFT = 1~%uint8 LEVER_STATE_RIGHT = 2~%uint8 LEVER_STATE_LEFT_INVALID = 3~%uint8 LEVER_STATE_RIGHT_INVALID = 4~%uint8 LEVER_STATE_LEFT_LIGHT = 5~%uint8 LEVER_STATE_RIGHT_LIGHT = 6~%uint8 LEVER_STATE_RESERVED1 = 7~%uint8 LEVER_STATE_RESERVED3 = 8~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LeverStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LeverStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'LeverStatus
    (cl:cons ':value (value msg))
))
