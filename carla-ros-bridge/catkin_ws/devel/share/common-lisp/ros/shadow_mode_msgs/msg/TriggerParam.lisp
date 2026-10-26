; Auto-generated. Do not edit!


(cl:in-package shadow_mode_msgs-msg)


;//! \htmlinclude TriggerParam.msg.html

(cl:defclass <TriggerParam> (roslisp-msg-protocol:ros-message)
  ((trigger_value
    :reader trigger_value
    :initarg :trigger_value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TriggerParam (<TriggerParam>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TriggerParam>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TriggerParam)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name shadow_mode_msgs-msg:<TriggerParam> is deprecated: use shadow_mode_msgs-msg:TriggerParam instead.")))

(cl:ensure-generic-function 'trigger_value-val :lambda-list '(m))
(cl:defmethod trigger_value-val ((m <TriggerParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shadow_mode_msgs-msg:trigger_value-val is deprecated.  Use shadow_mode_msgs-msg:trigger_value instead.")
  (trigger_value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TriggerParam>)))
    "Constants for message type '<TriggerParam>"
  '((:EVENT . 0)
    (:SINGLE_FRAME . 1)
    (:RECORDING . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TriggerParam)))
    "Constants for message type 'TriggerParam"
  '((:EVENT . 0)
    (:SINGLE_FRAME . 1)
    (:RECORDING . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TriggerParam>) ostream)
  "Serializes a message object of type '<TriggerParam>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'trigger_value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TriggerParam>) istream)
  "Deserializes a message object of type '<TriggerParam>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'trigger_value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TriggerParam>)))
  "Returns string type for a message object of type '<TriggerParam>"
  "shadow_mode_msgs/TriggerParam")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TriggerParam)))
  "Returns string type for a message object of type 'TriggerParam"
  "shadow_mode_msgs/TriggerParam")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TriggerParam>)))
  "Returns md5sum for a message object of type '<TriggerParam>"
  "2a4af8c99e536377aa2097c2cc718f29")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TriggerParam)))
  "Returns md5sum for a message object of type 'TriggerParam"
  "2a4af8c99e536377aa2097c2cc718f29")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TriggerParam>)))
  "Returns full string definition for message of type '<TriggerParam>"
  (cl:format cl:nil "uint8 EVENT = 0~%uint8 SINGLE_FRAME = 1~%uint8 RECORDING = 2~%uint8 trigger_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TriggerParam)))
  "Returns full string definition for message of type 'TriggerParam"
  (cl:format cl:nil "uint8 EVENT = 0~%uint8 SINGLE_FRAME = 1~%uint8 RECORDING = 2~%uint8 trigger_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TriggerParam>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TriggerParam>))
  "Converts a ROS message object to a list"
  (cl:list 'TriggerParam
    (cl:cons ':trigger_value (trigger_value msg))
))
