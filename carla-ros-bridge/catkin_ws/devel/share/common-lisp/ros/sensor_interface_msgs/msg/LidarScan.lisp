; Auto-generated. Do not edit!


(cl:in-package sensor_interface_msgs-msg)


;//! \htmlinclude LidarScan.msg.html

(cl:defclass <LidarScan> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (lidar_type
    :reader lidar_type
    :initarg :lidar_type
    :type cl:string
    :initform "")
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:integer
    :initform 0)
   (velodyne_packets
    :reader velodyne_packets
    :initarg :velodyne_packets
    :type (cl:vector sensor_interface_msgs-msg:VelodynePacket)
   :initform (cl:make-array 0 :element-type 'sensor_interface_msgs-msg:VelodynePacket :initial-element (cl:make-instance 'sensor_interface_msgs-msg:VelodynePacket)))
   (robosense_packets
    :reader robosense_packets
    :initarg :robosense_packets
    :type (cl:vector sensor_interface_msgs-msg:RobosensePacket)
   :initform (cl:make-array 0 :element-type 'sensor_interface_msgs-msg:RobosensePacket :initial-element (cl:make-instance 'sensor_interface_msgs-msg:RobosensePacket)))
   (reserved_info
    :reader reserved_info
    :initarg :reserved_info
    :type cl:string
    :initform ""))
)

(cl:defclass LidarScan (<LidarScan>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarScan>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarScan)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_interface_msgs-msg:<LidarScan> is deprecated: use sensor_interface_msgs-msg:LidarScan instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LidarScan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:header-val is deprecated.  Use sensor_interface_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <LidarScan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:available-val is deprecated.  Use sensor_interface_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'lidar_type-val :lambda-list '(m))
(cl:defmethod lidar_type-val ((m <LidarScan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:lidar_type-val is deprecated.  Use sensor_interface_msgs-msg:lidar_type instead.")
  (lidar_type m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <LidarScan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:reserved-val is deprecated.  Use sensor_interface_msgs-msg:reserved instead.")
  (reserved m))

(cl:ensure-generic-function 'velodyne_packets-val :lambda-list '(m))
(cl:defmethod velodyne_packets-val ((m <LidarScan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:velodyne_packets-val is deprecated.  Use sensor_interface_msgs-msg:velodyne_packets instead.")
  (velodyne_packets m))

(cl:ensure-generic-function 'robosense_packets-val :lambda-list '(m))
(cl:defmethod robosense_packets-val ((m <LidarScan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:robosense_packets-val is deprecated.  Use sensor_interface_msgs-msg:robosense_packets instead.")
  (robosense_packets m))

(cl:ensure-generic-function 'reserved_info-val :lambda-list '(m))
(cl:defmethod reserved_info-val ((m <LidarScan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:reserved_info-val is deprecated.  Use sensor_interface_msgs-msg:reserved_info instead.")
  (reserved_info m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LidarScan>)))
    "Constants for message type '<LidarScan>"
  '((:LIDAR_TYPE_VELODYNE . 1)
    (:LIDAR_TYPE_ROBOSENSE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LidarScan)))
    "Constants for message type 'LidarScan"
  '((:LIDAR_TYPE_VELODYNE . 1)
    (:LIDAR_TYPE_ROBOSENSE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarScan>) ostream)
  "Serializes a message object of type '<LidarScan>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'lidar_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'lidar_type))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'velodyne_packets))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'velodyne_packets))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'robosense_packets))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'robosense_packets))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarScan>) istream)
  "Deserializes a message object of type '<LidarScan>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lidar_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'lidar_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'velodyne_packets) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'velodyne_packets)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_interface_msgs-msg:VelodynePacket))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'robosense_packets) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'robosense_packets)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_interface_msgs-msg:RobosensePacket))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reserved_info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reserved_info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarScan>)))
  "Returns string type for a message object of type '<LidarScan>"
  "sensor_interface_msgs/LidarScan")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarScan)))
  "Returns string type for a message object of type 'LidarScan"
  "sensor_interface_msgs/LidarScan")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarScan>)))
  "Returns md5sum for a message object of type '<LidarScan>"
  "22d6444b5c8a1293a27ea13a834d552d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarScan)))
  "Returns md5sum for a message object of type 'LidarScan"
  "22d6444b5c8a1293a27ea13a834d552d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarScan>)))
  "Returns full string definition for message of type '<LidarScan>"
  (cl:format cl:nil "uint8 LIDAR_TYPE_VELODYNE = 1~%uint8 LIDAR_TYPE_ROBOSENSE = 2~%std_msgs/Header header~%uint8 available~%string lidar_type~%uint32 reserved~%sensor_interface_msgs/VelodynePacket[] velodyne_packets~%sensor_interface_msgs/RobosensePacket[] robosense_packets~%string reserved_info~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_interface_msgs/VelodynePacket~%uint64 stamp~%int16 id~%uint8[] data~%~%================================================================================~%MSG: sensor_interface_msgs/RobosensePacket~%uint64 stamp~%int16 id~%uint8[] header~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarScan)))
  "Returns full string definition for message of type 'LidarScan"
  (cl:format cl:nil "uint8 LIDAR_TYPE_VELODYNE = 1~%uint8 LIDAR_TYPE_ROBOSENSE = 2~%std_msgs/Header header~%uint8 available~%string lidar_type~%uint32 reserved~%sensor_interface_msgs/VelodynePacket[] velodyne_packets~%sensor_interface_msgs/RobosensePacket[] robosense_packets~%string reserved_info~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_interface_msgs/VelodynePacket~%uint64 stamp~%int16 id~%uint8[] data~%~%================================================================================~%MSG: sensor_interface_msgs/RobosensePacket~%uint64 stamp~%int16 id~%uint8[] header~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarScan>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:length (cl:slot-value msg 'lidar_type))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'velodyne_packets) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'robosense_packets) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'reserved_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarScan>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarScan
    (cl:cons ':header (header msg))
    (cl:cons ':available (available msg))
    (cl:cons ':lidar_type (lidar_type msg))
    (cl:cons ':reserved (reserved msg))
    (cl:cons ':velodyne_packets (velodyne_packets msg))
    (cl:cons ':robosense_packets (robosense_packets msg))
    (cl:cons ':reserved_info (reserved_info msg))
))
