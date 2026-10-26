; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-srv)


;//! \htmlinclude ReloadRoute-request.msg.html

(cl:defclass <ReloadRoute-request> (roslisp-msg-protocol:ros-message)
  ((route_file
    :reader route_file
    :initarg :route_file
    :type cl:string
    :initform ""))
)

(cl:defclass ReloadRoute-request (<ReloadRoute-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReloadRoute-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReloadRoute-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-srv:<ReloadRoute-request> is deprecated: use momenta_msgs-srv:ReloadRoute-request instead.")))

(cl:ensure-generic-function 'route_file-val :lambda-list '(m))
(cl:defmethod route_file-val ((m <ReloadRoute-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-srv:route_file-val is deprecated.  Use momenta_msgs-srv:route_file instead.")
  (route_file m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReloadRoute-request>) ostream)
  "Serializes a message object of type '<ReloadRoute-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'route_file))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'route_file))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReloadRoute-request>) istream)
  "Deserializes a message object of type '<ReloadRoute-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'route_file) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'route_file) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReloadRoute-request>)))
  "Returns string type for a service object of type '<ReloadRoute-request>"
  "momenta_msgs/ReloadRouteRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReloadRoute-request)))
  "Returns string type for a service object of type 'ReloadRoute-request"
  "momenta_msgs/ReloadRouteRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReloadRoute-request>)))
  "Returns md5sum for a message object of type '<ReloadRoute-request>"
  "f658c9c823055e3e59793158f6173b34")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReloadRoute-request)))
  "Returns md5sum for a message object of type 'ReloadRoute-request"
  "f658c9c823055e3e59793158f6173b34")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReloadRoute-request>)))
  "Returns full string definition for message of type '<ReloadRoute-request>"
  (cl:format cl:nil "string route_file~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReloadRoute-request)))
  "Returns full string definition for message of type 'ReloadRoute-request"
  (cl:format cl:nil "string route_file~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReloadRoute-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'route_file))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReloadRoute-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ReloadRoute-request
    (cl:cons ':route_file (route_file msg))
))
;//! \htmlinclude ReloadRoute-response.msg.html

(cl:defclass <ReloadRoute-response> (roslisp-msg-protocol:ros-message)
  ((road_count
    :reader road_count
    :initarg :road_count
    :type cl:integer
    :initform 0))
)

(cl:defclass ReloadRoute-response (<ReloadRoute-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReloadRoute-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReloadRoute-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-srv:<ReloadRoute-response> is deprecated: use momenta_msgs-srv:ReloadRoute-response instead.")))

(cl:ensure-generic-function 'road_count-val :lambda-list '(m))
(cl:defmethod road_count-val ((m <ReloadRoute-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-srv:road_count-val is deprecated.  Use momenta_msgs-srv:road_count instead.")
  (road_count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReloadRoute-response>) ostream)
  "Serializes a message object of type '<ReloadRoute-response>"
  (cl:let* ((signed (cl:slot-value msg 'road_count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReloadRoute-response>) istream)
  "Deserializes a message object of type '<ReloadRoute-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'road_count) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReloadRoute-response>)))
  "Returns string type for a service object of type '<ReloadRoute-response>"
  "momenta_msgs/ReloadRouteResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReloadRoute-response)))
  "Returns string type for a service object of type 'ReloadRoute-response"
  "momenta_msgs/ReloadRouteResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReloadRoute-response>)))
  "Returns md5sum for a message object of type '<ReloadRoute-response>"
  "f658c9c823055e3e59793158f6173b34")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReloadRoute-response)))
  "Returns md5sum for a message object of type 'ReloadRoute-response"
  "f658c9c823055e3e59793158f6173b34")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReloadRoute-response>)))
  "Returns full string definition for message of type '<ReloadRoute-response>"
  (cl:format cl:nil "int64 road_count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReloadRoute-response)))
  "Returns full string definition for message of type 'ReloadRoute-response"
  (cl:format cl:nil "int64 road_count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReloadRoute-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReloadRoute-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ReloadRoute-response
    (cl:cons ':road_count (road_count msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ReloadRoute)))
  'ReloadRoute-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ReloadRoute)))
  'ReloadRoute-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReloadRoute)))
  "Returns string type for a service object of type '<ReloadRoute>"
  "momenta_msgs/ReloadRoute")