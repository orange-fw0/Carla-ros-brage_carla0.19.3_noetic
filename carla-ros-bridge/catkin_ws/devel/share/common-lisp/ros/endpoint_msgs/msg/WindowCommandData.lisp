; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude WindowCommandData.msg.html

(cl:defclass <WindowCommandData> (roslisp-msg-protocol:ros-message)
  ((timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (window_lock
    :reader window_lock
    :initarg :window_lock
    :type cl:boolean
    :initform cl:nil)
   (window_left_front
    :reader window_left_front
    :initarg :window_left_front
    :type endpoint_msgs-msg:WindowType
    :initform (cl:make-instance 'endpoint_msgs-msg:WindowType))
   (window_right_front
    :reader window_right_front
    :initarg :window_right_front
    :type endpoint_msgs-msg:WindowType
    :initform (cl:make-instance 'endpoint_msgs-msg:WindowType))
   (window_left_rear
    :reader window_left_rear
    :initarg :window_left_rear
    :type endpoint_msgs-msg:WindowType
    :initform (cl:make-instance 'endpoint_msgs-msg:WindowType))
   (window_right_rear
    :reader window_right_rear
    :initarg :window_right_rear
    :type endpoint_msgs-msg:WindowType
    :initform (cl:make-instance 'endpoint_msgs-msg:WindowType))
   (window_top
    :reader window_top
    :initarg :window_top
    :type endpoint_msgs-msg:WindowType
    :initform (cl:make-instance 'endpoint_msgs-msg:WindowType)))
)

(cl:defclass WindowCommandData (<WindowCommandData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WindowCommandData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WindowCommandData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<WindowCommandData> is deprecated: use endpoint_msgs-msg:WindowCommandData instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <WindowCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:timestamp_us-val is deprecated.  Use endpoint_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'window_lock-val :lambda-list '(m))
(cl:defmethod window_lock-val ((m <WindowCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:window_lock-val is deprecated.  Use endpoint_msgs-msg:window_lock instead.")
  (window_lock m))

(cl:ensure-generic-function 'window_left_front-val :lambda-list '(m))
(cl:defmethod window_left_front-val ((m <WindowCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:window_left_front-val is deprecated.  Use endpoint_msgs-msg:window_left_front instead.")
  (window_left_front m))

(cl:ensure-generic-function 'window_right_front-val :lambda-list '(m))
(cl:defmethod window_right_front-val ((m <WindowCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:window_right_front-val is deprecated.  Use endpoint_msgs-msg:window_right_front instead.")
  (window_right_front m))

(cl:ensure-generic-function 'window_left_rear-val :lambda-list '(m))
(cl:defmethod window_left_rear-val ((m <WindowCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:window_left_rear-val is deprecated.  Use endpoint_msgs-msg:window_left_rear instead.")
  (window_left_rear m))

(cl:ensure-generic-function 'window_right_rear-val :lambda-list '(m))
(cl:defmethod window_right_rear-val ((m <WindowCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:window_right_rear-val is deprecated.  Use endpoint_msgs-msg:window_right_rear instead.")
  (window_right_rear m))

(cl:ensure-generic-function 'window_top-val :lambda-list '(m))
(cl:defmethod window_top-val ((m <WindowCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:window_top-val is deprecated.  Use endpoint_msgs-msg:window_top instead.")
  (window_top m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WindowCommandData>) ostream)
  "Serializes a message object of type '<WindowCommandData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'window_lock) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'window_left_front) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'window_right_front) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'window_left_rear) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'window_right_rear) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'window_top) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WindowCommandData>) istream)
  "Deserializes a message object of type '<WindowCommandData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'window_lock) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'window_left_front) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'window_right_front) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'window_left_rear) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'window_right_rear) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'window_top) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WindowCommandData>)))
  "Returns string type for a message object of type '<WindowCommandData>"
  "endpoint_msgs/WindowCommandData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WindowCommandData)))
  "Returns string type for a message object of type 'WindowCommandData"
  "endpoint_msgs/WindowCommandData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WindowCommandData>)))
  "Returns md5sum for a message object of type '<WindowCommandData>"
  "7547f26f8cd2ee6600aeb12eff893dae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WindowCommandData)))
  "Returns md5sum for a message object of type 'WindowCommandData"
  "7547f26f8cd2ee6600aeb12eff893dae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WindowCommandData>)))
  "Returns full string definition for message of type '<WindowCommandData>"
  (cl:format cl:nil "uint64 timestamp_us~%bool window_lock~%endpoint_msgs/WindowType window_left_front~%endpoint_msgs/WindowType window_right_front~%endpoint_msgs/WindowType window_left_rear~%endpoint_msgs/WindowType window_right_rear~%endpoint_msgs/WindowType window_top~%~%================================================================================~%MSG: endpoint_msgs/WindowType~%uint8 LIFT_STOP = 0~%uint8 LIFT_UP = 1~%uint8 LIFT_DOWN = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WindowCommandData)))
  "Returns full string definition for message of type 'WindowCommandData"
  (cl:format cl:nil "uint64 timestamp_us~%bool window_lock~%endpoint_msgs/WindowType window_left_front~%endpoint_msgs/WindowType window_right_front~%endpoint_msgs/WindowType window_left_rear~%endpoint_msgs/WindowType window_right_rear~%endpoint_msgs/WindowType window_top~%~%================================================================================~%MSG: endpoint_msgs/WindowType~%uint8 LIFT_STOP = 0~%uint8 LIFT_UP = 1~%uint8 LIFT_DOWN = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WindowCommandData>))
  (cl:+ 0
     8
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'window_left_front))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'window_right_front))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'window_left_rear))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'window_right_rear))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'window_top))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WindowCommandData>))
  "Converts a ROS message object to a list"
  (cl:list 'WindowCommandData
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':window_lock (window_lock msg))
    (cl:cons ':window_left_front (window_left_front msg))
    (cl:cons ':window_right_front (window_right_front msg))
    (cl:cons ':window_left_rear (window_left_rear msg))
    (cl:cons ':window_right_rear (window_right_rear msg))
    (cl:cons ':window_top (window_top msg))
))
