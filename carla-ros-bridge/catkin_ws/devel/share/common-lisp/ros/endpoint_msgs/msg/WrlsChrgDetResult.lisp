; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude WrlsChrgDetResult.msg.html

(cl:defclass <WrlsChrgDetResult> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WrlsChrgDetResult (<WrlsChrgDetResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WrlsChrgDetResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WrlsChrgDetResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<WrlsChrgDetResult> is deprecated: use endpoint_msgs-msg:WrlsChrgDetResult instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <WrlsChrgDetResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WrlsChrgDetResult>)))
    "Constants for message type '<WrlsChrgDetResult>"
  '((:WIRELESS_CHARGER_DETECED_RESULT_DEFAULT . 0)
    (:WIRELESS_CHARGER_DETECED_RESULT_OK . 1)
    (:WIRELESS_CHARGER_DETECED_RESULT_OFFSET_X_NOT_OK . 2)
    (:WIRELESS_CHARGER_DETECED_RESULT_OFFSET_Y_NOT_OK . 3)
    (:WIRELESS_CHARGER_DETECED_RESULT_OFFSET_XY_NOT_OK . 4)
    (:WIRELESS_CHARGER_DETECED_RESULT_METAL . 5)
    (:WIRELESS_CHARGER_DETECED_RESULT_LIVING . 6)
    (:WIRELESS_CHARGER_DETECED_RESULT_METAL_OFFSET_NOT_OK . 7)
    (:WIRELESS_CHARGER_DETECED_RESULT_NETA_LIVING . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WrlsChrgDetResult)))
    "Constants for message type 'WrlsChrgDetResult"
  '((:WIRELESS_CHARGER_DETECED_RESULT_DEFAULT . 0)
    (:WIRELESS_CHARGER_DETECED_RESULT_OK . 1)
    (:WIRELESS_CHARGER_DETECED_RESULT_OFFSET_X_NOT_OK . 2)
    (:WIRELESS_CHARGER_DETECED_RESULT_OFFSET_Y_NOT_OK . 3)
    (:WIRELESS_CHARGER_DETECED_RESULT_OFFSET_XY_NOT_OK . 4)
    (:WIRELESS_CHARGER_DETECED_RESULT_METAL . 5)
    (:WIRELESS_CHARGER_DETECED_RESULT_LIVING . 6)
    (:WIRELESS_CHARGER_DETECED_RESULT_METAL_OFFSET_NOT_OK . 7)
    (:WIRELESS_CHARGER_DETECED_RESULT_NETA_LIVING . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WrlsChrgDetResult>) ostream)
  "Serializes a message object of type '<WrlsChrgDetResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WrlsChrgDetResult>) istream)
  "Deserializes a message object of type '<WrlsChrgDetResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WrlsChrgDetResult>)))
  "Returns string type for a message object of type '<WrlsChrgDetResult>"
  "endpoint_msgs/WrlsChrgDetResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WrlsChrgDetResult)))
  "Returns string type for a message object of type 'WrlsChrgDetResult"
  "endpoint_msgs/WrlsChrgDetResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WrlsChrgDetResult>)))
  "Returns md5sum for a message object of type '<WrlsChrgDetResult>"
  "d46664860429aa7df0e64f40ff5f26c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WrlsChrgDetResult)))
  "Returns md5sum for a message object of type 'WrlsChrgDetResult"
  "d46664860429aa7df0e64f40ff5f26c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WrlsChrgDetResult>)))
  "Returns full string definition for message of type '<WrlsChrgDetResult>"
  (cl:format cl:nil "uint8 WIRELESS_CHARGER_DETECED_RESULT_DEFAULT = 0~%uint8 WIRELESS_CHARGER_DETECED_RESULT_OK = 1~%uint8 WIRELESS_CHARGER_DETECED_RESULT_OFFSET_X_NOT_OK = 2~%uint8 WIRELESS_CHARGER_DETECED_RESULT_OFFSET_Y_NOT_OK = 3~%uint8 WIRELESS_CHARGER_DETECED_RESULT_OFFSET_XY_NOT_OK = 4~%uint8 WIRELESS_CHARGER_DETECED_RESULT_METAL = 5~%uint8 WIRELESS_CHARGER_DETECED_RESULT_LIVING = 6~%uint8 WIRELESS_CHARGER_DETECED_RESULT_METAL_OFFSET_NOT_OK = 7~%uint8 WIRELESS_CHARGER_DETECED_RESULT_NETA_LIVING = 8~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WrlsChrgDetResult)))
  "Returns full string definition for message of type 'WrlsChrgDetResult"
  (cl:format cl:nil "uint8 WIRELESS_CHARGER_DETECED_RESULT_DEFAULT = 0~%uint8 WIRELESS_CHARGER_DETECED_RESULT_OK = 1~%uint8 WIRELESS_CHARGER_DETECED_RESULT_OFFSET_X_NOT_OK = 2~%uint8 WIRELESS_CHARGER_DETECED_RESULT_OFFSET_Y_NOT_OK = 3~%uint8 WIRELESS_CHARGER_DETECED_RESULT_OFFSET_XY_NOT_OK = 4~%uint8 WIRELESS_CHARGER_DETECED_RESULT_METAL = 5~%uint8 WIRELESS_CHARGER_DETECED_RESULT_LIVING = 6~%uint8 WIRELESS_CHARGER_DETECED_RESULT_METAL_OFFSET_NOT_OK = 7~%uint8 WIRELESS_CHARGER_DETECED_RESULT_NETA_LIVING = 8~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WrlsChrgDetResult>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WrlsChrgDetResult>))
  "Converts a ROS message object to a list"
  (cl:list 'WrlsChrgDetResult
    (cl:cons ':value (value msg))
))
