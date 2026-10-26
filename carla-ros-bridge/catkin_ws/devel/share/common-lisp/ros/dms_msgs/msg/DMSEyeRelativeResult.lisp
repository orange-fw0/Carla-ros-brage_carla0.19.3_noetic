; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSEyeRelativeResult.msg.html

(cl:defclass <DMSEyeRelativeResult> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (left_eye_relative_distance
    :reader left_eye_relative_distance
    :initarg :left_eye_relative_distance
    :type cl:float
    :initform 0.0)
   (right_eye_relative_distance
    :reader right_eye_relative_distance
    :initarg :right_eye_relative_distance
    :type cl:float
    :initform 0.0)
   (is_left_eye_close
    :reader is_left_eye_close
    :initarg :is_left_eye_close
    :type cl:boolean
    :initform cl:nil)
   (is_right_eye_close
    :reader is_right_eye_close
    :initarg :is_right_eye_close
    :type cl:boolean
    :initform cl:nil)
   (left_eye_close_time
    :reader left_eye_close_time
    :initarg :left_eye_close_time
    :type cl:float
    :initform 0.0)
   (right_eye_close_time
    :reader right_eye_close_time
    :initarg :right_eye_close_time
    :type cl:float
    :initform 0.0)
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:float
    :initform 0.0)
   (is_eye_blink
    :reader is_eye_blink
    :initarg :is_eye_blink
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DMSEyeRelativeResult (<DMSEyeRelativeResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSEyeRelativeResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSEyeRelativeResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSEyeRelativeResult> is deprecated: use dms_msgs-msg:DMSEyeRelativeResult instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <DMSEyeRelativeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:available-val is deprecated.  Use dms_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'left_eye_relative_distance-val :lambda-list '(m))
(cl:defmethod left_eye_relative_distance-val ((m <DMSEyeRelativeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:left_eye_relative_distance-val is deprecated.  Use dms_msgs-msg:left_eye_relative_distance instead.")
  (left_eye_relative_distance m))

(cl:ensure-generic-function 'right_eye_relative_distance-val :lambda-list '(m))
(cl:defmethod right_eye_relative_distance-val ((m <DMSEyeRelativeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:right_eye_relative_distance-val is deprecated.  Use dms_msgs-msg:right_eye_relative_distance instead.")
  (right_eye_relative_distance m))

(cl:ensure-generic-function 'is_left_eye_close-val :lambda-list '(m))
(cl:defmethod is_left_eye_close-val ((m <DMSEyeRelativeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:is_left_eye_close-val is deprecated.  Use dms_msgs-msg:is_left_eye_close instead.")
  (is_left_eye_close m))

(cl:ensure-generic-function 'is_right_eye_close-val :lambda-list '(m))
(cl:defmethod is_right_eye_close-val ((m <DMSEyeRelativeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:is_right_eye_close-val is deprecated.  Use dms_msgs-msg:is_right_eye_close instead.")
  (is_right_eye_close m))

(cl:ensure-generic-function 'left_eye_close_time-val :lambda-list '(m))
(cl:defmethod left_eye_close_time-val ((m <DMSEyeRelativeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:left_eye_close_time-val is deprecated.  Use dms_msgs-msg:left_eye_close_time instead.")
  (left_eye_close_time m))

(cl:ensure-generic-function 'right_eye_close_time-val :lambda-list '(m))
(cl:defmethod right_eye_close_time-val ((m <DMSEyeRelativeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:right_eye_close_time-val is deprecated.  Use dms_msgs-msg:right_eye_close_time instead.")
  (right_eye_close_time m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <DMSEyeRelativeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:reserved-val is deprecated.  Use dms_msgs-msg:reserved instead.")
  (reserved m))

(cl:ensure-generic-function 'is_eye_blink-val :lambda-list '(m))
(cl:defmethod is_eye_blink-val ((m <DMSEyeRelativeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:is_eye_blink-val is deprecated.  Use dms_msgs-msg:is_eye_blink instead.")
  (is_eye_blink m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSEyeRelativeResult>)))
    "Constants for message type '<DMSEyeRelativeResult>"
  '((:UN_AVAILABLE . 0)
    (:AVAILABLE . 1)
    (:IS_EYE_BLINK_AVAILABLE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSEyeRelativeResult)))
    "Constants for message type 'DMSEyeRelativeResult"
  '((:UN_AVAILABLE . 0)
    (:AVAILABLE . 1)
    (:IS_EYE_BLINK_AVAILABLE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSEyeRelativeResult>) ostream)
  "Serializes a message object of type '<DMSEyeRelativeResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'left_eye_relative_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'right_eye_relative_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_left_eye_close) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_right_eye_close) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'left_eye_close_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'right_eye_close_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'reserved))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_eye_blink) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSEyeRelativeResult>) istream)
  "Deserializes a message object of type '<DMSEyeRelativeResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left_eye_relative_distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right_eye_relative_distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'is_left_eye_close) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_right_eye_close) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left_eye_close_time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right_eye_close_time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'reserved) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'is_eye_blink) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSEyeRelativeResult>)))
  "Returns string type for a message object of type '<DMSEyeRelativeResult>"
  "dms_msgs/DMSEyeRelativeResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSEyeRelativeResult)))
  "Returns string type for a message object of type 'DMSEyeRelativeResult"
  "dms_msgs/DMSEyeRelativeResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSEyeRelativeResult>)))
  "Returns md5sum for a message object of type '<DMSEyeRelativeResult>"
  "c745f14a4aae2b0ee7a1d42e7ffc04ce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSEyeRelativeResult)))
  "Returns md5sum for a message object of type 'DMSEyeRelativeResult"
  "c745f14a4aae2b0ee7a1d42e7ffc04ce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSEyeRelativeResult>)))
  "Returns full string definition for message of type '<DMSEyeRelativeResult>"
  (cl:format cl:nil "uint8 UN_AVAILABLE = 0~%uint8 AVAILABLE = 1~%uint8 IS_EYE_BLINK_AVAILABLE = 2~%uint8 available~%float32 left_eye_relative_distance~%float32 right_eye_relative_distance~%bool is_left_eye_close~%bool is_right_eye_close~%float32 left_eye_close_time~%float32 right_eye_close_time~%float32 reserved~%bool is_eye_blink~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSEyeRelativeResult)))
  "Returns full string definition for message of type 'DMSEyeRelativeResult"
  (cl:format cl:nil "uint8 UN_AVAILABLE = 0~%uint8 AVAILABLE = 1~%uint8 IS_EYE_BLINK_AVAILABLE = 2~%uint8 available~%float32 left_eye_relative_distance~%float32 right_eye_relative_distance~%bool is_left_eye_close~%bool is_right_eye_close~%float32 left_eye_close_time~%float32 right_eye_close_time~%float32 reserved~%bool is_eye_blink~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSEyeRelativeResult>))
  (cl:+ 0
     1
     4
     4
     1
     1
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSEyeRelativeResult>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSEyeRelativeResult
    (cl:cons ':available (available msg))
    (cl:cons ':left_eye_relative_distance (left_eye_relative_distance msg))
    (cl:cons ':right_eye_relative_distance (right_eye_relative_distance msg))
    (cl:cons ':is_left_eye_close (is_left_eye_close msg))
    (cl:cons ':is_right_eye_close (is_right_eye_close msg))
    (cl:cons ':left_eye_close_time (left_eye_close_time msg))
    (cl:cons ':right_eye_close_time (right_eye_close_time msg))
    (cl:cons ':reserved (reserved msg))
    (cl:cons ':is_eye_blink (is_eye_blink msg))
))
