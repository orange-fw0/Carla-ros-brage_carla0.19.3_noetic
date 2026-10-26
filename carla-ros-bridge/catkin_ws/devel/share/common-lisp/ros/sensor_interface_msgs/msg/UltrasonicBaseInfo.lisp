; Auto-generated. Do not edit!


(cl:in-package sensor_interface_msgs-msg)


;//! \htmlinclude UltrasonicBaseInfo.msg.html

(cl:defclass <UltrasonicBaseInfo> (roslisp-msg-protocol:ros-message)
  ((uss_echo_info
    :reader uss_echo_info
    :initarg :uss_echo_info
    :type (cl:vector sensor_interface_msgs-msg:UltrasonicEhcoInfo)
   :initform (cl:make-array 0 :element-type 'sensor_interface_msgs-msg:UltrasonicEhcoInfo :initial-element (cl:make-instance 'sensor_interface_msgs-msg:UltrasonicEhcoInfo)))
   (first_echo_amplitude
    :reader first_echo_amplitude
    :initarg :first_echo_amplitude
    :type cl:fixnum
    :initform 0)
   (uss_temperature
    :reader uss_temperature
    :initarg :uss_temperature
    :type cl:fixnum
    :initform 0)
   (timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (burst_mode
    :reader burst_mode
    :initarg :burst_mode
    :type cl:fixnum
    :initform 0)
   (uss_rt_width
    :reader uss_rt_width
    :initarg :uss_rt_width
    :type cl:fixnum
    :initform 0)
   (uss_config_status
    :reader uss_config_status
    :initarg :uss_config_status
    :type cl:fixnum
    :initform 0)
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:string
    :initform ""))
)

(cl:defclass UltrasonicBaseInfo (<UltrasonicBaseInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UltrasonicBaseInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UltrasonicBaseInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_interface_msgs-msg:<UltrasonicBaseInfo> is deprecated: use sensor_interface_msgs-msg:UltrasonicBaseInfo instead.")))

(cl:ensure-generic-function 'uss_echo_info-val :lambda-list '(m))
(cl:defmethod uss_echo_info-val ((m <UltrasonicBaseInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:uss_echo_info-val is deprecated.  Use sensor_interface_msgs-msg:uss_echo_info instead.")
  (uss_echo_info m))

(cl:ensure-generic-function 'first_echo_amplitude-val :lambda-list '(m))
(cl:defmethod first_echo_amplitude-val ((m <UltrasonicBaseInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:first_echo_amplitude-val is deprecated.  Use sensor_interface_msgs-msg:first_echo_amplitude instead.")
  (first_echo_amplitude m))

(cl:ensure-generic-function 'uss_temperature-val :lambda-list '(m))
(cl:defmethod uss_temperature-val ((m <UltrasonicBaseInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:uss_temperature-val is deprecated.  Use sensor_interface_msgs-msg:uss_temperature instead.")
  (uss_temperature m))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <UltrasonicBaseInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:timestamp_us-val is deprecated.  Use sensor_interface_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'burst_mode-val :lambda-list '(m))
(cl:defmethod burst_mode-val ((m <UltrasonicBaseInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:burst_mode-val is deprecated.  Use sensor_interface_msgs-msg:burst_mode instead.")
  (burst_mode m))

(cl:ensure-generic-function 'uss_rt_width-val :lambda-list '(m))
(cl:defmethod uss_rt_width-val ((m <UltrasonicBaseInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:uss_rt_width-val is deprecated.  Use sensor_interface_msgs-msg:uss_rt_width instead.")
  (uss_rt_width m))

(cl:ensure-generic-function 'uss_config_status-val :lambda-list '(m))
(cl:defmethod uss_config_status-val ((m <UltrasonicBaseInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:uss_config_status-val is deprecated.  Use sensor_interface_msgs-msg:uss_config_status instead.")
  (uss_config_status m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <UltrasonicBaseInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:reserved-val is deprecated.  Use sensor_interface_msgs-msg:reserved instead.")
  (reserved m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UltrasonicBaseInfo>) ostream)
  "Serializes a message object of type '<UltrasonicBaseInfo>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'uss_echo_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'uss_echo_info))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'first_echo_amplitude)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'first_echo_amplitude)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'uss_temperature)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'burst_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'uss_rt_width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'uss_config_status)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UltrasonicBaseInfo>) istream)
  "Deserializes a message object of type '<UltrasonicBaseInfo>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'uss_echo_info) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'uss_echo_info)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_interface_msgs-msg:UltrasonicEhcoInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'first_echo_amplitude)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'first_echo_amplitude)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uss_temperature) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'burst_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'uss_rt_width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'uss_config_status)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reserved) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reserved) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UltrasonicBaseInfo>)))
  "Returns string type for a message object of type '<UltrasonicBaseInfo>"
  "sensor_interface_msgs/UltrasonicBaseInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UltrasonicBaseInfo)))
  "Returns string type for a message object of type 'UltrasonicBaseInfo"
  "sensor_interface_msgs/UltrasonicBaseInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UltrasonicBaseInfo>)))
  "Returns md5sum for a message object of type '<UltrasonicBaseInfo>"
  "2701173ac338dcb95699265577b91028")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UltrasonicBaseInfo)))
  "Returns md5sum for a message object of type 'UltrasonicBaseInfo"
  "2701173ac338dcb95699265577b91028")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UltrasonicBaseInfo>)))
  "Returns full string definition for message of type '<UltrasonicBaseInfo>"
  (cl:format cl:nil "sensor_interface_msgs/UltrasonicEhcoInfo[] uss_echo_info~%uint16 first_echo_amplitude~%int16 uss_temperature~%uint64 timestamp_us~%uint8 burst_mode~%uint8 uss_rt_width~%uint8 uss_config_status~%string reserved~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicEhcoInfo~%float32 uss_echo_distance~%uint64 uss_echo_width~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UltrasonicBaseInfo)))
  "Returns full string definition for message of type 'UltrasonicBaseInfo"
  (cl:format cl:nil "sensor_interface_msgs/UltrasonicEhcoInfo[] uss_echo_info~%uint16 first_echo_amplitude~%int16 uss_temperature~%uint64 timestamp_us~%uint8 burst_mode~%uint8 uss_rt_width~%uint8 uss_config_status~%string reserved~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicEhcoInfo~%float32 uss_echo_distance~%uint64 uss_echo_width~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UltrasonicBaseInfo>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'uss_echo_info) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     2
     2
     8
     1
     1
     1
     4 (cl:length (cl:slot-value msg 'reserved))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UltrasonicBaseInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'UltrasonicBaseInfo
    (cl:cons ':uss_echo_info (uss_echo_info msg))
    (cl:cons ':first_echo_amplitude (first_echo_amplitude msg))
    (cl:cons ':uss_temperature (uss_temperature msg))
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':burst_mode (burst_mode msg))
    (cl:cons ':uss_rt_width (uss_rt_width msg))
    (cl:cons ':uss_config_status (uss_config_status msg))
    (cl:cons ':reserved (reserved msg))
))
