; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSOrientationResult.msg.html

(cl:defclass <DMSOrientationResult> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (orientation_score
    :reader orientation_score
    :initarg :orientation_score
    :type cl:float
    :initform 0.0)
   (orientation
    :reader orientation
    :initarg :orientation
    :type dms_msgs-msg:DMSOrientation3f
    :initform (cl:make-instance 'dms_msgs-msg:DMSOrientation3f))
   (orientation_ori
    :reader orientation_ori
    :initarg :orientation_ori
    :type dms_msgs-msg:DMSOrientation3f
    :initform (cl:make-instance 'dms_msgs-msg:DMSOrientation3f))
   (orientation_wcs
    :reader orientation_wcs
    :initarg :orientation_wcs
    :type dms_msgs-msg:DMSOrientation3f
    :initform (cl:make-instance 'dms_msgs-msg:DMSOrientation3f)))
)

(cl:defclass DMSOrientationResult (<DMSOrientationResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSOrientationResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSOrientationResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSOrientationResult> is deprecated: use dms_msgs-msg:DMSOrientationResult instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <DMSOrientationResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:available-val is deprecated.  Use dms_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'orientation_score-val :lambda-list '(m))
(cl:defmethod orientation_score-val ((m <DMSOrientationResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:orientation_score-val is deprecated.  Use dms_msgs-msg:orientation_score instead.")
  (orientation_score m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <DMSOrientationResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:orientation-val is deprecated.  Use dms_msgs-msg:orientation instead.")
  (orientation m))

(cl:ensure-generic-function 'orientation_ori-val :lambda-list '(m))
(cl:defmethod orientation_ori-val ((m <DMSOrientationResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:orientation_ori-val is deprecated.  Use dms_msgs-msg:orientation_ori instead.")
  (orientation_ori m))

(cl:ensure-generic-function 'orientation_wcs-val :lambda-list '(m))
(cl:defmethod orientation_wcs-val ((m <DMSOrientationResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:orientation_wcs-val is deprecated.  Use dms_msgs-msg:orientation_wcs instead.")
  (orientation_wcs m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSOrientationResult>)))
    "Constants for message type '<DMSOrientationResult>"
  '((:ORIENTATION_AVAILABLE . 1)
    (:ORIENTATION_ORI_AVAILABLE . 2)
    (:ORIENTATION_WCS_AVAILABLE . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSOrientationResult)))
    "Constants for message type 'DMSOrientationResult"
  '((:ORIENTATION_AVAILABLE . 1)
    (:ORIENTATION_ORI_AVAILABLE . 2)
    (:ORIENTATION_WCS_AVAILABLE . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSOrientationResult>) ostream)
  "Serializes a message object of type '<DMSOrientationResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'orientation_score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation_ori) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation_wcs) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSOrientationResult>) istream)
  "Deserializes a message object of type '<DMSOrientationResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'orientation_score) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation_ori) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation_wcs) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSOrientationResult>)))
  "Returns string type for a message object of type '<DMSOrientationResult>"
  "dms_msgs/DMSOrientationResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSOrientationResult)))
  "Returns string type for a message object of type 'DMSOrientationResult"
  "dms_msgs/DMSOrientationResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSOrientationResult>)))
  "Returns md5sum for a message object of type '<DMSOrientationResult>"
  "4670048691d20b91b2ed93dc42461c75")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSOrientationResult)))
  "Returns md5sum for a message object of type 'DMSOrientationResult"
  "4670048691d20b91b2ed93dc42461c75")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSOrientationResult>)))
  "Returns full string definition for message of type '<DMSOrientationResult>"
  (cl:format cl:nil "uint8 ORIENTATION_AVAILABLE = 1~%uint8 ORIENTATION_ORI_AVAILABLE = 2~%uint8 ORIENTATION_WCS_AVAILABLE = 4~%uint8 available~%float32 orientation_score~%dms_msgs/DMSOrientation3f orientation~%dms_msgs/DMSOrientation3f orientation_ori~%dms_msgs/DMSOrientation3f orientation_wcs~%~%================================================================================~%MSG: dms_msgs/DMSOrientation3f~%float32 pitch~%float32 yaw~%float32 roll~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSOrientationResult)))
  "Returns full string definition for message of type 'DMSOrientationResult"
  (cl:format cl:nil "uint8 ORIENTATION_AVAILABLE = 1~%uint8 ORIENTATION_ORI_AVAILABLE = 2~%uint8 ORIENTATION_WCS_AVAILABLE = 4~%uint8 available~%float32 orientation_score~%dms_msgs/DMSOrientation3f orientation~%dms_msgs/DMSOrientation3f orientation_ori~%dms_msgs/DMSOrientation3f orientation_wcs~%~%================================================================================~%MSG: dms_msgs/DMSOrientation3f~%float32 pitch~%float32 yaw~%float32 roll~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSOrientationResult>))
  (cl:+ 0
     1
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation_ori))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation_wcs))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSOrientationResult>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSOrientationResult
    (cl:cons ':available (available msg))
    (cl:cons ':orientation_score (orientation_score msg))
    (cl:cons ':orientation (orientation msg))
    (cl:cons ':orientation_ori (orientation_ori msg))
    (cl:cons ':orientation_wcs (orientation_wcs msg))
))
