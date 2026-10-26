; Auto-generated. Do not edit!


(cl:in-package submap_msgs-msg)


;//! \htmlinclude ParkingSlotMap.msg.html

(cl:defclass <ParkingSlotMap> (roslisp-msg-protocol:ros-message)
  ((slots
    :reader slots
    :initarg :slots
    :type (cl:vector submap_msgs-msg:ParkingSlot)
   :initform (cl:make-array 0 :element-type 'submap_msgs-msg:ParkingSlot :initial-element (cl:make-instance 'submap_msgs-msg:ParkingSlot))))
)

(cl:defclass ParkingSlotMap (<ParkingSlotMap>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParkingSlotMap>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParkingSlotMap)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name submap_msgs-msg:<ParkingSlotMap> is deprecated: use submap_msgs-msg:ParkingSlotMap instead.")))

(cl:ensure-generic-function 'slots-val :lambda-list '(m))
(cl:defmethod slots-val ((m <ParkingSlotMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:slots-val is deprecated.  Use submap_msgs-msg:slots instead.")
  (slots m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParkingSlotMap>) ostream)
  "Serializes a message object of type '<ParkingSlotMap>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'slots))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'slots))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParkingSlotMap>) istream)
  "Deserializes a message object of type '<ParkingSlotMap>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'slots) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'slots)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'submap_msgs-msg:ParkingSlot))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParkingSlotMap>)))
  "Returns string type for a message object of type '<ParkingSlotMap>"
  "submap_msgs/ParkingSlotMap")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParkingSlotMap)))
  "Returns string type for a message object of type 'ParkingSlotMap"
  "submap_msgs/ParkingSlotMap")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParkingSlotMap>)))
  "Returns md5sum for a message object of type '<ParkingSlotMap>"
  "a99fcf7f804a09b074e1b0ef4d27a9fa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParkingSlotMap)))
  "Returns md5sum for a message object of type 'ParkingSlotMap"
  "a99fcf7f804a09b074e1b0ef4d27a9fa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParkingSlotMap>)))
  "Returns full string definition for message of type '<ParkingSlotMap>"
  (cl:format cl:nil "submap_msgs/ParkingSlot[] slots~%~%================================================================================~%MSG: submap_msgs/ParkingSlot~%geometry_msgs/Point[] points~%geometry_msgs/Point[] points_local~%float64 timestamp~%uint32 id~%float32 score~%float32 slide_distance~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParkingSlotMap)))
  "Returns full string definition for message of type 'ParkingSlotMap"
  (cl:format cl:nil "submap_msgs/ParkingSlot[] slots~%~%================================================================================~%MSG: submap_msgs/ParkingSlot~%geometry_msgs/Point[] points~%geometry_msgs/Point[] points_local~%float64 timestamp~%uint32 id~%float32 score~%float32 slide_distance~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParkingSlotMap>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'slots) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParkingSlotMap>))
  "Converts a ROS message object to a list"
  (cl:list 'ParkingSlotMap
    (cl:cons ':slots (slots msg))
))
