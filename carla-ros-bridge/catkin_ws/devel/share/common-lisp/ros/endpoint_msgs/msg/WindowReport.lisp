; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude WindowReport.msg.html

(cl:defclass <WindowReport> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (window_report_data
    :reader window_report_data
    :initarg :window_report_data
    :type endpoint_msgs-msg:WindowReportData
    :initform (cl:make-instance 'endpoint_msgs-msg:WindowReportData)))
)

(cl:defclass WindowReport (<WindowReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WindowReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WindowReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<WindowReport> is deprecated: use endpoint_msgs-msg:WindowReport instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <WindowReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'window_report_data-val :lambda-list '(m))
(cl:defmethod window_report_data-val ((m <WindowReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:window_report_data-val is deprecated.  Use endpoint_msgs-msg:window_report_data instead.")
  (window_report_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WindowReport>)))
    "Constants for message type '<WindowReport>"
  '((:WINDOW_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WindowReport)))
    "Constants for message type 'WindowReport"
  '((:WINDOW_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WindowReport>) ostream)
  "Serializes a message object of type '<WindowReport>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'window_report_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WindowReport>) istream)
  "Deserializes a message object of type '<WindowReport>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'window_report_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WindowReport>)))
  "Returns string type for a message object of type '<WindowReport>"
  "endpoint_msgs/WindowReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WindowReport)))
  "Returns string type for a message object of type 'WindowReport"
  "endpoint_msgs/WindowReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WindowReport>)))
  "Returns md5sum for a message object of type '<WindowReport>"
  "b329f38f5df393116359dbace4ca35c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WindowReport)))
  "Returns md5sum for a message object of type 'WindowReport"
  "b329f38f5df393116359dbace4ca35c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WindowReport>)))
  "Returns full string definition for message of type '<WindowReport>"
  (cl:format cl:nil "uint8 WINDOW_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/WindowReportData window_report_data~%~%================================================================================~%MSG: endpoint_msgs/WindowReportData~%uint64 timestamp_us~%bool window_lock~%endpoint_msgs/WindowState window_state_left_front~%endpoint_msgs/WindowState window_state_right_front~%endpoint_msgs/WindowState window_state_left_rear~%endpoint_msgs/WindowState window_state_right_rear~%endpoint_msgs/WindowState window_state_top~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/WindowState~%uint8 WINDOW_CLOSED = 0~%uint8 WINDOW_OPENED = 1~%uint8 WINDOW_MIDDLE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WindowReport)))
  "Returns full string definition for message of type 'WindowReport"
  (cl:format cl:nil "uint8 WINDOW_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/WindowReportData window_report_data~%~%================================================================================~%MSG: endpoint_msgs/WindowReportData~%uint64 timestamp_us~%bool window_lock~%endpoint_msgs/WindowState window_state_left_front~%endpoint_msgs/WindowState window_state_right_front~%endpoint_msgs/WindowState window_state_left_rear~%endpoint_msgs/WindowState window_state_right_rear~%endpoint_msgs/WindowState window_state_top~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/WindowState~%uint8 WINDOW_CLOSED = 0~%uint8 WINDOW_OPENED = 1~%uint8 WINDOW_MIDDLE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WindowReport>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'window_report_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WindowReport>))
  "Converts a ROS message object to a list"
  (cl:list 'WindowReport
    (cl:cons ':available (available msg))
    (cl:cons ':window_report_data (window_report_data msg))
))
