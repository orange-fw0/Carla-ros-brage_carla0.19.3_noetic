; Auto-generated. Do not edit!


(cl:in-package oms_msgs-msg)


;//! \htmlinclude OMSCameraDiagnoseTypeEnum.msg.html

(cl:defclass <OMSCameraDiagnoseTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass OMSCameraDiagnoseTypeEnum (<OMSCameraDiagnoseTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OMSCameraDiagnoseTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OMSCameraDiagnoseTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name oms_msgs-msg:<OMSCameraDiagnoseTypeEnum> is deprecated: use oms_msgs-msg:OMSCameraDiagnoseTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <OMSCameraDiagnoseTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:value-val is deprecated.  Use oms_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<OMSCameraDiagnoseTypeEnum>)))
    "Constants for message type '<OMSCameraDiagnoseTypeEnum>"
  '((:OMS_CAMERA_DIAGNOSE_NORMAL . 1)
    (:OMS_CAMERA_DIAGNOSE_TOO_SMALL . 2)
    (:OMS_CAMERA_DIAGNOSE_TOO_BRIGHT . 3)
    (:OMS_CAMERA_DIAGNOSE_TOO_DARK . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'OMSCameraDiagnoseTypeEnum)))
    "Constants for message type 'OMSCameraDiagnoseTypeEnum"
  '((:OMS_CAMERA_DIAGNOSE_NORMAL . 1)
    (:OMS_CAMERA_DIAGNOSE_TOO_SMALL . 2)
    (:OMS_CAMERA_DIAGNOSE_TOO_BRIGHT . 3)
    (:OMS_CAMERA_DIAGNOSE_TOO_DARK . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OMSCameraDiagnoseTypeEnum>) ostream)
  "Serializes a message object of type '<OMSCameraDiagnoseTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OMSCameraDiagnoseTypeEnum>) istream)
  "Deserializes a message object of type '<OMSCameraDiagnoseTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OMSCameraDiagnoseTypeEnum>)))
  "Returns string type for a message object of type '<OMSCameraDiagnoseTypeEnum>"
  "oms_msgs/OMSCameraDiagnoseTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OMSCameraDiagnoseTypeEnum)))
  "Returns string type for a message object of type 'OMSCameraDiagnoseTypeEnum"
  "oms_msgs/OMSCameraDiagnoseTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OMSCameraDiagnoseTypeEnum>)))
  "Returns md5sum for a message object of type '<OMSCameraDiagnoseTypeEnum>"
  "61cef719b174315d702655dc284fdde9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OMSCameraDiagnoseTypeEnum)))
  "Returns md5sum for a message object of type 'OMSCameraDiagnoseTypeEnum"
  "61cef719b174315d702655dc284fdde9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OMSCameraDiagnoseTypeEnum>)))
  "Returns full string definition for message of type '<OMSCameraDiagnoseTypeEnum>"
  (cl:format cl:nil "uint8 OMS_CAMERA_DIAGNOSE_NORMAL = 1~%uint8 OMS_CAMERA_DIAGNOSE_TOO_SMALL = 2~%uint8 OMS_CAMERA_DIAGNOSE_TOO_BRIGHT = 3~%uint8 OMS_CAMERA_DIAGNOSE_TOO_DARK = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OMSCameraDiagnoseTypeEnum)))
  "Returns full string definition for message of type 'OMSCameraDiagnoseTypeEnum"
  (cl:format cl:nil "uint8 OMS_CAMERA_DIAGNOSE_NORMAL = 1~%uint8 OMS_CAMERA_DIAGNOSE_TOO_SMALL = 2~%uint8 OMS_CAMERA_DIAGNOSE_TOO_BRIGHT = 3~%uint8 OMS_CAMERA_DIAGNOSE_TOO_DARK = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OMSCameraDiagnoseTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OMSCameraDiagnoseTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'OMSCameraDiagnoseTypeEnum
    (cl:cons ':value (value msg))
))
