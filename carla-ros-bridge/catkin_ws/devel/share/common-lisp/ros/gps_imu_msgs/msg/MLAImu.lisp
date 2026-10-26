; Auto-generated. Do not edit!


(cl:in-package gps_imu_msgs-msg)


;//! \htmlinclude MLAImu.msg.html

(cl:defclass <MLAImu> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (meta
    :reader meta
    :initarg :meta
    :type gps_imu_msgs-msg:MLAImuMeta
    :initform (cl:make-instance 'gps_imu_msgs-msg:MLAImuMeta))
   (info
    :reader info
    :initarg :info
    :type gps_imu_msgs-msg:MLAImuInfo
    :initform (cl:make-instance 'gps_imu_msgs-msg:MLAImuInfo)))
)

(cl:defclass MLAImu (<MLAImu>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MLAImu>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MLAImu)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gps_imu_msgs-msg:<MLAImu> is deprecated: use gps_imu_msgs-msg:MLAImu instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MLAImu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_imu_msgs-msg:header-val is deprecated.  Use gps_imu_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'meta-val :lambda-list '(m))
(cl:defmethod meta-val ((m <MLAImu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_imu_msgs-msg:meta-val is deprecated.  Use gps_imu_msgs-msg:meta instead.")
  (meta m))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <MLAImu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_imu_msgs-msg:info-val is deprecated.  Use gps_imu_msgs-msg:info instead.")
  (info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MLAImu>) ostream)
  "Serializes a message object of type '<MLAImu>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MLAImu>) istream)
  "Deserializes a message object of type '<MLAImu>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MLAImu>)))
  "Returns string type for a message object of type '<MLAImu>"
  "gps_imu_msgs/MLAImu")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MLAImu)))
  "Returns string type for a message object of type 'MLAImu"
  "gps_imu_msgs/MLAImu")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MLAImu>)))
  "Returns md5sum for a message object of type '<MLAImu>"
  "3acff02242d022ed9da7184ede468123")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MLAImu)))
  "Returns md5sum for a message object of type 'MLAImu"
  "3acff02242d022ed9da7184ede468123")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MLAImu>)))
  "Returns full string definition for message of type '<MLAImu>"
  (cl:format cl:nil "std_msgs/Header header~%gps_imu_msgs/MLAImuMeta meta~%gps_imu_msgs/MLAImuInfo info~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: gps_imu_msgs/MLAImuMeta~%uint64 timestamp_us~%uint64 seq~%~%================================================================================~%MSG: gps_imu_msgs/MLAImuInfo~%uint8 MLA_IMU_BASIC = 1~%uint8 available~%gps_imu_msgs/MLAImuBasic imu_data_basic~%~%================================================================================~%MSG: gps_imu_msgs/MLAImuBasic~%float64 accx~%float64 accy~%float64 accz~%float64 gyrox~%float64 gyroy~%float64 gyroz~%float64 temperature~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MLAImu)))
  "Returns full string definition for message of type 'MLAImu"
  (cl:format cl:nil "std_msgs/Header header~%gps_imu_msgs/MLAImuMeta meta~%gps_imu_msgs/MLAImuInfo info~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: gps_imu_msgs/MLAImuMeta~%uint64 timestamp_us~%uint64 seq~%~%================================================================================~%MSG: gps_imu_msgs/MLAImuInfo~%uint8 MLA_IMU_BASIC = 1~%uint8 available~%gps_imu_msgs/MLAImuBasic imu_data_basic~%~%================================================================================~%MSG: gps_imu_msgs/MLAImuBasic~%float64 accx~%float64 accy~%float64 accz~%float64 gyrox~%float64 gyroy~%float64 gyroz~%float64 temperature~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MLAImu>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MLAImu>))
  "Converts a ROS message object to a list"
  (cl:list 'MLAImu
    (cl:cons ':header (header msg))
    (cl:cons ':meta (meta msg))
    (cl:cons ':info (info msg))
))
