; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude LaneBoundaryWidth.msg.html

(cl:defclass <LaneBoundaryWidth> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LaneBoundaryWidth (<LaneBoundaryWidth>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneBoundaryWidth>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneBoundaryWidth)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<LaneBoundaryWidth> is deprecated: use worldmodel_msgs-msg:LaneBoundaryWidth instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LaneBoundaryWidth>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:value-val is deprecated.  Use worldmodel_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LaneBoundaryWidth>)))
    "Constants for message type '<LaneBoundaryWidth>"
  '((:THIN . 0)
    (:THICK . 1)
    (:UNKNOWN . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LaneBoundaryWidth)))
    "Constants for message type 'LaneBoundaryWidth"
  '((:THIN . 0)
    (:THICK . 1)
    (:UNKNOWN . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneBoundaryWidth>) ostream)
  "Serializes a message object of type '<LaneBoundaryWidth>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneBoundaryWidth>) istream)
  "Deserializes a message object of type '<LaneBoundaryWidth>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneBoundaryWidth>)))
  "Returns string type for a message object of type '<LaneBoundaryWidth>"
  "worldmodel_msgs/LaneBoundaryWidth")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneBoundaryWidth)))
  "Returns string type for a message object of type 'LaneBoundaryWidth"
  "worldmodel_msgs/LaneBoundaryWidth")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneBoundaryWidth>)))
  "Returns md5sum for a message object of type '<LaneBoundaryWidth>"
  "f39a24091f4966075d48de8cd4cce20d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneBoundaryWidth)))
  "Returns md5sum for a message object of type 'LaneBoundaryWidth"
  "f39a24091f4966075d48de8cd4cce20d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneBoundaryWidth>)))
  "Returns full string definition for message of type '<LaneBoundaryWidth>"
  (cl:format cl:nil "uint8 THIN = 0~%uint8 THICK = 1~%uint8 UNKNOWN = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneBoundaryWidth)))
  "Returns full string definition for message of type 'LaneBoundaryWidth"
  (cl:format cl:nil "uint8 THIN = 0~%uint8 THICK = 1~%uint8 UNKNOWN = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneBoundaryWidth>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneBoundaryWidth>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneBoundaryWidth
    (cl:cons ':value (value msg))
))
