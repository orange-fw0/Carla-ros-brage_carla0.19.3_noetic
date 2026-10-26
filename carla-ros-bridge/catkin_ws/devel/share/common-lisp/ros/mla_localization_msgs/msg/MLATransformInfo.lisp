; Auto-generated. Do not edit!


(cl:in-package mla_localization_msgs-msg)


;//! \htmlinclude MLATransformInfo.msg.html

(cl:defclass <MLATransformInfo> (roslisp-msg-protocol:ros-message)
  ((transform_q
    :reader transform_q
    :initarg :transform_q
    :type mla_localization_msgs-msg:MLAQuaternion
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLAQuaternion))
   (transform_t
    :reader transform_t
    :initarg :transform_t
    :type mla_localization_msgs-msg:MLAPosLocal
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLAPosLocal))
   (transform_center
    :reader transform_center
    :initarg :transform_center
    :type mla_localization_msgs-msg:MLAPosGlobal
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLAPosGlobal)))
)

(cl:defclass MLATransformInfo (<MLATransformInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MLATransformInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MLATransformInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mla_localization_msgs-msg:<MLATransformInfo> is deprecated: use mla_localization_msgs-msg:MLATransformInfo instead.")))

(cl:ensure-generic-function 'transform_q-val :lambda-list '(m))
(cl:defmethod transform_q-val ((m <MLATransformInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:transform_q-val is deprecated.  Use mla_localization_msgs-msg:transform_q instead.")
  (transform_q m))

(cl:ensure-generic-function 'transform_t-val :lambda-list '(m))
(cl:defmethod transform_t-val ((m <MLATransformInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:transform_t-val is deprecated.  Use mla_localization_msgs-msg:transform_t instead.")
  (transform_t m))

(cl:ensure-generic-function 'transform_center-val :lambda-list '(m))
(cl:defmethod transform_center-val ((m <MLATransformInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:transform_center-val is deprecated.  Use mla_localization_msgs-msg:transform_center instead.")
  (transform_center m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MLATransformInfo>) ostream)
  "Serializes a message object of type '<MLATransformInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transform_q) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transform_t) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transform_center) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MLATransformInfo>) istream)
  "Deserializes a message object of type '<MLATransformInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transform_q) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transform_t) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transform_center) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MLATransformInfo>)))
  "Returns string type for a message object of type '<MLATransformInfo>"
  "mla_localization_msgs/MLATransformInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MLATransformInfo)))
  "Returns string type for a message object of type 'MLATransformInfo"
  "mla_localization_msgs/MLATransformInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MLATransformInfo>)))
  "Returns md5sum for a message object of type '<MLATransformInfo>"
  "a71623f72ebed93da4f6adb79297fa2b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MLATransformInfo)))
  "Returns md5sum for a message object of type 'MLATransformInfo"
  "a71623f72ebed93da4f6adb79297fa2b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MLATransformInfo>)))
  "Returns full string definition for message of type '<MLATransformInfo>"
  (cl:format cl:nil "mla_localization_msgs/MLAQuaternion transform_q~%mla_localization_msgs/MLAPosLocal transform_t~%mla_localization_msgs/MLAPosGlobal transform_center~%~%================================================================================~%MSG: mla_localization_msgs/MLAQuaternion~%float64 w~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: mla_localization_msgs/MLAPosLocal~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: mla_localization_msgs/MLAPosGlobal~%float64 latitude~%float64 longitude~%float64 altitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MLATransformInfo)))
  "Returns full string definition for message of type 'MLATransformInfo"
  (cl:format cl:nil "mla_localization_msgs/MLAQuaternion transform_q~%mla_localization_msgs/MLAPosLocal transform_t~%mla_localization_msgs/MLAPosGlobal transform_center~%~%================================================================================~%MSG: mla_localization_msgs/MLAQuaternion~%float64 w~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: mla_localization_msgs/MLAPosLocal~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: mla_localization_msgs/MLAPosGlobal~%float64 latitude~%float64 longitude~%float64 altitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MLATransformInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transform_q))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transform_t))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transform_center))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MLATransformInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'MLATransformInfo
    (cl:cons ':transform_q (transform_q msg))
    (cl:cons ':transform_t (transform_t msg))
    (cl:cons ':transform_center (transform_center msg))
))
