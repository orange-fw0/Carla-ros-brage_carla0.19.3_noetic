; Auto-generated. Do not edit!


(cl:in-package sensor_interface_msgs-msg)


;//! \htmlinclude RadarCalibInfo.msg.html

(cl:defclass <RadarCalibInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (calibinfo
    :reader calibinfo
    :initarg :calibinfo
    :type (cl:vector sensor_interface_msgs-msg:RadarCalib)
   :initform (cl:make-array 0 :element-type 'sensor_interface_msgs-msg:RadarCalib :initial-element (cl:make-instance 'sensor_interface_msgs-msg:RadarCalib))))
)

(cl:defclass RadarCalibInfo (<RadarCalibInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarCalibInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarCalibInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_interface_msgs-msg:<RadarCalibInfo> is deprecated: use sensor_interface_msgs-msg:RadarCalibInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RadarCalibInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:header-val is deprecated.  Use sensor_interface_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'calibinfo-val :lambda-list '(m))
(cl:defmethod calibinfo-val ((m <RadarCalibInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:calibinfo-val is deprecated.  Use sensor_interface_msgs-msg:calibinfo instead.")
  (calibinfo m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarCalibInfo>) ostream)
  "Serializes a message object of type '<RadarCalibInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'calibinfo))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'calibinfo))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarCalibInfo>) istream)
  "Deserializes a message object of type '<RadarCalibInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'calibinfo) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'calibinfo)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_interface_msgs-msg:RadarCalib))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarCalibInfo>)))
  "Returns string type for a message object of type '<RadarCalibInfo>"
  "sensor_interface_msgs/RadarCalibInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarCalibInfo)))
  "Returns string type for a message object of type 'RadarCalibInfo"
  "sensor_interface_msgs/RadarCalibInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarCalibInfo>)))
  "Returns md5sum for a message object of type '<RadarCalibInfo>"
  "ab2e19891d1bc9e7557c8467f5e3e49f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarCalibInfo)))
  "Returns md5sum for a message object of type 'RadarCalibInfo"
  "ab2e19891d1bc9e7557c8467f5e3e49f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarCalibInfo>)))
  "Returns full string definition for message of type '<RadarCalibInfo>"
  (cl:format cl:nil "std_msgs/Header header~%sensor_interface_msgs/RadarCalib[] calibinfo~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_interface_msgs/RadarCalib~%int8 state~%uint8 radar_id~%float64[] r_s2b~%float64[] t_s2b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarCalibInfo)))
  "Returns full string definition for message of type 'RadarCalibInfo"
  (cl:format cl:nil "std_msgs/Header header~%sensor_interface_msgs/RadarCalib[] calibinfo~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_interface_msgs/RadarCalib~%int8 state~%uint8 radar_id~%float64[] r_s2b~%float64[] t_s2b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarCalibInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'calibinfo) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarCalibInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarCalibInfo
    (cl:cons ':header (header msg))
    (cl:cons ':calibinfo (calibinfo msg))
))
