; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude ArsClusterArray.msg.html

(cl:defclass <ArsClusterArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (cluster_array
    :reader cluster_array
    :initarg :cluster_array
    :type (cl:vector momenta_msgs-msg:ArsCluster)
   :initform (cl:make-array 0 :element-type 'momenta_msgs-msg:ArsCluster :initial-element (cl:make-instance 'momenta_msgs-msg:ArsCluster))))
)

(cl:defclass ArsClusterArray (<ArsClusterArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArsClusterArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArsClusterArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<ArsClusterArray> is deprecated: use momenta_msgs-msg:ArsClusterArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ArsClusterArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:header-val is deprecated.  Use momenta_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'cluster_array-val :lambda-list '(m))
(cl:defmethod cluster_array-val ((m <ArsClusterArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:cluster_array-val is deprecated.  Use momenta_msgs-msg:cluster_array instead.")
  (cluster_array m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArsClusterArray>) ostream)
  "Serializes a message object of type '<ArsClusterArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cluster_array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cluster_array))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArsClusterArray>) istream)
  "Deserializes a message object of type '<ArsClusterArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cluster_array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cluster_array)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'momenta_msgs-msg:ArsCluster))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArsClusterArray>)))
  "Returns string type for a message object of type '<ArsClusterArray>"
  "momenta_msgs/ArsClusterArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArsClusterArray)))
  "Returns string type for a message object of type 'ArsClusterArray"
  "momenta_msgs/ArsClusterArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArsClusterArray>)))
  "Returns md5sum for a message object of type '<ArsClusterArray>"
  "58a0208e74952c88935dceb889251d7a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArsClusterArray)))
  "Returns md5sum for a message object of type 'ArsClusterArray"
  "58a0208e74952c88935dceb889251d7a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArsClusterArray>)))
  "Returns full string definition for message of type '<ArsClusterArray>"
  (cl:format cl:nil "std_msgs/Header header~%momenta_msgs/ArsCluster[] cluster_array~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: momenta_msgs/ArsCluster~%uint16 detection_id~%geometry_msgs/Point position~%geometry_msgs/Vector3 velocity~%uint8 dyn_prop~%float32 rcs~%uint8 dislong_rms~%uint8 dislat_rms~%uint8 verllong_rms~%uint8 verllat_rms~%uint8 arellong_rms~%uint8 arellat_rms~%uint8 pdh0~%uint8 ambigstate~%uint8 invalidstate~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArsClusterArray)))
  "Returns full string definition for message of type 'ArsClusterArray"
  (cl:format cl:nil "std_msgs/Header header~%momenta_msgs/ArsCluster[] cluster_array~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: momenta_msgs/ArsCluster~%uint16 detection_id~%geometry_msgs/Point position~%geometry_msgs/Vector3 velocity~%uint8 dyn_prop~%float32 rcs~%uint8 dislong_rms~%uint8 dislat_rms~%uint8 verllong_rms~%uint8 verllat_rms~%uint8 arellong_rms~%uint8 arellat_rms~%uint8 pdh0~%uint8 ambigstate~%uint8 invalidstate~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArsClusterArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cluster_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArsClusterArray>))
  "Converts a ROS message object to a list"
  (cl:list 'ArsClusterArray
    (cl:cons ':header (header msg))
    (cl:cons ':cluster_array (cluster_array msg))
))
