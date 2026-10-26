; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude TargetControlMode.msg.html

(cl:defclass <TargetControlMode> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TargetControlMode (<TargetControlMode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TargetControlMode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TargetControlMode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<TargetControlMode> is deprecated: use endpoint_msgs-msg:TargetControlMode instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TargetControlMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TargetControlMode>)))
    "Constants for message type '<TargetControlMode>"
  '((:NONE . 0)
    (:TORQUE . 1)
    (:SPEED . 2)
    (:RESERVE . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TargetControlMode)))
    "Constants for message type 'TargetControlMode"
  '((:NONE . 0)
    (:TORQUE . 1)
    (:SPEED . 2)
    (:RESERVE . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TargetControlMode>) ostream)
  "Serializes a message object of type '<TargetControlMode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TargetControlMode>) istream)
  "Deserializes a message object of type '<TargetControlMode>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TargetControlMode>)))
  "Returns string type for a message object of type '<TargetControlMode>"
  "endpoint_msgs/TargetControlMode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TargetControlMode)))
  "Returns string type for a message object of type 'TargetControlMode"
  "endpoint_msgs/TargetControlMode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TargetControlMode>)))
  "Returns md5sum for a message object of type '<TargetControlMode>"
  "c5f6eba1adab05f5ae1ab76d0b7681f0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TargetControlMode)))
  "Returns md5sum for a message object of type 'TargetControlMode"
  "c5f6eba1adab05f5ae1ab76d0b7681f0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TargetControlMode>)))
  "Returns full string definition for message of type '<TargetControlMode>"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 TORQUE = 1~%uint8 SPEED = 2~%uint8 RESERVE = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TargetControlMode)))
  "Returns full string definition for message of type 'TargetControlMode"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 TORQUE = 1~%uint8 SPEED = 2~%uint8 RESERVE = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TargetControlMode>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TargetControlMode>))
  "Converts a ROS message object to a list"
  (cl:list 'TargetControlMode
    (cl:cons ':value (value msg))
))
