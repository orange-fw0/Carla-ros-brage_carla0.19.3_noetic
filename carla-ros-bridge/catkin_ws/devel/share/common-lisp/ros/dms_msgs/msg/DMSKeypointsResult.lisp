; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSKeypointsResult.msg.html

(cl:defclass <DMSKeypointsResult> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (keypoint_score
    :reader keypoint_score
    :initarg :keypoint_score
    :type cl:float
    :initform 0.0)
   (keypoints
    :reader keypoints
    :initarg :keypoints
    :type (cl:vector dms_msgs-msg:DMSPoint2f)
   :initform (cl:make-array 0 :element-type 'dms_msgs-msg:DMSPoint2f :initial-element (cl:make-instance 'dms_msgs-msg:DMSPoint2f)))
   (keypoints_left_eye
    :reader keypoints_left_eye
    :initarg :keypoints_left_eye
    :type (cl:vector dms_msgs-msg:DMSPoint2f)
   :initform (cl:make-array 0 :element-type 'dms_msgs-msg:DMSPoint2f :initial-element (cl:make-instance 'dms_msgs-msg:DMSPoint2f)))
   (keypoints_right_eye
    :reader keypoints_right_eye
    :initarg :keypoints_right_eye
    :type (cl:vector dms_msgs-msg:DMSPoint2f)
   :initform (cl:make-array 0 :element-type 'dms_msgs-msg:DMSPoint2f :initial-element (cl:make-instance 'dms_msgs-msg:DMSPoint2f)))
   (keypoints_pupil
    :reader keypoints_pupil
    :initarg :keypoints_pupil
    :type (cl:vector dms_msgs-msg:DMSPoint2f)
   :initform (cl:make-array 0 :element-type 'dms_msgs-msg:DMSPoint2f :initial-element (cl:make-instance 'dms_msgs-msg:DMSPoint2f)))
   (keypoints3d
    :reader keypoints3d
    :initarg :keypoints3d
    :type (cl:vector dms_msgs-msg:DMSPoint3f)
   :initform (cl:make-array 0 :element-type 'dms_msgs-msg:DMSPoint3f :initial-element (cl:make-instance 'dms_msgs-msg:DMSPoint3f)))
   (keypoints3d_wcs
    :reader keypoints3d_wcs
    :initarg :keypoints3d_wcs
    :type (cl:vector dms_msgs-msg:DMSPoint3f)
   :initform (cl:make-array 0 :element-type 'dms_msgs-msg:DMSPoint3f :initial-element (cl:make-instance 'dms_msgs-msg:DMSPoint3f))))
)

