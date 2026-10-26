; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSCameraDiagnoseTypeEnum.msg.html

(cl:defclass <DMSCameraDiagnoseTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DMSCameraDiagnoseTypeEnum (<DMSCameraDiagnoseTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSCameraDiagnoseTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSCameraDiagnoseTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSCameraDiagnoseTypeEnum> is deprecated: use dms_msgs-msg:DMSCameraDiagnoseTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <DMSCameraDiagnoseTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:value-val is deprecated.  Use dms_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSCameraDiagnoseTypeEnum>)))
    "Constants for message type '<DMSCameraDiagnoseTypeEnum>"
  '((:DMS_CAMERA_DIAGNOSE_NORMAL . 1)
    (:DMS_CAMERA_DIAGNOSE_TOO_SMALL . 2)
    (:DMS_CAMERA_DIAGNOSE_TOO_BRIGHT . 4)
    (:DMS_CAMERA_DIAGNOSE_TOO_DARK . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSCameraDiagnoseTypeEnum)))
    "Constants for message type 'DMSCameraDiagnoseTypeEnum"
  '((:DMS_CAMERA_DIAGNOSE_NORMAL . 1)
    (:DMS_CAMERA_DIAGNOSE_TOO_SMALL . 2)
    (:DMS_CAMERA_DIAGNOSE_TOO_BRIGHT . 4)
    (:DMS_CAMERA_DIAGNOSE_TOO_DARK . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSCameraDiagnoseTypeEnum>) ostream)
  "Serializes a message object of type '<DMSCameraDiagnoseTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSCameraDiagnoseTypeEnum>) istream)
  "Deserializes a message object of type '<DMSCameraDiagnoseTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSCameraDiagnoseTypeEnum>)))
  "Returns string type for a message object of type '<DMSCameraDiagnoseTypeEnum>"
  "dms_msgs/DMSCameraDiagnoseTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSCameraDiagnoseTypeEnum)))
  "Returns string type for a message object of type 'DMSCameraDiagnoseTypeEnum"
  "dms_msgs/DMSCameraDiagnoseTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSCameraDiagnoseTypeEnum>)))
  "Returns md5sum for a message object of type '<DMSCameraDiagnoseTypeEnum>"
  "14c3f8092d698d5f22abee8381636371")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSCameraDiagnoseTypeEnum)))
  "Returns md5sum for a message object of type 'DMSCameraDiagnoseTypeEnum"
  "14c3f8092d698d5f22abee8381636371")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSCameraDiagnoseTypeEnum>)))
  "Returns full string definition for message of type '<DMSCameraDiagnoseTypeEnum>"
  (cl:format cl:nil "uint8 DMS_CAMERA_DIAGNOSE_NORMAL = 1~%uint8 DMS_CAMERA_DIAGNOSE_TOO_SMALL = 2~%uint8 DMS_CAMERA_DIAGNOSE_TOO_BRIGHT = 4~%uint8 DMS_CAMERA_DIAGNOSE_TOO_DARK = 8~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSCameraDiagnoseTypeEnum)))
  "Returns full string definition for message of type 'DMSCameraDiagnoseTypeEnum"
  (cl:format cl:nil "uint8 DMS_CAMERA_DIAGNOSE_NORMAL = 1~%uint8 DMS_CAMERA_DIAGNOSE_TOO_SMALL = 2~%uint8 DMS_CAMERA_DIAGNOSE_TOO_BRIGHT = 4~%uint8 DMS_CAMERA_DIAGNOSE_TOO_DARK = 8~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSCameraDiagnoseTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSCameraDiagnoseTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSCameraDiagnoseTypeEnum
    (cl:cons ':value (value msg))
))
