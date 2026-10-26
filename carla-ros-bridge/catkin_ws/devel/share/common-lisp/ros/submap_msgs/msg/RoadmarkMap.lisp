; Auto-generated. Do not edit!


(cl:in-package submap_msgs-msg)


;//! \htmlinclude RoadmarkMap.msg.html

(cl:defclass <RoadmarkMap> (roslisp-msg-protocol:ros-message)
  ((roadmark_contours
    :reader roadmark_contours
    :initarg :roadmark_contours
    :type submap_msgs-msg:Roadmark
    :initform (cl:make-instance 'submap_msgs-msg:Roadmark))
   (roadmark_raw_points
    :reader roadmark_raw_points
    :initarg :roadmark_raw_points
    :type submap_msgs-msg:Roadmark
    :initform (cl:make-instance 'submap_msgs-msg:Roadmark)))
)

(cl:defclass RoadmarkMap (<RoadmarkMap>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoadmarkMap>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoadmarkMap)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name submap_msgs-msg:<RoadmarkMap> is deprecated: use submap_msgs-msg:RoadmarkMap instead.")))

(cl:ensure-generic-function 'roadmark_contours-val :lambda-list '(m))
(cl:defmethod roadmark_contours-val ((m <RoadmarkMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:roadmark_contours-val is deprecated.  Use submap_msgs-msg:roadmark_contours instead.")
  (roadmark_contours m))

(cl:ensure-generic-function 'roadmark_raw_points-val :lambda-list '(m))
(cl:defmethod roadmark_raw_points-val ((m <RoadmarkMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:roadmark_raw_points-val is deprecated.  Use submap_msgs-msg:roadmark_raw_points instead.")
  (roadmark_raw_points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoadmarkMap>) ostream)
  "Serializes a message object of type '<RoadmarkMap>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'roadmark_contours) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'roadmark_raw_points) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoadmarkMap>) istream)
  "Deserializes a message object of type '<RoadmarkMap>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'roadmark_contours) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'roadmark_raw_points) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoadmarkMap>)))
  "Returns string type for a message object of type '<RoadmarkMap>"
  "submap_msgs/RoadmarkMap")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoadmarkMap)))
  "Returns string type for a message object of type 'RoadmarkMap"
  "submap_msgs/RoadmarkMap")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoadmarkMap>)))
  "Returns md5sum for a message object of type '<RoadmarkMap>"
  "9babd27ffe2cdfa70b280e90ae92d9ef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoadmarkMap)))
  "Returns md5sum for a message object of type 'RoadmarkMap"
  "9babd27ffe2cdfa70b280e90ae92d9ef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoadmarkMap>)))
  "Returns full string definition for message of type '<RoadmarkMap>"
  (cl:format cl:nil "submap_msgs/Roadmark roadmark_contours~%submap_msgs/Roadmark roadmark_raw_points~%~%================================================================================~%MSG: submap_msgs/Roadmark~%submap_msgs/RoadmarkLayer[] layers~%~%================================================================================~%MSG: submap_msgs/RoadmarkLayer~%submap_msgs/RoadmarkType type~%geometry_msgs/Point[] points~%geometry_msgs/Point[] points_local~%~%================================================================================~%MSG: submap_msgs/RoadmarkType~%uint8 NORMAL = 0~%uint8 ARROW = 1~%uint8 SPEED_BUMP = 2~%uint8 CROSS_WALK = 3~%uint8 STOP_LINE = 4~%uint8 value~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoadmarkMap)))
  "Returns full string definition for message of type 'RoadmarkMap"
  (cl:format cl:nil "submap_msgs/Roadmark roadmark_contours~%submap_msgs/Roadmark roadmark_raw_points~%~%================================================================================~%MSG: submap_msgs/Roadmark~%submap_msgs/RoadmarkLayer[] layers~%~%================================================================================~%MSG: submap_msgs/RoadmarkLayer~%submap_msgs/RoadmarkType type~%geometry_msgs/Point[] points~%geometry_msgs/Point[] points_local~%~%================================================================================~%MSG: submap_msgs/RoadmarkType~%uint8 NORMAL = 0~%uint8 ARROW = 1~%uint8 SPEED_BUMP = 2~%uint8 CROSS_WALK = 3~%uint8 STOP_LINE = 4~%uint8 value~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoadmarkMap>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'roadmark_contours))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'roadmark_raw_points))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoadmarkMap>))
  "Converts a ROS message object to a list"
  (cl:list 'RoadmarkMap
    (cl:cons ':roadmark_contours (roadmark_contours msg))
    (cl:cons ':roadmark_raw_points (roadmark_raw_points msg))
))
