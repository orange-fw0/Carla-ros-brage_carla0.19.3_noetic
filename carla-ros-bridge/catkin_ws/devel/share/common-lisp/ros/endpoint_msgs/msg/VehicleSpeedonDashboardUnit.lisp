; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude VehicleSpeedonDashboardUnit.msg.html

(cl:defclass <VehicleSpeedonDashboardUnit> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VehicleSpeedonDashboardUnit (<VehicleSpeedonDashboardUnit>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleSpeedonDashboardUnit>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleSpeedonDashboardUnit)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<VehicleSpeedonDashboardUnit> is deprecated: use endpoint_msgs-msg:VehicleSpeedonDashboardUnit instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <VehicleSpeedonDashboardUnit>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VehicleSpeedonDashboardUnit>)))
    "Constants for message type '<VehicleSpeedonDashboardUnit>"
  '((:NONE . 0)
    (:KMH . 1)
    (:MILEH . 2)
    (:UNKNOWN . 3)
    (:RESVERD . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VehicleSpeedonDashboardUnit)))
    "Constants for message type 'VehicleSpeedonDashboardUnit"
  '((:NONE . 0)
    (:KMH . 1)
    (:MILEH . 2)
    (:UNKNOWN . 3)
    (:RESVERD . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleSpeedonDashboardUnit>) ostream)
  "Serializes a message object of type '<VehicleSpeedonDashboardUnit>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleSpeedonDashboardUnit>) istream)
  "Deserializes a message object of type '<VehicleSpeedonDashboardUnit>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleSpeedonDashboardUnit>)))
  "Returns string type for a message object of type '<VehicleSpeedonDashboardUnit>"
  "endpoint_msgs/VehicleSpeedonDashboardUnit")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleSpeedonDashboardUnit)))
  "Returns string type for a message object of type 'VehicleSpeedonDashboardUnit"
  "endpoint_msgs/VehicleSpeedonDashboardUnit")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleSpeedonDashboardUnit>)))
  "Returns md5sum for a message object of type '<VehicleSpeedonDashboardUnit>"
  "82e0f23dafa0f4cc70dd98e01aa40014")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleSpeedonDashboardUnit)))
  "Returns md5sum for a message object of type 'VehicleSpeedonDashboardUnit"
  "82e0f23dafa0f4cc70dd98e01aa40014")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleSpeedonDashboardUnit>)))
  "Returns full string definition for message of type '<VehicleSpeedonDashboardUnit>"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 KMH = 1~%uint8 MILEH = 2~%uint8 UNKNOWN = 3~%uint8 RESVERD = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleSpeedonDashboardUnit)))
  "Returns full string definition for message of type 'VehicleSpeedonDashboardUnit"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 KMH = 1~%uint8 MILEH = 2~%uint8 UNKNOWN = 3~%uint8 RESVERD = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleSpeedonDashboardUnit>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleSpeedonDashboardUnit>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleSpeedonDashboardUnit
    (cl:cons ':value (value msg))
))
