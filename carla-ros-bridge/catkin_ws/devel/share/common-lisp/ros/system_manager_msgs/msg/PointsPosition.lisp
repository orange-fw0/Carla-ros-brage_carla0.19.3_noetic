; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude PointsPosition.msg.html

(cl:defclass <PointsPosition> (roslisp-msg-protocol:ros-message)
  ((points
    :reader points
    :initarg :points
    :type (cl:vector mla_localization_msgs-msg:MLAPosLocal)
   :initform (cl:make-array 0 :element-type 'mla_localization_msgs-msg:MLAPosLocal :initial-element (cl:make-instance 'mla_localization_msgs-msg:MLAPosLocal))))
)

(cl:defclass PointsPosition (<PointsPosition>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PointsPosition>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PointsPosition)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<PointsPosition> is deprecated: use system_manager_msgs-msg:PointsPosition instead.")))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <PointsPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:points-val is deprecated.  Use system_manager_msgs-msg:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PointsPosition>) ostream)
  "Serializes a message object of type '<PointsPosition>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PointsPosition>) istream)
  "Deserializes a message object of type '<PointsPosition>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mla_localization_msgs-msg:MLAPosLocal))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PointsPosition>)))
  "Returns string type for a message object of type '<PointsPosition>"
  "system_manager_msgs/PointsPosition")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PointsPosition)))
  "Returns string type for a message object of type 'PointsPosition"
  "system_manager_msgs/PointsPosition")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PointsPosition>)))
  "Returns md5sum for a message object of type '<PointsPosition>"
  "3fb3f9dacc279b964c4c8341122c34df")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PointsPosition)))
  "Returns md5sum for a message object of type 'PointsPosition"
  "3fb3f9dacc279b964c4c8341122c34df")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PointsPosition>)))
  "Returns full string definition for message of type '<PointsPosition>"
  (cl:format cl:nil "mla_localization_msgs/MLAPosLocal[] points~%~%================================================================================~%MSG: mla_localization_msgs/MLAPosLocal~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PointsPosition)))
  "Returns full string definition for message of type 'PointsPosition"
  (cl:format cl:nil "mla_localization_msgs/MLAPosLocal[] points~%~%================================================================================~%MSG: mla_localization_msgs/MLAPosLocal~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PointsPosition>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PointsPosition>))
  "Converts a ROS message object to a list"
  (cl:list 'PointsPosition
    (cl:cons ':points (points msg))
))
