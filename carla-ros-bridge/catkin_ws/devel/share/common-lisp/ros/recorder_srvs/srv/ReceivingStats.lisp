; Auto-generated. Do not edit!


(cl:in-package recorder_srvs-srv)


;//! \htmlinclude ReceivingStats-request.msg.html

(cl:defclass <ReceivingStats-request> (roslisp-msg-protocol:ros-message)
  ((latest
    :reader latest
    :initarg :latest
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ReceivingStats-request (<ReceivingStats-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReceivingStats-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReceivingStats-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name recorder_srvs-srv:<ReceivingStats-request> is deprecated: use recorder_srvs-srv:ReceivingStats-request instead.")))

(cl:ensure-generic-function 'latest-val :lambda-list '(m))
(cl:defmethod latest-val ((m <ReceivingStats-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:latest-val is deprecated.  Use recorder_srvs-srv:latest instead.")
  (latest m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReceivingStats-request>) ostream)
  "Serializes a message object of type '<ReceivingStats-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'latest)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReceivingStats-request>) istream)
  "Deserializes a message object of type '<ReceivingStats-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'latest)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReceivingStats-request>)))
  "Returns string type for a service object of type '<ReceivingStats-request>"
  "recorder_srvs/ReceivingStatsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReceivingStats-request)))
  "Returns string type for a service object of type 'ReceivingStats-request"
  "recorder_srvs/ReceivingStatsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReceivingStats-request>)))
  "Returns md5sum for a message object of type '<ReceivingStats-request>"
  "c0ccbe04b62819578e1282021bf46b5c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReceivingStats-request)))
  "Returns md5sum for a message object of type 'ReceivingStats-request"
  "c0ccbe04b62819578e1282021bf46b5c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReceivingStats-request>)))
  "Returns full string definition for message of type '<ReceivingStats-request>"
  (cl:format cl:nil "uint8 latest~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReceivingStats-request)))
  "Returns full string definition for message of type 'ReceivingStats-request"
  (cl:format cl:nil "uint8 latest~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReceivingStats-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReceivingStats-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ReceivingStats-request
    (cl:cons ':latest (latest msg))
))
;//! \htmlinclude ReceivingStats-response.msg.html

(cl:defclass <ReceivingStats-response> (roslisp-msg-protocol:ros-message)
  ((samples
    :reader samples
    :initarg :samples
    :type (cl:vector recorder_msgs-msg:ReceivingSample)
   :initform (cl:make-array 0 :element-type 'recorder_msgs-msg:ReceivingSample :initial-element (cl:make-instance 'recorder_msgs-msg:ReceivingSample))))
)

(cl:defclass ReceivingStats-response (<ReceivingStats-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReceivingStats-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReceivingStats-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name recorder_srvs-srv:<ReceivingStats-response> is deprecated: use recorder_srvs-srv:ReceivingStats-response instead.")))

(cl:ensure-generic-function 'samples-val :lambda-list '(m))
(cl:defmethod samples-val ((m <ReceivingStats-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:samples-val is deprecated.  Use recorder_srvs-srv:samples instead.")
  (samples m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReceivingStats-response>) ostream)
  "Serializes a message object of type '<ReceivingStats-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'samples))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'samples))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReceivingStats-response>) istream)
  "Deserializes a message object of type '<ReceivingStats-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'samples) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'samples)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'recorder_msgs-msg:ReceivingSample))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReceivingStats-response>)))
  "Returns string type for a service object of type '<ReceivingStats-response>"
  "recorder_srvs/ReceivingStatsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReceivingStats-response)))
  "Returns string type for a service object of type 'ReceivingStats-response"
  "recorder_srvs/ReceivingStatsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReceivingStats-response>)))
  "Returns md5sum for a message object of type '<ReceivingStats-response>"
  "c0ccbe04b62819578e1282021bf46b5c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReceivingStats-response)))
  "Returns md5sum for a message object of type 'ReceivingStats-response"
  "c0ccbe04b62819578e1282021bf46b5c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReceivingStats-response>)))
  "Returns full string definition for message of type '<ReceivingStats-response>"
  (cl:format cl:nil "recorder_msgs/ReceivingSample[] samples~%~%~%================================================================================~%MSG: recorder_msgs/ReceivingSample~%time stamp~%duration interval~%float64 data_rate~%string[] topics~%string[] data_types~%uint32[] msg_counts~%float32[] msg_rates~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReceivingStats-response)))
  "Returns full string definition for message of type 'ReceivingStats-response"
  (cl:format cl:nil "recorder_msgs/ReceivingSample[] samples~%~%~%================================================================================~%MSG: recorder_msgs/ReceivingSample~%time stamp~%duration interval~%float64 data_rate~%string[] topics~%string[] data_types~%uint32[] msg_counts~%float32[] msg_rates~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReceivingStats-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'samples) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReceivingStats-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ReceivingStats-response
    (cl:cons ':samples (samples msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ReceivingStats)))
  'ReceivingStats-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ReceivingStats)))
  'ReceivingStats-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReceivingStats)))
  "Returns string type for a service object of type '<ReceivingStats>"
  "recorder_srvs/ReceivingStats")