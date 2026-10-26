; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude MagicCarpetMeta.msg.html

(cl:defclass <MagicCarpetMeta> (roslisp-msg-protocol:ros-message)
  ((sensor_timestamp_us
    :reader sensor_timestamp_us
    :initarg :sensor_timestamp_us
    :type cl:integer
    :initform 0)
   (camera_tag
    :reader camera_tag
    :initarg :camera_tag
    :type cl:string
    :initform ""))
)

(cl:defclass MagicCarpetMeta (<MagicCarpetMeta>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MagicCarpetMeta>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MagicCarpetMeta)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<MagicCarpetMeta> is deprecated: use perception_interface_msgs-msg:MagicCarpetMeta instead.")))

(cl:ensure-generic-function 'sensor_timestamp_us-val :lambda-list '(m))
(cl:defmethod sensor_timestamp_us-val ((m <MagicCarpetMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:sensor_timestamp_us-val is deprecated.  Use perception_interface_msgs-msg:sensor_timestamp_us instead.")
  (sensor_timestamp_us m))

(cl:ensure-generic-function 'camera_tag-val :lambda-list '(m))
(cl:defmethod camera_tag-val ((m <MagicCarpetMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:camera_tag-val is deprecated.  Use perception_interface_msgs-msg:camera_tag instead.")
  (camera_tag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MagicCarpetMeta>) ostream)
  "Serializes a message object of type '<MagicCarpetMeta>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sensor_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sensor_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sensor_timestamp_us)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'camera_tag))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'camera_tag))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MagicCarpetMeta>) istream)
  "Deserializes a message object of type '<MagicCarpetMeta>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sensor_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sensor_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sensor_timestamp_us)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'camera_tag) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'camera_tag) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MagicCarpetMeta>)))
  "Returns string type for a message object of type '<MagicCarpetMeta>"
  "perception_interface_msgs/MagicCarpetMeta")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MagicCarpetMeta)))
  "Returns string type for a message object of type 'MagicCarpetMeta"
  "perception_interface_msgs/MagicCarpetMeta")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MagicCarpetMeta>)))
  "Returns md5sum for a message object of type '<MagicCarpetMeta>"
  "109e7fe38bbb402d00aa8621ad7265e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MagicCarpetMeta)))
  "Returns md5sum for a message object of type 'MagicCarpetMeta"
  "109e7fe38bbb402d00aa8621ad7265e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MagicCarpetMeta>)))
  "Returns full string definition for message of type '<MagicCarpetMeta>"
  (cl:format cl:nil "uint32 sensor_timestamp_us~%string camera_tag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MagicCarpetMeta)))
  "Returns full string definition for message of type 'MagicCarpetMeta"
  (cl:format cl:nil "uint32 sensor_timestamp_us~%string camera_tag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MagicCarpetMeta>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'camera_tag))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MagicCarpetMeta>))
  "Converts a ROS message object to a list"
  (cl:list 'MagicCarpetMeta
    (cl:cons ':sensor_timestamp_us (sensor_timestamp_us msg))
    (cl:cons ':camera_tag (camera_tag msg))
))
