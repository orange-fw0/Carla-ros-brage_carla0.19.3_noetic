; Auto-generated. Do not edit!


(cl:in-package framework_status_msgs-msg)


;//! \htmlinclude ExportDetails.msg.html

(cl:defclass <ExportDetails> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (export_details_data
    :reader export_details_data
    :initarg :export_details_data
    :type framework_status_msgs-msg:ExportDetailsData
    :initform (cl:make-instance 'framework_status_msgs-msg:ExportDetailsData)))
)

(cl:defclass ExportDetails (<ExportDetails>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExportDetails>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExportDetails)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name framework_status_msgs-msg:<ExportDetails> is deprecated: use framework_status_msgs-msg:ExportDetails instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <ExportDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:available-val is deprecated.  Use framework_status_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'export_details_data-val :lambda-list '(m))
(cl:defmethod export_details_data-val ((m <ExportDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:export_details_data-val is deprecated.  Use framework_status_msgs-msg:export_details_data instead.")
  (export_details_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ExportDetails>)))
    "Constants for message type '<ExportDetails>"
  '((:EXPORT_DETAILS_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ExportDetails)))
    "Constants for message type 'ExportDetails"
  '((:EXPORT_DETAILS_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExportDetails>) ostream)
  "Serializes a message object of type '<ExportDetails>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'export_details_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExportDetails>) istream)
  "Deserializes a message object of type '<ExportDetails>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'export_details_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExportDetails>)))
  "Returns string type for a message object of type '<ExportDetails>"
  "framework_status_msgs/ExportDetails")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExportDetails)))
  "Returns string type for a message object of type 'ExportDetails"
  "framework_status_msgs/ExportDetails")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExportDetails>)))
  "Returns md5sum for a message object of type '<ExportDetails>"
  "99c6a676a5113eb2962c5742c65fbbd7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExportDetails)))
  "Returns md5sum for a message object of type 'ExportDetails"
  "99c6a676a5113eb2962c5742c65fbbd7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExportDetails>)))
  "Returns full string definition for message of type '<ExportDetails>"
  (cl:format cl:nil "uint8 EXPORT_DETAILS_DATA = 1~%uint8 available~%framework_status_msgs/ExportDetailsData export_details_data~%~%================================================================================~%MSG: framework_status_msgs/ExportDetailsData~%uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%uint64 timestamp_us~%string reserved_info~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExportDetails)))
  "Returns full string definition for message of type 'ExportDetails"
  (cl:format cl:nil "uint8 EXPORT_DETAILS_DATA = 1~%uint8 available~%framework_status_msgs/ExportDetailsData export_details_data~%~%================================================================================~%MSG: framework_status_msgs/ExportDetailsData~%uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%uint64 timestamp_us~%string reserved_info~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExportDetails>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'export_details_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExportDetails>))
  "Converts a ROS message object to a list"
  (cl:list 'ExportDetails
    (cl:cons ':available (available msg))
    (cl:cons ':export_details_data (export_details_data msg))
))
