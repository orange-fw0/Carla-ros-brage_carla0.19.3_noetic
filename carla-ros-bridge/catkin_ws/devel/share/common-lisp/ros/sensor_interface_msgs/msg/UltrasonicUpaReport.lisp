; Auto-generated. Do not edit!


(cl:in-package sensor_interface_msgs-msg)


;//! \htmlinclude UltrasonicUpaReport.msg.html

(cl:defclass <UltrasonicUpaReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (uss_upa_distance
    :reader uss_upa_distance
    :initarg :uss_upa_distance
    :type sensor_interface_msgs-msg:UltrasonicUpaDistance
    :initform (cl:make-instance 'sensor_interface_msgs-msg:UltrasonicUpaDistance)))
)

(cl:defclass UltrasonicUpaReport (<UltrasonicUpaReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UltrasonicUpaReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UltrasonicUpaReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_interface_msgs-msg:<UltrasonicUpaReport> is deprecated: use sensor_interface_msgs-msg:UltrasonicUpaReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <UltrasonicUpaReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:header-val is deprecated.  Use sensor_interface_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'uss_upa_distance-val :lambda-list '(m))
(cl:defmethod uss_upa_distance-val ((m <UltrasonicUpaReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:uss_upa_distance-val is deprecated.  Use sensor_interface_msgs-msg:uss_upa_distance instead.")
  (uss_upa_distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UltrasonicUpaReport>) ostream)
  "Serializes a message object of type '<UltrasonicUpaReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'uss_upa_distance) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UltrasonicUpaReport>) istream)
  "Deserializes a message object of type '<UltrasonicUpaReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'uss_upa_distance) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UltrasonicUpaReport>)))
  "Returns string type for a message object of type '<UltrasonicUpaReport>"
  "sensor_interface_msgs/UltrasonicUpaReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UltrasonicUpaReport)))
  "Returns string type for a message object of type 'UltrasonicUpaReport"
  "sensor_interface_msgs/UltrasonicUpaReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UltrasonicUpaReport>)))
  "Returns md5sum for a message object of type '<UltrasonicUpaReport>"
  "e005b4d2ebad20d43c80bf152864cbc2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UltrasonicUpaReport)))
  "Returns md5sum for a message object of type 'UltrasonicUpaReport"
  "e005b4d2ebad20d43c80bf152864cbc2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UltrasonicUpaReport>)))
  "Returns full string definition for message of type '<UltrasonicUpaReport>"
  (cl:format cl:nil "std_msgs/Header header~%sensor_interface_msgs/UltrasonicUpaDistance uss_upa_distance~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicUpaDistance~%uint8 FRONT_LEFT_SIDE = 0~%uint8 FRONT_LEFT_CORNER = 1~%uint8 FRONT_LEFT_CENTER = 2~%uint8 FRONT_RIGHT_CENTER = 3~%uint8 FRONT_RIGHT_CORNER = 4~%uint8 FRONT_RIGHT_SIDE = 5~%uint8 REAR_RIGHT_SIDE = 6~%uint8 REAR_RIGHT_CORNER = 7~%uint8 REAR_RIGHT_CENTER = 8~%uint8 REAR_LEFT_CENTER = 9~%uint8 REAR_LEFT_CORNER = 10~%uint8 REAR_LEFT_SIDE = 11~%sensor_interface_msgs/UltrasonicUpaData[] sonar~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicUpaData~%uint8 available~%sensor_interface_msgs/UltrasonicResultMeta meta~%float32 upadistance~%string reserved_info~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicResultMeta~%uint64 timestamp_us~%uint64 seq~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UltrasonicUpaReport)))
  "Returns full string definition for message of type 'UltrasonicUpaReport"
  (cl:format cl:nil "std_msgs/Header header~%sensor_interface_msgs/UltrasonicUpaDistance uss_upa_distance~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicUpaDistance~%uint8 FRONT_LEFT_SIDE = 0~%uint8 FRONT_LEFT_CORNER = 1~%uint8 FRONT_LEFT_CENTER = 2~%uint8 FRONT_RIGHT_CENTER = 3~%uint8 FRONT_RIGHT_CORNER = 4~%uint8 FRONT_RIGHT_SIDE = 5~%uint8 REAR_RIGHT_SIDE = 6~%uint8 REAR_RIGHT_CORNER = 7~%uint8 REAR_RIGHT_CENTER = 8~%uint8 REAR_LEFT_CENTER = 9~%uint8 REAR_LEFT_CORNER = 10~%uint8 REAR_LEFT_SIDE = 11~%sensor_interface_msgs/UltrasonicUpaData[] sonar~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicUpaData~%uint8 available~%sensor_interface_msgs/UltrasonicResultMeta meta~%float32 upadistance~%string reserved_info~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicResultMeta~%uint64 timestamp_us~%uint64 seq~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UltrasonicUpaReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'uss_upa_distance))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UltrasonicUpaReport>))
  "Converts a ROS message object to a list"
  (cl:list 'UltrasonicUpaReport
    (cl:cons ':header (header msg))
    (cl:cons ':uss_upa_distance (uss_upa_distance msg))
))
