; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude HandOffStatus.msg.html

(cl:defclass <HandOffStatus> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass HandOffStatus (<HandOffStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HandOffStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HandOffStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<HandOffStatus> is deprecated: use endpoint_msgs-msg:HandOffStatus instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <HandOffStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<HandOffStatus>)))
    "Constants for message type '<HandOffStatus>"
  '((:HAND_OFF_STATUS_NONE . 0)
    (:HAND_OFF_STATUS_TRUE . 1)
    (:HAND_OFF_STATUS_FALSE . 2)
    (:HAND_OFF_STATUS_INVALID . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'HandOffStatus)))
    "Constants for message type 'HandOffStatus"
  '((:HAND_OFF_STATUS_NONE . 0)
    (:HAND_OFF_STATUS_TRUE . 1)
    (:HAND_OFF_STATUS_FALSE . 2)
    (:HAND_OFF_STATUS_INVALID . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HandOffStatus>) ostream)
  "Serializes a message object of type '<HandOffStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HandOffStatus>) istream)
  "Deserializes a message object of type '<HandOffStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HandOffStatus>)))
  "Returns string type for a message object of type '<HandOffStatus>"
  "endpoint_msgs/HandOffStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HandOffStatus)))
  "Returns string type for a message object of type 'HandOffStatus"
  "endpoint_msgs/HandOffStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HandOffStatus>)))
  "Returns md5sum for a message object of type '<HandOffStatus>"
  "6e039363f3d53f5d1dfdfd378a9c1e44")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HandOffStatus)))
  "Returns md5sum for a message object of type 'HandOffStatus"
  "6e039363f3d53f5d1dfdfd378a9c1e44")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HandOffStatus>)))
  "Returns full string definition for message of type '<HandOffStatus>"
  (cl:format cl:nil "uint8 HAND_OFF_STATUS_NONE = 0~%uint8 HAND_OFF_STATUS_TRUE = 1~%uint8 HAND_OFF_STATUS_FALSE = 2~%uint8 HAND_OFF_STATUS_INVALID = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HandOffStatus)))
  "Returns full string definition for message of type 'HandOffStatus"
  (cl:format cl:nil "uint8 HAND_OFF_STATUS_NONE = 0~%uint8 HAND_OFF_STATUS_TRUE = 1~%uint8 HAND_OFF_STATUS_FALSE = 2~%uint8 HAND_OFF_STATUS_INVALID = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HandOffStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HandOffStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'HandOffStatus
    (cl:cons ':value (value msg))
))
