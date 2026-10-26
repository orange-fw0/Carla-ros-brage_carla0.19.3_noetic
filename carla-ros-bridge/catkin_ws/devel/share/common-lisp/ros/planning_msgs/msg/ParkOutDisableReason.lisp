; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude ParkOutDisableReason.msg.html

(cl:defclass <ParkOutDisableReason> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass ParkOutDisableReason (<ParkOutDisableReason>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParkOutDisableReason>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParkOutDisableReason)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<ParkOutDisableReason> is deprecated: use planning_msgs-msg:ParkOutDisableReason instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ParkOutDisableReason>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:value-val is deprecated.  Use planning_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ParkOutDisableReason>)))
    "Constants for message type '<ParkOutDisableReason>"
  '((:NONE . 0)
    (:PARALLEL_NO_OBSTACLE_AHEAD . 1)
    (:DISABLED_NON_PARALLEL . 2)
    (:NOT_IN_PARKING_SLOT . 3)
    (:PARKOUT_NOT_READY . 4)
    (:SLOT_TOO_SMALL . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ParkOutDisableReason)))
    "Constants for message type 'ParkOutDisableReason"
  '((:NONE . 0)
    (:PARALLEL_NO_OBSTACLE_AHEAD . 1)
    (:DISABLED_NON_PARALLEL . 2)
    (:NOT_IN_PARKING_SLOT . 3)
    (:PARKOUT_NOT_READY . 4)
    (:SLOT_TOO_SMALL . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParkOutDisableReason>) ostream)
  "Serializes a message object of type '<ParkOutDisableReason>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParkOutDisableReason>) istream)
  "Deserializes a message object of type '<ParkOutDisableReason>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParkOutDisableReason>)))
  "Returns string type for a message object of type '<ParkOutDisableReason>"
  "planning_msgs/ParkOutDisableReason")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParkOutDisableReason)))
  "Returns string type for a message object of type 'ParkOutDisableReason"
  "planning_msgs/ParkOutDisableReason")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParkOutDisableReason>)))
  "Returns md5sum for a message object of type '<ParkOutDisableReason>"
  "8eb65e826e3a4822f671ca42548b1bc5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParkOutDisableReason)))
  "Returns md5sum for a message object of type 'ParkOutDisableReason"
  "8eb65e826e3a4822f671ca42548b1bc5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParkOutDisableReason>)))
  "Returns full string definition for message of type '<ParkOutDisableReason>"
  (cl:format cl:nil "uint32 NONE = 0~%uint32 PARALLEL_NO_OBSTACLE_AHEAD = 1~%uint32 DISABLED_NON_PARALLEL = 2~%uint32 NOT_IN_PARKING_SLOT = 3~%uint32 PARKOUT_NOT_READY = 4~%uint32 SLOT_TOO_SMALL = 5~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParkOutDisableReason)))
  "Returns full string definition for message of type 'ParkOutDisableReason"
  (cl:format cl:nil "uint32 NONE = 0~%uint32 PARALLEL_NO_OBSTACLE_AHEAD = 1~%uint32 DISABLED_NON_PARALLEL = 2~%uint32 NOT_IN_PARKING_SLOT = 3~%uint32 PARKOUT_NOT_READY = 4~%uint32 SLOT_TOO_SMALL = 5~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParkOutDisableReason>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParkOutDisableReason>))
  "Converts a ROS message object to a list"
  (cl:list 'ParkOutDisableReason
    (cl:cons ':value (value msg))
))
