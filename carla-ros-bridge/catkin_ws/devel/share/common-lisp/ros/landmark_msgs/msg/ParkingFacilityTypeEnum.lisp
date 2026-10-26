; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude ParkingFacilityTypeEnum.msg.html

(cl:defclass <ParkingFacilityTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ParkingFacilityTypeEnum (<ParkingFacilityTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParkingFacilityTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParkingFacilityTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<ParkingFacilityTypeEnum> is deprecated: use landmark_msgs-msg:ParkingFacilityTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ParkingFacilityTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ParkingFacilityTypeEnum>)))
    "Constants for message type '<ParkingFacilityTypeEnum>"
  '((:PARKING_FACILITY_TYPE_UNKNOWN . 0)
    (:PARKING_FACILITY_TYPE_FLOOR . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ParkingFacilityTypeEnum)))
    "Constants for message type 'ParkingFacilityTypeEnum"
  '((:PARKING_FACILITY_TYPE_UNKNOWN . 0)
    (:PARKING_FACILITY_TYPE_FLOOR . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParkingFacilityTypeEnum>) ostream)
  "Serializes a message object of type '<ParkingFacilityTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParkingFacilityTypeEnum>) istream)
  "Deserializes a message object of type '<ParkingFacilityTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParkingFacilityTypeEnum>)))
  "Returns string type for a message object of type '<ParkingFacilityTypeEnum>"
  "landmark_msgs/ParkingFacilityTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParkingFacilityTypeEnum)))
  "Returns string type for a message object of type 'ParkingFacilityTypeEnum"
  "landmark_msgs/ParkingFacilityTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParkingFacilityTypeEnum>)))
  "Returns md5sum for a message object of type '<ParkingFacilityTypeEnum>"
  "079aed9017c51a7e76e82b338255f8d5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParkingFacilityTypeEnum)))
  "Returns md5sum for a message object of type 'ParkingFacilityTypeEnum"
  "079aed9017c51a7e76e82b338255f8d5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParkingFacilityTypeEnum>)))
  "Returns full string definition for message of type '<ParkingFacilityTypeEnum>"
  (cl:format cl:nil "uint8 PARKING_FACILITY_TYPE_UNKNOWN = 0~%uint8 PARKING_FACILITY_TYPE_FLOOR = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParkingFacilityTypeEnum)))
  "Returns full string definition for message of type 'ParkingFacilityTypeEnum"
  (cl:format cl:nil "uint8 PARKING_FACILITY_TYPE_UNKNOWN = 0~%uint8 PARKING_FACILITY_TYPE_FLOOR = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParkingFacilityTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParkingFacilityTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'ParkingFacilityTypeEnum
    (cl:cons ':value (value msg))
))