(cl:defclass DMSKeypointsResult (<DMSKeypointsResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSKeypointsResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSKeypointsResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSKeypointsResult> is deprecated: use dms_msgs-msg:DMSKeypointsResult instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <DMSKeypointsResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:available-val is deprecated.  Use dms_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'keypoint_score-val :lambda-list '(m))
(cl:defmethod keypoint_score-val ((m <DMSKeypointsResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:keypoint_score-val is deprecated.  Use dms_msgs-msg:keypoint_score instead.")
  (keypoint_score m))

(cl:ensure-generic-function 'keypoints-val :lambda-list '(m))
(cl:defmethod keypoints-val ((m <DMSKeypointsResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:keypoints-val is deprecated.  Use dms_msgs-msg:keypoints instead.")
  (keypoints m))

(cl:ensure-generic-function 'keypoints_left_eye-val :lambda-list '(m))
(cl:defmethod keypoints_left_eye-val ((m <DMSKeypointsResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:keypoints_left_eye-val is deprecated.  Use dms_msgs-msg:keypoints_left_eye instead.")
  (keypoints_left_eye m))

(cl:ensure-generic-function 'keypoints_right_eye-val :lambda-list '(m))
(cl:defmethod keypoints_right_eye-val ((m <DMSKeypointsResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:keypoints_right_eye-val is deprecated.  Use dms_msgs-msg:keypoints_right_eye instead.")
  (keypoints_right_eye m))

(cl:ensure-generic-function 'keypoints_pupil-val :lambda-list '(m))
(cl:defmethod keypoints_pupil-val ((m <DMSKeypointsResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:keypoints_pupil-val is deprecated.  Use dms_msgs-msg:keypoints_pupil instead.")
  (keypoints_pupil m))

(cl:ensure-generic-function 'keypoints3d-val :lambda-list '(m))
(cl:defmethod keypoints3d-val ((m <DMSKeypointsResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:keypoints3d-val is deprecated.  Use dms_msgs-msg:keypoints3d instead.")
  (keypoints3d m))

(cl:ensure-generic-function 'keypoints3d_wcs-val :lambda-list '(m))
(cl:defmethod keypoints3d_wcs-val ((m <DMSKeypointsResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:keypoints3d_wcs-val is deprecated.  Use dms_msgs-msg:keypoints3d_wcs instead.")
  (keypoints3d_wcs m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSKeypointsResult>)))
    "Constants for message type '<DMSKeypointsResult>"
  '((:KEYPOINTS_2D_AVAILABLE . 1)
    (:KEYPOINTS_3D_AVAILABLE . 2)
    (:KEYPOINTS_3D_WCS_AVAILABLE . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSKeypointsResult)))
    "Constants for message type 'DMSKeypointsResult"
  '((:KEYPOINTS_2D_AVAILABLE . 1)
    (:KEYPOINTS_3D_AVAILABLE . 2)
    (:KEYPOINTS_3D_WCS_AVAILABLE . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSKeypointsResult>) ostream)
  "Serializes a message object of type '<DMSKeypointsResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'keypoint_score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'keypoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'keypoints))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'keypoints_left_eye))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'keypoints_left_eye))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'keypoints_right_eye))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'keypoints_right_eye))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'keypoints_pupil))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'keypoints_pupil))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'keypoints3d))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'keypoints3d))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'keypoints3d_wcs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'keypoints3d_wcs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSKeypointsResult>) istream)
  "Deserializes a message object of type '<DMSKeypointsResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'keypoint_score) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'keypoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'keypoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dms_msgs-msg:DMSPoint2f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'keypoints_left_eye) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'keypoints_left_eye)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dms_msgs-msg:DMSPoint2f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'keypoints_right_eye) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'keypoints_right_eye)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dms_msgs-msg:DMSPoint2f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'keypoints_pupil) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'keypoints_pupil)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dms_msgs-msg:DMSPoint2f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'keypoints3d) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'keypoints3d)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dms_msgs-msg:DMSPoint3f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'keypoints3d_wcs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'keypoints3d_wcs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dms_msgs-msg:DMSPoint3f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSKeypointsResult>)))
  "Returns string type for a message object of type '<DMSKeypointsResult>"
  "dms_msgs/DMSKeypointsResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSKeypointsResult)))
  "Returns string type for a message object of type 'DMSKeypointsResult"
  "dms_msgs/DMSKeypointsResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSKeypointsResult>)))
  "Returns md5sum for a message object of type '<DMSKeypointsResult>"
  "d3e2f698008751ea1fc252e991281640")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSKeypointsResult)))
  "Returns md5sum for a message object of type 'DMSKeypointsResult"
  "d3e2f698008751ea1fc252e991281640")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSKeypointsResult>)))
  "Returns full string definition for message of type '<DMSKeypointsResult>"
  (cl:format cl:nil "uint8 KEYPOINTS_2D_AVAILABLE = 1~%uint8 KEYPOINTS_3D_AVAILABLE = 2~%uint8 KEYPOINTS_3D_WCS_AVAILABLE = 4~%uint8 available~%float32 keypoint_score~%dms_msgs/DMSPoint2f[] keypoints~%dms_msgs/DMSPoint2f[] keypoints_left_eye~%dms_msgs/DMSPoint2f[] keypoints_right_eye~%dms_msgs/DMSPoint2f[] keypoints_pupil~%dms_msgs/DMSPoint3f[] keypoints3d~%dms_msgs/DMSPoint3f[] keypoints3d_wcs~%~%================================================================================~%MSG: dms_msgs/DMSPoint2f~%float32 x~%float32 y~%~%================================================================================~%MSG: dms_msgs/DMSPoint3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSKeypointsResult)))
  "Returns full string definition for message of type 'DMSKeypointsResult"
  (cl:format cl:nil "uint8 KEYPOINTS_2D_AVAILABLE = 1~%uint8 KEYPOINTS_3D_AVAILABLE = 2~%uint8 KEYPOINTS_3D_WCS_AVAILABLE = 4~%uint8 available~%float32 keypoint_score~%dms_msgs/DMSPoint2f[] keypoints~%dms_msgs/DMSPoint2f[] keypoints_left_eye~%dms_msgs/DMSPoint2f[] keypoints_right_eye~%dms_msgs/DMSPoint2f[] keypoints_pupil~%dms_msgs/DMSPoint3f[] keypoints3d~%dms_msgs/DMSPoint3f[] keypoints3d_wcs~%~%================================================================================~%MSG: dms_msgs/DMSPoint2f~%float32 x~%float32 y~%~%================================================================================~%MSG: dms_msgs/DMSPoint3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSKeypointsResult>))
  (cl:+ 0
     1
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'keypoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'keypoints_left_eye) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'keypoints_right_eye) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'keypoints_pupil) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'keypoints3d) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'keypoints3d_wcs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSKeypointsResult>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSKeypointsResult
    (cl:cons ':available (available msg))
    (cl:cons ':keypoint_score (keypoint_score msg))
    (cl:cons ':keypoints (keypoints msg))
    (cl:cons ':keypoints_left_eye (keypoints_left_eye msg))
    (cl:cons ':keypoints_right_eye (keypoints_right_eye msg))
    (cl:cons ':keypoints_pupil (keypoints_pupil msg))
    (cl:cons ':keypoints3d (keypoints3d msg))
    (cl:cons ':keypoints3d_wcs (keypoints3d_wcs msg))
))
