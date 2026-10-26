; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude ManeuverGear.msg.html

(cl:defclass <ManeuverGear> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ManeuverGear (<ManeuverGear>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ManeuverGear>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ManeuverGear)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<ManeuverGear> is deprecated: use planning_msgs-msg:ManeuverGear instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ManeuverGear>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:value-val is deprecated.  Use planning_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ManeuverGear>)))
    "Constants for message type '<ManeuverGear>"
  '((:SLOW . 0)
    (:NORMAL . 1)
    (:FAST . 2)
    (:ACCIDENT . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ManeuverGear)))
    "Constants for message type 'ManeuverGear"
  '((:SLOW . 0)
    (:NORMAL . 1)
    (:FAST . 2)
    (:ACCIDENT . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ManeuverGear>) ostream)
  "Serializes a message object of type '<ManeuverGear>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ManeuverGear>) istream)
  "Deserializes a message object of type '<ManeuverGear>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ManeuverGear>)))
  "Returns string type for a message object of type '<ManeuverGear>"
  "planning_msgs/ManeuverGear")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManeuverGear)))
  "Returns string type for a message object of type 'ManeuverGear"
  "planning_msgs/ManeuverGear")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ManeuverGear>)))
  "Returns md5sum for a message object of type '<ManeuverGear>"
  "e9fb38fff72db2b6a9191d0a524c3593")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ManeuverGear)))
  "Returns md5sum for a message object of type 'ManeuverGear"
  "e9fb38fff72db2b6a9191d0a524c3593")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ManeuverGear>)))
  "Returns full string definition for message of type '<ManeuverGear>"
  (cl:format cl:nil "uint8 SLOW = 0~%uint8 NORMAL = 1~%uint8 FAST = 2~%uint8 ACCIDENT = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ManeuverGear)))
  "Returns full string definition for message of type 'ManeuverGear"
  (cl:format cl:nil "uint8 SLOW = 0~%uint8 NORMAL = 1~%uint8 FAST = 2~%uint8 ACCIDENT = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ManeuverGear>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ManeuverGear>))
  "Converts a ROS message object to a list"
  (cl:list 'ManeuverGear
    (cl:cons ':value (value msg))
))
