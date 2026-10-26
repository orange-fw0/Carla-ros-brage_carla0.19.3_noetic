; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude AutoDriveStatus.msg.html

(cl:defclass <AutoDriveStatus> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AutoDriveStatus (<AutoDriveStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AutoDriveStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AutoDriveStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<AutoDriveStatus> is deprecated: use endpoint_msgs-msg:AutoDriveStatus instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <AutoDriveStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AutoDriveStatus>)))
    "Constants for message type '<AutoDriveStatus>"
  '((:NONE . 0)
    (:READY . 1)
    (:NOT_READY . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AutoDriveStatus)))
    "Constants for message type 'AutoDriveStatus"
  '((:NONE . 0)
    (:READY . 1)
    (:NOT_READY . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AutoDriveStatus>) ostream)
  "Serializes a message object of type '<AutoDriveStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AutoDriveStatus>) istream)
  "Deserializes a message object of type '<AutoDriveStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AutoDriveStatus>)))
  "Returns string type for a message object of type '<AutoDriveStatus>"
  "endpoint_msgs/AutoDriveStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutoDriveStatus)))
  "Returns string type for a message object of type 'AutoDriveStatus"
  "endpoint_msgs/AutoDriveStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AutoDriveStatus>)))
  "Returns md5sum for a message object of type '<AutoDriveStatus>"
  "cbe26406e39a2fa7fd2724b70307195b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AutoDriveStatus)))
  "Returns md5sum for a message object of type 'AutoDriveStatus"
  "cbe26406e39a2fa7fd2724b70307195b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AutoDriveStatus>)))
  "Returns full string definition for message of type '<AutoDriveStatus>"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 READY = 1~%uint8 NOT_READY = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AutoDriveStatus)))
  "Returns full string definition for message of type 'AutoDriveStatus"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 READY = 1~%uint8 NOT_READY = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AutoDriveStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AutoDriveStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'AutoDriveStatus
    (cl:cons ':value (value msg))
))
