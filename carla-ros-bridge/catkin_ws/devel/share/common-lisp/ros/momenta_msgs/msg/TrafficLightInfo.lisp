; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude TrafficLightInfo.msg.html

(cl:defclass <TrafficLightInfo> (roslisp-msg-protocol:ros-message)
  ((patterns
    :reader patterns
    :initarg :patterns
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (direction
    :reader direction
    :initarg :direction
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrafficLightInfo (<TrafficLightInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficLightInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficLightInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<TrafficLightInfo> is deprecated: use momenta_msgs-msg:TrafficLightInfo instead.")))

(cl:ensure-generic-function 'patterns-val :lambda-list '(m))
(cl:defmethod patterns-val ((m <TrafficLightInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:patterns-val is deprecated.  Use momenta_msgs-msg:patterns instead.")
  (patterns m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <TrafficLightInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:direction-val is deprecated.  Use momenta_msgs-msg:direction instead.")
  (direction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficLightInfo>) ostream)
  "Serializes a message object of type '<TrafficLightInfo>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'patterns))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'patterns))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'direction)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficLightInfo>) istream)
  "Deserializes a message object of type '<TrafficLightInfo>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'patterns) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'patterns)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'direction)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficLightInfo>)))
  "Returns string type for a message object of type '<TrafficLightInfo>"
  "momenta_msgs/TrafficLightInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficLightInfo)))
  "Returns string type for a message object of type 'TrafficLightInfo"
  "momenta_msgs/TrafficLightInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficLightInfo>)))
  "Returns md5sum for a message object of type '<TrafficLightInfo>"
  "be2858035f52aa8eedeb478ad0ef7af1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficLightInfo)))
  "Returns md5sum for a message object of type 'TrafficLightInfo"
  "be2858035f52aa8eedeb478ad0ef7af1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficLightInfo>)))
  "Returns full string definition for message of type '<TrafficLightInfo>"
  (cl:format cl:nil "uint8[] patterns~%uint8 direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficLightInfo)))
  "Returns full string definition for message of type 'TrafficLightInfo"
  (cl:format cl:nil "uint8[] patterns~%uint8 direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficLightInfo>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'patterns) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficLightInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficLightInfo
    (cl:cons ':patterns (patterns msg))
    (cl:cons ':direction (direction msg))
))
