; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSFaceQualityResult.msg.html

(cl:defclass <DMSFaceQualityResult> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (quality
    :reader quality
    :initarg :quality
    :type dms_msgs-msg:DMSFaceQualityScoreResult
    :initform (cl:make-instance 'dms_msgs-msg:DMSFaceQualityScoreResult)))
)

(cl:defclass DMSFaceQualityResult (<DMSFaceQualityResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSFaceQualityResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSFaceQualityResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSFaceQualityResult> is deprecated: use dms_msgs-msg:DMSFaceQualityResult instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <DMSFaceQualityResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:available-val is deprecated.  Use dms_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'quality-val :lambda-list '(m))
(cl:defmethod quality-val ((m <DMSFaceQualityResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:quality-val is deprecated.  Use dms_msgs-msg:quality instead.")
  (quality m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSFaceQualityResult>)))
    "Constants for message type '<DMSFaceQualityResult>"
  '((:UN_AVAILABLE . 0)
    (:AVAILABLE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSFaceQualityResult)))
    "Constants for message type 'DMSFaceQualityResult"
  '((:UN_AVAILABLE . 0)
    (:AVAILABLE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSFaceQualityResult>) ostream)
  "Serializes a message object of type '<DMSFaceQualityResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'quality) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSFaceQualityResult>) istream)
  "Deserializes a message object of type '<DMSFaceQualityResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'quality) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSFaceQualityResult>)))
  "Returns string type for a message object of type '<DMSFaceQualityResult>"
  "dms_msgs/DMSFaceQualityResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSFaceQualityResult)))
  "Returns string type for a message object of type 'DMSFaceQualityResult"
  "dms_msgs/DMSFaceQualityResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSFaceQualityResult>)))
  "Returns md5sum for a message object of type '<DMSFaceQualityResult>"
  "446b4ef06f84e4320a081e067f3f1e72")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSFaceQualityResult)))
  "Returns md5sum for a message object of type 'DMSFaceQualityResult"
  "446b4ef06f84e4320a081e067f3f1e72")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSFaceQualityResult>)))
  "Returns full string definition for message of type '<DMSFaceQualityResult>"
  (cl:format cl:nil "uint8 UN_AVAILABLE = 0~%uint8 AVAILABLE = 1~%uint8 available~%dms_msgs/DMSFaceQualityScoreResult quality~%~%================================================================================~%MSG: dms_msgs/DMSFaceQualityScoreResult~%float32 light_forehead_prob~%float32 light_eye_prob~%float32 light_nose_prob~%float32 light_mouth_prob~%float32 faceshade_forehead_prob~%float32 faceshade_eye_prob~%float32 faceshade_nose_prob~%float32 faceshade_mouth_prob~%float32 eye_left_prob~%float32 eye_right_prob~%float32 iris_left_prob~%float32 iris_right_prob~%float32 infrared_block_prob~%int32 yaw_region~%int32 pitch_region~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSFaceQualityResult)))
  "Returns full string definition for message of type 'DMSFaceQualityResult"
  (cl:format cl:nil "uint8 UN_AVAILABLE = 0~%uint8 AVAILABLE = 1~%uint8 available~%dms_msgs/DMSFaceQualityScoreResult quality~%~%================================================================================~%MSG: dms_msgs/DMSFaceQualityScoreResult~%float32 light_forehead_prob~%float32 light_eye_prob~%float32 light_nose_prob~%float32 light_mouth_prob~%float32 faceshade_forehead_prob~%float32 faceshade_eye_prob~%float32 faceshade_nose_prob~%float32 faceshade_mouth_prob~%float32 eye_left_prob~%float32 eye_right_prob~%float32 iris_left_prob~%float32 iris_right_prob~%float32 infrared_block_prob~%int32 yaw_region~%int32 pitch_region~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSFaceQualityResult>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'quality))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSFaceQualityResult>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSFaceQualityResult
    (cl:cons ':available (available msg))
    (cl:cons ':quality (quality msg))
))
