; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude Polygon2f.msg.html

(cl:defclass <Polygon2f> (roslisp-msg-protocol:ros-message)
  ((points
    :reader points
    :initarg :points
    :type (cl:vector geometry_msgs-msg:Point32)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point32 :initial-element (cl:make-instance 'geometry_msgs-msg:Point32))))
)

(cl:defclass Polygon2f (<Polygon2f>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Polygon2f>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Polygon2f)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<Polygon2f> is deprecated: use planning_msgs-msg:Polygon2f instead.")))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <Polygon2f>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:points-val is deprecated.  Use planning_msgs-msg:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Polygon2f>) ostream)
  "Serializes a message object of type '<Polygon2f>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Polygon2f>) istream)
  "Deserializes a message object of type '<Polygon2f>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point32))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Polygon2f>)))
  "Returns string type for a message object of type '<Polygon2f>"
  "planning_msgs/Polygon2f")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Polygon2f)))
  "Returns string type for a message object of type 'Polygon2f"
  "planning_msgs/Polygon2f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Polygon2f>)))
  "Returns md5sum for a message object of type '<Polygon2f>"
  "cd60a26494a087f577976f0329fa120e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Polygon2f)))
  "Returns md5sum for a message object of type 'Polygon2f"
  "cd60a26494a087f577976f0329fa120e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Polygon2f>)))
  "Returns full string definition for message of type '<Polygon2f>"
  (cl:format cl:nil "geometry_msgs/Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Polygon2f)))
  "Returns full string definition for message of type 'Polygon2f"
  (cl:format cl:nil "geometry_msgs/Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Polygon2f>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Polygon2f>))
  "Converts a ROS message object to a list"
  (cl:list 'Polygon2f
    (cl:cons ':points (points msg))
))
