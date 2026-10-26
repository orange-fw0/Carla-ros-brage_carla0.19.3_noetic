; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude Direction.msg.html

(cl:defclass <Direction> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Direction (<Direction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Direction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Direction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<Direction> is deprecated: use worldmodel_msgs-msg:Direction instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <Direction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:value-val is deprecated.  Use worldmodel_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Direction>)))
    "Constants for message type '<Direction>"
  '((:UNKNOWN . 0)
    (:GO_STRAIGHT . 1)
    (:TURN_RIGHT . 2)
    (:TURN_LEFT . 4)
    (:U_TURN_LEFT . 8)
    (:U_TURN_RIGHT . 16)
    (:OFF_ROUTE . 32))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Direction)))
    "Constants for message type 'Direction"
  '((:UNKNOWN . 0)
    (:GO_STRAIGHT . 1)
    (:TURN_RIGHT . 2)
    (:TURN_LEFT . 4)
    (:U_TURN_LEFT . 8)
    (:U_TURN_RIGHT . 16)
    (:OFF_ROUTE . 32))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Direction>) ostream)
  "Serializes a message object of type '<Direction>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Direction>) istream)
  "Deserializes a message object of type '<Direction>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Direction>)))
  "Returns string type for a message object of type '<Direction>"
  "worldmodel_msgs/Direction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Direction)))
  "Returns string type for a message object of type 'Direction"
  "worldmodel_msgs/Direction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Direction>)))
  "Returns md5sum for a message object of type '<Direction>"
  "2a624de9197bdfa123d357dcfef0ebfb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Direction)))
  "Returns md5sum for a message object of type 'Direction"
  "2a624de9197bdfa123d357dcfef0ebfb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Direction>)))
  "Returns full string definition for message of type '<Direction>"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 GO_STRAIGHT = 1~%uint8 TURN_RIGHT = 2~%uint8 TURN_LEFT = 4~%uint8 U_TURN_LEFT = 8~%uint8 U_TURN_RIGHT = 16~%uint8 OFF_ROUTE = 32~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Direction)))
  "Returns full string definition for message of type 'Direction"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 GO_STRAIGHT = 1~%uint8 TURN_RIGHT = 2~%uint8 TURN_LEFT = 4~%uint8 U_TURN_LEFT = 8~%uint8 U_TURN_RIGHT = 16~%uint8 OFF_ROUTE = 32~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Direction>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Direction>))
  "Converts a ROS message object to a list"
  (cl:list 'Direction
    (cl:cons ':value (value msg))
))
