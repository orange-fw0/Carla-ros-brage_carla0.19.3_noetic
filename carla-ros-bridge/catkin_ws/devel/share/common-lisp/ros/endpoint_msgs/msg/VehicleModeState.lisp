; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude VehicleModeState.msg.html

(cl:defclass <VehicleModeState> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VehicleModeState (<VehicleModeState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleModeState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleModeState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<VehicleModeState> is deprecated: use endpoint_msgs-msg:VehicleModeState instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <VehicleModeState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VehicleModeState>)))
    "Constants for message type '<VehicleModeState>"
  '((:NONE . 0)
    (:NORMAL_MODE . 1)
    (:MANUFACTURE_MODE . 2)
    (:TRANSPORT_MODE . 3)
    (:SHOWROOM_MODE . 4)
    (:POSTCRASH_MODE . 5)
    (:MAINTENANCE_MODE . 6)
    (:CARWASH_MODE . 7)
    (:BENCHTEST_MODE . 8)
    (:DRAG_MODE . 9)
    (:RESERVED1 . 10)
    (:RESERVED2 . 11)
    (:RESERVED3 . 12))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VehicleModeState)))
    "Constants for message type 'VehicleModeState"
  '((:NONE . 0)
    (:NORMAL_MODE . 1)
    (:MANUFACTURE_MODE . 2)
    (:TRANSPORT_MODE . 3)
    (:SHOWROOM_MODE . 4)
    (:POSTCRASH_MODE . 5)
    (:MAINTENANCE_MODE . 6)
    (:CARWASH_MODE . 7)
    (:BENCHTEST_MODE . 8)
    (:DRAG_MODE . 9)
    (:RESERVED1 . 10)
    (:RESERVED2 . 11)
    (:RESERVED3 . 12))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleModeState>) ostream)
  "Serializes a message object of type '<VehicleModeState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleModeState>) istream)
  "Deserializes a message object of type '<VehicleModeState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleModeState>)))
  "Returns string type for a message object of type '<VehicleModeState>"
  "endpoint_msgs/VehicleModeState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleModeState)))
  "Returns string type for a message object of type 'VehicleModeState"
  "endpoint_msgs/VehicleModeState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleModeState>)))
  "Returns md5sum for a message object of type '<VehicleModeState>"
  "a9e0b51f668d5d8050e77d50a63ff613")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleModeState)))
  "Returns md5sum for a message object of type 'VehicleModeState"
  "a9e0b51f668d5d8050e77d50a63ff613")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleModeState>)))
  "Returns full string definition for message of type '<VehicleModeState>"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 NORMAL_MODE = 1~%uint8 MANUFACTURE_MODE = 2~%uint8 TRANSPORT_MODE = 3~%uint8 SHOWROOM_MODE = 4~%uint8 POSTCRASH_MODE = 5~%uint8 MAINTENANCE_MODE = 6~%uint8 CARWASH_MODE = 7~%uint8 BENCHTEST_MODE = 8~%uint8 DRAG_MODE = 9~%uint8 RESERVED1 = 10~%uint8 RESERVED2 = 11~%uint8 RESERVED3 = 12~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleModeState)))
  "Returns full string definition for message of type 'VehicleModeState"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 NORMAL_MODE = 1~%uint8 MANUFACTURE_MODE = 2~%uint8 TRANSPORT_MODE = 3~%uint8 SHOWROOM_MODE = 4~%uint8 POSTCRASH_MODE = 5~%uint8 MAINTENANCE_MODE = 6~%uint8 CARWASH_MODE = 7~%uint8 BENCHTEST_MODE = 8~%uint8 DRAG_MODE = 9~%uint8 RESERVED1 = 10~%uint8 RESERVED2 = 11~%uint8 RESERVED3 = 12~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleModeState>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleModeState>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleModeState
    (cl:cons ':value (value msg))
))
