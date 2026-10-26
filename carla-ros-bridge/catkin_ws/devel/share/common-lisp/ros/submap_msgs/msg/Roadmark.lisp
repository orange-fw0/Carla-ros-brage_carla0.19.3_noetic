; Auto-generated. Do not edit!


(cl:in-package submap_msgs-msg)


;//! \htmlinclude Roadmark.msg.html

(cl:defclass <Roadmark> (roslisp-msg-protocol:ros-message)
  ((layers
    :reader layers
    :initarg :layers
    :type (cl:vector submap_msgs-msg:RoadmarkLayer)
   :initform (cl:make-array 0 :element-type 'submap_msgs-msg:RoadmarkLayer :initial-element (cl:make-instance 'submap_msgs-msg:RoadmarkLayer))))
)

(cl:defclass Roadmark (<Roadmark>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Roadmark>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Roadmark)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name submap_msgs-msg:<Roadmark> is deprecated: use submap_msgs-msg:Roadmark instead.")))

(cl:ensure-generic-function 'layers-val :lambda-list '(m))
(cl:defmethod layers-val ((m <Roadmark>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:layers-val is deprecated.  Use submap_msgs-msg:layers instead.")
  (layers m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Roadmark>) ostream)
  "Serializes a message object of type '<Roadmark>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'layers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'layers))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Roadmark>) istream)
  "Deserializes a message object of type '<Roadmark>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'layers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'layers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'submap_msgs-msg:RoadmarkLayer))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Roadmark>)))
  "Returns string type for a message object of type '<Roadmark>"
  "submap_msgs/Roadmark")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Roadmark)))
  "Returns string type for a message object of type 'Roadmark"
  "submap_msgs/Roadmark")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Roadmark>)))
  "Returns md5sum for a message object of type '<Roadmark>"
  "6837a2a6568394a000b770cc5a0a61b3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Roadmark)))
  "Returns md5sum for a message object of type 'Roadmark"
  "6837a2a6568394a000b770cc5a0a61b3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Roadmark>)))
  "Returns full string definition for message of type '<Roadmark>"
  (cl:format cl:nil "submap_msgs/RoadmarkLayer[] layers~%~%================================================================================~%MSG: submap_msgs/RoadmarkLayer~%submap_msgs/RoadmarkType type~%geometry_msgs/Point[] points~%geometry_msgs/Point[] points_local~%~%================================================================================~%MSG: submap_msgs/RoadmarkType~%uint8 NORMAL = 0~%uint8 ARROW = 1~%uint8 SPEED_BUMP = 2~%uint8 CROSS_WALK = 3~%uint8 STOP_LINE = 4~%uint8 value~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Roadmark)))
  "Returns full string definition for message of type 'Roadmark"
  (cl:format cl:nil "submap_msgs/RoadmarkLayer[] layers~%~%================================================================================~%MSG: submap_msgs/RoadmarkLayer~%submap_msgs/RoadmarkType type~%geometry_msgs/Point[] points~%geometry_msgs/Point[] points_local~%~%================================================================================~%MSG: submap_msgs/RoadmarkType~%uint8 NORMAL = 0~%uint8 ARROW = 1~%uint8 SPEED_BUMP = 2~%uint8 CROSS_WALK = 3~%uint8 STOP_LINE = 4~%uint8 value~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Roadmark>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'layers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Roadmark>))
  "Converts a ROS message object to a list"
  (cl:list 'Roadmark
    (cl:cons ':layers (layers msg))
))
