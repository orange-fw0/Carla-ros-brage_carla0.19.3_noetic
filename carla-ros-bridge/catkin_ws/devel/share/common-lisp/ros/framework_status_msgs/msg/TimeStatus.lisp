; Auto-generated. Do not edit!


(cl:in-package framework_status_msgs-msg)


;//! \htmlinclude TimeStatus.msg.html

(cl:defclass <TimeStatus> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (time_status_data
    :reader time_status_data
    :initarg :time_status_data
    :type framework_status_msgs-msg:TimeStatusData
    :initform (cl:make-instance 'framework_status_msgs-msg:TimeStatusData)))
)

(cl:defclass TimeStatus (<TimeStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TimeStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TimeStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name framework_status_msgs-msg:<TimeStatus> is deprecated: use framework_status_msgs-msg:TimeStatus instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <TimeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:available-val is deprecated.  Use framework_status_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'time_status_data-val :lambda-list '(m))
(cl:defmethod time_status_data-val ((m <TimeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:time_status_data-val is deprecated.  Use framework_status_msgs-msg:time_status_data instead.")
  (time_status_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TimeStatus>)))
    "Constants for message type '<TimeStatus>"
  '((:TIME_STATUS_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TimeStatus)))
    "Constants for message type 'TimeStatus"
  '((:TIME_STATUS_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TimeStatus>) ostream)
  "Serializes a message object of type '<TimeStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'time_status_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TimeStatus>) istream)
  "Deserializes a message object of type '<TimeStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'time_status_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TimeStatus>)))
  "Returns string type for a message object of type '<TimeStatus>"
  "framework_status_msgs/TimeStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TimeStatus)))
  "Returns string type for a message object of type 'TimeStatus"
  "framework_status_msgs/TimeStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TimeStatus>)))
  "Returns md5sum for a message object of type '<TimeStatus>"
  "583f0270ac255a2d8356cb80504fd440")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TimeStatus)))
  "Returns md5sum for a message object of type 'TimeStatus"
  "583f0270ac255a2d8356cb80504fd440")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TimeStatus>)))
  "Returns full string definition for message of type '<TimeStatus>"
  (cl:format cl:nil "uint8 TIME_STATUS_DATA = 1~%uint8 available~%framework_status_msgs/TimeStatusData time_status_data~%~%================================================================================~%MSG: framework_status_msgs/TimeStatusData~%uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%string reserved_info~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TimeStatus)))
  "Returns full string definition for message of type 'TimeStatus"
  (cl:format cl:nil "uint8 TIME_STATUS_DATA = 1~%uint8 available~%framework_status_msgs/TimeStatusData time_status_data~%~%================================================================================~%MSG: framework_status_msgs/TimeStatusData~%uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%string reserved_info~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TimeStatus>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'time_status_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TimeStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'TimeStatus
    (cl:cons ':available (available msg))
    (cl:cons ':time_status_data (time_status_data msg))
))
