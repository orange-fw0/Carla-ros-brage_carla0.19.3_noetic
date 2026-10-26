; Auto-generated. Do not edit!


(cl:in-package submap_msgs-msg)


;//! \htmlinclude SlopeMap.msg.html

(cl:defclass <SlopeMap> (roslisp-msg-protocol:ros-message)
  ((slopes
    :reader slopes
    :initarg :slopes
    :type (cl:vector submap_msgs-msg:Slope)
   :initform (cl:make-array 0 :element-type 'submap_msgs-msg:Slope :initial-element (cl:make-instance 'submap_msgs-msg:Slope))))
)

(cl:defclass SlopeMap (<SlopeMap>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SlopeMap>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SlopeMap)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name submap_msgs-msg:<SlopeMap> is deprecated: use submap_msgs-msg:SlopeMap instead.")))

(cl:ensure-generic-function 'slopes-val :lambda-list '(m))
(cl:defmethod slopes-val ((m <SlopeMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:slopes-val is deprecated.  Use submap_msgs-msg:slopes instead.")
  (slopes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SlopeMap>) ostream)
  "Serializes a message object of type '<SlopeMap>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'slopes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'slopes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SlopeMap>) istream)
  "Deserializes a message object of type '<SlopeMap>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'slopes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'slopes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'submap_msgs-msg:Slope))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SlopeMap>)))
  "Returns string type for a message object of type '<SlopeMap>"
  "submap_msgs/SlopeMap")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SlopeMap)))
  "Returns string type for a message object of type 'SlopeMap"
  "submap_msgs/SlopeMap")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SlopeMap>)))
  "Returns md5sum for a message object of type '<SlopeMap>"
  "2eb0d47b299ccf18f0632c481301ba98")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SlopeMap)))
  "Returns md5sum for a message object of type 'SlopeMap"
  "2eb0d47b299ccf18f0632c481301ba98")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SlopeMap>)))
  "Returns full string definition for message of type '<SlopeMap>"
  (cl:format cl:nil "submap_msgs/Slope[] slopes~%~%================================================================================~%MSG: submap_msgs/Slope~%submap_msgs/Position enter~%submap_msgs/Position exit~%submap_msgs/Position detected_slope_pose~%bool is_up~%bool finished~%float32 score~%float32 slide_distance~%~%================================================================================~%MSG: submap_msgs/Position~%geometry_msgs/Quaternion orientation~%geometry_msgs/Vector3 translation~%float64 timestamp~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SlopeMap)))
  "Returns full string definition for message of type 'SlopeMap"
  (cl:format cl:nil "submap_msgs/Slope[] slopes~%~%================================================================================~%MSG: submap_msgs/Slope~%submap_msgs/Position enter~%submap_msgs/Position exit~%submap_msgs/Position detected_slope_pose~%bool is_up~%bool finished~%float32 score~%float32 slide_distance~%~%================================================================================~%MSG: submap_msgs/Position~%geometry_msgs/Quaternion orientation~%geometry_msgs/Vector3 translation~%float64 timestamp~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SlopeMap>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'slopes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SlopeMap>))
  "Converts a ROS message object to a list"
  (cl:list 'SlopeMap
    (cl:cons ':slopes (slopes msg))
))
