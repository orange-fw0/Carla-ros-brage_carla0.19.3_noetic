; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSMouthResult.msg.html

(cl:defclass <DMSMouthResult> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (mouth_open_distance
    :reader mouth_open_distance
    :initarg :mouth_open_distance
    :type cl:float
    :initform 0.0)
   (mouth_open_width
    :reader mouth_open_width
    :initarg :mouth_open_width
    :type cl:float
    :initform 0.0)
   (mouth_open_distance_score
    :reader mouth_open_distance_score
    :initarg :mouth_open_distance_score
    :type cl:float
    :initform 0.0)
   (mouth_open_ratio
    :reader mouth_open_ratio
    :initarg :mouth_open_ratio
    :type cl:float
    :initform 0.0))
)

(cl:defclass DMSMouthResult (<DMSMouthResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSMouthResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSMouthResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSMouthResult> is deprecated: use dms_msgs-msg:DMSMouthResult instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <DMSMouthResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:available-val is deprecated.  Use dms_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'mouth_open_distance-val :lambda-list '(m))
(cl:defmethod mouth_open_distance-val ((m <DMSMouthResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:mouth_open_distance-val is deprecated.  Use dms_msgs-msg:mouth_open_distance instead.")
  (mouth_open_distance m))

(cl:ensure-generic-function 'mouth_open_width-val :lambda-list '(m))
(cl:defmethod mouth_open_width-val ((m <DMSMouthResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:mouth_open_width-val is deprecated.  Use dms_msgs-msg:mouth_open_width instead.")
  (mouth_open_width m))

(cl:ensure-generic-function 'mouth_open_distance_score-val :lambda-list '(m))
(cl:defmethod mouth_open_distance_score-val ((m <DMSMouthResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:mouth_open_distance_score-val is deprecated.  Use dms_msgs-msg:mouth_open_distance_score instead.")
  (mouth_open_distance_score m))

(cl:ensure-generic-function 'mouth_open_ratio-val :lambda-list '(m))
(cl:defmethod mouth_open_ratio-val ((m <DMSMouthResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:mouth_open_ratio-val is deprecated.  Use dms_msgs-msg:mouth_open_ratio instead.")
  (mouth_open_ratio m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSMouthResult>)))
    "Constants for message type '<DMSMouthResult>"
  '((:UN_AVAILABLE . 0)
    (:AVAILABLE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSMouthResult)))
    "Constants for message type 'DMSMouthResult"
  '((:UN_AVAILABLE . 0)
    (:AVAILABLE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSMouthResult>) ostream)
  "Serializes a message object of type '<DMSMouthResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mouth_open_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mouth_open_width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mouth_open_distance_score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mouth_open_ratio))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSMouthResult>) istream)
  "Deserializes a message object of type '<DMSMouthResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mouth_open_distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mouth_open_width) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mouth_open_distance_score) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mouth_open_ratio) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSMouthResult>)))
  "Returns string type for a message object of type '<DMSMouthResult>"
  "dms_msgs/DMSMouthResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSMouthResult)))
  "Returns string type for a message object of type 'DMSMouthResult"
  "dms_msgs/DMSMouthResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSMouthResult>)))
  "Returns md5sum for a message object of type '<DMSMouthResult>"
  "63059ad2cc2ec6901ea413cf28182c75")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSMouthResult)))
  "Returns md5sum for a message object of type 'DMSMouthResult"
  "63059ad2cc2ec6901ea413cf28182c75")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSMouthResult>)))
  "Returns full string definition for message of type '<DMSMouthResult>"
  (cl:format cl:nil "uint8 UN_AVAILABLE = 0~%uint8 AVAILABLE = 1~%uint8 available~%float32 mouth_open_distance~%float32 mouth_open_width~%float32 mouth_open_distance_score~%float32 mouth_open_ratio~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSMouthResult)))
  "Returns full string definition for message of type 'DMSMouthResult"
  (cl:format cl:nil "uint8 UN_AVAILABLE = 0~%uint8 AVAILABLE = 1~%uint8 available~%float32 mouth_open_distance~%float32 mouth_open_width~%float32 mouth_open_distance_score~%float32 mouth_open_ratio~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSMouthResult>))
  (cl:+ 0
     1
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSMouthResult>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSMouthResult
    (cl:cons ':available (available msg))
    (cl:cons ':mouth_open_distance (mouth_open_distance msg))
    (cl:cons ':mouth_open_width (mouth_open_width msg))
    (cl:cons ':mouth_open_distance_score (mouth_open_distance_score msg))
    (cl:cons ':mouth_open_ratio (mouth_open_ratio msg))
))
