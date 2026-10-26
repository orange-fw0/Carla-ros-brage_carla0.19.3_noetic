; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude Comfort.msg.html

(cl:defclass <Comfort> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (maneuver_gear
    :reader maneuver_gear
    :initarg :maneuver_gear
    :type planning_msgs-msg:ManeuverGear
    :initform (cl:make-instance 'planning_msgs-msg:ManeuverGear)))
)

(cl:defclass Comfort (<Comfort>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Comfort>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Comfort)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<Comfort> is deprecated: use planning_msgs-msg:Comfort instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <Comfort>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:available-val is deprecated.  Use planning_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'maneuver_gear-val :lambda-list '(m))
(cl:defmethod maneuver_gear-val ((m <Comfort>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:maneuver_gear-val is deprecated.  Use planning_msgs-msg:maneuver_gear instead.")
  (maneuver_gear m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Comfort>)))
    "Constants for message type '<Comfort>"
  '((:MANEUVER_GEAR . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Comfort)))
    "Constants for message type 'Comfort"
  '((:MANEUVER_GEAR . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Comfort>) ostream)
  "Serializes a message object of type '<Comfort>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'maneuver_gear) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Comfort>) istream)
  "Deserializes a message object of type '<Comfort>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'maneuver_gear) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Comfort>)))
  "Returns string type for a message object of type '<Comfort>"
  "planning_msgs/Comfort")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Comfort)))
  "Returns string type for a message object of type 'Comfort"
  "planning_msgs/Comfort")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Comfort>)))
  "Returns md5sum for a message object of type '<Comfort>"
  "6e564c8c3c7473028ef202f9e4da7bdd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Comfort)))
  "Returns md5sum for a message object of type 'Comfort"
  "6e564c8c3c7473028ef202f9e4da7bdd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Comfort>)))
  "Returns full string definition for message of type '<Comfort>"
  (cl:format cl:nil "uint8 MANEUVER_GEAR = 1~%uint8 available~%planning_msgs/ManeuverGear maneuver_gear~%~%================================================================================~%MSG: planning_msgs/ManeuverGear~%uint8 SLOW = 0~%uint8 NORMAL = 1~%uint8 FAST = 2~%uint8 ACCIDENT = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Comfort)))
  "Returns full string definition for message of type 'Comfort"
  (cl:format cl:nil "uint8 MANEUVER_GEAR = 1~%uint8 available~%planning_msgs/ManeuverGear maneuver_gear~%~%================================================================================~%MSG: planning_msgs/ManeuverGear~%uint8 SLOW = 0~%uint8 NORMAL = 1~%uint8 FAST = 2~%uint8 ACCIDENT = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Comfort>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'maneuver_gear))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Comfort>))
  "Converts a ROS message object to a list"
  (cl:list 'Comfort
    (cl:cons ':available (available msg))
    (cl:cons ':maneuver_gear (maneuver_gear msg))
))
