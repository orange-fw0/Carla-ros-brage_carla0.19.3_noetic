; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude HeatWireControlType.msg.html

(cl:defclass <HeatWireControlType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass HeatWireControlType (<HeatWireControlType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HeatWireControlType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HeatWireControlType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<HeatWireControlType> is deprecated: use endpoint_msgs-msg:HeatWireControlType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <HeatWireControlType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<HeatWireControlType>)))
    "Constants for message type '<HeatWireControlType>"
  '((:NONE . 0)
    (:STANDBY . 1)
    (:HEAT . 2)
    (:NOHEAT . 3)
    (:FAILURE . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'HeatWireControlType)))
    "Constants for message type 'HeatWireControlType"
  '((:NONE . 0)
    (:STANDBY . 1)
    (:HEAT . 2)
    (:NOHEAT . 3)
    (:FAILURE . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HeatWireControlType>) ostream)
  "Serializes a message object of type '<HeatWireControlType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HeatWireControlType>) istream)
  "Deserializes a message object of type '<HeatWireControlType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HeatWireControlType>)))
  "Returns string type for a message object of type '<HeatWireControlType>"
  "endpoint_msgs/HeatWireControlType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HeatWireControlType)))
  "Returns string type for a message object of type 'HeatWireControlType"
  "endpoint_msgs/HeatWireControlType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HeatWireControlType>)))
  "Returns md5sum for a message object of type '<HeatWireControlType>"
  "ed9d55c426edbb0aaf9d9b9fb193e219")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HeatWireControlType)))
  "Returns md5sum for a message object of type 'HeatWireControlType"
  "ed9d55c426edbb0aaf9d9b9fb193e219")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HeatWireControlType>)))
  "Returns full string definition for message of type '<HeatWireControlType>"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 STANDBY = 1~%uint8 HEAT = 2~%uint8 NOHEAT = 3~%uint8 FAILURE = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HeatWireControlType)))
  "Returns full string definition for message of type 'HeatWireControlType"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 STANDBY = 1~%uint8 HEAT = 2~%uint8 NOHEAT = 3~%uint8 FAILURE = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HeatWireControlType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HeatWireControlType>))
  "Converts a ROS message object to a list"
  (cl:list 'HeatWireControlType
    (cl:cons ':value (value msg))
))
