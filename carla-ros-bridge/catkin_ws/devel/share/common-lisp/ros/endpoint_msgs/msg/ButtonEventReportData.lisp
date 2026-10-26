; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude ButtonEventReportData.msg.html

(cl:defclass <ButtonEventReportData> (roslisp-msg-protocol:ros-message)
  ((timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (button_event_array
    :reader button_event_array
    :initarg :button_event_array
    :type (cl:vector endpoint_msgs-msg:ButtonEvent)
   :initform (cl:make-array 0 :element-type 'endpoint_msgs-msg:ButtonEvent :initial-element (cl:make-instance 'endpoint_msgs-msg:ButtonEvent)))
   (valid
    :reader valid
    :initarg :valid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ButtonEventReportData (<ButtonEventReportData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ButtonEventReportData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ButtonEventReportData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<ButtonEventReportData> is deprecated: use endpoint_msgs-msg:ButtonEventReportData instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <ButtonEventReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:timestamp_us-val is deprecated.  Use endpoint_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'button_event_array-val :lambda-list '(m))
(cl:defmethod button_event_array-val ((m <ButtonEventReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:button_event_array-val is deprecated.  Use endpoint_msgs-msg:button_event_array instead.")
  (button_event_array m))

(cl:ensure-generic-function 'valid-val :lambda-list '(m))
(cl:defmethod valid-val ((m <ButtonEventReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:valid-val is deprecated.  Use endpoint_msgs-msg:valid instead.")
  (valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ButtonEventReportData>) ostream)
  "Serializes a message object of type '<ButtonEventReportData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'button_event_array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'button_event_array))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ButtonEventReportData>) istream)
  "Deserializes a message object of type '<ButtonEventReportData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'button_event_array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'button_event_array)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'endpoint_msgs-msg:ButtonEvent))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ButtonEventReportData>)))
  "Returns string type for a message object of type '<ButtonEventReportData>"
  "endpoint_msgs/ButtonEventReportData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ButtonEventReportData)))
  "Returns string type for a message object of type 'ButtonEventReportData"
  "endpoint_msgs/ButtonEventReportData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ButtonEventReportData>)))
  "Returns md5sum for a message object of type '<ButtonEventReportData>"
  "8aa5f88ea6c9cfdaeafa68023f4e2b19")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ButtonEventReportData)))
  "Returns md5sum for a message object of type 'ButtonEventReportData"
  "8aa5f88ea6c9cfdaeafa68023f4e2b19")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ButtonEventReportData>)))
  "Returns full string definition for message of type '<ButtonEventReportData>"
  (cl:format cl:nil "uint64 timestamp_us~%endpoint_msgs/ButtonEvent[] button_event_array~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/ButtonEvent~%uint8 BUTTON1 = 0~%uint8 BUTTON2 = 1~%uint8 BUTTON3 = 2~%uint8 BUTTON4 = 3~%uint8 BUTTON5 = 4~%uint8 BUTTON6 = 5~%uint8 BUTTON7 = 6~%uint8 BUTTON8 = 7~%uint8 BUTTON9 = 8~%uint8 BUTTON10 = 9~%uint8 BUTTON11 = 10~%uint8 BUTTON12 = 11~%uint8 BUTTON13 = 12~%uint8 BUTTON14 = 13~%uint8 BUTTON15 = 14~%uint8 BUTTON16 = 15~%uint8 BUTTON17 = 16~%uint8 BUTTON18 = 17~%uint8 BUTTON19 = 18~%uint8 BUTTON20 = 19~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ButtonEventReportData)))
  "Returns full string definition for message of type 'ButtonEventReportData"
  (cl:format cl:nil "uint64 timestamp_us~%endpoint_msgs/ButtonEvent[] button_event_array~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/ButtonEvent~%uint8 BUTTON1 = 0~%uint8 BUTTON2 = 1~%uint8 BUTTON3 = 2~%uint8 BUTTON4 = 3~%uint8 BUTTON5 = 4~%uint8 BUTTON6 = 5~%uint8 BUTTON7 = 6~%uint8 BUTTON8 = 7~%uint8 BUTTON9 = 8~%uint8 BUTTON10 = 9~%uint8 BUTTON11 = 10~%uint8 BUTTON12 = 11~%uint8 BUTTON13 = 12~%uint8 BUTTON14 = 13~%uint8 BUTTON15 = 14~%uint8 BUTTON16 = 15~%uint8 BUTTON17 = 16~%uint8 BUTTON18 = 17~%uint8 BUTTON19 = 18~%uint8 BUTTON20 = 19~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ButtonEventReportData>))
  (cl:+ 0
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'button_event_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ButtonEventReportData>))
  "Converts a ROS message object to a list"
  (cl:list 'ButtonEventReportData
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':button_event_array (button_event_array msg))
    (cl:cons ':valid (valid msg))
))
