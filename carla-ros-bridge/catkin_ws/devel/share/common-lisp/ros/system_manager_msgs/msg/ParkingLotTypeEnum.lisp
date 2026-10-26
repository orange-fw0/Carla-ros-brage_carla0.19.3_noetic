; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude ParkingLotTypeEnum.msg.html

(cl:defclass <ParkingLotTypeEnum> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ParkingLotTypeEnum (<ParkingLotTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParkingLotTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParkingLotTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<ParkingLotTypeEnum> is deprecated: use system_manager_msgs-msg:ParkingLotTypeEnum instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <ParkingLotTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:type-val is deprecated.  Use system_manager_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ParkingLotTypeEnum>)))
    "Constants for message type '<ParkingLotTypeEnum>"
  '((:PNP . 0)
    (:LPNP . 1)
    (:BOTH . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ParkingLotTypeEnum)))
    "Constants for message type 'ParkingLotTypeEnum"
  '((:PNP . 0)
    (:LPNP . 1)
    (:BOTH . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParkingLotTypeEnum>) ostream)
  "Serializes a message object of type '<ParkingLotTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParkingLotTypeEnum>) istream)
  "Deserializes a message object of type '<ParkingLotTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParkingLotTypeEnum>)))
  "Returns string type for a message object of type '<ParkingLotTypeEnum>"
  "system_manager_msgs/ParkingLotTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParkingLotTypeEnum)))
  "Returns string type for a message object of type 'ParkingLotTypeEnum"
  "system_manager_msgs/ParkingLotTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParkingLotTypeEnum>)))
  "Returns md5sum for a message object of type '<ParkingLotTypeEnum>"
  "846d4f08b7de51f0bc80f53fe295ef5e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParkingLotTypeEnum)))
  "Returns md5sum for a message object of type 'ParkingLotTypeEnum"
  "846d4f08b7de51f0bc80f53fe295ef5e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParkingLotTypeEnum>)))
  "Returns full string definition for message of type '<ParkingLotTypeEnum>"
  (cl:format cl:nil "uint8 PNP = 0~%uint8 LPNP = 1~%uint8 BOTH = 2~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParkingLotTypeEnum)))
  "Returns full string definition for message of type 'ParkingLotTypeEnum"
  (cl:format cl:nil "uint8 PNP = 0~%uint8 LPNP = 1~%uint8 BOTH = 2~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParkingLotTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParkingLotTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'ParkingLotTypeEnum
    (cl:cons ':type (type msg))
))
