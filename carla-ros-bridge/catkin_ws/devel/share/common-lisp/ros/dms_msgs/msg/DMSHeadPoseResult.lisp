; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSHeadPoseResult.msg.html

(cl:defclass <DMSHeadPoseResult> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (headpose_score
    :reader headpose_score
    :initarg :headpose_score
    :type cl:float
    :initform 0.0)
   (headpose
    :reader headpose
    :initarg :headpose
    :type dms_msgs-msg:DMSOrientation3f
    :initform (cl:make-instance 'dms_msgs-msg:DMSOrientation3f))
   (headpose_wcs
    :reader headpose_wcs
    :initarg :headpose_wcs
    :type dms_msgs-msg:DMSOrientation3f
    :initform (cl:make-instance 'dms_msgs-msg:DMSOrientation3f))
   (is_head_movement
    :reader is_head_movement
    :initarg :is_head_movement
    :type cl:boolean
    :initform cl:nil)
   (l2_is_head_movement
    :reader l2_is_head_movement
    :initarg :l2_is_head_movement
    :type cl:boolean
    :initform cl:nil)
   (l3_is_head_movement
    :reader l3_is_head_movement
    :initarg :l3_is_head_movement
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DMSHeadPoseResult (<DMSHeadPoseResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSHeadPoseResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSHeadPoseResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSHeadPoseResult> is deprecated: use dms_msgs-msg:DMSHeadPoseResult instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <DMSHeadPoseResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:available-val is deprecated.  Use dms_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'headpose_score-val :lambda-list '(m))
(cl:defmethod headpose_score-val ((m <DMSHeadPoseResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:headpose_score-val is deprecated.  Use dms_msgs-msg:headpose_score instead.")
  (headpose_score m))

(cl:ensure-generic-function 'headpose-val :lambda-list '(m))
(cl:defmethod headpose-val ((m <DMSHeadPoseResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:headpose-val is deprecated.  Use dms_msgs-msg:headpose instead.")
  (headpose m))

(cl:ensure-generic-function 'headpose_wcs-val :lambda-list '(m))
(cl:defmethod headpose_wcs-val ((m <DMSHeadPoseResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:headpose_wcs-val is deprecated.  Use dms_msgs-msg:headpose_wcs instead.")
  (headpose_wcs m))

(cl:ensure-generic-function 'is_head_movement-val :lambda-list '(m))
(cl:defmethod is_head_movement-val ((m <DMSHeadPoseResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:is_head_movement-val is deprecated.  Use dms_msgs-msg:is_head_movement instead.")
  (is_head_movement m))

(cl:ensure-generic-function 'l2_is_head_movement-val :lambda-list '(m))
(cl:defmethod l2_is_head_movement-val ((m <DMSHeadPoseResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:l2_is_head_movement-val is deprecated.  Use dms_msgs-msg:l2_is_head_movement instead.")
  (l2_is_head_movement m))

(cl:ensure-generic-function 'l3_is_head_movement-val :lambda-list '(m))
(cl:defmethod l3_is_head_movement-val ((m <DMSHeadPoseResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:l3_is_head_movement-val is deprecated.  Use dms_msgs-msg:l3_is_head_movement instead.")
  (l3_is_head_movement m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSHeadPoseResult>)))
    "Constants for message type '<DMSHeadPoseResult>"
  '((:HEADPOSE_AVAILABLE . 1)
    (:HEADPOSE_WCS_AVAILABLE . 2)
    (:HEAD_MOVEMENT_AVAILABLE . 4)
    (:L2_HEAD_MOVEMENT_AVAILABLE . 8)
    (:L3_HEAD_MOVEMENT_AVAILABLE . 16))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSHeadPoseResult)))
    "Constants for message type 'DMSHeadPoseResult"
  '((:HEADPOSE_AVAILABLE . 1)
    (:HEADPOSE_WCS_AVAILABLE . 2)
    (:HEAD_MOVEMENT_AVAILABLE . 4)
    (:L2_HEAD_MOVEMENT_AVAILABLE . 8)
    (:L3_HEAD_MOVEMENT_AVAILABLE . 16))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSHeadPoseResult>) ostream)
  "Serializes a message object of type '<DMSHeadPoseResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'headpose_score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'headpose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'headpose_wcs) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_head_movement) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'l2_is_head_movement) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'l3_is_head_movement) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSHeadPoseResult>) istream)
  "Deserializes a message object of type '<DMSHeadPoseResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'headpose_score) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'headpose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'headpose_wcs) istream)
    (cl:setf (cl:slot-value msg 'is_head_movement) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'l2_is_head_movement) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'l3_is_head_movement) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSHeadPoseResult>)))
  "Returns string type for a message object of type '<DMSHeadPoseResult>"
  "dms_msgs/DMSHeadPoseResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSHeadPoseResult)))
  "Returns string type for a message object of type 'DMSHeadPoseResult"
  "dms_msgs/DMSHeadPoseResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSHeadPoseResult>)))
  "Returns md5sum for a message object of type '<DMSHeadPoseResult>"
  "59cdb4b01fae2170a0bbb018d0c12d3a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSHeadPoseResult)))
  "Returns md5sum for a message object of type 'DMSHeadPoseResult"
  "59cdb4b01fae2170a0bbb018d0c12d3a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSHeadPoseResult>)))
  "Returns full string definition for message of type '<DMSHeadPoseResult>"
  (cl:format cl:nil "uint8 HEADPOSE_AVAILABLE = 1~%uint8 HEADPOSE_WCS_AVAILABLE = 2~%uint8 HEAD_MOVEMENT_AVAILABLE = 4~%uint8 L2_HEAD_MOVEMENT_AVAILABLE = 8~%uint8 L3_HEAD_MOVEMENT_AVAILABLE = 16~%uint8 available~%float32 headpose_score~%dms_msgs/DMSOrientation3f headpose~%dms_msgs/DMSOrientation3f headpose_wcs~%bool is_head_movement~%bool l2_is_head_movement~%bool l3_is_head_movement~%~%================================================================================~%MSG: dms_msgs/DMSOrientation3f~%float32 pitch~%float32 yaw~%float32 roll~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSHeadPoseResult)))
  "Returns full string definition for message of type 'DMSHeadPoseResult"
  (cl:format cl:nil "uint8 HEADPOSE_AVAILABLE = 1~%uint8 HEADPOSE_WCS_AVAILABLE = 2~%uint8 HEAD_MOVEMENT_AVAILABLE = 4~%uint8 L2_HEAD_MOVEMENT_AVAILABLE = 8~%uint8 L3_HEAD_MOVEMENT_AVAILABLE = 16~%uint8 available~%float32 headpose_score~%dms_msgs/DMSOrientation3f headpose~%dms_msgs/DMSOrientation3f headpose_wcs~%bool is_head_movement~%bool l2_is_head_movement~%bool l3_is_head_movement~%~%================================================================================~%MSG: dms_msgs/DMSOrientation3f~%float32 pitch~%float32 yaw~%float32 roll~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSHeadPoseResult>))
  (cl:+ 0
     1
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'headpose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'headpose_wcs))
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSHeadPoseResult>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSHeadPoseResult
    (cl:cons ':available (available msg))
    (cl:cons ':headpose_score (headpose_score msg))
    (cl:cons ':headpose (headpose msg))
    (cl:cons ':headpose_wcs (headpose_wcs msg))
    (cl:cons ':is_head_movement (is_head_movement msg))
    (cl:cons ':l2_is_head_movement (l2_is_head_movement msg))
    (cl:cons ':l3_is_head_movement (l3_is_head_movement msg))
))
