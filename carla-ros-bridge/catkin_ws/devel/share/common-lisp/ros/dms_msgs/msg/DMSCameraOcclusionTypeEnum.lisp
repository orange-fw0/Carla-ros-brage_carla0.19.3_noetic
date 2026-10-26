; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSCameraOcclusionTypeEnum.msg.html

(cl:defclass <DMSCameraOcclusionTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DMSCameraOcclusionTypeEnum (<DMSCameraOcclusionTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSCameraOcclusionTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSCameraOcclusionTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSCameraOcclusionTypeEnum> is deprecated: use dms_msgs-msg:DMSCameraOcclusionTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <DMSCameraOcclusionTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:value-val is deprecated.  Use dms_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSCameraOcclusionTypeEnum>)))
    "Constants for message type '<DMSCameraOcclusionTypeEnum>"
  '((:DMS_CAMERA_BLOCK . 0)
    (:DMS_CAMERA_NO_BLOCK . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSCameraOcclusionTypeEnum)))
    "Constants for message type 'DMSCameraOcclusionTypeEnum"
  '((:DMS_CAMERA_BLOCK . 0)
    (:DMS_CAMERA_NO_BLOCK . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSCameraOcclusionTypeEnum>) ostream)
  "Serializes a message object of type '<DMSCameraOcclusionTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSCameraOcclusionTypeEnum>) istream)
  "Deserializes a message object of type '<DMSCameraOcclusionTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSCameraOcclusionTypeEnum>)))
  "Returns string type for a message object of type '<DMSCameraOcclusionTypeEnum>"
  "dms_msgs/DMSCameraOcclusionTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSCameraOcclusionTypeEnum)))
  "Returns string type for a message object of type 'DMSCameraOcclusionTypeEnum"
  "dms_msgs/DMSCameraOcclusionTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSCameraOcclusionTypeEnum>)))
  "Returns md5sum for a message object of type '<DMSCameraOcclusionTypeEnum>"
  "43be5c4aa2d7611b0a747165c7c4f84b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSCameraOcclusionTypeEnum)))
  "Returns md5sum for a message object of type 'DMSCameraOcclusionTypeEnum"
  "43be5c4aa2d7611b0a747165c7c4f84b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSCameraOcclusionTypeEnum>)))
  "Returns full string definition for message of type '<DMSCameraOcclusionTypeEnum>"
  (cl:format cl:nil "uint8 DMS_CAMERA_BLOCK = 0~%uint8 DMS_CAMERA_NO_BLOCK = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSCameraOcclusionTypeEnum)))
  "Returns full string definition for message of type 'DMSCameraOcclusionTypeEnum"
  (cl:format cl:nil "uint8 DMS_CAMERA_BLOCK = 0~%uint8 DMS_CAMERA_NO_BLOCK = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSCameraOcclusionTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSCameraOcclusionTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSCameraOcclusionTypeEnum
    (cl:cons ':value (value msg))
))
