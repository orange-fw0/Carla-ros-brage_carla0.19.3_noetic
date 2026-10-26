; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSBasicSignalResult.msg.html

(cl:defclass <DMSBasicSignalResult> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (base_headpose
    :reader base_headpose
    :initarg :base_headpose
    :type dms_msgs-msg:DMSOrientation3f
    :initform (cl:make-instance 'dms_msgs-msg:DMSOrientation3f))
   (base_gaze
    :reader base_gaze
    :initarg :base_gaze
    :type dms_msgs-msg:DMSOrientation3f
    :initform (cl:make-instance 'dms_msgs-msg:DMSOrientation3f))
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:float
    :initform 0.0)
   (reserved1
    :reader reserved1
    :initarg :reserved1
    :type cl:float
    :initform 0.0))
)

(cl:defclass DMSBasicSignalResult (<DMSBasicSignalResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSBasicSignalResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSBasicSignalResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSBasicSignalResult> is deprecated: use dms_msgs-msg:DMSBasicSignalResult instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <DMSBasicSignalResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:available-val is deprecated.  Use dms_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'base_headpose-val :lambda-list '(m))
(cl:defmethod base_headpose-val ((m <DMSBasicSignalResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:base_headpose-val is deprecated.  Use dms_msgs-msg:base_headpose instead.")
  (base_headpose m))

(cl:ensure-generic-function 'base_gaze-val :lambda-list '(m))
(cl:defmethod base_gaze-val ((m <DMSBasicSignalResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:base_gaze-val is deprecated.  Use dms_msgs-msg:base_gaze instead.")
  (base_gaze m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <DMSBasicSignalResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:reserved-val is deprecated.  Use dms_msgs-msg:reserved instead.")
  (reserved m))

(cl:ensure-generic-function 'reserved1-val :lambda-list '(m))
(cl:defmethod reserved1-val ((m <DMSBasicSignalResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:reserved1-val is deprecated.  Use dms_msgs-msg:reserved1 instead.")
  (reserved1 m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSBasicSignalResult>)))
    "Constants for message type '<DMSBasicSignalResult>"
  '((:BASE_HEADPOSE_AVAILABLE . 1)
    (:BASE_GAZE_AVAILABLE . 2)
    (:RESERVED . 4)
    (:RESERVED1 . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSBasicSignalResult)))
    "Constants for message type 'DMSBasicSignalResult"
  '((:BASE_HEADPOSE_AVAILABLE . 1)
    (:BASE_GAZE_AVAILABLE . 2)
    (:RESERVED . 4)
    (:RESERVED1 . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSBasicSignalResult>) ostream)
  "Serializes a message object of type '<DMSBasicSignalResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'base_headpose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'base_gaze) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'reserved))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'reserved1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSBasicSignalResult>) istream)
  "Deserializes a message object of type '<DMSBasicSignalResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'base_headpose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'base_gaze) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'reserved) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'reserved1) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSBasicSignalResult>)))
  "Returns string type for a message object of type '<DMSBasicSignalResult>"
  "dms_msgs/DMSBasicSignalResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSBasicSignalResult)))
  "Returns string type for a message object of type 'DMSBasicSignalResult"
  "dms_msgs/DMSBasicSignalResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSBasicSignalResult>)))
  "Returns md5sum for a message object of type '<DMSBasicSignalResult>"
  "a3f6decf3c0e514f175e7b0711f4841b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSBasicSignalResult)))
  "Returns md5sum for a message object of type 'DMSBasicSignalResult"
  "a3f6decf3c0e514f175e7b0711f4841b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSBasicSignalResult>)))
  "Returns full string definition for message of type '<DMSBasicSignalResult>"
  (cl:format cl:nil "uint8 BASE_HEADPOSE_AVAILABLE = 1~%uint8 BASE_GAZE_AVAILABLE = 2~%uint8 RESERVED = 4~%uint8 RESERVED1 = 8~%uint8 available~%dms_msgs/DMSOrientation3f base_headpose~%dms_msgs/DMSOrientation3f base_gaze~%float32 reserved~%float32 reserved1~%~%================================================================================~%MSG: dms_msgs/DMSOrientation3f~%float32 pitch~%float32 yaw~%float32 roll~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSBasicSignalResult)))
  "Returns full string definition for message of type 'DMSBasicSignalResult"
  (cl:format cl:nil "uint8 BASE_HEADPOSE_AVAILABLE = 1~%uint8 BASE_GAZE_AVAILABLE = 2~%uint8 RESERVED = 4~%uint8 RESERVED1 = 8~%uint8 available~%dms_msgs/DMSOrientation3f base_headpose~%dms_msgs/DMSOrientation3f base_gaze~%float32 reserved~%float32 reserved1~%~%================================================================================~%MSG: dms_msgs/DMSOrientation3f~%float32 pitch~%float32 yaw~%float32 roll~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSBasicSignalResult>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'base_headpose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'base_gaze))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSBasicSignalResult>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSBasicSignalResult
    (cl:cons ':available (available msg))
    (cl:cons ':base_headpose (base_headpose msg))
    (cl:cons ':base_gaze (base_gaze msg))
    (cl:cons ':reserved (reserved msg))
    (cl:cons ':reserved1 (reserved1 msg))
))
