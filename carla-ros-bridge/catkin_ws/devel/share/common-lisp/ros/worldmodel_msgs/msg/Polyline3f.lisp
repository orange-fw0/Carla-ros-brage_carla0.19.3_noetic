; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude Polyline3f.msg.html

(cl:defclass <Polyline3f> (roslisp-msg-protocol:ros-message)
  ((points
    :reader points
    :initarg :points
    :type (cl:vector perception_interface_msgs-msg:Point3f)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:Point3f :initial-element (cl:make-instance 'perception_interface_msgs-msg:Point3f))))
)

(cl:defclass Polyline3f (<Polyline3f>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Polyline3f>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Polyline3f)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<Polyline3f> is deprecated: use worldmodel_msgs-msg:Polyline3f instead.")))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <Polyline3f>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:points-val is deprecated.  Use worldmodel_msgs-msg:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Polyline3f>) ostream)
  "Serializes a message object of type '<Polyline3f>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Polyline3f>) istream)
  "Deserializes a message object of type '<Polyline3f>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:Point3f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Polyline3f>)))
  "Returns string type for a message object of type '<Polyline3f>"
  "worldmodel_msgs/Polyline3f")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Polyline3f)))
  "Returns string type for a message object of type 'Polyline3f"
  "worldmodel_msgs/Polyline3f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Polyline3f>)))
  "Returns md5sum for a message object of type '<Polyline3f>"
  "cd60a26494a087f577976f0329fa120e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Polyline3f)))
  "Returns md5sum for a message object of type 'Polyline3f"
  "cd60a26494a087f577976f0329fa120e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Polyline3f>)))
  "Returns full string definition for message of type '<Polyline3f>"
  (cl:format cl:nil "perception_interface_msgs/Point3f[] points~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Polyline3f)))
  "Returns full string definition for message of type 'Polyline3f"
  (cl:format cl:nil "perception_interface_msgs/Point3f[] points~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Polyline3f>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Polyline3f>))
  "Converts a ROS message object to a list"
  (cl:list 'Polyline3f
    (cl:cons ':points (points msg))
))
