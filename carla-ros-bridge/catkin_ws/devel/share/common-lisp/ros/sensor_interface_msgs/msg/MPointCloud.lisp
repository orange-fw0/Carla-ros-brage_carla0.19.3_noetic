; Auto-generated. Do not edit!


(cl:in-package sensor_interface_msgs-msg)


;//! \htmlinclude MPointCloud.msg.html

(cl:defclass <MPointCloud> (roslisp-msg-protocol:ros-message)
  ((timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (cloud
    :reader cloud
    :initarg :cloud
    :type sensor_interface_msgs-msg:Pointcloud2
    :initform (cl:make-instance 'sensor_interface_msgs-msg:Pointcloud2))
   (ptr_cloud
    :reader ptr_cloud
    :initarg :ptr_cloud
    :type cl:integer
    :initform 0)
   (available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (lidar_position
    :reader lidar_position
    :initarg :lidar_position
    :type cl:fixnum
    :initform 0)
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:string
    :initform "")
   (status
    :reader status
    :initarg :status
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass MPointCloud (<MPointCloud>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MPointCloud>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MPointCloud)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_interface_msgs-msg:<MPointCloud> is deprecated: use sensor_interface_msgs-msg:MPointCloud instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <MPointCloud>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:timestamp_us-val is deprecated.  Use sensor_interface_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'cloud-val :lambda-list '(m))
(cl:defmethod cloud-val ((m <MPointCloud>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:cloud-val is deprecated.  Use sensor_interface_msgs-msg:cloud instead.")
  (cloud m))

(cl:ensure-generic-function 'ptr_cloud-val :lambda-list '(m))
(cl:defmethod ptr_cloud-val ((m <MPointCloud>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:ptr_cloud-val is deprecated.  Use sensor_interface_msgs-msg:ptr_cloud instead.")
  (ptr_cloud m))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <MPointCloud>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:available-val is deprecated.  Use sensor_interface_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'lidar_position-val :lambda-list '(m))
(cl:defmethod lidar_position-val ((m <MPointCloud>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:lidar_position-val is deprecated.  Use sensor_interface_msgs-msg:lidar_position instead.")
  (lidar_position m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <MPointCloud>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:reserved-val is deprecated.  Use sensor_interface_msgs-msg:reserved instead.")
  (reserved m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <MPointCloud>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:status-val is deprecated.  Use sensor_interface_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MPointCloud>) ostream)
  "Serializes a message object of type '<MPointCloud>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cloud) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ptr_cloud)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ptr_cloud)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ptr_cloud)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ptr_cloud)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'ptr_cloud)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'ptr_cloud)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'ptr_cloud)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'ptr_cloud)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lidar_position)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lidar_position)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MPointCloud>) istream)
  "Deserializes a message object of type '<MPointCloud>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cloud) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ptr_cloud)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ptr_cloud)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ptr_cloud)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ptr_cloud)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'ptr_cloud)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'ptr_cloud)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'ptr_cloud)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'ptr_cloud)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lidar_position)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lidar_position)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reserved) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reserved) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'status) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'status)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MPointCloud>)))
  "Returns string type for a message object of type '<MPointCloud>"
  "sensor_interface_msgs/MPointCloud")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MPointCloud)))
  "Returns string type for a message object of type 'MPointCloud"
  "sensor_interface_msgs/MPointCloud")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MPointCloud>)))
  "Returns md5sum for a message object of type '<MPointCloud>"
  "0e0e75773a2d4d0560240ba05a3113be")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MPointCloud)))
  "Returns md5sum for a message object of type 'MPointCloud"
  "0e0e75773a2d4d0560240ba05a3113be")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MPointCloud>)))
  "Returns full string definition for message of type '<MPointCloud>"
  (cl:format cl:nil "uint64 timestamp_us~%sensor_interface_msgs/Pointcloud2 cloud~%uint64 ptr_cloud~%uint8 available~%uint16 lidar_position~%string reserved~%uint8[] status~%~%================================================================================~%MSG: sensor_interface_msgs/Pointcloud2~%std_msgs/Header header~%uint32 height~%uint32 width~%sensor_interface_msgs/PointField[] fields~%bool is_bigendian~%uint32 point_step~%uint32 row_step~%uint8[] data~%bool is_dense~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_interface_msgs/PointField~%uint8 INT8 = 1~%uint8 UINT8 = 2~%uint8 INT16 = 3~%uint8 UINT16 = 4~%uint8 INT32 = 5~%uint8 UINT32 = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%string name~%uint32 offset~%uint8 datatype~%uint32 count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MPointCloud)))
  "Returns full string definition for message of type 'MPointCloud"
  (cl:format cl:nil "uint64 timestamp_us~%sensor_interface_msgs/Pointcloud2 cloud~%uint64 ptr_cloud~%uint8 available~%uint16 lidar_position~%string reserved~%uint8[] status~%~%================================================================================~%MSG: sensor_interface_msgs/Pointcloud2~%std_msgs/Header header~%uint32 height~%uint32 width~%sensor_interface_msgs/PointField[] fields~%bool is_bigendian~%uint32 point_step~%uint32 row_step~%uint8[] data~%bool is_dense~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_interface_msgs/PointField~%uint8 INT8 = 1~%uint8 UINT8 = 2~%uint8 INT16 = 3~%uint8 UINT16 = 4~%uint8 INT32 = 5~%uint8 UINT32 = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%string name~%uint32 offset~%uint8 datatype~%uint32 count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MPointCloud>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cloud))
     8
     1
     2
     4 (cl:length (cl:slot-value msg 'reserved))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'status) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MPointCloud>))
  "Converts a ROS message object to a list"
  (cl:list 'MPointCloud
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':cloud (cloud msg))
    (cl:cons ':ptr_cloud (ptr_cloud msg))
    (cl:cons ':available (available msg))
    (cl:cons ':lidar_position (lidar_position msg))
    (cl:cons ':reserved (reserved msg))
    (cl:cons ':status (status msg))
))
