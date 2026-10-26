; Auto-generated. Do not edit!


(cl:in-package submap_msgs-msg)


;//! \htmlinclude RoadmarkLayer.msg.html

(cl:defclass <RoadmarkLayer> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type submap_msgs-msg:RoadmarkType
    :initform (cl:make-instance 'submap_msgs-msg:RoadmarkType))
   (points
    :reader points
    :initarg :points
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (points_local
    :reader points_local
    :initarg :points_local
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass RoadmarkLayer (<RoadmarkLayer>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoadmarkLayer>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoadmarkLayer)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name submap_msgs-msg:<RoadmarkLayer> is deprecated: use submap_msgs-msg:RoadmarkLayer instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <RoadmarkLayer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:type-val is deprecated.  Use submap_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <RoadmarkLayer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:points-val is deprecated.  Use submap_msgs-msg:points instead.")
  (points m))

(cl:ensure-generic-function 'points_local-val :lambda-list '(m))
(cl:defmethod points_local-val ((m <RoadmarkLayer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:points_local-val is deprecated.  Use submap_msgs-msg:points_local instead.")
  (points_local m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoadmarkLayer>) ostream)
  "Serializes a message object of type '<RoadmarkLayer>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points_local))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points_local))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoadmarkLayer>) istream)
  "Deserializes a message object of type '<RoadmarkLayer>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points_local) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points_local)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoadmarkLayer>)))
  "Returns string type for a message object of type '<RoadmarkLayer>"
  "submap_msgs/RoadmarkLayer")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoadmarkLayer)))
  "Returns string type for a message object of type 'RoadmarkLayer"
  "submap_msgs/RoadmarkLayer")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoadmarkLayer>)))
  "Returns md5sum for a message object of type '<RoadmarkLayer>"
  "d028498cfcba48291666c2f426c62e64")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoadmarkLayer)))
  "Returns md5sum for a message object of type 'RoadmarkLayer"
  "d028498cfcba48291666c2f426c62e64")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoadmarkLayer>)))
  "Returns full string definition for message of type '<RoadmarkLayer>"
  (cl:format cl:nil "submap_msgs/RoadmarkType type~%geometry_msgs/Point[] points~%geometry_msgs/Point[] points_local~%~%================================================================================~%MSG: submap_msgs/RoadmarkType~%uint8 NORMAL = 0~%uint8 ARROW = 1~%uint8 SPEED_BUMP = 2~%uint8 CROSS_WALK = 3~%uint8 STOP_LINE = 4~%uint8 value~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoadmarkLayer)))
  "Returns full string definition for message of type 'RoadmarkLayer"
  (cl:format cl:nil "submap_msgs/RoadmarkType type~%geometry_msgs/Point[] points~%geometry_msgs/Point[] points_local~%~%================================================================================~%MSG: submap_msgs/RoadmarkType~%uint8 NORMAL = 0~%uint8 ARROW = 1~%uint8 SPEED_BUMP = 2~%uint8 CROSS_WALK = 3~%uint8 STOP_LINE = 4~%uint8 value~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoadmarkLayer>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points_local) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoadmarkLayer>))
  "Converts a ROS message object to a list"
  (cl:list 'RoadmarkLayer
    (cl:cons ':type (type msg))
    (cl:cons ':points (points msg))
    (cl:cons ':points_local (points_local msg))
))
