; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-srv)


;//! \htmlinclude MonitorEnable-request.msg.html

(cl:defclass <MonitorEnable-request> (roslisp-msg-protocol:ros-message)
  ((enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MonitorEnable-request (<MonitorEnable-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MonitorEnable-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MonitorEnable-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-srv:<MonitorEnable-request> is deprecated: use momenta_msgs-srv:MonitorEnable-request instead.")))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <MonitorEnable-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-srv:enable-val is deprecated.  Use momenta_msgs-srv:enable instead.")
  (enable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MonitorEnable-request>) ostream)
  "Serializes a message object of type '<MonitorEnable-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MonitorEnable-request>) istream)
  "Deserializes a message object of type '<MonitorEnable-request>"
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MonitorEnable-request>)))
  "Returns string type for a service object of type '<MonitorEnable-request>"
  "momenta_msgs/MonitorEnableRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MonitorEnable-request)))
  "Returns string type for a service object of type 'MonitorEnable-request"
  "momenta_msgs/MonitorEnableRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MonitorEnable-request>)))
  "Returns md5sum for a message object of type '<MonitorEnable-request>"
  "6a0b406242562fc416b2c9c8a3efb051")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MonitorEnable-request)))
  "Returns md5sum for a message object of type 'MonitorEnable-request"
  "6a0b406242562fc416b2c9c8a3efb051")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MonitorEnable-request>)))
  "Returns full string definition for message of type '<MonitorEnable-request>"
  (cl:format cl:nil "bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MonitorEnable-request)))
  "Returns full string definition for message of type 'MonitorEnable-request"
  (cl:format cl:nil "bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MonitorEnable-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MonitorEnable-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MonitorEnable-request
    (cl:cons ':enable (enable msg))
))
;//! \htmlinclude MonitorEnable-response.msg.html

(cl:defclass <MonitorEnable-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MonitorEnable-response (<MonitorEnable-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MonitorEnable-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MonitorEnable-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-srv:<MonitorEnable-response> is deprecated: use momenta_msgs-srv:MonitorEnable-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <MonitorEnable-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-srv:success-val is deprecated.  Use momenta_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MonitorEnable-response>) ostream)
  "Serializes a message object of type '<MonitorEnable-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MonitorEnable-response>) istream)
  "Deserializes a message object of type '<MonitorEnable-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MonitorEnable-response>)))
  "Returns string type for a service object of type '<MonitorEnable-response>"
  "momenta_msgs/MonitorEnableResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MonitorEnable-response)))
  "Returns string type for a service object of type 'MonitorEnable-response"
  "momenta_msgs/MonitorEnableResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MonitorEnable-response>)))
  "Returns md5sum for a message object of type '<MonitorEnable-response>"
  "6a0b406242562fc416b2c9c8a3efb051")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MonitorEnable-response)))
  "Returns md5sum for a message object of type 'MonitorEnable-response"
  "6a0b406242562fc416b2c9c8a3efb051")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MonitorEnable-response>)))
  "Returns full string definition for message of type '<MonitorEnable-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MonitorEnable-response)))
  "Returns full string definition for message of type 'MonitorEnable-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MonitorEnable-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MonitorEnable-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MonitorEnable-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MonitorEnable)))
  'MonitorEnable-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MonitorEnable)))
  'MonitorEnable-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MonitorEnable)))
  "Returns string type for a service object of type '<MonitorEnable>"
  "momenta_msgs/MonitorEnable")