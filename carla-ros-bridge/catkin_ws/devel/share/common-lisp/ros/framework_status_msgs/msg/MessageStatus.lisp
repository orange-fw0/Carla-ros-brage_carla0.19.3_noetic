; Auto-generated. Do not edit!


(cl:in-package framework_status_msgs-msg)


;//! \htmlinclude MessageStatus.msg.html

(cl:defclass <MessageStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (message_status_list
    :reader message_status_list
    :initarg :message_status_list
    :type (cl:vector framework_status_msgs-msg:SingleMessageStatus)
   :initform (cl:make-array 0 :element-type 'framework_status_msgs-msg:SingleMessageStatus :initial-element (cl:make-instance 'framework_status_msgs-msg:SingleMessageStatus))))
)

(cl:defclass MessageStatus (<MessageStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MessageStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MessageStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name framework_status_msgs-msg:<MessageStatus> is deprecated: use framework_status_msgs-msg:MessageStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MessageStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:header-val is deprecated.  Use framework_status_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <MessageStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:timestamp_us-val is deprecated.  Use framework_status_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'message_status_list-val :lambda-list '(m))
(cl:defmethod message_status_list-val ((m <MessageStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:message_status_list-val is deprecated.  Use framework_status_msgs-msg:message_status_list instead.")
  (message_status_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MessageStatus>) ostream)
  "Serializes a message object of type '<MessageStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'message_status_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'message_status_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MessageStatus>) istream)
  "Deserializes a message object of type '<MessageStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
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
  (cl:setf (cl:slot-value msg 'message_status_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'message_status_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'framework_status_msgs-msg:SingleMessageStatus))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MessageStatus>)))
  "Returns string type for a message object of type '<MessageStatus>"
  "framework_status_msgs/MessageStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MessageStatus)))
  "Returns string type for a message object of type 'MessageStatus"
  "framework_status_msgs/MessageStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MessageStatus>)))
  "Returns md5sum for a message object of type '<MessageStatus>"
  "c33039895927ea8c4f54a135adcf66f3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MessageStatus)))
  "Returns md5sum for a message object of type 'MessageStatus"
  "c33039895927ea8c4f54a135adcf66f3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MessageStatus>)))
  "Returns full string definition for message of type '<MessageStatus>"
  (cl:format cl:nil "std_msgs/Header header~%uint64 timestamp_us~%framework_status_msgs/SingleMessageStatus[] message_status_list~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: framework_status_msgs/SingleMessageStatus~%uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%string name~%uint64 start_timestamp_us~%uint64 end_timestamp_us~%float32 frame_rate~%float32 standard_frame_rate~%framework_status_msgs/StatisticValue interval_ms~%framework_status_msgs/StatisticValue header_delay_ms~%uint32 current_loss_frame_count~%uint32 total_loss_frame_count~%bool in_order~%string reserved_info~%string message~%~%================================================================================~%MSG: framework_status_msgs/StatisticValue~%float32 average~%float32 standard_deviation~%float32 max_value~%float32 min_value~%string reserved_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MessageStatus)))
  "Returns full string definition for message of type 'MessageStatus"
  (cl:format cl:nil "std_msgs/Header header~%uint64 timestamp_us~%framework_status_msgs/SingleMessageStatus[] message_status_list~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: framework_status_msgs/SingleMessageStatus~%uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%string name~%uint64 start_timestamp_us~%uint64 end_timestamp_us~%float32 frame_rate~%float32 standard_frame_rate~%framework_status_msgs/StatisticValue interval_ms~%framework_status_msgs/StatisticValue header_delay_ms~%uint32 current_loss_frame_count~%uint32 total_loss_frame_count~%bool in_order~%string reserved_info~%string message~%~%================================================================================~%MSG: framework_status_msgs/StatisticValue~%float32 average~%float32 standard_deviation~%float32 max_value~%float32 min_value~%string reserved_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MessageStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'message_status_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MessageStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'MessageStatus
    (cl:cons ':header (header msg))
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':message_status_list (message_status_list msg))
))
