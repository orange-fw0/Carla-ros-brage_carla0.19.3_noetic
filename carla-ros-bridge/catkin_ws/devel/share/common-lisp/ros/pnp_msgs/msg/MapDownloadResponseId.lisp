; Auto-generated. Do not edit!


(cl:in-package pnp_msgs-msg)


;//! \htmlinclude MapDownloadResponseId.msg.html

(cl:defclass <MapDownloadResponseId> (roslisp-msg-protocol:ros-message)
  ((response_id
    :reader response_id
    :initarg :response_id
    :type cl:integer
    :initform 0)
   (route_id
    :reader route_id
    :initarg :route_id
    :type cl:integer
    :initform 0))
)

(cl:defclass MapDownloadResponseId (<MapDownloadResponseId>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapDownloadResponseId>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapDownloadResponseId)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pnp_msgs-msg:<MapDownloadResponseId> is deprecated: use pnp_msgs-msg:MapDownloadResponseId instead.")))

(cl:ensure-generic-function 'response_id-val :lambda-list '(m))
(cl:defmethod response_id-val ((m <MapDownloadResponseId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:response_id-val is deprecated.  Use pnp_msgs-msg:response_id instead.")
  (response_id m))

(cl:ensure-generic-function 'route_id-val :lambda-list '(m))
(cl:defmethod route_id-val ((m <MapDownloadResponseId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:route_id-val is deprecated.  Use pnp_msgs-msg:route_id instead.")
  (route_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapDownloadResponseId>) ostream)
  "Serializes a message object of type '<MapDownloadResponseId>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'response_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'response_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'response_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'response_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'response_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'response_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'response_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'response_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'route_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'route_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'route_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'route_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'route_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'route_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'route_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'route_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapDownloadResponseId>) istream)
  "Deserializes a message object of type '<MapDownloadResponseId>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'response_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'response_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'response_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'response_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'response_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'response_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'response_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'response_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'route_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'route_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'route_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'route_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'route_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'route_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'route_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'route_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapDownloadResponseId>)))
  "Returns string type for a message object of type '<MapDownloadResponseId>"
  "pnp_msgs/MapDownloadResponseId")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapDownloadResponseId)))
  "Returns string type for a message object of type 'MapDownloadResponseId"
  "pnp_msgs/MapDownloadResponseId")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapDownloadResponseId>)))
  "Returns md5sum for a message object of type '<MapDownloadResponseId>"
  "2131083ec29f40d2fc722363ef9ba064")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapDownloadResponseId)))
  "Returns md5sum for a message object of type 'MapDownloadResponseId"
  "2131083ec29f40d2fc722363ef9ba064")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapDownloadResponseId>)))
  "Returns full string definition for message of type '<MapDownloadResponseId>"
  (cl:format cl:nil "uint64 response_id~%uint64 route_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapDownloadResponseId)))
  "Returns full string definition for message of type 'MapDownloadResponseId"
  (cl:format cl:nil "uint64 response_id~%uint64 route_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapDownloadResponseId>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapDownloadResponseId>))
  "Converts a ROS message object to a list"
  (cl:list 'MapDownloadResponseId
    (cl:cons ':response_id (response_id msg))
    (cl:cons ':route_id (route_id msg))
))
