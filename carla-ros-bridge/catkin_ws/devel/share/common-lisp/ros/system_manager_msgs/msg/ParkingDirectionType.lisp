; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude ParkingDirectionType.msg.html

(cl:defclass <ParkingDirectionType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass ParkingDirectionType (<ParkingDirectionType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParkingDirectionType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParkingDirectionType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<ParkingDirectionType> is deprecated: use system_manager_msgs-msg:ParkingDirectionType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ParkingDirectionType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:value-val is deprecated.  Use system_manager_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ParkingDirectionType>)))
    "Constants for message type '<ParkingDirectionType>"
  '((:AUTO_SELECT . 0)
    (:PERPENDICULAR_FRONT_OUT . 1)
    (:PERPENDICULAR_FRONT_LEFT_OUT . 2)
    (:PERPENDICULAR_FRONT_RIGHT_OUT . 4)
    (:PERPENDICULAR_REAR_OUT . 8)
    (:PERPENDICULAR_REAR_LEFT_OUT . 16)
    (:PERPENDICULAR_REAR_RIGHT_OUT . 32)
    (:PARALLEL_LEFT_OUT . 64)
    (:PARALLEL_LEFT_FRONT_OUT . 128)
    (:PARALLEL_RIGHT_OUT . 256)
    (:PARALLEL_RIGHT_FRONT_OUT . 512)
    (:FRONT_IN . 2001)
    (:BACK_IN . 2002))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ParkingDirectionType)))
    "Constants for message type 'ParkingDirectionType"
  '((:AUTO_SELECT . 0)
    (:PERPENDICULAR_FRONT_OUT . 1)
    (:PERPENDICULAR_FRONT_LEFT_OUT . 2)
    (:PERPENDICULAR_FRONT_RIGHT_OUT . 4)
    (:PERPENDICULAR_REAR_OUT . 8)
    (:PERPENDICULAR_REAR_LEFT_OUT . 16)
    (:PERPENDICULAR_REAR_RIGHT_OUT . 32)
    (:PARALLEL_LEFT_OUT . 64)
    (:PARALLEL_LEFT_FRONT_OUT . 128)
    (:PARALLEL_RIGHT_OUT . 256)
    (:PARALLEL_RIGHT_FRONT_OUT . 512)
    (:FRONT_IN . 2001)
    (:BACK_IN . 2002))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParkingDirectionType>) ostream)
  "Serializes a message object of type '<ParkingDirectionType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParkingDirectionType>) istream)
  "Deserializes a message object of type '<ParkingDirectionType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParkingDirectionType>)))
  "Returns string type for a message object of type '<ParkingDirectionType>"
  "system_manager_msgs/ParkingDirectionType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParkingDirectionType)))
  "Returns string type for a message object of type 'ParkingDirectionType"
  "system_manager_msgs/ParkingDirectionType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParkingDirectionType>)))
  "Returns md5sum for a message object of type '<ParkingDirectionType>"
  "7e366f900d7fe76523fbf538da434f20")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParkingDirectionType)))
  "Returns md5sum for a message object of type 'ParkingDirectionType"
  "7e366f900d7fe76523fbf538da434f20")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParkingDirectionType>)))
  "Returns full string definition for message of type '<ParkingDirectionType>"
  (cl:format cl:nil "uint32 AUTO_SELECT = 0~%uint32 PERPENDICULAR_FRONT_OUT = 1~%uint32 PERPENDICULAR_FRONT_LEFT_OUT = 2~%uint32 PERPENDICULAR_FRONT_RIGHT_OUT = 4~%uint32 PERPENDICULAR_REAR_OUT = 8~%uint32 PERPENDICULAR_REAR_LEFT_OUT = 16~%uint32 PERPENDICULAR_REAR_RIGHT_OUT = 32~%uint32 PARALLEL_LEFT_OUT = 64~%uint32 PARALLEL_LEFT_FRONT_OUT = 128~%uint32 PARALLEL_RIGHT_OUT = 256~%uint32 PARALLEL_RIGHT_FRONT_OUT = 512~%uint32 FRONT_IN = 2001~%uint32 BACK_IN = 2002~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParkingDirectionType)))
  "Returns full string definition for message of type 'ParkingDirectionType"
  (cl:format cl:nil "uint32 AUTO_SELECT = 0~%uint32 PERPENDICULAR_FRONT_OUT = 1~%uint32 PERPENDICULAR_FRONT_LEFT_OUT = 2~%uint32 PERPENDICULAR_FRONT_RIGHT_OUT = 4~%uint32 PERPENDICULAR_REAR_OUT = 8~%uint32 PERPENDICULAR_REAR_LEFT_OUT = 16~%uint32 PERPENDICULAR_REAR_RIGHT_OUT = 32~%uint32 PARALLEL_LEFT_OUT = 64~%uint32 PARALLEL_LEFT_FRONT_OUT = 128~%uint32 PARALLEL_RIGHT_OUT = 256~%uint32 PARALLEL_RIGHT_FRONT_OUT = 512~%uint32 FRONT_IN = 2001~%uint32 BACK_IN = 2002~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParkingDirectionType>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParkingDirectionType>))
  "Converts a ROS message object to a list"
  (cl:list 'ParkingDirectionType
    (cl:cons ':value (value msg))
))
