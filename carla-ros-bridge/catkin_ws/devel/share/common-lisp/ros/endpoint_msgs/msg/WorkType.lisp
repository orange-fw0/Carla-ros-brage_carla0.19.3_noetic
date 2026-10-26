; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude WorkType.msg.html

(cl:defclass <WorkType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WorkType (<WorkType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WorkType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WorkType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<WorkType> is deprecated: use endpoint_msgs-msg:WorkType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <WorkType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WorkType>)))
    "Constants for message type '<WorkType>"
  '((:MANUALPILOT . 0)
    (:AUTOPILOT_PILOT . 1)
    (:AUTOPILOT_APA . 2)
    (:AUTOPILOT_ACC . 3)
    (:AUTOPILOT_RESERVED1 . 4)
    (:AUTOPILOT_RESERVED2 . 5)
    (:AUTOPILOT_RESERVED3 . 6)
    (:AUTOPILOT_RESERVED4 . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WorkType)))
    "Constants for message type 'WorkType"
  '((:MANUALPILOT . 0)
    (:AUTOPILOT_PILOT . 1)
    (:AUTOPILOT_APA . 2)
    (:AUTOPILOT_ACC . 3)
    (:AUTOPILOT_RESERVED1 . 4)
    (:AUTOPILOT_RESERVED2 . 5)
    (:AUTOPILOT_RESERVED3 . 6)
    (:AUTOPILOT_RESERVED4 . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WorkType>) ostream)
  "Serializes a message object of type '<WorkType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WorkType>) istream)
  "Deserializes a message object of type '<WorkType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WorkType>)))
  "Returns string type for a message object of type '<WorkType>"
  "endpoint_msgs/WorkType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WorkType)))
  "Returns string type for a message object of type 'WorkType"
  "endpoint_msgs/WorkType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WorkType>)))
  "Returns md5sum for a message object of type '<WorkType>"
  "6b4e8a6bfe4dec8b17f85302d9723252")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WorkType)))
  "Returns md5sum for a message object of type 'WorkType"
  "6b4e8a6bfe4dec8b17f85302d9723252")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WorkType>)))
  "Returns full string definition for message of type '<WorkType>"
  (cl:format cl:nil "uint8 MANUALPILOT = 0~%uint8 AUTOPILOT_PILOT = 1~%uint8 AUTOPILOT_APA = 2~%uint8 AUTOPILOT_ACC = 3~%uint8 AUTOPILOT_RESERVED1 = 4~%uint8 AUTOPILOT_RESERVED2 = 5~%uint8 AUTOPILOT_RESERVED3 = 6~%uint8 AUTOPILOT_RESERVED4 = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WorkType)))
  "Returns full string definition for message of type 'WorkType"
  (cl:format cl:nil "uint8 MANUALPILOT = 0~%uint8 AUTOPILOT_PILOT = 1~%uint8 AUTOPILOT_APA = 2~%uint8 AUTOPILOT_ACC = 3~%uint8 AUTOPILOT_RESERVED1 = 4~%uint8 AUTOPILOT_RESERVED2 = 5~%uint8 AUTOPILOT_RESERVED3 = 6~%uint8 AUTOPILOT_RESERVED4 = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WorkType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WorkType>))
  "Converts a ROS message object to a list"
  (cl:list 'WorkType
    (cl:cons ':value (value msg))
))
