; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude RearviewMirrorAdjustSwitch.msg.html

(cl:defclass <RearviewMirrorAdjustSwitch> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RearviewMirrorAdjustSwitch (<RearviewMirrorAdjustSwitch>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RearviewMirrorAdjustSwitch>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RearviewMirrorAdjustSwitch)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<RearviewMirrorAdjustSwitch> is deprecated: use endpoint_msgs-msg:RearviewMirrorAdjustSwitch instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RearviewMirrorAdjustSwitch>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RearviewMirrorAdjustSwitch>)))
    "Constants for message type '<RearviewMirrorAdjustSwitch>"
  '((:NONE . 0)
    (:ON . 1)
    (:OFF . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RearviewMirrorAdjustSwitch)))
    "Constants for message type 'RearviewMirrorAdjustSwitch"
  '((:NONE . 0)
    (:ON . 1)
    (:OFF . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RearviewMirrorAdjustSwitch>) ostream)
  "Serializes a message object of type '<RearviewMirrorAdjustSwitch>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RearviewMirrorAdjustSwitch>) istream)
  "Deserializes a message object of type '<RearviewMirrorAdjustSwitch>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RearviewMirrorAdjustSwitch>)))
  "Returns string type for a message object of type '<RearviewMirrorAdjustSwitch>"
  "endpoint_msgs/RearviewMirrorAdjustSwitch")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RearviewMirrorAdjustSwitch)))
  "Returns string type for a message object of type 'RearviewMirrorAdjustSwitch"
  "endpoint_msgs/RearviewMirrorAdjustSwitch")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RearviewMirrorAdjustSwitch>)))
  "Returns md5sum for a message object of type '<RearviewMirrorAdjustSwitch>"
  "59da5d40666a8ad7d16eafcc1633ddbf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RearviewMirrorAdjustSwitch)))
  "Returns md5sum for a message object of type 'RearviewMirrorAdjustSwitch"
  "59da5d40666a8ad7d16eafcc1633ddbf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RearviewMirrorAdjustSwitch>)))
  "Returns full string definition for message of type '<RearviewMirrorAdjustSwitch>"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 ON = 1~%uint8 OFF = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RearviewMirrorAdjustSwitch)))
  "Returns full string definition for message of type 'RearviewMirrorAdjustSwitch"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 ON = 1~%uint8 OFF = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RearviewMirrorAdjustSwitch>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RearviewMirrorAdjustSwitch>))
  "Converts a ROS message object to a list"
  (cl:list 'RearviewMirrorAdjustSwitch
    (cl:cons ':value (value msg))
))
