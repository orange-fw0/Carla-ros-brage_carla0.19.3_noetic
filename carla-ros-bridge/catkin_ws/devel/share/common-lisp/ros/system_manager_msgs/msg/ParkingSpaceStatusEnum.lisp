; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude ParkingSpaceStatusEnum.msg.html

(cl:defclass <ParkingSpaceStatusEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ParkingSpaceStatusEnum (<ParkingSpaceStatusEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParkingSpaceStatusEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParkingSpaceStatusEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<ParkingSpaceStatusEnum> is deprecated: use system_manager_msgs-msg:ParkingSpaceStatusEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ParkingSpaceStatusEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:value-val is deprecated.  Use system_manager_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ParkingSpaceStatusEnum>)))
    "Constants for message type '<ParkingSpaceStatusEnum>"
  '((:NO_INFORMATION . 0)
    (:PARKING_SPACE_VACANT . 1)
    (:PARKING_SPACE_OCCUPIED . 2)
    (:PARKING_SPACE_HIGHLIGHT . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ParkingSpaceStatusEnum)))
    "Constants for message type 'ParkingSpaceStatusEnum"
  '((:NO_INFORMATION . 0)
    (:PARKING_SPACE_VACANT . 1)
    (:PARKING_SPACE_OCCUPIED . 2)
    (:PARKING_SPACE_HIGHLIGHT . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParkingSpaceStatusEnum>) ostream)
  "Serializes a message object of type '<ParkingSpaceStatusEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParkingSpaceStatusEnum>) istream)
  "Deserializes a message object of type '<ParkingSpaceStatusEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParkingSpaceStatusEnum>)))
  "Returns string type for a message object of type '<ParkingSpaceStatusEnum>"
  "system_manager_msgs/ParkingSpaceStatusEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParkingSpaceStatusEnum)))
  "Returns string type for a message object of type 'ParkingSpaceStatusEnum"
  "system_manager_msgs/ParkingSpaceStatusEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParkingSpaceStatusEnum>)))
  "Returns md5sum for a message object of type '<ParkingSpaceStatusEnum>"
  "9836ee2f07deca839e9562ed9e3f7b08")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParkingSpaceStatusEnum)))
  "Returns md5sum for a message object of type 'ParkingSpaceStatusEnum"
  "9836ee2f07deca839e9562ed9e3f7b08")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParkingSpaceStatusEnum>)))
  "Returns full string definition for message of type '<ParkingSpaceStatusEnum>"
  (cl:format cl:nil "uint8 NO_INFORMATION = 0~%uint8 PARKING_SPACE_VACANT = 1~%uint8 PARKING_SPACE_OCCUPIED = 2~%uint8 PARKING_SPACE_HIGHLIGHT = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParkingSpaceStatusEnum)))
  "Returns full string definition for message of type 'ParkingSpaceStatusEnum"
  (cl:format cl:nil "uint8 NO_INFORMATION = 0~%uint8 PARKING_SPACE_VACANT = 1~%uint8 PARKING_SPACE_OCCUPIED = 2~%uint8 PARKING_SPACE_HIGHLIGHT = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParkingSpaceStatusEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParkingSpaceStatusEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'ParkingSpaceStatusEnum
    (cl:cons ':value (value msg))
))
