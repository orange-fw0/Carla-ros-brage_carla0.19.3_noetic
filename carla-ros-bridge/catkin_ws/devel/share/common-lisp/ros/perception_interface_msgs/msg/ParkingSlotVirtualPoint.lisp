; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude ParkingSlotVirtualPoint.msg.html

(cl:defclass <ParkingSlotVirtualPoint> (roslisp-msg-protocol:ros-message)
  ((point_index
    :reader point_index
    :initarg :point_index
    :type cl:fixnum
    :initform 0)
   (local_point
    :reader local_point
    :initarg :local_point
    :type perception_interface_msgs-msg:Point3f
    :initform (cl:make-instance 'perception_interface_msgs-msg:Point3f)))
)

(cl:defclass ParkingSlotVirtualPoint (<ParkingSlotVirtualPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParkingSlotVirtualPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParkingSlotVirtualPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<ParkingSlotVirtualPoint> is deprecated: use perception_interface_msgs-msg:ParkingSlotVirtualPoint instead.")))

(cl:ensure-generic-function 'point_index-val :lambda-list '(m))
(cl:defmethod point_index-val ((m <ParkingSlotVirtualPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:point_index-val is deprecated.  Use perception_interface_msgs-msg:point_index instead.")
  (point_index m))

(cl:ensure-generic-function 'local_point-val :lambda-list '(m))
(cl:defmethod local_point-val ((m <ParkingSlotVirtualPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:local_point-val is deprecated.  Use perception_interface_msgs-msg:local_point instead.")
  (local_point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParkingSlotVirtualPoint>) ostream)
  "Serializes a message object of type '<ParkingSlotVirtualPoint>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'point_index)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'local_point) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParkingSlotVirtualPoint>) istream)
  "Deserializes a message object of type '<ParkingSlotVirtualPoint>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'point_index)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'local_point) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParkingSlotVirtualPoint>)))
  "Returns string type for a message object of type '<ParkingSlotVirtualPoint>"
  "perception_interface_msgs/ParkingSlotVirtualPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParkingSlotVirtualPoint)))
  "Returns string type for a message object of type 'ParkingSlotVirtualPoint"
  "perception_interface_msgs/ParkingSlotVirtualPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParkingSlotVirtualPoint>)))
  "Returns md5sum for a message object of type '<ParkingSlotVirtualPoint>"
  "eab90b5083be4391b0886004149f2676")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParkingSlotVirtualPoint)))
  "Returns md5sum for a message object of type 'ParkingSlotVirtualPoint"
  "eab90b5083be4391b0886004149f2676")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParkingSlotVirtualPoint>)))
  "Returns full string definition for message of type '<ParkingSlotVirtualPoint>"
  (cl:format cl:nil "uint8 point_index~%perception_interface_msgs/Point3f local_point~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParkingSlotVirtualPoint)))
  "Returns full string definition for message of type 'ParkingSlotVirtualPoint"
  (cl:format cl:nil "uint8 point_index~%perception_interface_msgs/Point3f local_point~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParkingSlotVirtualPoint>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'local_point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParkingSlotVirtualPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'ParkingSlotVirtualPoint
    (cl:cons ':point_index (point_index msg))
    (cl:cons ':local_point (local_point msg))
))
