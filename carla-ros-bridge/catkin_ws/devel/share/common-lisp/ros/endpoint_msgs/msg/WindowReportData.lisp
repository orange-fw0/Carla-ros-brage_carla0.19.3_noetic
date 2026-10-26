; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude WindowReportData.msg.html

(cl:defclass <WindowReportData> (roslisp-msg-protocol:ros-message)
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
   (window_state_left_front
    :reader window_state_left_front
    :initarg :window_state_left_front
    :type endpoint_msgs-msg:WindowState
    :initform (cl:make-instance 'endpoint_msgs-msg:WindowState))
   (window_state_right_front
    :reader window_state_right_front
    :initarg :window_state_right_front
    :type endpoint_msgs-msg:WindowState
    :initform (cl:make-instance 'endpoint_msgs-msg:WindowState))
   (window_state_left_rear
    :reader window_state_left_rear
    :initarg :window_state_left_rear
    :type endpoint_msgs-msg:WindowState
    :initform (cl:make-instance 'endpoint_msgs-msg:WindowState))
   (window_state_right_rear
    :reader window_state_right_rear
    :initarg :window_state_right_rear
    :type endpoint_msgs-msg:WindowState
    :initform (cl:make-instance 'endpoint_msgs-msg:WindowState))
   (window_state_top
    :reader window_state_top
    :initarg :window_state_top
    :type endpoint_msgs-msg:WindowState
    :initform (cl:make-instance 'endpoint_msgs-msg:WindowState))
   (valid
    :reader valid
    :initarg :valid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass WindowReportData (<WindowReportData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WindowReportData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WindowReportData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<WindowReportData> is deprecated: use endpoint_msgs-msg:WindowReportData instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <WindowReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:timestamp_us-val is deprecated.  Use endpoint_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'window_lock-val :lambda-list '(m))
(cl:defmethod window_lock-val ((m <WindowReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:window_lock-val is deprecated.  Use endpoint_msgs-msg:window_lock instead.")
  (window_lock m))

(cl:ensure-generic-function 'window_state_left_front-val :lambda-list '(m))
(cl:defmethod window_state_left_front-val ((m <WindowReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:window_state_left_front-val is deprecated.  Use endpoint_msgs-msg:window_state_left_front instead.")
  (window_state_left_front m))

(cl:ensure-generic-function 'window_state_right_front-val :lambda-list '(m))
(cl:defmethod window_state_right_front-val ((m <WindowReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:window_state_right_front-val is deprecated.  Use endpoint_msgs-msg:window_state_right_front instead.")
  (window_state_right_front m))

(cl:ensure-generic-function 'window_state_left_rear-val :lambda-list '(m))
(cl:defmethod window_state_left_rear-val ((m <WindowReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:window_state_left_rear-val is deprecated.  Use endpoint_msgs-msg:window_state_left_rear instead.")
  (window_state_left_rear m))

(cl:ensure-generic-function 'window_state_right_rear-val :lambda-list '(m))
(cl:defmethod window_state_right_rear-val ((m <WindowReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:window_state_right_rear-val is deprecated.  Use endpoint_msgs-msg:window_state_right_rear instead.")
  (window_state_right_rear m))

(cl:ensure-generic-function 'window_state_top-val :lambda-list '(m))
(cl:defmethod window_state_top-val ((m <WindowReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:window_state_top-val is deprecated.  Use endpoint_msgs-msg:window_state_top instead.")
  (window_state_top m))

(cl:ensure-generic-function 'valid-val :lambda-list '(m))
(cl:defmethod valid-val ((m <WindowReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:valid-val is deprecated.  Use endpoint_msgs-msg:valid instead.")
  (valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WindowReportData>) ostream)
  "Serializes a message object of type '<WindowReportData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'window_lock) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'window_state_left_front) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'window_state_right_front) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'window_state_left_rear) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'window_state_right_rear) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'window_state_top) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WindowReportData>) istream)
  "Deserializes a message object of type '<WindowReportData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'window_lock) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'window_state_left_front) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'window_state_right_front) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'window_state_left_rear) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'window_state_right_rear) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'window_state_top) istream)
    (cl:setf (cl:slot-value msg 'valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WindowReportData>)))
  "Returns string type for a message object of type '<WindowReportData>"
  "endpoint_msgs/WindowReportData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WindowReportData)))
  "Returns string type for a message object of type 'WindowReportData"
  "endpoint_msgs/WindowReportData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WindowReportData>)))
  "Returns md5sum for a message object of type '<WindowReportData>"
  "f072ee52e155260b4ecbe7f25e3f6c5a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WindowReportData)))
  "Returns md5sum for a message object of type 'WindowReportData"
  "f072ee52e155260b4ecbe7f25e3f6c5a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WindowReportData>)))
  "Returns full string definition for message of type '<WindowReportData>"
  (cl:format cl:nil "uint64 timestamp_us~%bool window_lock~%endpoint_msgs/WindowState window_state_left_front~%endpoint_msgs/WindowState window_state_right_front~%endpoint_msgs/WindowState window_state_left_rear~%endpoint_msgs/WindowState window_state_right_rear~%endpoint_msgs/WindowState window_state_top~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/WindowState~%uint8 WINDOW_CLOSED = 0~%uint8 WINDOW_OPENED = 1~%uint8 WINDOW_MIDDLE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WindowReportData)))
  "Returns full string definition for message of type 'WindowReportData"
  (cl:format cl:nil "uint64 timestamp_us~%bool window_lock~%endpoint_msgs/WindowState window_state_left_front~%endpoint_msgs/WindowState window_state_right_front~%endpoint_msgs/WindowState window_state_left_rear~%endpoint_msgs/WindowState window_state_right_rear~%endpoint_msgs/WindowState window_state_top~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/WindowState~%uint8 WINDOW_CLOSED = 0~%uint8 WINDOW_OPENED = 1~%uint8 WINDOW_MIDDLE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WindowReportData>))
  (cl:+ 0
     8
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'window_state_left_front))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'window_state_right_front))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'window_state_left_rear))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'window_state_right_rear))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'window_state_top))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WindowReportData>))
  "Converts a ROS message object to a list"
  (cl:list 'WindowReportData
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':window_lock (window_lock msg))
    (cl:cons ':window_state_left_front (window_state_left_front msg))
    (cl:cons ':window_state_right_front (window_state_right_front msg))
    (cl:cons ':window_state_left_rear (window_state_left_rear msg))
    (cl:cons ':window_state_right_rear (window_state_right_rear msg))
    (cl:cons ':window_state_top (window_state_top msg))
    (cl:cons ':valid (valid msg))
))
