; Auto-generated. Do not edit!


(cl:in-package sensor_interface_msgs-msg)


;//! \htmlinclude Pointcloud2.msg.html

(cl:defclass <Pointcloud2> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (height
    :reader height
    :initarg :height
    :type cl:integer
    :initform 0)
   (width
    :reader width
    :initarg :width
    :type cl:integer
    :initform 0)
   (fields
    :reader fields
    :initarg :fields
    :type (cl:vector sensor_interface_msgs-msg:PointField)
   :initform (cl:make-array 0 :element-type 'sensor_interface_msgs-msg:PointField :initial-element (cl:make-instance 'sensor_interface_msgs-msg:PointField)))
   (is_bigendian
    :reader is_bigendian
    :initarg :is_bigendian
    :type cl:boolean
    :initform cl:nil)
   (point_step
    :reader point_step
    :initarg :point_step
    :type cl:integer
    :initform 0)
   (row_step
    :reader row_step
    :initarg :row_step
    :type cl:integer
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (is_dense
    :reader is_dense
    :initarg :is_dense
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Pointcloud2 (<Pointcloud2>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Pointcloud2>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Pointcloud2)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_interface_msgs-msg:<Pointcloud2> is deprecated: use sensor_interface_msgs-msg:Pointcloud2 instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Pointcloud2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:header-val is deprecated.  Use sensor_interface_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <Pointcloud2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:height-val is deprecated.  Use sensor_interface_msgs-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <Pointcloud2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:width-val is deprecated.  Use sensor_interface_msgs-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'fields-val :lambda-list '(m))
(cl:defmethod fields-val ((m <Pointcloud2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:fields-val is deprecated.  Use sensor_interface_msgs-msg:fields instead.")
  (fields m))

(cl:ensure-generic-function 'is_bigendian-val :lambda-list '(m))
(cl:defmethod is_bigendian-val ((m <Pointcloud2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:is_bigendian-val is deprecated.  Use sensor_interface_msgs-msg:is_bigendian instead.")
  (is_bigendian m))

(cl:ensure-generic-function 'point_step-val :lambda-list '(m))
(cl:defmethod point_step-val ((m <Pointcloud2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:point_step-val is deprecated.  Use sensor_interface_msgs-msg:point_step instead.")
  (point_step m))

(cl:ensure-generic-function 'row_step-val :lambda-list '(m))
(cl:defmethod row_step-val ((m <Pointcloud2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:row_step-val is deprecated.  Use sensor_interface_msgs-msg:row_step instead.")
  (row_step m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <Pointcloud2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:data-val is deprecated.  Use sensor_interface_msgs-msg:data instead.")
  (data m))

(cl:ensure-generic-function 'is_dense-val :lambda-list '(m))
(cl:defmethod is_dense-val ((m <Pointcloud2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:is_dense-val is deprecated.  Use sensor_interface_msgs-msg:is_dense instead.")
  (is_dense m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Pointcloud2>) ostream)
  "Serializes a message object of type '<Pointcloud2>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'width)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'fields))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'fields))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_bigendian) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'point_step)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'point_step)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'point_step)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'point_step)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'row_step)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'row_step)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'row_step)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'row_step)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_dense) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Pointcloud2>) istream)
  "Deserializes a message object of type '<Pointcloud2>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'width)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'fields) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'fields)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_interface_msgs-msg:PointField))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'is_bigendian) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'point_step)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'point_step)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'point_step)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'point_step)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'row_step)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'row_step)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'row_step)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'row_step)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'is_dense) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Pointcloud2>)))
  "Returns string type for a message object of type '<Pointcloud2>"
  "sensor_interface_msgs/Pointcloud2")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pointcloud2)))
  "Returns string type for a message object of type 'Pointcloud2"
  "sensor_interface_msgs/Pointcloud2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Pointcloud2>)))
  "Returns md5sum for a message object of type '<Pointcloud2>"
  "1158d486dd51d683ce2f1be655c3c181")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Pointcloud2)))
  "Returns md5sum for a message object of type 'Pointcloud2"
  "1158d486dd51d683ce2f1be655c3c181")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Pointcloud2>)))
  "Returns full string definition for message of type '<Pointcloud2>"
  (cl:format cl:nil "std_msgs/Header header~%uint32 height~%uint32 width~%sensor_interface_msgs/PointField[] fields~%bool is_bigendian~%uint32 point_step~%uint32 row_step~%uint8[] data~%bool is_dense~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_interface_msgs/PointField~%uint8 INT8 = 1~%uint8 UINT8 = 2~%uint8 INT16 = 3~%uint8 UINT16 = 4~%uint8 INT32 = 5~%uint8 UINT32 = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%string name~%uint32 offset~%uint8 datatype~%uint32 count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Pointcloud2)))
  "Returns full string definition for message of type 'Pointcloud2"
  (cl:format cl:nil "std_msgs/Header header~%uint32 height~%uint32 width~%sensor_interface_msgs/PointField[] fields~%bool is_bigendian~%uint32 point_step~%uint32 row_step~%uint8[] data~%bool is_dense~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_interface_msgs/PointField~%uint8 INT8 = 1~%uint8 UINT8 = 2~%uint8 INT16 = 3~%uint8 UINT16 = 4~%uint8 INT32 = 5~%uint8 UINT32 = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%string name~%uint32 offset~%uint8 datatype~%uint32 count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Pointcloud2>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'fields) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Pointcloud2>))
  "Converts a ROS message object to a list"
  (cl:list 'Pointcloud2
    (cl:cons ':header (header msg))
    (cl:cons ':height (height msg))
    (cl:cons ':width (width msg))
    (cl:cons ':fields (fields msg))
    (cl:cons ':is_bigendian (is_bigendian msg))
    (cl:cons ':point_step (point_step msg))
    (cl:cons ':row_step (row_step msg))
    (cl:cons ':data (data msg))
    (cl:cons ':is_dense (is_dense msg))
))
