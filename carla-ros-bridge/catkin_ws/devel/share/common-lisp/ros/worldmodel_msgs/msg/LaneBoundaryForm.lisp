; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude LaneBoundaryForm.msg.html

(cl:defclass <LaneBoundaryForm> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LaneBoundaryForm (<LaneBoundaryForm>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneBoundaryForm>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneBoundaryForm)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<LaneBoundaryForm> is deprecated: use worldmodel_msgs-msg:LaneBoundaryForm instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LaneBoundaryForm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:value-val is deprecated.  Use worldmodel_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LaneBoundaryForm>)))
    "Constants for message type '<LaneBoundaryForm>"
  '((:UNKNOWN . 0)
    (:SOLID . 1)
    (:DASH . 2)
    (:VIRTUAL . 3)
    (:PHYSICAL . 4)
    (:DOUBLE_SOLID . 5)
    (:DASH_SOLID . 6)
    (:SOLID_DASH . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LaneBoundaryForm)))
    "Constants for message type 'LaneBoundaryForm"
  '((:UNKNOWN . 0)
    (:SOLID . 1)
    (:DASH . 2)
    (:VIRTUAL . 3)
    (:PHYSICAL . 4)
    (:DOUBLE_SOLID . 5)
    (:DASH_SOLID . 6)
    (:SOLID_DASH . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneBoundaryForm>) ostream)
  "Serializes a message object of type '<LaneBoundaryForm>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneBoundaryForm>) istream)
  "Deserializes a message object of type '<LaneBoundaryForm>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneBoundaryForm>)))
  "Returns string type for a message object of type '<LaneBoundaryForm>"
  "worldmodel_msgs/LaneBoundaryForm")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneBoundaryForm)))
  "Returns string type for a message object of type 'LaneBoundaryForm"
  "worldmodel_msgs/LaneBoundaryForm")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneBoundaryForm>)))
  "Returns md5sum for a message object of type '<LaneBoundaryForm>"
  "fa3e5dbf248ad13ce55de91eac8c461c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneBoundaryForm)))
  "Returns md5sum for a message object of type 'LaneBoundaryForm"
  "fa3e5dbf248ad13ce55de91eac8c461c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneBoundaryForm>)))
  "Returns full string definition for message of type '<LaneBoundaryForm>"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 SOLID = 1~%uint8 DASH = 2~%uint8 VIRTUAL = 3~%uint8 PHYSICAL = 4~%uint8 DOUBLE_SOLID = 5~%uint8 DASH_SOLID = 6~%uint8 SOLID_DASH = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneBoundaryForm)))
  "Returns full string definition for message of type 'LaneBoundaryForm"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 SOLID = 1~%uint8 DASH = 2~%uint8 VIRTUAL = 3~%uint8 PHYSICAL = 4~%uint8 DOUBLE_SOLID = 5~%uint8 DASH_SOLID = 6~%uint8 SOLID_DASH = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneBoundaryForm>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneBoundaryForm>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneBoundaryForm
    (cl:cons ':value (value msg))
))
