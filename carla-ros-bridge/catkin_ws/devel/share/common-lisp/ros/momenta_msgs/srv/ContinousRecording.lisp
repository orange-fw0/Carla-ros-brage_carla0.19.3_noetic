; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-srv)


;//! \htmlinclude ContinousRecording-request.msg.html

(cl:defclass <ContinousRecording-request> (roslisp-msg-protocol:ros-message)
  ((record
    :reader record
    :initarg :record
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ContinousRecording-request (<ContinousRecording-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ContinousRecording-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ContinousRecording-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-srv:<ContinousRecording-request> is deprecated: use momenta_msgs-srv:ContinousRecording-request instead.")))

(cl:ensure-generic-function 'record-val :lambda-list '(m))
(cl:defmethod record-val ((m <ContinousRecording-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-srv:record-val is deprecated.  Use momenta_msgs-srv:record instead.")
  (record m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ContinousRecording-request>) ostream)
  "Serializes a message object of type '<ContinousRecording-request>"
  (cl:let* ((signed (cl:slot-value msg 'record)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ContinousRecording-request>) istream)
  "Deserializes a message object of type '<ContinousRecording-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'record) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ContinousRecording-request>)))
  "Returns string type for a service object of type '<ContinousRecording-request>"
  "momenta_msgs/ContinousRecordingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ContinousRecording-request)))
  "Returns string type for a service object of type 'ContinousRecording-request"
  "momenta_msgs/ContinousRecordingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ContinousRecording-request>)))
  "Returns md5sum for a message object of type '<ContinousRecording-request>"
  "73923246d4a24d5573712c46b4095644")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ContinousRecording-request)))
  "Returns md5sum for a message object of type 'ContinousRecording-request"
  "73923246d4a24d5573712c46b4095644")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ContinousRecording-request>)))
  "Returns full string definition for message of type '<ContinousRecording-request>"
  (cl:format cl:nil "int8 record~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ContinousRecording-request)))
  "Returns full string definition for message of type 'ContinousRecording-request"
  (cl:format cl:nil "int8 record~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ContinousRecording-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ContinousRecording-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ContinousRecording-request
    (cl:cons ':record (record msg))
))
;//! \htmlinclude ContinousRecording-response.msg.html

(cl:defclass <ContinousRecording-response> (roslisp-msg-protocol:ros-message)
  ((resp
    :reader resp
    :initarg :resp
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ContinousRecording-response (<ContinousRecording-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ContinousRecording-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ContinousRecording-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-srv:<ContinousRecording-response> is deprecated: use momenta_msgs-srv:ContinousRecording-response instead.")))

(cl:ensure-generic-function 'resp-val :lambda-list '(m))
(cl:defmethod resp-val ((m <ContinousRecording-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-srv:resp-val is deprecated.  Use momenta_msgs-srv:resp instead.")
  (resp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ContinousRecording-response>) ostream)
  "Serializes a message object of type '<ContinousRecording-response>"
  (cl:let* ((signed (cl:slot-value msg 'resp)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ContinousRecording-response>) istream)
  "Deserializes a message object of type '<ContinousRecording-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'resp) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ContinousRecording-response>)))
  "Returns string type for a service object of type '<ContinousRecording-response>"
  "momenta_msgs/ContinousRecordingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ContinousRecording-response)))
  "Returns string type for a service object of type 'ContinousRecording-response"
  "momenta_msgs/ContinousRecordingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ContinousRecording-response>)))
  "Returns md5sum for a message object of type '<ContinousRecording-response>"
  "73923246d4a24d5573712c46b4095644")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ContinousRecording-response)))
  "Returns md5sum for a message object of type 'ContinousRecording-response"
  "73923246d4a24d5573712c46b4095644")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ContinousRecording-response>)))
  "Returns full string definition for message of type '<ContinousRecording-response>"
  (cl:format cl:nil "int8 resp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ContinousRecording-response)))
  "Returns full string definition for message of type 'ContinousRecording-response"
  (cl:format cl:nil "int8 resp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ContinousRecording-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ContinousRecording-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ContinousRecording-response
    (cl:cons ':resp (resp msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ContinousRecording)))
  'ContinousRecording-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ContinousRecording)))
  'ContinousRecording-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ContinousRecording)))
  "Returns string type for a service object of type '<ContinousRecording>"
  "momenta_msgs/ContinousRecording")