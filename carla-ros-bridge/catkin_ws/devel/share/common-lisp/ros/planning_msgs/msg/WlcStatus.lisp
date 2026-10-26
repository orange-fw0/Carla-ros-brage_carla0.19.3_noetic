; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude WlcStatus.msg.html

(cl:defclass <WlcStatus> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass WlcStatus (<WlcStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WlcStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WlcStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<WlcStatus> is deprecated: use planning_msgs-msg:WlcStatus instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <WlcStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:value-val is deprecated.  Use planning_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WlcStatus>)))
    "Constants for message type '<WlcStatus>"
  '((:NO_WLC . 0)
    (:APPROACHING . 1)
    (:APPROACHED . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WlcStatus)))
    "Constants for message type 'WlcStatus"
  '((:NO_WLC . 0)
    (:APPROACHING . 1)
    (:APPROACHED . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WlcStatus>) ostream)
  "Serializes a message object of type '<WlcStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WlcStatus>) istream)
  "Deserializes a message object of type '<WlcStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WlcStatus>)))
  "Returns string type for a message object of type '<WlcStatus>"
  "planning_msgs/WlcStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WlcStatus)))
  "Returns string type for a message object of type 'WlcStatus"
  "planning_msgs/WlcStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WlcStatus>)))
  "Returns md5sum for a message object of type '<WlcStatus>"
  "37840f29efd5c5608d22824d95635338")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WlcStatus)))
  "Returns md5sum for a message object of type 'WlcStatus"
  "37840f29efd5c5608d22824d95635338")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WlcStatus>)))
  "Returns full string definition for message of type '<WlcStatus>"
  (cl:format cl:nil "uint32 NO_WLC = 0~%uint32 APPROACHING = 1~%uint32 APPROACHED = 2~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WlcStatus)))
  "Returns full string definition for message of type 'WlcStatus"
  (cl:format cl:nil "uint32 NO_WLC = 0~%uint32 APPROACHING = 1~%uint32 APPROACHED = 2~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WlcStatus>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WlcStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'WlcStatus
    (cl:cons ':value (value msg))
))
