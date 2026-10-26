; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude SuspensionAdjustStatus.msg.html

(cl:defclass <SuspensionAdjustStatus> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SuspensionAdjustStatus (<SuspensionAdjustStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SuspensionAdjustStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SuspensionAdjustStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<SuspensionAdjustStatus> is deprecated: use endpoint_msgs-msg:SuspensionAdjustStatus instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SuspensionAdjustStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SuspensionAdjustStatus>)))
    "Constants for message type '<SuspensionAdjustStatus>"
  '((:NOACTION . 0)
    (:LOWERING . 1)
    (:LIFTING . 2)
    (:PENDING . 3)
    (:ADJUSTING . 4)
    (:RESERVED . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SuspensionAdjustStatus)))
    "Constants for message type 'SuspensionAdjustStatus"
  '((:NOACTION . 0)
    (:LOWERING . 1)
    (:LIFTING . 2)
    (:PENDING . 3)
    (:ADJUSTING . 4)
    (:RESERVED . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SuspensionAdjustStatus>) ostream)
  "Serializes a message object of type '<SuspensionAdjustStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SuspensionAdjustStatus>) istream)
  "Deserializes a message object of type '<SuspensionAdjustStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SuspensionAdjustStatus>)))
  "Returns string type for a message object of type '<SuspensionAdjustStatus>"
  "endpoint_msgs/SuspensionAdjustStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SuspensionAdjustStatus)))
  "Returns string type for a message object of type 'SuspensionAdjustStatus"
  "endpoint_msgs/SuspensionAdjustStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SuspensionAdjustStatus>)))
  "Returns md5sum for a message object of type '<SuspensionAdjustStatus>"
  "9c56630c548a81602ee8e4dcdd39fc72")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SuspensionAdjustStatus)))
  "Returns md5sum for a message object of type 'SuspensionAdjustStatus"
  "9c56630c548a81602ee8e4dcdd39fc72")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SuspensionAdjustStatus>)))
  "Returns full string definition for message of type '<SuspensionAdjustStatus>"
  (cl:format cl:nil "uint8 NOACTION = 0~%uint8 LOWERING = 1~%uint8 LIFTING = 2~%uint8 PENDING = 3~%uint8 ADJUSTING = 4~%uint8 RESERVED = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SuspensionAdjustStatus)))
  "Returns full string definition for message of type 'SuspensionAdjustStatus"
  (cl:format cl:nil "uint8 NOACTION = 0~%uint8 LOWERING = 1~%uint8 LIFTING = 2~%uint8 PENDING = 3~%uint8 ADJUSTING = 4~%uint8 RESERVED = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SuspensionAdjustStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SuspensionAdjustStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'SuspensionAdjustStatus
    (cl:cons ':value (value msg))
))
