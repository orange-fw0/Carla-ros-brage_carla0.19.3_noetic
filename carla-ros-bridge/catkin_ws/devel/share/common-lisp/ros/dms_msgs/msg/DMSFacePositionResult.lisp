; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSFacePositionResult.msg.html

(cl:defclass <DMSFacePositionResult> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (position_ear_center
    :reader position_ear_center
    :initarg :position_ear_center
    :type dms_msgs-msg:DMSPoint3f
    :initform (cl:make-instance 'dms_msgs-msg:DMSPoint3f))
   (position_left_pupil
    :reader position_left_pupil
    :initarg :position_left_pupil
    :type dms_msgs-msg:DMSPoint3f
    :initform (cl:make-instance 'dms_msgs-msg:DMSPoint3f))
   (position_right_pupil
    :reader position_right_pupil
    :initarg :position_right_pupil
    :type dms_msgs-msg:DMSPoint3f
    :initform (cl:make-instance 'dms_msgs-msg:DMSPoint3f))
   (position_ear_center_wcs
    :reader position_ear_center_wcs
    :initarg :position_ear_center_wcs
    :type dms_msgs-msg:DMSPoint3f
    :initform (cl:make-instance 'dms_msgs-msg:DMSPoint3f))
   (position_left_pupil_wcs
    :reader position_left_pupil_wcs
    :initarg :position_left_pupil_wcs
    :type dms_msgs-msg:DMSPoint3f
    :initform (cl:make-instance 'dms_msgs-msg:DMSPoint3f))
   (position_right_pupil_wcs
    :reader position_right_pupil_wcs
    :initarg :position_right_pupil_wcs
    :type dms_msgs-msg:DMSPoint3f
    :initform (cl:make-instance 'dms_msgs-msg:DMSPoint3f)))
)

(cl:defclass DMSFacePositionResult (<DMSFacePositionResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSFacePositionResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSFacePositionResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSFacePositionResult> is deprecated: use dms_msgs-msg:DMSFacePositionResult instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <DMSFacePositionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:available-val is deprecated.  Use dms_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'position_ear_center-val :lambda-list '(m))
(cl:defmethod position_ear_center-val ((m <DMSFacePositionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:position_ear_center-val is deprecated.  Use dms_msgs-msg:position_ear_center instead.")
  (position_ear_center m))

(cl:ensure-generic-function 'position_left_pupil-val :lambda-list '(m))
(cl:defmethod position_left_pupil-val ((m <DMSFacePositionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:position_left_pupil-val is deprecated.  Use dms_msgs-msg:position_left_pupil instead.")
  (position_left_pupil m))

(cl:ensure-generic-function 'position_right_pupil-val :lambda-list '(m))
(cl:defmethod position_right_pupil-val ((m <DMSFacePositionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:position_right_pupil-val is deprecated.  Use dms_msgs-msg:position_right_pupil instead.")
  (position_right_pupil m))

(cl:ensure-generic-function 'position_ear_center_wcs-val :lambda-list '(m))
(cl:defmethod position_ear_center_wcs-val ((m <DMSFacePositionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:position_ear_center_wcs-val is deprecated.  Use dms_msgs-msg:position_ear_center_wcs instead.")
  (position_ear_center_wcs m))

(cl:ensure-generic-function 'position_left_pupil_wcs-val :lambda-list '(m))
(cl:defmethod position_left_pupil_wcs-val ((m <DMSFacePositionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:position_left_pupil_wcs-val is deprecated.  Use dms_msgs-msg:position_left_pupil_wcs instead.")
  (position_left_pupil_wcs m))

(cl:ensure-generic-function 'position_right_pupil_wcs-val :lambda-list '(m))
(cl:defmethod position_right_pupil_wcs-val ((m <DMSFacePositionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:position_right_pupil_wcs-val is deprecated.  Use dms_msgs-msg:position_right_pupil_wcs instead.")
  (position_right_pupil_wcs m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSFacePositionResult>)))
    "Constants for message type '<DMSFacePositionResult>"
  '((:POSITION_EAR_CENTER_AVAILABLE . 1)
    (:POSITION_LEFT_PUPIL_AVAILABLE . 2)
    (:POSITION_RIGHT_PUPIL_AVAILABLE . 4)
    (:POSITION_EAR_CENTER_WCS_AVAILABLE . 8)
    (:POSITION_LEFT_PUPIL_WCS_AVAILABLE . 16)
    (:POSITION_RIGHT_PUPIL_WCS_AVAILABLE . 32))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSFacePositionResult)))
    "Constants for message type 'DMSFacePositionResult"
  '((:POSITION_EAR_CENTER_AVAILABLE . 1)
    (:POSITION_LEFT_PUPIL_AVAILABLE . 2)
    (:POSITION_RIGHT_PUPIL_AVAILABLE . 4)
    (:POSITION_EAR_CENTER_WCS_AVAILABLE . 8)
    (:POSITION_LEFT_PUPIL_WCS_AVAILABLE . 16)
    (:POSITION_RIGHT_PUPIL_WCS_AVAILABLE . 32))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSFacePositionResult>) ostream)
  "Serializes a message object of type '<DMSFacePositionResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position_ear_center) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position_left_pupil) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position_right_pupil) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position_ear_center_wcs) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position_left_pupil_wcs) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position_right_pupil_wcs) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSFacePositionResult>) istream)
  "Deserializes a message object of type '<DMSFacePositionResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position_ear_center) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position_left_pupil) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position_right_pupil) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position_ear_center_wcs) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position_left_pupil_wcs) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position_right_pupil_wcs) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSFacePositionResult>)))
  "Returns string type for a message object of type '<DMSFacePositionResult>"
  "dms_msgs/DMSFacePositionResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSFacePositionResult)))
  "Returns string type for a message object of type 'DMSFacePositionResult"
  "dms_msgs/DMSFacePositionResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSFacePositionResult>)))
  "Returns md5sum for a message object of type '<DMSFacePositionResult>"
  "9634fb3cdff56293abf22937f8abeea0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSFacePositionResult)))
  "Returns md5sum for a message object of type 'DMSFacePositionResult"
  "9634fb3cdff56293abf22937f8abeea0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSFacePositionResult>)))
  "Returns full string definition for message of type '<DMSFacePositionResult>"
  (cl:format cl:nil "uint16 POSITION_EAR_CENTER_AVAILABLE = 1~%uint16 POSITION_LEFT_PUPIL_AVAILABLE = 2~%uint16 POSITION_RIGHT_PUPIL_AVAILABLE = 4~%uint16 POSITION_EAR_CENTER_WCS_AVAILABLE = 8~%uint16 POSITION_LEFT_PUPIL_WCS_AVAILABLE = 16~%uint16 POSITION_RIGHT_PUPIL_WCS_AVAILABLE = 32~%uint16 available~%dms_msgs/DMSPoint3f position_ear_center~%dms_msgs/DMSPoint3f position_left_pupil~%dms_msgs/DMSPoint3f position_right_pupil~%dms_msgs/DMSPoint3f position_ear_center_wcs~%dms_msgs/DMSPoint3f position_left_pupil_wcs~%dms_msgs/DMSPoint3f position_right_pupil_wcs~%~%================================================================================~%MSG: dms_msgs/DMSPoint3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSFacePositionResult)))
  "Returns full string definition for message of type 'DMSFacePositionResult"
  (cl:format cl:nil "uint16 POSITION_EAR_CENTER_AVAILABLE = 1~%uint16 POSITION_LEFT_PUPIL_AVAILABLE = 2~%uint16 POSITION_RIGHT_PUPIL_AVAILABLE = 4~%uint16 POSITION_EAR_CENTER_WCS_AVAILABLE = 8~%uint16 POSITION_LEFT_PUPIL_WCS_AVAILABLE = 16~%uint16 POSITION_RIGHT_PUPIL_WCS_AVAILABLE = 32~%uint16 available~%dms_msgs/DMSPoint3f position_ear_center~%dms_msgs/DMSPoint3f position_left_pupil~%dms_msgs/DMSPoint3f position_right_pupil~%dms_msgs/DMSPoint3f position_ear_center_wcs~%dms_msgs/DMSPoint3f position_left_pupil_wcs~%dms_msgs/DMSPoint3f position_right_pupil_wcs~%~%================================================================================~%MSG: dms_msgs/DMSPoint3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSFacePositionResult>))
  (cl:+ 0
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position_ear_center))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position_left_pupil))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position_right_pupil))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position_ear_center_wcs))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position_left_pupil_wcs))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position_right_pupil_wcs))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSFacePositionResult>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSFacePositionResult
    (cl:cons ':available (available msg))
    (cl:cons ':position_ear_center (position_ear_center msg))
    (cl:cons ':position_left_pupil (position_left_pupil msg))
    (cl:cons ':position_right_pupil (position_right_pupil msg))
    (cl:cons ':position_ear_center_wcs (position_ear_center_wcs msg))
    (cl:cons ':position_left_pupil_wcs (position_left_pupil_wcs msg))
    (cl:cons ':position_right_pupil_wcs (position_right_pupil_wcs msg))
))
