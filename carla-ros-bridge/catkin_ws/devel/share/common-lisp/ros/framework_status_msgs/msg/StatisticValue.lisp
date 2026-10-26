; Auto-generated. Do not edit!


(cl:in-package framework_status_msgs-msg)


;//! \htmlinclude StatisticValue.msg.html

(cl:defclass <StatisticValue> (roslisp-msg-protocol:ros-message)
  ((average
    :reader average
    :initarg :average
    :type cl:float
    :initform 0.0)
   (standard_deviation
    :reader standard_deviation
    :initarg :standard_deviation
    :type cl:float
    :initform 0.0)
   (max_value
    :reader max_value
    :initarg :max_value
    :type cl:float
    :initform 0.0)
   (min_value
    :reader min_value
    :initarg :min_value
    :type cl:float
    :initform 0.0)
   (reserved_info
    :reader reserved_info
    :initarg :reserved_info
    :type cl:string
    :initform ""))
)

(cl:defclass StatisticValue (<StatisticValue>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StatisticValue>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StatisticValue)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name framework_status_msgs-msg:<StatisticValue> is deprecated: use framework_status_msgs-msg:StatisticValue instead.")))

(cl:ensure-generic-function 'average-val :lambda-list '(m))
(cl:defmethod average-val ((m <StatisticValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:average-val is deprecated.  Use framework_status_msgs-msg:average instead.")
  (average m))

(cl:ensure-generic-function 'standard_deviation-val :lambda-list '(m))
(cl:defmethod standard_deviation-val ((m <StatisticValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:standard_deviation-val is deprecated.  Use framework_status_msgs-msg:standard_deviation instead.")
  (standard_deviation m))

(cl:ensure-generic-function 'max_value-val :lambda-list '(m))
(cl:defmethod max_value-val ((m <StatisticValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:max_value-val is deprecated.  Use framework_status_msgs-msg:max_value instead.")
  (max_value m))

(cl:ensure-generic-function 'min_value-val :lambda-list '(m))
(cl:defmethod min_value-val ((m <StatisticValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:min_value-val is deprecated.  Use framework_status_msgs-msg:min_value instead.")
  (min_value m))

(cl:ensure-generic-function 'reserved_info-val :lambda-list '(m))
(cl:defmethod reserved_info-val ((m <StatisticValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:reserved_info-val is deprecated.  Use framework_status_msgs-msg:reserved_info instead.")
  (reserved_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StatisticValue>) ostream)
  "Serializes a message object of type '<StatisticValue>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'average))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'standard_deviation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'min_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StatisticValue>) istream)
  "Deserializes a message object of type '<StatisticValue>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'average) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'standard_deviation) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_value) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_value) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reserved_info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reserved_info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StatisticValue>)))
  "Returns string type for a message object of type '<StatisticValue>"
  "framework_status_msgs/StatisticValue")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StatisticValue)))
  "Returns string type for a message object of type 'StatisticValue"
  "framework_status_msgs/StatisticValue")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StatisticValue>)))
  "Returns md5sum for a message object of type '<StatisticValue>"
  "e0580c594ccf54ba77b24de03f364ba5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StatisticValue)))
  "Returns md5sum for a message object of type 'StatisticValue"
  "e0580c594ccf54ba77b24de03f364ba5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StatisticValue>)))
  "Returns full string definition for message of type '<StatisticValue>"
  (cl:format cl:nil "float32 average~%float32 standard_deviation~%float32 max_value~%float32 min_value~%string reserved_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StatisticValue)))
  "Returns full string definition for message of type 'StatisticValue"
  (cl:format cl:nil "float32 average~%float32 standard_deviation~%float32 max_value~%float32 min_value~%string reserved_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StatisticValue>))
  (cl:+ 0
     4
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'reserved_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StatisticValue>))
  "Converts a ROS message object to a list"
  (cl:list 'StatisticValue
    (cl:cons ':average (average msg))
    (cl:cons ':standard_deviation (standard_deviation msg))
    (cl:cons ':max_value (max_value msg))
    (cl:cons ':min_value (min_value msg))
    (cl:cons ':reserved_info (reserved_info msg))
))
