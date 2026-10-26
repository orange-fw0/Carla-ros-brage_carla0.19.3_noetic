; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude RearviewMirrorStatus.msg.html

(cl:defclass <RearviewMirrorStatus> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RearviewMirrorStatus (<RearviewMirrorStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RearviewMirrorStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RearviewMirrorStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<RearviewMirrorStatus> is deprecated: use endpoint_msgs-msg:RearviewMirrorStatus instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RearviewMirrorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RearviewMirrorStatus>)))
    "Constants for message type '<RearviewMirrorStatus>"
  '((:NONE . 0)
    (:OPEN . 1)
    (:CLOSE . 2)
    (:OPENING . 3)
    (:CLOSING . 4)
    (:PROCESSING . 5)
    (:RESERVED . 6)
    (:INVALID . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RearviewMirrorStatus)))
    "Constants for message type 'RearviewMirrorStatus"
  '((:NONE . 0)
    (:OPEN . 1)
    (:CLOSE . 2)
    (:OPENING . 3)
    (:CLOSING . 4)
    (:PROCESSING . 5)
    (:RESERVED . 6)
    (:INVALID . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RearviewMirrorStatus>) ostream)
  "Serializes a message object of type '<RearviewMirrorStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RearviewMirrorStatus>) istream)
  "Deserializes a message object of type '<RearviewMirrorStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RearviewMirrorStatus>)))
  "Returns string type for a message object of type '<RearviewMirrorStatus>"
  "endpoint_msgs/RearviewMirrorStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RearviewMirrorStatus)))
  "Returns string type for a message object of type 'RearviewMirrorStatus"
  "endpoint_msgs/RearviewMirrorStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RearviewMirrorStatus>)))
  "Returns md5sum for a message object of type '<RearviewMirrorStatus>"
  "1229defdc3c27e6846d0536c5c7645ae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RearviewMirrorStatus)))
  "Returns md5sum for a message object of type 'RearviewMirrorStatus"
  "1229defdc3c27e6846d0536c5c7645ae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RearviewMirrorStatus>)))
  "Returns full string definition for message of type '<RearviewMirrorStatus>"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 OPEN = 1~%uint8 CLOSE = 2~%uint8 OPENING = 3~%uint8 CLOSING = 4~%uint8 PROCESSING = 5~%uint8 RESERVED = 6~%uint8 INVALID = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RearviewMirrorStatus)))
  "Returns full string definition for message of type 'RearviewMirrorStatus"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 OPEN = 1~%uint8 CLOSE = 2~%uint8 OPENING = 3~%uint8 CLOSING = 4~%uint8 PROCESSING = 5~%uint8 RESERVED = 6~%uint8 INVALID = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RearviewMirrorStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RearviewMirrorStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'RearviewMirrorStatus
    (cl:cons ':value (value msg))
))
