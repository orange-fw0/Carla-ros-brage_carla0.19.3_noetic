; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude APABrakeMode.msg.html

(cl:defclass <APABrakeMode> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass APABrakeMode (<APABrakeMode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <APABrakeMode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'APABrakeMode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<APABrakeMode> is deprecated: use planning_msgs-msg:APABrakeMode instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <APABrakeMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:value-val is deprecated.  Use planning_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<APABrakeMode>)))
    "Constants for message type '<APABrakeMode>"
  '((:DEFAULT . 0)
    (:HARD_BRAKE . 1)
    (:GENTLE_BRAKE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'APABrakeMode)))
    "Constants for message type 'APABrakeMode"
  '((:DEFAULT . 0)
    (:HARD_BRAKE . 1)
    (:GENTLE_BRAKE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <APABrakeMode>) ostream)
  "Serializes a message object of type '<APABrakeMode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <APABrakeMode>) istream)
  "Deserializes a message object of type '<APABrakeMode>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<APABrakeMode>)))
  "Returns string type for a message object of type '<APABrakeMode>"
  "planning_msgs/APABrakeMode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'APABrakeMode)))
  "Returns string type for a message object of type 'APABrakeMode"
  "planning_msgs/APABrakeMode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<APABrakeMode>)))
  "Returns md5sum for a message object of type '<APABrakeMode>"
  "c6912f4ad63860c1efdd188ae4ffa0d4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'APABrakeMode)))
  "Returns md5sum for a message object of type 'APABrakeMode"
  "c6912f4ad63860c1efdd188ae4ffa0d4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<APABrakeMode>)))
  "Returns full string definition for message of type '<APABrakeMode>"
  (cl:format cl:nil "uint8 DEFAULT = 0~%uint8 HARD_BRAKE = 1~%uint8 GENTLE_BRAKE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'APABrakeMode)))
  "Returns full string definition for message of type 'APABrakeMode"
  (cl:format cl:nil "uint8 DEFAULT = 0~%uint8 HARD_BRAKE = 1~%uint8 GENTLE_BRAKE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <APABrakeMode>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <APABrakeMode>))
  "Converts a ROS message object to a list"
  (cl:list 'APABrakeMode
    (cl:cons ':value (value msg))
))
