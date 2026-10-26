; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSExtCalibrationResult.msg.html

(cl:defclass <DMSExtCalibrationResult> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (translation_matrix
    :reader translation_matrix
    :initarg :translation_matrix
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (rotation_matrix
    :reader rotation_matrix
    :initarg :rotation_matrix
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (event_type
    :reader event_type
    :initarg :event_type
    :type dms_msgs-msg:DMSEventTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:DMSEventTypeEnum)))
)

(cl:defclass DMSExtCalibrationResult (<DMSExtCalibrationResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSExtCalibrationResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSExtCalibrationResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSExtCalibrationResult> is deprecated: use dms_msgs-msg:DMSExtCalibrationResult instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <DMSExtCalibrationResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:available-val is deprecated.  Use dms_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'translation_matrix-val :lambda-list '(m))
(cl:defmethod translation_matrix-val ((m <DMSExtCalibrationResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:translation_matrix-val is deprecated.  Use dms_msgs-msg:translation_matrix instead.")
  (translation_matrix m))

(cl:ensure-generic-function 'rotation_matrix-val :lambda-list '(m))
(cl:defmethod rotation_matrix-val ((m <DMSExtCalibrationResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:rotation_matrix-val is deprecated.  Use dms_msgs-msg:rotation_matrix instead.")
  (rotation_matrix m))

(cl:ensure-generic-function 'event_type-val :lambda-list '(m))
(cl:defmethod event_type-val ((m <DMSExtCalibrationResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:event_type-val is deprecated.  Use dms_msgs-msg:event_type instead.")
  (event_type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSExtCalibrationResult>)))
    "Constants for message type '<DMSExtCalibrationResult>"
  '((:UN_AVAILABLE . 0)
    (:AVAILABLE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSExtCalibrationResult)))
    "Constants for message type 'DMSExtCalibrationResult"
  '((:UN_AVAILABLE . 0)
    (:AVAILABLE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSExtCalibrationResult>) ostream)
  "Serializes a message object of type '<DMSExtCalibrationResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'translation_matrix))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'translation_matrix))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'rotation_matrix))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'rotation_matrix))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'event_type) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSExtCalibrationResult>) istream)
  "Deserializes a message object of type '<DMSExtCalibrationResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'translation_matrix) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'translation_matrix)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rotation_matrix) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'rotation_matrix)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'event_type) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSExtCalibrationResult>)))
  "Returns string type for a message object of type '<DMSExtCalibrationResult>"
  "dms_msgs/DMSExtCalibrationResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSExtCalibrationResult)))
  "Returns string type for a message object of type 'DMSExtCalibrationResult"
  "dms_msgs/DMSExtCalibrationResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSExtCalibrationResult>)))
  "Returns md5sum for a message object of type '<DMSExtCalibrationResult>"
  "1c26cfd464270b1b4d155cdea024cce9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSExtCalibrationResult)))
  "Returns md5sum for a message object of type 'DMSExtCalibrationResult"
  "1c26cfd464270b1b4d155cdea024cce9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSExtCalibrationResult>)))
  "Returns full string definition for message of type '<DMSExtCalibrationResult>"
  (cl:format cl:nil "uint8 UN_AVAILABLE = 0~%uint8 AVAILABLE = 1~%uint8 available~%float32[] translation_matrix~%float32[] rotation_matrix~%dms_msgs/DMSEventTypeEnum event_type~%~%================================================================================~%MSG: dms_msgs/DMSEventTypeEnum~%uint8 DMS_EVENT_UNKNOWN = 0~%uint8 DMS_EVENT_FEATURE_EXTRACT_SUCCESS = 1~%uint8 DMS_EVENT_FEATURE_EXTRACT_FAIL = 2~%uint8 DMS_EVENT_WARNING_EYE_CLOSE = 100~%uint8 DMS_EVENT_WARNING_YAWN = 101~%uint8 DMS_EVENT_WARNING_DRINK = 102~%uint8 DMS_EVENT_WARNING_PHONE_CALL = 103~%uint8 DMS_EVENT_WARNING_SMOKE = 104~%uint8 DMS_EVENT_WARNING_DROWSINESS = 105~%uint8 DMS_EVENT_DISTRACTION = 106~%uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_SUCCESS = 107~%uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_FAIL = 108~%uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_STRICT_MODE1_SUCCESS = 109~%uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_STRICT_MODE2_SUCCESS = 110~%uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_LOOSE_MODE_SUCCESS = 111~%uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_BACKUP_MODE_SUCCESS = 112~%uint8 DMS_EVENT_HEAD_SHAKE = 109~%uint8 DMS_EVENT_HEAD_NOD = 110~%uint8 DMS_EVENT_MUTE = 111~%uint8 DMS_EVENT_RESERVED = 112~%uint8 DMS_EVENT_RESERVED1 = 113~%uint8 DMS_EVENT_RESERVED2 = 114~%uint8 DMS_EVENT_RESERVED3 = 115~%uint8 DMS_EVENT_RESERVED4 = 116~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSExtCalibrationResult)))
  "Returns full string definition for message of type 'DMSExtCalibrationResult"
  (cl:format cl:nil "uint8 UN_AVAILABLE = 0~%uint8 AVAILABLE = 1~%uint8 available~%float32[] translation_matrix~%float32[] rotation_matrix~%dms_msgs/DMSEventTypeEnum event_type~%~%================================================================================~%MSG: dms_msgs/DMSEventTypeEnum~%uint8 DMS_EVENT_UNKNOWN = 0~%uint8 DMS_EVENT_FEATURE_EXTRACT_SUCCESS = 1~%uint8 DMS_EVENT_FEATURE_EXTRACT_FAIL = 2~%uint8 DMS_EVENT_WARNING_EYE_CLOSE = 100~%uint8 DMS_EVENT_WARNING_YAWN = 101~%uint8 DMS_EVENT_WARNING_DRINK = 102~%uint8 DMS_EVENT_WARNING_PHONE_CALL = 103~%uint8 DMS_EVENT_WARNING_SMOKE = 104~%uint8 DMS_EVENT_WARNING_DROWSINESS = 105~%uint8 DMS_EVENT_DISTRACTION = 106~%uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_SUCCESS = 107~%uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_FAIL = 108~%uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_STRICT_MODE1_SUCCESS = 109~%uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_STRICT_MODE2_SUCCESS = 110~%uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_LOOSE_MODE_SUCCESS = 111~%uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_BACKUP_MODE_SUCCESS = 112~%uint8 DMS_EVENT_HEAD_SHAKE = 109~%uint8 DMS_EVENT_HEAD_NOD = 110~%uint8 DMS_EVENT_MUTE = 111~%uint8 DMS_EVENT_RESERVED = 112~%uint8 DMS_EVENT_RESERVED1 = 113~%uint8 DMS_EVENT_RESERVED2 = 114~%uint8 DMS_EVENT_RESERVED3 = 115~%uint8 DMS_EVENT_RESERVED4 = 116~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSExtCalibrationResult>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'translation_matrix) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rotation_matrix) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'event_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSExtCalibrationResult>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSExtCalibrationResult
    (cl:cons ':available (available msg))
    (cl:cons ':translation_matrix (translation_matrix msg))
    (cl:cons ':rotation_matrix (rotation_matrix msg))
    (cl:cons ':event_type (event_type msg))
))
