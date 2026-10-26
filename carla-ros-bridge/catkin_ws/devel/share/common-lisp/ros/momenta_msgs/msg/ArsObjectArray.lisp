; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude ArsObjectArray.msg.html

(cl:defclass <ArsObjectArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (object_array
    :reader object_array
    :initarg :object_array
    :type (cl:vector momenta_msgs-msg:ArsObject)
   :initform (cl:make-array 0 :element-type 'momenta_msgs-msg:ArsObject :initial-element (cl:make-instance 'momenta_msgs-msg:ArsObject))))
)

(cl:defclass ArsObjectArray (<ArsObjectArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArsObjectArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArsObjectArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<ArsObjectArray> is deprecated: use momenta_msgs-msg:ArsObjectArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ArsObjectArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:header-val is deprecated.  Use momenta_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'object_array-val :lambda-list '(m))
(cl:defmethod object_array-val ((m <ArsObjectArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:object_array-val is deprecated.  Use momenta_msgs-msg:object_array instead.")
  (object_array m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArsObjectArray>) ostream)
  "Serializes a message object of type '<ArsObjectArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'object_array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'object_array))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArsObjectArray>) istream)
  "Deserializes a message object of type '<ArsObjectArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'object_array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'object_array)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'momenta_msgs-msg:ArsObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArsObjectArray>)))
  "Returns string type for a message object of type '<ArsObjectArray>"
  "momenta_msgs/ArsObjectArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArsObjectArray)))
  "Returns string type for a message object of type 'ArsObjectArray"
  "momenta_msgs/ArsObjectArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArsObjectArray>)))
  "Returns md5sum for a message object of type '<ArsObjectArray>"
  "fbbc8cf9e91ea4cac89ddcedbc5d2fe4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArsObjectArray)))
  "Returns md5sum for a message object of type 'ArsObjectArray"
  "fbbc8cf9e91ea4cac89ddcedbc5d2fe4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArsObjectArray>)))
  "Returns full string definition for message of type '<ArsObjectArray>"
  (cl:format cl:nil "std_msgs/Header header~%momenta_msgs/ArsObject[] object_array~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: momenta_msgs/ArsObject~%uint16 detection_id~%geometry_msgs/Point position~%geometry_msgs/Vector3 velocity~%uint8 dyn_prop~%float32 rcs~%uint8 dislong_rms~%uint8 dislat_rms~%uint8 verllong_rms~%uint8 verllat_rms~%uint8 arellong_rms~%uint8 arellat_rms~%uint8 orientation_rms~%uint8 meas_state~%uint8 probofexist~%float32 are_long~%uint8 obj_class~%float32 are_lat~%float32 orientation_angle~%float32 length~%float32 width~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArsObjectArray)))
  "Returns full string definition for message of type 'ArsObjectArray"
  (cl:format cl:nil "std_msgs/Header header~%momenta_msgs/ArsObject[] object_array~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: momenta_msgs/ArsObject~%uint16 detection_id~%geometry_msgs/Point position~%geometry_msgs/Vector3 velocity~%uint8 dyn_prop~%float32 rcs~%uint8 dislong_rms~%uint8 dislat_rms~%uint8 verllong_rms~%uint8 verllat_rms~%uint8 arellong_rms~%uint8 arellat_rms~%uint8 orientation_rms~%uint8 meas_state~%uint8 probofexist~%float32 are_long~%uint8 obj_class~%float32 are_lat~%float32 orientation_angle~%float32 length~%float32 width~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArsObjectArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'object_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArsObjectArray>))
  "Converts a ROS message object to a list"
  (cl:list 'ArsObjectArray
    (cl:cons ':header (header msg))
    (cl:cons ':object_array (object_array msg))
))
