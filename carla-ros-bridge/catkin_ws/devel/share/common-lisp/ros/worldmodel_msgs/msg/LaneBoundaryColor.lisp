; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude LaneBoundaryColor.msg.html

(cl:defclass <LaneBoundaryColor> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LaneBoundaryColor (<LaneBoundaryColor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneBoundaryColor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneBoundaryColor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<LaneBoundaryColor> is deprecated: use worldmodel_msgs-msg:LaneBoundaryColor instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LaneBoundaryColor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:value-val is deprecated.  Use worldmodel_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LaneBoundaryColor>)))
    "Constants for message type '<LaneBoundaryColor>"
  '((:WHITE . 0)
    (:YELLOW . 1)
    (:OTHER . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LaneBoundaryColor)))
    "Constants for message type 'LaneBoundaryColor"
  '((:WHITE . 0)
    (:YELLOW . 1)
    (:OTHER . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneBoundaryColor>) ostream)
  "Serializes a message object of type '<LaneBoundaryColor>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneBoundaryColor>) istream)
  "Deserializes a message object of type '<LaneBoundaryColor>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneBoundaryColor>)))
  "Returns string type for a message object of type '<LaneBoundaryColor>"
  "worldmodel_msgs/LaneBoundaryColor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneBoundaryColor)))
  "Returns string type for a message object of type 'LaneBoundaryColor"
  "worldmodel_msgs/LaneBoundaryColor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneBoundaryColor>)))
  "Returns md5sum for a message object of type '<LaneBoundaryColor>"
  "ec5666af3942c179e871a3d8706ad8dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneBoundaryColor)))
  "Returns md5sum for a message object of type 'LaneBoundaryColor"
  "ec5666af3942c179e871a3d8706ad8dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneBoundaryColor>)))
  "Returns full string definition for message of type '<LaneBoundaryColor>"
  (cl:format cl:nil "uint8 WHITE = 0~%uint8 YELLOW = 1~%uint8 OTHER = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneBoundaryColor)))
  "Returns full string definition for message of type 'LaneBoundaryColor"
  (cl:format cl:nil "uint8 WHITE = 0~%uint8 YELLOW = 1~%uint8 OTHER = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneBoundaryColor>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneBoundaryColor>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneBoundaryColor
    (cl:cons ':value (value msg))
))
