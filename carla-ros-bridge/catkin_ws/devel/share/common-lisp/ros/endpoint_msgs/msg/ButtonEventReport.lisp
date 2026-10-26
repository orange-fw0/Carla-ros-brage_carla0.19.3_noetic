; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude ButtonEventReport.msg.html

(cl:defclass <ButtonEventReport> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (button_event_report_data
    :reader button_event_report_data
    :initarg :button_event_report_data
    :type endpoint_msgs-msg:ButtonEventReportData
    :initform (cl:make-instance 'endpoint_msgs-msg:ButtonEventReportData))
   (roller_steps_L
    :reader roller_steps_L
    :initarg :roller_steps_L
    :type cl:fixnum
    :initform 0)
   (roller_steps_R
    :reader roller_steps_R
    :initarg :roller_steps_R
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ButtonEventReport (<ButtonEventReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ButtonEventReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ButtonEventReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<ButtonEventReport> is deprecated: use endpoint_msgs-msg:ButtonEventReport instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <ButtonEventReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'button_event_report_data-val :lambda-list '(m))
(cl:defmethod button_event_report_data-val ((m <ButtonEventReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:button_event_report_data-val is deprecated.  Use endpoint_msgs-msg:button_event_report_data instead.")
  (button_event_report_data m))

(cl:ensure-generic-function 'roller_steps_L-val :lambda-list '(m))
(cl:defmethod roller_steps_L-val ((m <ButtonEventReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:roller_steps_L-val is deprecated.  Use endpoint_msgs-msg:roller_steps_L instead.")
  (roller_steps_L m))

(cl:ensure-generic-function 'roller_steps_R-val :lambda-list '(m))
(cl:defmethod roller_steps_R-val ((m <ButtonEventReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:roller_steps_R-val is deprecated.  Use endpoint_msgs-msg:roller_steps_R instead.")
  (roller_steps_R m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ButtonEventReport>)))
    "Constants for message type '<ButtonEventReport>"
  '((:BUTTON_EVENT_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ButtonEventReport)))
    "Constants for message type 'ButtonEventReport"
  '((:BUTTON_EVENT_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ButtonEventReport>) ostream)
  "Serializes a message object of type '<ButtonEventReport>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'button_event_report_data) ostream)
  (cl:let* ((signed (cl:slot-value msg 'roller_steps_L)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'roller_steps_R)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ButtonEventReport>) istream)
  "Deserializes a message object of type '<ButtonEventReport>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'button_event_report_data) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'roller_steps_L) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'roller_steps_R) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ButtonEventReport>)))
  "Returns string type for a message object of type '<ButtonEventReport>"
  "endpoint_msgs/ButtonEventReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ButtonEventReport)))
  "Returns string type for a message object of type 'ButtonEventReport"
  "endpoint_msgs/ButtonEventReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ButtonEventReport>)))
  "Returns md5sum for a message object of type '<ButtonEventReport>"
  "cef4de0ccb7d5e400a71459300b32f3c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ButtonEventReport)))
  "Returns md5sum for a message object of type 'ButtonEventReport"
  "cef4de0ccb7d5e400a71459300b32f3c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ButtonEventReport>)))
  "Returns full string definition for message of type '<ButtonEventReport>"
  (cl:format cl:nil "uint8 BUTTON_EVENT_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/ButtonEventReportData button_event_report_data~%int16 roller_steps_L~%int16 roller_steps_R~%~%================================================================================~%MSG: endpoint_msgs/ButtonEventReportData~%uint64 timestamp_us~%endpoint_msgs/ButtonEvent[] button_event_array~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/ButtonEvent~%uint8 BUTTON1 = 0~%uint8 BUTTON2 = 1~%uint8 BUTTON3 = 2~%uint8 BUTTON4 = 3~%uint8 BUTTON5 = 4~%uint8 BUTTON6 = 5~%uint8 BUTTON7 = 6~%uint8 BUTTON8 = 7~%uint8 BUTTON9 = 8~%uint8 BUTTON10 = 9~%uint8 BUTTON11 = 10~%uint8 BUTTON12 = 11~%uint8 BUTTON13 = 12~%uint8 BUTTON14 = 13~%uint8 BUTTON15 = 14~%uint8 BUTTON16 = 15~%uint8 BUTTON17 = 16~%uint8 BUTTON18 = 17~%uint8 BUTTON19 = 18~%uint8 BUTTON20 = 19~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ButtonEventReport)))
  "Returns full string definition for message of type 'ButtonEventReport"
  (cl:format cl:nil "uint8 BUTTON_EVENT_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/ButtonEventReportData button_event_report_data~%int16 roller_steps_L~%int16 roller_steps_R~%~%================================================================================~%MSG: endpoint_msgs/ButtonEventReportData~%uint64 timestamp_us~%endpoint_msgs/ButtonEvent[] button_event_array~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/ButtonEvent~%uint8 BUTTON1 = 0~%uint8 BUTTON2 = 1~%uint8 BUTTON3 = 2~%uint8 BUTTON4 = 3~%uint8 BUTTON5 = 4~%uint8 BUTTON6 = 5~%uint8 BUTTON7 = 6~%uint8 BUTTON8 = 7~%uint8 BUTTON9 = 8~%uint8 BUTTON10 = 9~%uint8 BUTTON11 = 10~%uint8 BUTTON12 = 11~%uint8 BUTTON13 = 12~%uint8 BUTTON14 = 13~%uint8 BUTTON15 = 14~%uint8 BUTTON16 = 15~%uint8 BUTTON17 = 16~%uint8 BUTTON18 = 17~%uint8 BUTTON19 = 18~%uint8 BUTTON20 = 19~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ButtonEventReport>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'button_event_report_data))
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ButtonEventReport>))
  "Converts a ROS message object to a list"
  (cl:list 'ButtonEventReport
    (cl:cons ':available (available msg))
    (cl:cons ':button_event_report_data (button_event_report_data msg))
    (cl:cons ':roller_steps_L (roller_steps_L msg))
    (cl:cons ':roller_steps_R (roller_steps_R msg))
))
