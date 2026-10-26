; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude ParkingQueryModeEnum.msg.html

(cl:defclass <ParkingQueryModeEnum> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ParkingQueryModeEnum (<ParkingQueryModeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParkingQueryModeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParkingQueryModeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<ParkingQueryModeEnum> is deprecated: use system_manager_msgs-msg:ParkingQueryModeEnum instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <ParkingQueryModeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:mode-val is deprecated.  Use system_manager_msgs-msg:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ParkingQueryModeEnum>)))
    "Constants for message type '<ParkingQueryModeEnum>"
  '((:BY_RANGE . 0)
    (:BY_LAST_USAGE . 1)
    (:BY_LATEST_BUILD . 2)
    (:BY_SPECIFIC_ID . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ParkingQueryModeEnum)))
    "Constants for message type 'ParkingQueryModeEnum"
  '((:BY_RANGE . 0)
    (:BY_LAST_USAGE . 1)
    (:BY_LATEST_BUILD . 2)
    (:BY_SPECIFIC_ID . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParkingQueryModeEnum>) ostream)
  "Serializes a message object of type '<ParkingQueryModeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParkingQueryModeEnum>) istream)
  "Deserializes a message object of type '<ParkingQueryModeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParkingQueryModeEnum>)))
  "Returns string type for a message object of type '<ParkingQueryModeEnum>"
  "system_manager_msgs/ParkingQueryModeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParkingQueryModeEnum)))
  "Returns string type for a message object of type 'ParkingQueryModeEnum"
  "system_manager_msgs/ParkingQueryModeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParkingQueryModeEnum>)))
  "Returns md5sum for a message object of type '<ParkingQueryModeEnum>"
  "c7009d576b7bd2aba6766ac4b00f28f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParkingQueryModeEnum)))
  "Returns md5sum for a message object of type 'ParkingQueryModeEnum"
  "c7009d576b7bd2aba6766ac4b00f28f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParkingQueryModeEnum>)))
  "Returns full string definition for message of type '<ParkingQueryModeEnum>"
  (cl:format cl:nil "uint8 BY_RANGE = 0~%uint8 BY_LAST_USAGE = 1~%uint8 BY_LATEST_BUILD = 2~%uint8 BY_SPECIFIC_ID = 3~%uint8 mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParkingQueryModeEnum)))
  "Returns full string definition for message of type 'ParkingQueryModeEnum"
  (cl:format cl:nil "uint8 BY_RANGE = 0~%uint8 BY_LAST_USAGE = 1~%uint8 BY_LATEST_BUILD = 2~%uint8 BY_SPECIFIC_ID = 3~%uint8 mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParkingQueryModeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParkingQueryModeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'ParkingQueryModeEnum
    (cl:cons ':mode (mode msg))
))
