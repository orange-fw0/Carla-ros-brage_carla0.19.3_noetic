; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSGazeResult.msg.html

(cl:defclass <DMSGazeResult> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (gaze_left_score
    :reader gaze_left_score
    :initarg :gaze_left_score
    :type cl:float
    :initform 0.0)
   (gaze_right_score
    :reader gaze_right_score
    :initarg :gaze_right_score
    :type cl:float
    :initform 0.0)
   (gaze_center_score
    :reader gaze_center_score
    :initarg :gaze_center_score
    :type cl:float
    :initform 0.0)
   (gaze_left
    :reader gaze_left
    :initarg :gaze_left
    :type dms_msgs-msg:DMSOrientation3f
    :initform (cl:make-instance 'dms_msgs-msg:DMSOrientation3f))
   (gaze_right
    :reader gaze_right
    :initarg :gaze_right
    :type dms_msgs-msg:DMSOrientation3f
    :initform (cl:make-instance 'dms_msgs-msg:DMSOrientation3f))
   (gaze_center
    :reader gaze_center
    :initarg :gaze_center
    :type dms_msgs-msg:DMSOrientation3f
    :initform (cl:make-instance 'dms_msgs-msg:DMSOrientation3f))
   (gaze_left_wcs
    :reader gaze_left_wcs
    :initarg :gaze_left_wcs
    :type dms_msgs-msg:DMSOrientation3f
    :initform (cl:make-instance 'dms_msgs-msg:DMSOrientation3f))
   (gaze_right_wcs
    :reader gaze_right_wcs
    :initarg :gaze_right_wcs
    :type dms_msgs-msg:DMSOrientation3f
    :initform (cl:make-instance 'dms_msgs-msg:DMSOrientation3f))
   (gaze_center_wcs
    :reader gaze_center_wcs
    :initarg :gaze_center_wcs
    :type dms_msgs-msg:DMSOrientation3f
    :initform (cl:make-instance 'dms_msgs-msg:DMSOrientation3f)))
)

(cl:defclass DMSGazeResult (<DMSGazeResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSGazeResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSGazeResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSGazeResult> is deprecated: use dms_msgs-msg:DMSGazeResult instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <DMSGazeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:available-val is deprecated.  Use dms_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'gaze_left_score-val :lambda-list '(m))
(cl:defmethod gaze_left_score-val ((m <DMSGazeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:gaze_left_score-val is deprecated.  Use dms_msgs-msg:gaze_left_score instead.")
  (gaze_left_score m))

(cl:ensure-generic-function 'gaze_right_score-val :lambda-list '(m))
(cl:defmethod gaze_right_score-val ((m <DMSGazeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:gaze_right_score-val is deprecated.  Use dms_msgs-msg:gaze_right_score instead.")
  (gaze_right_score m))

(cl:ensure-generic-function 'gaze_center_score-val :lambda-list '(m))
(cl:defmethod gaze_center_score-val ((m <DMSGazeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:gaze_center_score-val is deprecated.  Use dms_msgs-msg:gaze_center_score instead.")
  (gaze_center_score m))

(cl:ensure-generic-function 'gaze_left-val :lambda-list '(m))
(cl:defmethod gaze_left-val ((m <DMSGazeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:gaze_left-val is deprecated.  Use dms_msgs-msg:gaze_left instead.")
  (gaze_left m))

(cl:ensure-generic-function 'gaze_right-val :lambda-list '(m))
(cl:defmethod gaze_right-val ((m <DMSGazeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:gaze_right-val is deprecated.  Use dms_msgs-msg:gaze_right instead.")
  (gaze_right m))

(cl:ensure-generic-function 'gaze_center-val :lambda-list '(m))
(cl:defmethod gaze_center-val ((m <DMSGazeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:gaze_center-val is deprecated.  Use dms_msgs-msg:gaze_center instead.")
  (gaze_center m))

(cl:ensure-generic-function 'gaze_left_wcs-val :lambda-list '(m))
(cl:defmethod gaze_left_wcs-val ((m <DMSGazeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:gaze_left_wcs-val is deprecated.  Use dms_msgs-msg:gaze_left_wcs instead.")
  (gaze_left_wcs m))

(cl:ensure-generic-function 'gaze_right_wcs-val :lambda-list '(m))
(cl:defmethod gaze_right_wcs-val ((m <DMSGazeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:gaze_right_wcs-val is deprecated.  Use dms_msgs-msg:gaze_right_wcs instead.")
  (gaze_right_wcs m))

(cl:ensure-generic-function 'gaze_center_wcs-val :lambda-list '(m))
(cl:defmethod gaze_center_wcs-val ((m <DMSGazeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:gaze_center_wcs-val is deprecated.  Use dms_msgs-msg:gaze_center_wcs instead.")
  (gaze_center_wcs m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSGazeResult>)))
    "Constants for message type '<DMSGazeResult>"
  '((:GAZE_SCORE_AVAILABLE . 1)
    (:GAZE_ORIENTATION_AVAILABLE . 2)
    (:GAZE_ORIENTATION_WCS_AVAILABLE . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSGazeResult)))
    "Constants for message type 'DMSGazeResult"
  '((:GAZE_SCORE_AVAILABLE . 1)
    (:GAZE_ORIENTATION_AVAILABLE . 2)
    (:GAZE_ORIENTATION_WCS_AVAILABLE . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSGazeResult>) ostream)
  "Serializes a message object of type '<DMSGazeResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gaze_left_score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gaze_right_score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gaze_center_score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gaze_left) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gaze_right) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gaze_center) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gaze_left_wcs) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gaze_right_wcs) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gaze_center_wcs) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSGazeResult>) istream)
  "Deserializes a message object of type '<DMSGazeResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gaze_left_score) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gaze_right_score) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gaze_center_score) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gaze_left) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gaze_right) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gaze_center) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gaze_left_wcs) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gaze_right_wcs) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gaze_center_wcs) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSGazeResult>)))
  "Returns string type for a message object of type '<DMSGazeResult>"
  "dms_msgs/DMSGazeResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSGazeResult)))
  "Returns string type for a message object of type 'DMSGazeResult"
  "dms_msgs/DMSGazeResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSGazeResult>)))
  "Returns md5sum for a message object of type '<DMSGazeResult>"
  "548994173c65d7ee11da7a6c3921887a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSGazeResult)))
  "Returns md5sum for a message object of type 'DMSGazeResult"
  "548994173c65d7ee11da7a6c3921887a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSGazeResult>)))
  "Returns full string definition for message of type '<DMSGazeResult>"
  (cl:format cl:nil "uint8 GAZE_SCORE_AVAILABLE = 1~%uint8 GAZE_ORIENTATION_AVAILABLE = 2~%uint8 GAZE_ORIENTATION_WCS_AVAILABLE = 4~%uint8 available~%float32 gaze_left_score~%float32 gaze_right_score~%float32 gaze_center_score~%dms_msgs/DMSOrientation3f gaze_left~%dms_msgs/DMSOrientation3f gaze_right~%dms_msgs/DMSOrientation3f gaze_center~%dms_msgs/DMSOrientation3f gaze_left_wcs~%dms_msgs/DMSOrientation3f gaze_right_wcs~%dms_msgs/DMSOrientation3f gaze_center_wcs~%~%================================================================================~%MSG: dms_msgs/DMSOrientation3f~%float32 pitch~%float32 yaw~%float32 roll~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSGazeResult)))
  "Returns full string definition for message of type 'DMSGazeResult"
  (cl:format cl:nil "uint8 GAZE_SCORE_AVAILABLE = 1~%uint8 GAZE_ORIENTATION_AVAILABLE = 2~%uint8 GAZE_ORIENTATION_WCS_AVAILABLE = 4~%uint8 available~%float32 gaze_left_score~%float32 gaze_right_score~%float32 gaze_center_score~%dms_msgs/DMSOrientation3f gaze_left~%dms_msgs/DMSOrientation3f gaze_right~%dms_msgs/DMSOrientation3f gaze_center~%dms_msgs/DMSOrientation3f gaze_left_wcs~%dms_msgs/DMSOrientation3f gaze_right_wcs~%dms_msgs/DMSOrientation3f gaze_center_wcs~%~%================================================================================~%MSG: dms_msgs/DMSOrientation3f~%float32 pitch~%float32 yaw~%float32 roll~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSGazeResult>))
  (cl:+ 0
     1
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gaze_left))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gaze_right))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gaze_center))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gaze_left_wcs))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gaze_right_wcs))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gaze_center_wcs))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSGazeResult>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSGazeResult
    (cl:cons ':available (available msg))
    (cl:cons ':gaze_left_score (gaze_left_score msg))
    (cl:cons ':gaze_right_score (gaze_right_score msg))
    (cl:cons ':gaze_center_score (gaze_center_score msg))
    (cl:cons ':gaze_left (gaze_left msg))
    (cl:cons ':gaze_right (gaze_right msg))
    (cl:cons ':gaze_center (gaze_center msg))
    (cl:cons ':gaze_left_wcs (gaze_left_wcs msg))
    (cl:cons ':gaze_right_wcs (gaze_right_wcs msg))
    (cl:cons ':gaze_center_wcs (gaze_center_wcs msg))
))
