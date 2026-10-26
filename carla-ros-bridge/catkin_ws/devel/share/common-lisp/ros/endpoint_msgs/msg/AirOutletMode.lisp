; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude AirOutletMode.msg.html

(cl:defclass <AirOutletMode> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AirOutletMode (<AirOutletMode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AirOutletMode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AirOutletMode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<AirOutletMode> is deprecated: use endpoint_msgs-msg:AirOutletMode instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <AirOutletMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AirOutletMode>)))
    "Constants for message type '<AirOutletMode>"
  '((:AIR_OUTLET_MODE_FACE . 0)
    (:AIR_OUTLET_MODE_FOOT . 1)
    (:AIR_OUTLET_MODE_BODY . 2)
    (:AIR_OUTLET_MODE_KNEE . 3)
    (:AIR_OUTLET_MODE_AUTO . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AirOutletMode)))
    "Constants for message type 'AirOutletMode"
  '((:AIR_OUTLET_MODE_FACE . 0)
    (:AIR_OUTLET_MODE_FOOT . 1)
    (:AIR_OUTLET_MODE_BODY . 2)
    (:AIR_OUTLET_MODE_KNEE . 3)
    (:AIR_OUTLET_MODE_AUTO . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AirOutletMode>) ostream)
  "Serializes a message object of type '<AirOutletMode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AirOutletMode>) istream)
  "Deserializes a message object of type '<AirOutletMode>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AirOutletMode>)))
  "Returns string type for a message object of type '<AirOutletMode>"
  "endpoint_msgs/AirOutletMode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AirOutletMode)))
  "Returns string type for a message object of type 'AirOutletMode"
  "endpoint_msgs/AirOutletMode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AirOutletMode>)))
  "Returns md5sum for a message object of type '<AirOutletMode>"
  "b18906e71a21aac7a4a12ccba961194b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AirOutletMode)))
  "Returns md5sum for a message object of type 'AirOutletMode"
  "b18906e71a21aac7a4a12ccba961194b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AirOutletMode>)))
  "Returns full string definition for message of type '<AirOutletMode>"
  (cl:format cl:nil "uint8 AIR_OUTLET_MODE_FACE = 0~%uint8 AIR_OUTLET_MODE_FOOT = 1~%uint8 AIR_OUTLET_MODE_BODY = 2~%uint8 AIR_OUTLET_MODE_KNEE = 3~%uint8 AIR_OUTLET_MODE_AUTO = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AirOutletMode)))
  "Returns full string definition for message of type 'AirOutletMode"
  (cl:format cl:nil "uint8 AIR_OUTLET_MODE_FACE = 0~%uint8 AIR_OUTLET_MODE_FOOT = 1~%uint8 AIR_OUTLET_MODE_BODY = 2~%uint8 AIR_OUTLET_MODE_KNEE = 3~%uint8 AIR_OUTLET_MODE_AUTO = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AirOutletMode>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AirOutletMode>))
  "Converts a ROS message object to a list"
  (cl:list 'AirOutletMode
    (cl:cons ':value (value msg))
))
