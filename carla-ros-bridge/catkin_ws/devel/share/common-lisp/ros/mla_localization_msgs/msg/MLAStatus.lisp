; Auto-generated. Do not edit!


(cl:in-package mla_localization_msgs-msg)


;//! \htmlinclude MLAStatus.msg.html

(cl:defclass <MLAStatus> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (status_info
    :reader status_info
    :initarg :status_info
    :type mla_localization_msgs-msg:MLAStatusInfo
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLAStatusInfo)))
)

(cl:defclass MLAStatus (<MLAStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MLAStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MLAStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mla_localization_msgs-msg:<MLAStatus> is deprecated: use mla_localization_msgs-msg:MLAStatus instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <MLAStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:available-val is deprecated.  Use mla_localization_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'status_info-val :lambda-list '(m))
(cl:defmethod status_info-val ((m <MLAStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:status_info-val is deprecated.  Use mla_localization_msgs-msg:status_info instead.")
  (status_info m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MLAStatus>)))
    "Constants for message type '<MLAStatus>"
  '((:MLA_STATUS_INFO . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MLAStatus)))
    "Constants for message type 'MLAStatus"
  '((:MLA_STATUS_INFO . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MLAStatus>) ostream)
  "Serializes a message object of type '<MLAStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MLAStatus>) istream)
  "Deserializes a message object of type '<MLAStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MLAStatus>)))
  "Returns string type for a message object of type '<MLAStatus>"
  "mla_localization_msgs/MLAStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MLAStatus)))
  "Returns string type for a message object of type 'MLAStatus"
  "mla_localization_msgs/MLAStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MLAStatus>)))
  "Returns md5sum for a message object of type '<MLAStatus>"
  "474f248c5f262aa377048e5294ddeb3f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MLAStatus)))
  "Returns md5sum for a message object of type 'MLAStatus"
  "474f248c5f262aa377048e5294ddeb3f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MLAStatus>)))
  "Returns full string definition for message of type '<MLAStatus>"
  (cl:format cl:nil "uint8 MLA_STATUS_INFO = 1~%uint8 available~%mla_localization_msgs/MLAStatusInfo status_info~%~%================================================================================~%MSG: mla_localization_msgs/MLAStatusInfo~%uint8 quality~%uint64 common~%uint64 extended~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MLAStatus)))
  "Returns full string definition for message of type 'MLAStatus"
  (cl:format cl:nil "uint8 MLA_STATUS_INFO = 1~%uint8 available~%mla_localization_msgs/MLAStatusInfo status_info~%~%================================================================================~%MSG: mla_localization_msgs/MLAStatusInfo~%uint8 quality~%uint64 common~%uint64 extended~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MLAStatus>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MLAStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'MLAStatus
    (cl:cons ':available (available msg))
    (cl:cons ':status_info (status_info msg))
))
