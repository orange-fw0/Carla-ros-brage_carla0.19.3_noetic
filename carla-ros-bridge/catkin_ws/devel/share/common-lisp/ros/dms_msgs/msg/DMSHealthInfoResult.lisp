; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSHealthInfoResult.msg.html

(cl:defclass <DMSHealthInfoResult> (roslisp-msg-protocol:ros-message)
  ((heart_rate_result
    :reader heart_rate_result
    :initarg :heart_rate_result
    :type dms_msgs-msg:DMSHeartRate
    :initform (cl:make-instance 'dms_msgs-msg:DMSHeartRate))
   (respiratory_rate
    :reader respiratory_rate
    :initarg :respiratory_rate
    :type dms_msgs-msg:RespiratoryRate
    :initform (cl:make-instance 'dms_msgs-msg:RespiratoryRate)))
)

(cl:defclass DMSHealthInfoResult (<DMSHealthInfoResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSHealthInfoResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSHealthInfoResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSHealthInfoResult> is deprecated: use dms_msgs-msg:DMSHealthInfoResult instead.")))

(cl:ensure-generic-function 'heart_rate_result-val :lambda-list '(m))
(cl:defmethod heart_rate_result-val ((m <DMSHealthInfoResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:heart_rate_result-val is deprecated.  Use dms_msgs-msg:heart_rate_result instead.")
  (heart_rate_result m))

(cl:ensure-generic-function 'respiratory_rate-val :lambda-list '(m))
(cl:defmethod respiratory_rate-val ((m <DMSHealthInfoResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:respiratory_rate-val is deprecated.  Use dms_msgs-msg:respiratory_rate instead.")
  (respiratory_rate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSHealthInfoResult>) ostream)
  "Serializes a message object of type '<DMSHealthInfoResult>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'heart_rate_result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'respiratory_rate) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSHealthInfoResult>) istream)
  "Deserializes a message object of type '<DMSHealthInfoResult>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'heart_rate_result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'respiratory_rate) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSHealthInfoResult>)))
  "Returns string type for a message object of type '<DMSHealthInfoResult>"
  "dms_msgs/DMSHealthInfoResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSHealthInfoResult)))
  "Returns string type for a message object of type 'DMSHealthInfoResult"
  "dms_msgs/DMSHealthInfoResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSHealthInfoResult>)))
  "Returns md5sum for a message object of type '<DMSHealthInfoResult>"
  "709a0586a1fbf002e6c59aea0e7e5ca8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSHealthInfoResult)))
  "Returns md5sum for a message object of type 'DMSHealthInfoResult"
  "709a0586a1fbf002e6c59aea0e7e5ca8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSHealthInfoResult>)))
  "Returns full string definition for message of type '<DMSHealthInfoResult>"
  (cl:format cl:nil "dms_msgs/DMSHeartRate heart_rate_result~%dms_msgs/RespiratoryRate respiratory_rate~%~%================================================================================~%MSG: dms_msgs/DMSHeartRate~%uint8 CURRENT_RATE_AVAILABLE = 1~%uint8 MAX_RATE_AVAILABLE = 2~%uint8 MIN_RATE_AVAILABLE = 4~%uint8 AVERAGE_RATE_AVAILABLE = 8~%uint8 HEART_RATE_VARIABILITY_AVAILABLE = 16~%uint8 RESERVED = 32~%uint8 available~%float32 current_rate~%float32 max_heart_rate~%float32 min_heart_rate~%float32 average_rate~%float32 heart_rate_variability~%float32 reserved~%~%================================================================================~%MSG: dms_msgs/RespiratoryRate~%uint8 RESP_RATE_AVAILABLE = 1~%uint8 RESERVED = 2~%uint8 RESERVED1 = 4~%uint8 available~%float32 resp_rate~%float32 reserved~%float32 reserved1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSHealthInfoResult)))
  "Returns full string definition for message of type 'DMSHealthInfoResult"
  (cl:format cl:nil "dms_msgs/DMSHeartRate heart_rate_result~%dms_msgs/RespiratoryRate respiratory_rate~%~%================================================================================~%MSG: dms_msgs/DMSHeartRate~%uint8 CURRENT_RATE_AVAILABLE = 1~%uint8 MAX_RATE_AVAILABLE = 2~%uint8 MIN_RATE_AVAILABLE = 4~%uint8 AVERAGE_RATE_AVAILABLE = 8~%uint8 HEART_RATE_VARIABILITY_AVAILABLE = 16~%uint8 RESERVED = 32~%uint8 available~%float32 current_rate~%float32 max_heart_rate~%float32 min_heart_rate~%float32 average_rate~%float32 heart_rate_variability~%float32 reserved~%~%================================================================================~%MSG: dms_msgs/RespiratoryRate~%uint8 RESP_RATE_AVAILABLE = 1~%uint8 RESERVED = 2~%uint8 RESERVED1 = 4~%uint8 available~%float32 resp_rate~%float32 reserved~%float32 reserved1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSHealthInfoResult>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'heart_rate_result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'respiratory_rate))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSHealthInfoResult>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSHealthInfoResult
    (cl:cons ':heart_rate_result (heart_rate_result msg))
    (cl:cons ':respiratory_rate (respiratory_rate msg))
))
