; Auto-generated. Do not edit!


(cl:in-package recorder_srvs-srv)


;//! \htmlinclude CheckRecording-request.msg.html

(cl:defclass <CheckRecording-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass CheckRecording-request (<CheckRecording-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckRecording-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckRecording-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name recorder_srvs-srv:<CheckRecording-request> is deprecated: use recorder_srvs-srv:CheckRecording-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckRecording-request>) ostream)
  "Serializes a message object of type '<CheckRecording-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckRecording-request>) istream)
  "Deserializes a message object of type '<CheckRecording-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckRecording-request>)))
  "Returns string type for a service object of type '<CheckRecording-request>"
  "recorder_srvs/CheckRecordingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckRecording-request)))
  "Returns string type for a service object of type 'CheckRecording-request"
  "recorder_srvs/CheckRecordingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckRecording-request>)))
  "Returns md5sum for a message object of type '<CheckRecording-request>"
  "ea026e75492e2a1c9737acaad829aeb2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckRecording-request)))
  "Returns md5sum for a message object of type 'CheckRecording-request"
  "ea026e75492e2a1c9737acaad829aeb2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckRecording-request>)))
  "Returns full string definition for message of type '<CheckRecording-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckRecording-request)))
  "Returns full string definition for message of type 'CheckRecording-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckRecording-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckRecording-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckRecording-request
))
;//! \htmlinclude CheckRecording-response.msg.html

(cl:defclass <CheckRecording-response> (roslisp-msg-protocol:ros-message)
  ((collection_disk_recording
    :reader collection_disk_recording
    :initarg :collection_disk_recording
    :type cl:boolean
    :initform cl:nil)
   (export_disk_recording
    :reader export_disk_recording
    :initarg :export_disk_recording
    :type cl:boolean
    :initform cl:nil)
   (any_disk_recording
    :reader any_disk_recording
    :initarg :any_disk_recording
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CheckRecording-response (<CheckRecording-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckRecording-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckRecording-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name recorder_srvs-srv:<CheckRecording-response> is deprecated: use recorder_srvs-srv:CheckRecording-response instead.")))

(cl:ensure-generic-function 'collection_disk_recording-val :lambda-list '(m))
(cl:defmethod collection_disk_recording-val ((m <CheckRecording-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:collection_disk_recording-val is deprecated.  Use recorder_srvs-srv:collection_disk_recording instead.")
  (collection_disk_recording m))

(cl:ensure-generic-function 'export_disk_recording-val :lambda-list '(m))
(cl:defmethod export_disk_recording-val ((m <CheckRecording-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:export_disk_recording-val is deprecated.  Use recorder_srvs-srv:export_disk_recording instead.")
  (export_disk_recording m))

(cl:ensure-generic-function 'any_disk_recording-val :lambda-list '(m))
(cl:defmethod any_disk_recording-val ((m <CheckRecording-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:any_disk_recording-val is deprecated.  Use recorder_srvs-srv:any_disk_recording instead.")
  (any_disk_recording m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckRecording-response>) ostream)
  "Serializes a message object of type '<CheckRecording-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'collection_disk_recording) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'export_disk_recording) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'any_disk_recording) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckRecording-response>) istream)
  "Deserializes a message object of type '<CheckRecording-response>"
    (cl:setf (cl:slot-value msg 'collection_disk_recording) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'export_disk_recording) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'any_disk_recording) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckRecording-response>)))
  "Returns string type for a service object of type '<CheckRecording-response>"
  "recorder_srvs/CheckRecordingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckRecording-response)))
  "Returns string type for a service object of type 'CheckRecording-response"
  "recorder_srvs/CheckRecordingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckRecording-response>)))
  "Returns md5sum for a message object of type '<CheckRecording-response>"
  "ea026e75492e2a1c9737acaad829aeb2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckRecording-response)))
  "Returns md5sum for a message object of type 'CheckRecording-response"
  "ea026e75492e2a1c9737acaad829aeb2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckRecording-response>)))
  "Returns full string definition for message of type '<CheckRecording-response>"
  (cl:format cl:nil "bool collection_disk_recording~%bool export_disk_recording~%bool any_disk_recording~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckRecording-response)))
  "Returns full string definition for message of type 'CheckRecording-response"
  (cl:format cl:nil "bool collection_disk_recording~%bool export_disk_recording~%bool any_disk_recording~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckRecording-response>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckRecording-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckRecording-response
    (cl:cons ':collection_disk_recording (collection_disk_recording msg))
    (cl:cons ':export_disk_recording (export_disk_recording msg))
    (cl:cons ':any_disk_recording (any_disk_recording msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CheckRecording)))
  'CheckRecording-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CheckRecording)))
  'CheckRecording-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckRecording)))
  "Returns string type for a service object of type '<CheckRecording>"
  "recorder_srvs/CheckRecording")