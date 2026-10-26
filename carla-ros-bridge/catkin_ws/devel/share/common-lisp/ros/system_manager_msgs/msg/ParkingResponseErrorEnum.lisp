; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude ParkingResponseErrorEnum.msg.html

(cl:defclass <ParkingResponseErrorEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ParkingResponseErrorEnum (<ParkingResponseErrorEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParkingResponseErrorEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParkingResponseErrorEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<ParkingResponseErrorEnum> is deprecated: use system_manager_msgs-msg:ParkingResponseErrorEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ParkingResponseErrorEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:value-val is deprecated.  Use system_manager_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ParkingResponseErrorEnum>)))
    "Constants for message type '<ParkingResponseErrorEnum>"
  '((:SUCCESS . 0)
    (:SEARCH_RESULT_EMPTY . 1)
    (:LOAD_LPNP_FAILED . 2)
    (:LOAD_PNP_FAILED . 3)
    (:DELETE_FAILED . 4)
    (:RENAME_FAILED . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ParkingResponseErrorEnum)))
    "Constants for message type 'ParkingResponseErrorEnum"
  '((:SUCCESS . 0)
    (:SEARCH_RESULT_EMPTY . 1)
    (:LOAD_LPNP_FAILED . 2)
    (:LOAD_PNP_FAILED . 3)
    (:DELETE_FAILED . 4)
    (:RENAME_FAILED . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParkingResponseErrorEnum>) ostream)
  "Serializes a message object of type '<ParkingResponseErrorEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParkingResponseErrorEnum>) istream)
  "Deserializes a message object of type '<ParkingResponseErrorEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParkingResponseErrorEnum>)))
  "Returns string type for a message object of type '<ParkingResponseErrorEnum>"
  "system_manager_msgs/ParkingResponseErrorEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParkingResponseErrorEnum)))
  "Returns string type for a message object of type 'ParkingResponseErrorEnum"
  "system_manager_msgs/ParkingResponseErrorEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParkingResponseErrorEnum>)))
  "Returns md5sum for a message object of type '<ParkingResponseErrorEnum>"
  "5b2bc1328a5fc36948e9bd00e3fda119")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParkingResponseErrorEnum)))
  "Returns md5sum for a message object of type 'ParkingResponseErrorEnum"
  "5b2bc1328a5fc36948e9bd00e3fda119")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParkingResponseErrorEnum>)))
  "Returns full string definition for message of type '<ParkingResponseErrorEnum>"
  (cl:format cl:nil "uint8 SUCCESS = 0~%uint8 SEARCH_RESULT_EMPTY = 1~%uint8 LOAD_LPNP_FAILED = 2~%uint8 LOAD_PNP_FAILED = 3~%uint8 DELETE_FAILED = 4~%uint8 RENAME_FAILED = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParkingResponseErrorEnum)))
  "Returns full string definition for message of type 'ParkingResponseErrorEnum"
  (cl:format cl:nil "uint8 SUCCESS = 0~%uint8 SEARCH_RESULT_EMPTY = 1~%uint8 LOAD_LPNP_FAILED = 2~%uint8 LOAD_PNP_FAILED = 3~%uint8 DELETE_FAILED = 4~%uint8 RENAME_FAILED = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParkingResponseErrorEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParkingResponseErrorEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'ParkingResponseErrorEnum
    (cl:cons ':value (value msg))
))
