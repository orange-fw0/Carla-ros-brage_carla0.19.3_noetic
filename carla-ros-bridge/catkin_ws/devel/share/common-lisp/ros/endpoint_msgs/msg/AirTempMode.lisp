; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude AirTempMode.msg.html

(cl:defclass <AirTempMode> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AirTempMode (<AirTempMode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AirTempMode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AirTempMode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<AirTempMode> is deprecated: use endpoint_msgs-msg:AirTempMode instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <AirTempMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AirTempMode>)))
    "Constants for message type '<AirTempMode>"
  '((:AIR_TEMP_MODE_NORMAL . 0)
    (:AIR_TEMP_MODE_COLD . 1)
    (:AIR_TEMP_MODE_HOT . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AirTempMode)))
    "Constants for message type 'AirTempMode"
  '((:AIR_TEMP_MODE_NORMAL . 0)
    (:AIR_TEMP_MODE_COLD . 1)
    (:AIR_TEMP_MODE_HOT . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AirTempMode>) ostream)
  "Serializes a message object of type '<AirTempMode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AirTempMode>) istream)
  "Deserializes a message object of type '<AirTempMode>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AirTempMode>)))
  "Returns string type for a message object of type '<AirTempMode>"
  "endpoint_msgs/AirTempMode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AirTempMode)))
  "Returns string type for a message object of type 'AirTempMode"
  "endpoint_msgs/AirTempMode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AirTempMode>)))
  "Returns md5sum for a message object of type '<AirTempMode>"
  "959ee8d2536415cb0e93a197e442a32b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AirTempMode)))
  "Returns md5sum for a message object of type 'AirTempMode"
  "959ee8d2536415cb0e93a197e442a32b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AirTempMode>)))
  "Returns full string definition for message of type '<AirTempMode>"
  (cl:format cl:nil "uint8 AIR_TEMP_MODE_NORMAL = 0~%uint8 AIR_TEMP_MODE_COLD = 1~%uint8 AIR_TEMP_MODE_HOT = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AirTempMode)))
  "Returns full string definition for message of type 'AirTempMode"
  (cl:format cl:nil "uint8 AIR_TEMP_MODE_NORMAL = 0~%uint8 AIR_TEMP_MODE_COLD = 1~%uint8 AIR_TEMP_MODE_HOT = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AirTempMode>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AirTempMode>))
  "Converts a ROS message object to a list"
  (cl:list 'AirTempMode
    (cl:cons ':value (value msg))
))
