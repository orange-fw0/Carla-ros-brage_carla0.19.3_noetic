; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude NaviTimeDistance.msg.html

(cl:defclass <NaviTimeDistance> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass NaviTimeDistance (<NaviTimeDistance>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NaviTimeDistance>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NaviTimeDistance)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<NaviTimeDistance> is deprecated: use system_manager_msgs-msg:NaviTimeDistance instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <NaviTimeDistance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:value-val is deprecated.  Use system_manager_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NaviTimeDistance>)))
    "Constants for message type '<NaviTimeDistance>"
  '((:AGGRESIVE . 0)
    (:MODERATE_AGGRESIVE . 1)
    (:NORMAL . 2)
    (:MODERATE_CONSERVATIVE . 3)
    (:CONSERVATIVE . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NaviTimeDistance)))
    "Constants for message type 'NaviTimeDistance"
  '((:AGGRESIVE . 0)
    (:MODERATE_AGGRESIVE . 1)
    (:NORMAL . 2)
    (:MODERATE_CONSERVATIVE . 3)
    (:CONSERVATIVE . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NaviTimeDistance>) ostream)
  "Serializes a message object of type '<NaviTimeDistance>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NaviTimeDistance>) istream)
  "Deserializes a message object of type '<NaviTimeDistance>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NaviTimeDistance>)))
  "Returns string type for a message object of type '<NaviTimeDistance>"
  "system_manager_msgs/NaviTimeDistance")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NaviTimeDistance)))
  "Returns string type for a message object of type 'NaviTimeDistance"
  "system_manager_msgs/NaviTimeDistance")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NaviTimeDistance>)))
  "Returns md5sum for a message object of type '<NaviTimeDistance>"
  "3e08e8e3fc218f1fbd1c4f31dd992a2f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NaviTimeDistance)))
  "Returns md5sum for a message object of type 'NaviTimeDistance"
  "3e08e8e3fc218f1fbd1c4f31dd992a2f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NaviTimeDistance>)))
  "Returns full string definition for message of type '<NaviTimeDistance>"
  (cl:format cl:nil "uint8 AGGRESIVE = 0~%uint8 MODERATE_AGGRESIVE = 1~%uint8 NORMAL = 2~%uint8 MODERATE_CONSERVATIVE = 3~%uint8 CONSERVATIVE = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NaviTimeDistance)))
  "Returns full string definition for message of type 'NaviTimeDistance"
  (cl:format cl:nil "uint8 AGGRESIVE = 0~%uint8 MODERATE_AGGRESIVE = 1~%uint8 NORMAL = 2~%uint8 MODERATE_CONSERVATIVE = 3~%uint8 CONSERVATIVE = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NaviTimeDistance>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NaviTimeDistance>))
  "Converts a ROS message object to a list"
  (cl:list 'NaviTimeDistance
    (cl:cons ':value (value msg))
))
