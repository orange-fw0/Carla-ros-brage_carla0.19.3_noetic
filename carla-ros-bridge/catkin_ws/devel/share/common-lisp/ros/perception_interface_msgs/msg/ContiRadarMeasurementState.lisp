; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude ContiRadarMeasurementState.msg.html

(cl:defclass <ContiRadarMeasurementState> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ContiRadarMeasurementState (<ContiRadarMeasurementState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ContiRadarMeasurementState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ContiRadarMeasurementState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<ContiRadarMeasurementState> is deprecated: use perception_interface_msgs-msg:ContiRadarMeasurementState instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ContiRadarMeasurementState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ContiRadarMeasurementState>)))
    "Constants for message type '<ContiRadarMeasurementState>"
  '((:DELETED . 0)
    (:NEW . 1)
    (:MEASURED . 2)
    (:PREDICTED . 3)
    (:DELETED_FOR_MERGE . 4)
    (:NEW_FROM_MERGE . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ContiRadarMeasurementState)))
    "Constants for message type 'ContiRadarMeasurementState"
  '((:DELETED . 0)
    (:NEW . 1)
    (:MEASURED . 2)
    (:PREDICTED . 3)
    (:DELETED_FOR_MERGE . 4)
    (:NEW_FROM_MERGE . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ContiRadarMeasurementState>) ostream)
  "Serializes a message object of type '<ContiRadarMeasurementState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ContiRadarMeasurementState>) istream)
  "Deserializes a message object of type '<ContiRadarMeasurementState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ContiRadarMeasurementState>)))
  "Returns string type for a message object of type '<ContiRadarMeasurementState>"
  "perception_interface_msgs/ContiRadarMeasurementState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ContiRadarMeasurementState)))
  "Returns string type for a message object of type 'ContiRadarMeasurementState"
  "perception_interface_msgs/ContiRadarMeasurementState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ContiRadarMeasurementState>)))
  "Returns md5sum for a message object of type '<ContiRadarMeasurementState>"
  "7215438a8405b25395db2229dcf59908")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ContiRadarMeasurementState)))
  "Returns md5sum for a message object of type 'ContiRadarMeasurementState"
  "7215438a8405b25395db2229dcf59908")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ContiRadarMeasurementState>)))
  "Returns full string definition for message of type '<ContiRadarMeasurementState>"
  (cl:format cl:nil "uint8 DELETED = 0~%uint8 NEW = 1~%uint8 MEASURED = 2~%uint8 PREDICTED = 3~%uint8 DELETED_FOR_MERGE = 4~%uint8 NEW_FROM_MERGE = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ContiRadarMeasurementState)))
  "Returns full string definition for message of type 'ContiRadarMeasurementState"
  (cl:format cl:nil "uint8 DELETED = 0~%uint8 NEW = 1~%uint8 MEASURED = 2~%uint8 PREDICTED = 3~%uint8 DELETED_FOR_MERGE = 4~%uint8 NEW_FROM_MERGE = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ContiRadarMeasurementState>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ContiRadarMeasurementState>))
  "Converts a ROS message object to a list"
  (cl:list 'ContiRadarMeasurementState
    (cl:cons ':value (value msg))
))
