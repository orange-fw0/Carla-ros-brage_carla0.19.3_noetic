; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude CarConfig.msg.html

(cl:defclass <CarConfig> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (lidar_type
    :reader lidar_type
    :initarg :lidar_type
    :type cl:string
    :initform "")
   (camera_type
    :reader camera_type
    :initarg :camera_type
    :type cl:string
    :initform "")
   (location_type
    :reader location_type
    :initarg :location_type
    :type cl:string
    :initform ""))
)

(cl:defclass CarConfig (<CarConfig>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CarConfig>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CarConfig)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<CarConfig> is deprecated: use momenta_msgs-msg:CarConfig instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CarConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:header-val is deprecated.  Use momenta_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'lidar_type-val :lambda-list '(m))
(cl:defmethod lidar_type-val ((m <CarConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:lidar_type-val is deprecated.  Use momenta_msgs-msg:lidar_type instead.")
  (lidar_type m))

(cl:ensure-generic-function 'camera_type-val :lambda-list '(m))
(cl:defmethod camera_type-val ((m <CarConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:camera_type-val is deprecated.  Use momenta_msgs-msg:camera_type instead.")
  (camera_type m))

(cl:ensure-generic-function 'location_type-val :lambda-list '(m))
(cl:defmethod location_type-val ((m <CarConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:location_type-val is deprecated.  Use momenta_msgs-msg:location_type instead.")
  (location_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CarConfig>) ostream)
  "Serializes a message object of type '<CarConfig>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'lidar_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'lidar_type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'camera_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'camera_type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'location_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'location_type))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CarConfig>) istream)
  "Deserializes a message object of type '<CarConfig>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lidar_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'lidar_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'camera_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'camera_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'location_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'location_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CarConfig>)))
  "Returns string type for a message object of type '<CarConfig>"
  "momenta_msgs/CarConfig")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CarConfig)))
  "Returns string type for a message object of type 'CarConfig"
  "momenta_msgs/CarConfig")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CarConfig>)))
  "Returns md5sum for a message object of type '<CarConfig>"
  "422fbf7a25d29ea17904f99623359848")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CarConfig)))
  "Returns md5sum for a message object of type 'CarConfig"
  "422fbf7a25d29ea17904f99623359848")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CarConfig>)))
  "Returns full string definition for message of type '<CarConfig>"
  (cl:format cl:nil "std_msgs/Header header~%string lidar_type~%string camera_type~%string location_type~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CarConfig)))
  "Returns full string definition for message of type 'CarConfig"
  (cl:format cl:nil "std_msgs/Header header~%string lidar_type~%string camera_type~%string location_type~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CarConfig>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'lidar_type))
     4 (cl:length (cl:slot-value msg 'camera_type))
     4 (cl:length (cl:slot-value msg 'location_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CarConfig>))
  "Converts a ROS message object to a list"
  (cl:list 'CarConfig
    (cl:cons ':header (header msg))
    (cl:cons ':lidar_type (lidar_type msg))
    (cl:cons ':camera_type (camera_type msg))
    (cl:cons ':location_type (location_type msg))
))
