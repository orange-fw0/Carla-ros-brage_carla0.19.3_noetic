; Auto-generated. Do not edit!


(cl:in-package sensor_interface_msgs-msg)


;//! \htmlinclude UltrasonicObstacleInfo.msg.html

(cl:defclass <UltrasonicObstacleInfo> (roslisp-msg-protocol:ros-message)
  ((timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:integer
    :initform 0)
   (key_point_probability
    :reader key_point_probability
    :initarg :key_point_probability
    :type cl:float
    :initform 0.0)
   (obstacle_key_point_data
    :reader obstacle_key_point_data
    :initarg :obstacle_key_point_data
    :type (cl:vector sensor_interface_msgs-msg:ObstacleKeyPointData)
   :initform (cl:make-array 0 :element-type 'sensor_interface_msgs-msg:ObstacleKeyPointData :initial-element (cl:make-instance 'sensor_interface_msgs-msg:ObstacleKeyPointData))))
)

(cl:defclass UltrasonicObstacleInfo (<UltrasonicObstacleInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UltrasonicObstacleInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UltrasonicObstacleInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_interface_msgs-msg:<UltrasonicObstacleInfo> is deprecated: use sensor_interface_msgs-msg:UltrasonicObstacleInfo instead.")))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <UltrasonicObstacleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:timestamp-val is deprecated.  Use sensor_interface_msgs-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'key_point_probability-val :lambda-list '(m))
(cl:defmethod key_point_probability-val ((m <UltrasonicObstacleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:key_point_probability-val is deprecated.  Use sensor_interface_msgs-msg:key_point_probability instead.")
  (key_point_probability m))

(cl:ensure-generic-function 'obstacle_key_point_data-val :lambda-list '(m))
(cl:defmethod obstacle_key_point_data-val ((m <UltrasonicObstacleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:obstacle_key_point_data-val is deprecated.  Use sensor_interface_msgs-msg:obstacle_key_point_data instead.")
  (obstacle_key_point_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UltrasonicObstacleInfo>) ostream)
  "Serializes a message object of type '<UltrasonicObstacleInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'key_point_probability))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obstacle_key_point_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obstacle_key_point_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UltrasonicObstacleInfo>) istream)
  "Deserializes a message object of type '<UltrasonicObstacleInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'key_point_probability) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obstacle_key_point_data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obstacle_key_point_data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_interface_msgs-msg:ObstacleKeyPointData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UltrasonicObstacleInfo>)))
  "Returns string type for a message object of type '<UltrasonicObstacleInfo>"
  "sensor_interface_msgs/UltrasonicObstacleInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UltrasonicObstacleInfo)))
  "Returns string type for a message object of type 'UltrasonicObstacleInfo"
  "sensor_interface_msgs/UltrasonicObstacleInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UltrasonicObstacleInfo>)))
  "Returns md5sum for a message object of type '<UltrasonicObstacleInfo>"
  "6e8b0d9d7e8e55821c1821c59296e611")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UltrasonicObstacleInfo)))
  "Returns md5sum for a message object of type 'UltrasonicObstacleInfo"
  "6e8b0d9d7e8e55821c1821c59296e611")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UltrasonicObstacleInfo>)))
  "Returns full string definition for message of type '<UltrasonicObstacleInfo>"
  (cl:format cl:nil "uint64 timestamp~%float32 key_point_probability~%sensor_interface_msgs/ObstacleKeyPointData[] obstacle_key_point_data~%~%================================================================================~%MSG: sensor_interface_msgs/ObstacleKeyPointData~%float32 point_x~%float32 point_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UltrasonicObstacleInfo)))
  "Returns full string definition for message of type 'UltrasonicObstacleInfo"
  (cl:format cl:nil "uint64 timestamp~%float32 key_point_probability~%sensor_interface_msgs/ObstacleKeyPointData[] obstacle_key_point_data~%~%================================================================================~%MSG: sensor_interface_msgs/ObstacleKeyPointData~%float32 point_x~%float32 point_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UltrasonicObstacleInfo>))
  (cl:+ 0
     8
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obstacle_key_point_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UltrasonicObstacleInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'UltrasonicObstacleInfo
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':key_point_probability (key_point_probability msg))
    (cl:cons ':obstacle_key_point_data (obstacle_key_point_data msg))
))
