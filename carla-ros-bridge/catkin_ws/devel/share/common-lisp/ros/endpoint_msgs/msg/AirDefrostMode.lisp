; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude AirDefrostMode.msg.html

(cl:defclass <AirDefrostMode> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AirDefrostMode (<AirDefrostMode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AirDefrostMode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AirDefrostMode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<AirDefrostMode> is deprecated: use endpoint_msgs-msg:AirDefrostMode instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <AirDefrostMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AirDefrostMode>)))
    "Constants for message type '<AirDefrostMode>"
  '((:AIR_DEFROS_MODE_OFF . 0)
    (:AIR_DEFROS_MODE_FONT . 1)
    (:AIR_DEFROS_MODE_REAR . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AirDefrostMode)))
    "Constants for message type 'AirDefrostMode"
  '((:AIR_DEFROS_MODE_OFF . 0)
    (:AIR_DEFROS_MODE_FONT . 1)
    (:AIR_DEFROS_MODE_REAR . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AirDefrostMode>) ostream)
  "Serializes a message object of type '<AirDefrostMode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AirDefrostMode>) istream)
  "Deserializes a message object of type '<AirDefrostMode>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AirDefrostMode>)))
  "Returns string type for a message object of type '<AirDefrostMode>"
  "endpoint_msgs/AirDefrostMode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AirDefrostMode)))
  "Returns string type for a message object of type 'AirDefrostMode"
  "endpoint_msgs/AirDefrostMode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AirDefrostMode>)))
  "Returns md5sum for a message object of type '<AirDefrostMode>"
  "46fcc70554196316c86c618517a35d9d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AirDefrostMode)))
  "Returns md5sum for a message object of type 'AirDefrostMode"
  "46fcc70554196316c86c618517a35d9d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AirDefrostMode>)))
  "Returns full string definition for message of type '<AirDefrostMode>"
  (cl:format cl:nil "uint8 AIR_DEFROS_MODE_OFF = 0~%uint8 AIR_DEFROS_MODE_FONT = 1~%uint8 AIR_DEFROS_MODE_REAR = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AirDefrostMode)))
  "Returns full string definition for message of type 'AirDefrostMode"
  (cl:format cl:nil "uint8 AIR_DEFROS_MODE_OFF = 0~%uint8 AIR_DEFROS_MODE_FONT = 1~%uint8 AIR_DEFROS_MODE_REAR = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AirDefrostMode>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AirDefrostMode>))
  "Converts a ROS message object to a list"
  (cl:list 'AirDefrostMode
    (cl:cons ':value (value msg))
))
