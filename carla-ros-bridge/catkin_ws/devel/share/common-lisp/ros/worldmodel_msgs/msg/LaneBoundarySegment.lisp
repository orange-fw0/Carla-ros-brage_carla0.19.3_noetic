; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude LaneBoundarySegment.msg.html

(cl:defclass <LaneBoundarySegment> (roslisp-msg-protocol:ros-message)
  ((length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0)
   (type
    :reader type
    :initarg :type
    :type worldmodel_msgs-msg:LaneBoundaryType
    :initform (cl:make-instance 'worldmodel_msgs-msg:LaneBoundaryType)))
)

(cl:defclass LaneBoundarySegment (<LaneBoundarySegment>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneBoundarySegment>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneBoundarySegment)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<LaneBoundarySegment> is deprecated: use worldmodel_msgs-msg:LaneBoundarySegment instead.")))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <LaneBoundarySegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:length-val is deprecated.  Use worldmodel_msgs-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <LaneBoundarySegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:type-val is deprecated.  Use worldmodel_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneBoundarySegment>) ostream)
  "Serializes a message object of type '<LaneBoundarySegment>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneBoundarySegment>) istream)
  "Deserializes a message object of type '<LaneBoundarySegment>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneBoundarySegment>)))
  "Returns string type for a message object of type '<LaneBoundarySegment>"
  "worldmodel_msgs/LaneBoundarySegment")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneBoundarySegment)))
  "Returns string type for a message object of type 'LaneBoundarySegment"
  "worldmodel_msgs/LaneBoundarySegment")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneBoundarySegment>)))
  "Returns md5sum for a message object of type '<LaneBoundarySegment>"
  "3706c60262ae419233a21af37b9d5b4b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneBoundarySegment)))
  "Returns md5sum for a message object of type 'LaneBoundarySegment"
  "3706c60262ae419233a21af37b9d5b4b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneBoundarySegment>)))
  "Returns full string definition for message of type '<LaneBoundarySegment>"
  (cl:format cl:nil "float64 length~%worldmodel_msgs/LaneBoundaryType type~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryType~%worldmodel_msgs/LaneBoundaryForm value~%worldmodel_msgs/LaneBoundaryColor color~%worldmodel_msgs/LaneBoundaryWidth width~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryForm~%uint8 UNKNOWN = 0~%uint8 SOLID = 1~%uint8 DASH = 2~%uint8 VIRTUAL = 3~%uint8 PHYSICAL = 4~%uint8 DOUBLE_SOLID = 5~%uint8 DASH_SOLID = 6~%uint8 SOLID_DASH = 7~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryColor~%uint8 WHITE = 0~%uint8 YELLOW = 1~%uint8 OTHER = 2~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryWidth~%uint8 THIN = 0~%uint8 THICK = 1~%uint8 UNKNOWN = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneBoundarySegment)))
  "Returns full string definition for message of type 'LaneBoundarySegment"
  (cl:format cl:nil "float64 length~%worldmodel_msgs/LaneBoundaryType type~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryType~%worldmodel_msgs/LaneBoundaryForm value~%worldmodel_msgs/LaneBoundaryColor color~%worldmodel_msgs/LaneBoundaryWidth width~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryForm~%uint8 UNKNOWN = 0~%uint8 SOLID = 1~%uint8 DASH = 2~%uint8 VIRTUAL = 3~%uint8 PHYSICAL = 4~%uint8 DOUBLE_SOLID = 5~%uint8 DASH_SOLID = 6~%uint8 SOLID_DASH = 7~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryColor~%uint8 WHITE = 0~%uint8 YELLOW = 1~%uint8 OTHER = 2~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryWidth~%uint8 THIN = 0~%uint8 THICK = 1~%uint8 UNKNOWN = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneBoundarySegment>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneBoundarySegment>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneBoundarySegment
    (cl:cons ':length (length msg))
    (cl:cons ':type (type msg))
))
