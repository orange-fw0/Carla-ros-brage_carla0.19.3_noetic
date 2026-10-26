; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude FusionTrafficLightArray.msg.html

(cl:defclass <FusionTrafficLightArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (traffic_light_array
    :reader traffic_light_array
    :initarg :traffic_light_array
    :type (cl:vector momenta_msgs-msg:FusionTrafficLight)
   :initform (cl:make-array 0 :element-type 'momenta_msgs-msg:FusionTrafficLight :initial-element (cl:make-instance 'momenta_msgs-msg:FusionTrafficLight))))
)

(cl:defclass FusionTrafficLightArray (<FusionTrafficLightArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FusionTrafficLightArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FusionTrafficLightArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<FusionTrafficLightArray> is deprecated: use momenta_msgs-msg:FusionTrafficLightArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FusionTrafficLightArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:header-val is deprecated.  Use momenta_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'traffic_light_array-val :lambda-list '(m))
(cl:defmethod traffic_light_array-val ((m <FusionTrafficLightArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:traffic_light_array-val is deprecated.  Use momenta_msgs-msg:traffic_light_array instead.")
  (traffic_light_array m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FusionTrafficLightArray>) ostream)
  "Serializes a message object of type '<FusionTrafficLightArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'traffic_light_array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'traffic_light_array))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FusionTrafficLightArray>) istream)
  "Deserializes a message object of type '<FusionTrafficLightArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'traffic_light_array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'traffic_light_array)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'momenta_msgs-msg:FusionTrafficLight))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FusionTrafficLightArray>)))
  "Returns string type for a message object of type '<FusionTrafficLightArray>"
  "momenta_msgs/FusionTrafficLightArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FusionTrafficLightArray)))
  "Returns string type for a message object of type 'FusionTrafficLightArray"
  "momenta_msgs/FusionTrafficLightArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FusionTrafficLightArray>)))
  "Returns md5sum for a message object of type '<FusionTrafficLightArray>"
  "a71f672d381692d63c96a18bb202b374")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FusionTrafficLightArray)))
  "Returns md5sum for a message object of type 'FusionTrafficLightArray"
  "a71f672d381692d63c96a18bb202b374")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FusionTrafficLightArray>)))
  "Returns full string definition for message of type '<FusionTrafficLightArray>"
  (cl:format cl:nil "std_msgs/Header header~%momenta_msgs/FusionTrafficLight[] traffic_light_array~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: momenta_msgs/FusionTrafficLight~%int32 pattern~%int32 status~%float64 duration~%float64 remaining~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FusionTrafficLightArray)))
  "Returns full string definition for message of type 'FusionTrafficLightArray"
  (cl:format cl:nil "std_msgs/Header header~%momenta_msgs/FusionTrafficLight[] traffic_light_array~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: momenta_msgs/FusionTrafficLight~%int32 pattern~%int32 status~%float64 duration~%float64 remaining~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FusionTrafficLightArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'traffic_light_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FusionTrafficLightArray>))
  "Converts a ROS message object to a list"
  (cl:list 'FusionTrafficLightArray
    (cl:cons ':header (header msg))
    (cl:cons ':traffic_light_array (traffic_light_array msg))
))
