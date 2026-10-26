; Auto-generated. Do not edit!


(cl:in-package sensor_interface_msgs-msg)


;//! \htmlinclude UssMeaMode.msg.html

(cl:defclass <UssMeaMode> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass UssMeaMode (<UssMeaMode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UssMeaMode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UssMeaMode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_interface_msgs-msg:<UssMeaMode> is deprecated: use sensor_interface_msgs-msg:UssMeaMode instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <UssMeaMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:value-val is deprecated.  Use sensor_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<UssMeaMode>)))
    "Constants for message type '<UssMeaMode>"
  '((:MEAS_MODE_NEAR_RANGE_AM . 0)
    (:MEAS_MODE_DUAL_AM_LOW . 1)
    (:MEAS_MODE_DUAL_AM_HIGH . 2)
    (:MEAS_MODE_DUAL_CHIRP_LOW . 3)
    (:MEAS_MODE_DUAL_CHIRP_HIGH . 4)
    (:MEAS_MODE_SINGLE_CHIRP_UP . 5)
    (:MEAS_MODE_SINGLE_CHIRP_DOWN . 6)
    (:MEAS_MODE_RESERVED . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'UssMeaMode)))
    "Constants for message type 'UssMeaMode"
  '((:MEAS_MODE_NEAR_RANGE_AM . 0)
    (:MEAS_MODE_DUAL_AM_LOW . 1)
    (:MEAS_MODE_DUAL_AM_HIGH . 2)
    (:MEAS_MODE_DUAL_CHIRP_LOW . 3)
    (:MEAS_MODE_DUAL_CHIRP_HIGH . 4)
    (:MEAS_MODE_SINGLE_CHIRP_UP . 5)
    (:MEAS_MODE_SINGLE_CHIRP_DOWN . 6)
    (:MEAS_MODE_RESERVED . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UssMeaMode>) ostream)
  "Serializes a message object of type '<UssMeaMode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UssMeaMode>) istream)
  "Deserializes a message object of type '<UssMeaMode>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UssMeaMode>)))
  "Returns string type for a message object of type '<UssMeaMode>"
  "sensor_interface_msgs/UssMeaMode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UssMeaMode)))
  "Returns string type for a message object of type 'UssMeaMode"
  "sensor_interface_msgs/UssMeaMode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UssMeaMode>)))
  "Returns md5sum for a message object of type '<UssMeaMode>"
  "63cc688adee39f3e3ab3665399419f9b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UssMeaMode)))
  "Returns md5sum for a message object of type 'UssMeaMode"
  "63cc688adee39f3e3ab3665399419f9b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UssMeaMode>)))
  "Returns full string definition for message of type '<UssMeaMode>"
  (cl:format cl:nil "uint8 MEAS_MODE_NEAR_RANGE_AM = 0~%uint8 MEAS_MODE_DUAL_AM_LOW = 1~%uint8 MEAS_MODE_DUAL_AM_HIGH = 2~%uint8 MEAS_MODE_DUAL_CHIRP_LOW = 3~%uint8 MEAS_MODE_DUAL_CHIRP_HIGH = 4~%uint8 MEAS_MODE_SINGLE_CHIRP_UP = 5~%uint8 MEAS_MODE_SINGLE_CHIRP_DOWN = 6~%uint8 MEAS_MODE_RESERVED = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UssMeaMode)))
  "Returns full string definition for message of type 'UssMeaMode"
  (cl:format cl:nil "uint8 MEAS_MODE_NEAR_RANGE_AM = 0~%uint8 MEAS_MODE_DUAL_AM_LOW = 1~%uint8 MEAS_MODE_DUAL_AM_HIGH = 2~%uint8 MEAS_MODE_DUAL_CHIRP_LOW = 3~%uint8 MEAS_MODE_DUAL_CHIRP_HIGH = 4~%uint8 MEAS_MODE_SINGLE_CHIRP_UP = 5~%uint8 MEAS_MODE_SINGLE_CHIRP_DOWN = 6~%uint8 MEAS_MODE_RESERVED = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UssMeaMode>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UssMeaMode>))
  "Converts a ROS message object to a list"
  (cl:list 'UssMeaMode
    (cl:cons ':value (value msg))
))
