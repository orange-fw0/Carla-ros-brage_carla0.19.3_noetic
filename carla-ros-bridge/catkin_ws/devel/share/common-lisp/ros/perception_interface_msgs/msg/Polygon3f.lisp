; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude Polygon3f.msg.html

(cl:defclass <Polygon3f> (roslisp-msg-protocol:ros-message)
  ((points
    :reader points
    :initarg :points
    :type (cl:vector perception_interface_msgs-msg:Point3f)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:Point3f :initial-element (cl:make-instance 'perception_interface_msgs-msg:Point3f))))
)

(cl:defclass Polygon3f (<Polygon3f>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Polygon3f>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Polygon3f)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<Polygon3f> is deprecated: use perception_interface_msgs-msg:Polygon3f instead.")))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <Polygon3f>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:points-val is deprecated.  Use perception_interface_msgs-msg:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Polygon3f>) ostream)
  "Serializes a message object of type '<Polygon3f>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Polygon3f>) istream)
  "Deserializes a message object of type '<Polygon3f>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Polygon3f>)))
  "Returns string type for a message object of type '<Polygon3f>"
  "perception_interface_msgs/Polygon3f")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Polygon3f)))
  "Returns string type for a message object of type 'Polygon3f"
  "perception_interface_msgs/Polygon3f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Polygon3f>)))
  "Returns md5sum for a message object of type '<Polygon3f>"
  "cd60a26494a087f577976f0329fa120e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Polygon3f)))
  "Returns md5sum for a message object of type 'Polygon3f"
  "cd60a26494a087f577976f0329fa120e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Polygon3f>)))
  "Returns full string definition for message of type '<Polygon3f>"
  (cl:format cl:nil "perception_interface_msgs/Point3f[] points~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Polygon3f)))
  "Returns full string definition for message of type 'Polygon3f"
  (cl:format cl:nil "perception_interface_msgs/Point3f[] points~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Polygon3f>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Polygon3f>))
  "Converts a ROS message object to a list"
  (cl:list 'Polygon3f
    (cl:cons ':points (points msg))
))
