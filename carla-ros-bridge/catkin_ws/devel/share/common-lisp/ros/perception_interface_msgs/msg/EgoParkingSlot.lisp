; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude EgoParkingSlot.msg.html

(cl:defclass <EgoParkingSlot> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0))
)

(cl:defclass EgoParkingSlot (<EgoParkingSlot>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EgoParkingSlot>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EgoParkingSlot)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<EgoParkingSlot> is deprecated: use perception_interface_msgs-msg:EgoParkingSlot instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <EgoParkingSlot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:id-val is deprecated.  Use perception_interface_msgs-msg:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EgoParkingSlot>) ostream)
  "Serializes a message object of type '<EgoParkingSlot>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EgoParkingSlot>) istream)
  "Deserializes a message object of type '<EgoParkingSlot>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EgoParkingSlot>)))
  "Returns string type for a message object of type '<EgoParkingSlot>"
  "perception_interface_msgs/EgoParkingSlot")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EgoParkingSlot)))
  "Returns string type for a message object of type 'EgoParkingSlot"
  "perception_interface_msgs/EgoParkingSlot")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EgoParkingSlot>)))
  "Returns md5sum for a message object of type '<EgoParkingSlot>"
  "0dba762d409c9ac12516987f0927c77c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EgoParkingSlot)))
  "Returns md5sum for a message object of type 'EgoParkingSlot"
  "0dba762d409c9ac12516987f0927c77c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EgoParkingSlot>)))
  "Returns full string definition for message of type '<EgoParkingSlot>"
  (cl:format cl:nil "uint64 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EgoParkingSlot)))
  "Returns full string definition for message of type 'EgoParkingSlot"
  (cl:format cl:nil "uint64 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EgoParkingSlot>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EgoParkingSlot>))
  "Converts a ROS message object to a list"
  (cl:list 'EgoParkingSlot
    (cl:cons ':id (id msg))
))
