; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude AirWorkStatus.msg.html

(cl:defclass <AirWorkStatus> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AirWorkStatus (<AirWorkStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AirWorkStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AirWorkStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<AirWorkStatus> is deprecated: use endpoint_msgs-msg:AirWorkStatus instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <AirWorkStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AirWorkStatus>)))
    "Constants for message type '<AirWorkStatus>"
  '((:AIR_WORK_STATUS_NONE . 0)
    (:AIR_WORK_STATUS_CLOSE . 1)
    (:AIR_WORK_STATUS_OPEN . 2)
    (:AIR_WORK_STATUS_INVALID . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AirWorkStatus)))
    "Constants for message type 'AirWorkStatus"
  '((:AIR_WORK_STATUS_NONE . 0)
    (:AIR_WORK_STATUS_CLOSE . 1)
    (:AIR_WORK_STATUS_OPEN . 2)
    (:AIR_WORK_STATUS_INVALID . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AirWorkStatus>) ostream)
  "Serializes a message object of type '<AirWorkStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AirWorkStatus>) istream)
  "Deserializes a message object of type '<AirWorkStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AirWorkStatus>)))
  "Returns string type for a message object of type '<AirWorkStatus>"
  "endpoint_msgs/AirWorkStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AirWorkStatus)))
  "Returns string type for a message object of type 'AirWorkStatus"
  "endpoint_msgs/AirWorkStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AirWorkStatus>)))
  "Returns md5sum for a message object of type '<AirWorkStatus>"
  "0e476aa89a921cf5f295f30ca6d8f112")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AirWorkStatus)))
  "Returns md5sum for a message object of type 'AirWorkStatus"
  "0e476aa89a921cf5f295f30ca6d8f112")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AirWorkStatus>)))
  "Returns full string definition for message of type '<AirWorkStatus>"
  (cl:format cl:nil "uint8 AIR_WORK_STATUS_NONE = 0~%uint8 AIR_WORK_STATUS_CLOSE = 1~%uint8 AIR_WORK_STATUS_OPEN = 2~%uint8 AIR_WORK_STATUS_INVALID = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AirWorkStatus)))
  "Returns full string definition for message of type 'AirWorkStatus"
  (cl:format cl:nil "uint8 AIR_WORK_STATUS_NONE = 0~%uint8 AIR_WORK_STATUS_CLOSE = 1~%uint8 AIR_WORK_STATUS_OPEN = 2~%uint8 AIR_WORK_STATUS_INVALID = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AirWorkStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AirWorkStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'AirWorkStatus
    (cl:cons ':value (value msg))
))
