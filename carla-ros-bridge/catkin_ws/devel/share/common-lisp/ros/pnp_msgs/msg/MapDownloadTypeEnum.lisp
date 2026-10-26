; Auto-generated. Do not edit!


(cl:in-package pnp_msgs-msg)


;//! \htmlinclude MapDownloadTypeEnum.msg.html

(cl:defclass <MapDownloadTypeEnum> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MapDownloadTypeEnum (<MapDownloadTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapDownloadTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapDownloadTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pnp_msgs-msg:<MapDownloadTypeEnum> is deprecated: use pnp_msgs-msg:MapDownloadTypeEnum instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <MapDownloadTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:status-val is deprecated.  Use pnp_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MapDownloadTypeEnum>)))
    "Constants for message type '<MapDownloadTypeEnum>"
  '((:UNKNOWN . 0)
    (:CRUISING_SEARCH . 1)
    (:SD_DESTINATION_SEARCH . 2)
    (:SPECIFIC_ID . 3)
    (:RANGE_SEARCH . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MapDownloadTypeEnum)))
    "Constants for message type 'MapDownloadTypeEnum"
  '((:UNKNOWN . 0)
    (:CRUISING_SEARCH . 1)
    (:SD_DESTINATION_SEARCH . 2)
    (:SPECIFIC_ID . 3)
    (:RANGE_SEARCH . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapDownloadTypeEnum>) ostream)
  "Serializes a message object of type '<MapDownloadTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapDownloadTypeEnum>) istream)
  "Deserializes a message object of type '<MapDownloadTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapDownloadTypeEnum>)))
  "Returns string type for a message object of type '<MapDownloadTypeEnum>"
  "pnp_msgs/MapDownloadTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapDownloadTypeEnum)))
  "Returns string type for a message object of type 'MapDownloadTypeEnum"
  "pnp_msgs/MapDownloadTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapDownloadTypeEnum>)))
  "Returns md5sum for a message object of type '<MapDownloadTypeEnum>"
  "a12b9adcbb91d261498227c0f0a80ef6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapDownloadTypeEnum)))
  "Returns md5sum for a message object of type 'MapDownloadTypeEnum"
  "a12b9adcbb91d261498227c0f0a80ef6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapDownloadTypeEnum>)))
  "Returns full string definition for message of type '<MapDownloadTypeEnum>"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 CRUISING_SEARCH = 1~%uint8 SD_DESTINATION_SEARCH = 2~%uint8 SPECIFIC_ID = 3~%uint8 RANGE_SEARCH = 4~%uint8 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapDownloadTypeEnum)))
  "Returns full string definition for message of type 'MapDownloadTypeEnum"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 CRUISING_SEARCH = 1~%uint8 SD_DESTINATION_SEARCH = 2~%uint8 SPECIFIC_ID = 3~%uint8 RANGE_SEARCH = 4~%uint8 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapDownloadTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapDownloadTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'MapDownloadTypeEnum
    (cl:cons ':status (status msg))
))
