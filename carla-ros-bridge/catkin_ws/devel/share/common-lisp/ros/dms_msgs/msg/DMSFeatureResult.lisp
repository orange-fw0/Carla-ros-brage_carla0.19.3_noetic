; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSFeatureResult.msg.html

(cl:defclass <DMSFeatureResult> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (feature
    :reader feature
    :initarg :feature
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass DMSFeatureResult (<DMSFeatureResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSFeatureResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSFeatureResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSFeatureResult> is deprecated: use dms_msgs-msg:DMSFeatureResult instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <DMSFeatureResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:available-val is deprecated.  Use dms_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'feature-val :lambda-list '(m))
(cl:defmethod feature-val ((m <DMSFeatureResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:feature-val is deprecated.  Use dms_msgs-msg:feature instead.")
  (feature m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSFeatureResult>)))
    "Constants for message type '<DMSFeatureResult>"
  '((:UN_AVAILABLE . 0)
    (:AVAILABLE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSFeatureResult)))
    "Constants for message type 'DMSFeatureResult"
  '((:UN_AVAILABLE . 0)
    (:AVAILABLE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSFeatureResult>) ostream)
  "Serializes a message object of type '<DMSFeatureResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'feature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'feature))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSFeatureResult>) istream)
  "Deserializes a message object of type '<DMSFeatureResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'feature) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'feature)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSFeatureResult>)))
  "Returns string type for a message object of type '<DMSFeatureResult>"
  "dms_msgs/DMSFeatureResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSFeatureResult)))
  "Returns string type for a message object of type 'DMSFeatureResult"
  "dms_msgs/DMSFeatureResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSFeatureResult>)))
  "Returns md5sum for a message object of type '<DMSFeatureResult>"
  "57fa17a97bcfa4edf2a070940b46da66")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSFeatureResult)))
  "Returns md5sum for a message object of type 'DMSFeatureResult"
  "57fa17a97bcfa4edf2a070940b46da66")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSFeatureResult>)))
  "Returns full string definition for message of type '<DMSFeatureResult>"
  (cl:format cl:nil "uint8 UN_AVAILABLE = 0~%uint8 AVAILABLE = 1~%uint8 available~%float32[] feature~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSFeatureResult)))
  "Returns full string definition for message of type 'DMSFeatureResult"
  (cl:format cl:nil "uint8 UN_AVAILABLE = 0~%uint8 AVAILABLE = 1~%uint8 available~%float32[] feature~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSFeatureResult>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'feature) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSFeatureResult>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSFeatureResult
    (cl:cons ':available (available msg))
    (cl:cons ':feature (feature msg))
))
