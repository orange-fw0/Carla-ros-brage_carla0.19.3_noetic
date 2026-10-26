; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude WrlsChrgWifiSts.msg.html

(cl:defclass <WrlsChrgWifiSts> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WrlsChrgWifiSts (<WrlsChrgWifiSts>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WrlsChrgWifiSts>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WrlsChrgWifiSts)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<WrlsChrgWifiSts> is deprecated: use endpoint_msgs-msg:WrlsChrgWifiSts instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <WrlsChrgWifiSts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WrlsChrgWifiSts>)))
    "Constants for message type '<WrlsChrgWifiSts>"
  '((:WIRELESS_CHARGER_WIFI_DEFAULT . 0)
    (:WIRELESS_CHARGER_WIFI_ON . 1)
    (:WIRELESS_CHARGER_WIFI_OFF . 2)
    (:WIRELESS_CHARGER_WIFI_CONNECTED . 3)
    (:WIRELESS_CHARGER_WIFI_FAILURE . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WrlsChrgWifiSts)))
    "Constants for message type 'WrlsChrgWifiSts"
  '((:WIRELESS_CHARGER_WIFI_DEFAULT . 0)
    (:WIRELESS_CHARGER_WIFI_ON . 1)
    (:WIRELESS_CHARGER_WIFI_OFF . 2)
    (:WIRELESS_CHARGER_WIFI_CONNECTED . 3)
    (:WIRELESS_CHARGER_WIFI_FAILURE . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WrlsChrgWifiSts>) ostream)
  "Serializes a message object of type '<WrlsChrgWifiSts>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WrlsChrgWifiSts>) istream)
  "Deserializes a message object of type '<WrlsChrgWifiSts>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WrlsChrgWifiSts>)))
  "Returns string type for a message object of type '<WrlsChrgWifiSts>"
  "endpoint_msgs/WrlsChrgWifiSts")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WrlsChrgWifiSts)))
  "Returns string type for a message object of type 'WrlsChrgWifiSts"
  "endpoint_msgs/WrlsChrgWifiSts")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WrlsChrgWifiSts>)))
  "Returns md5sum for a message object of type '<WrlsChrgWifiSts>"
  "83dd379851b40f377025ae9089e3cd36")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WrlsChrgWifiSts)))
  "Returns md5sum for a message object of type 'WrlsChrgWifiSts"
  "83dd379851b40f377025ae9089e3cd36")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WrlsChrgWifiSts>)))
  "Returns full string definition for message of type '<WrlsChrgWifiSts>"
  (cl:format cl:nil "uint8 WIRELESS_CHARGER_WIFI_DEFAULT = 0~%uint8 WIRELESS_CHARGER_WIFI_ON = 1~%uint8 WIRELESS_CHARGER_WIFI_OFF = 2~%uint8 WIRELESS_CHARGER_WIFI_CONNECTED = 3~%uint8 WIRELESS_CHARGER_WIFI_FAILURE = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WrlsChrgWifiSts)))
  "Returns full string definition for message of type 'WrlsChrgWifiSts"
  (cl:format cl:nil "uint8 WIRELESS_CHARGER_WIFI_DEFAULT = 0~%uint8 WIRELESS_CHARGER_WIFI_ON = 1~%uint8 WIRELESS_CHARGER_WIFI_OFF = 2~%uint8 WIRELESS_CHARGER_WIFI_CONNECTED = 3~%uint8 WIRELESS_CHARGER_WIFI_FAILURE = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WrlsChrgWifiSts>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WrlsChrgWifiSts>))
  "Converts a ROS message object to a list"
  (cl:list 'WrlsChrgWifiSts
    (cl:cons ':value (value msg))
))
