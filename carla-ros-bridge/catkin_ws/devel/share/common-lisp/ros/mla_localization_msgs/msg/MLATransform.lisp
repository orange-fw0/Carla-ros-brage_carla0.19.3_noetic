; Auto-generated. Do not edit!


(cl:in-package mla_localization_msgs-msg)


;//! \htmlinclude MLATransform.msg.html

(cl:defclass <MLATransform> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (transform_llh_to_boot
    :reader transform_llh_to_boot
    :initarg :transform_llh_to_boot
    :type mla_localization_msgs-msg:MLATransformInfo
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLATransformInfo))
   (transform_avp_map_to_boot
    :reader transform_avp_map_to_boot
    :initarg :transform_avp_map_to_boot
    :type mla_localization_msgs-msg:MLATransformInfo
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLATransformInfo))
   (transform_ego_motion_to_boot
    :reader transform_ego_motion_to_boot
    :initarg :transform_ego_motion_to_boot
    :type mla_localization_msgs-msg:MLATransformInfo
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLATransformInfo)))
)

(cl:defclass MLATransform (<MLATransform>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MLATransform>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MLATransform)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mla_localization_msgs-msg:<MLATransform> is deprecated: use mla_localization_msgs-msg:MLATransform instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <MLATransform>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:available-val is deprecated.  Use mla_localization_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'transform_llh_to_boot-val :lambda-list '(m))
(cl:defmethod transform_llh_to_boot-val ((m <MLATransform>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:transform_llh_to_boot-val is deprecated.  Use mla_localization_msgs-msg:transform_llh_to_boot instead.")
  (transform_llh_to_boot m))

(cl:ensure-generic-function 'transform_avp_map_to_boot-val :lambda-list '(m))
(cl:defmethod transform_avp_map_to_boot-val ((m <MLATransform>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:transform_avp_map_to_boot-val is deprecated.  Use mla_localization_msgs-msg:transform_avp_map_to_boot instead.")
  (transform_avp_map_to_boot m))

(cl:ensure-generic-function 'transform_ego_motion_to_boot-val :lambda-list '(m))
(cl:defmethod transform_ego_motion_to_boot-val ((m <MLATransform>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:transform_ego_motion_to_boot-val is deprecated.  Use mla_localization_msgs-msg:transform_ego_motion_to_boot instead.")
  (transform_ego_motion_to_boot m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MLATransform>)))
    "Constants for message type '<MLATransform>"
  '((:MLA_TRANSFORM_LLH_TO_BOOT . 1)
    (:MLA_TRANSFORM_AVPMAP_TO_BOOT . 2)
    (:MLA_TRANSFORM_EGOMOTION_TO_BOOT . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MLATransform)))
    "Constants for message type 'MLATransform"
  '((:MLA_TRANSFORM_LLH_TO_BOOT . 1)
    (:MLA_TRANSFORM_AVPMAP_TO_BOOT . 2)
    (:MLA_TRANSFORM_EGOMOTION_TO_BOOT . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MLATransform>) ostream)
  "Serializes a message object of type '<MLATransform>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transform_llh_to_boot) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transform_avp_map_to_boot) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transform_ego_motion_to_boot) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MLATransform>) istream)
  "Deserializes a message object of type '<MLATransform>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transform_llh_to_boot) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transform_avp_map_to_boot) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transform_ego_motion_to_boot) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MLATransform>)))
  "Returns string type for a message object of type '<MLATransform>"
  "mla_localization_msgs/MLATransform")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MLATransform)))
  "Returns string type for a message object of type 'MLATransform"
  "mla_localization_msgs/MLATransform")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MLATransform>)))
  "Returns md5sum for a message object of type '<MLATransform>"
  "cb99cdf92a77c9e5ce9cc78517670216")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MLATransform)))
  "Returns md5sum for a message object of type 'MLATransform"
  "cb99cdf92a77c9e5ce9cc78517670216")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MLATransform>)))
  "Returns full string definition for message of type '<MLATransform>"
  (cl:format cl:nil "uint8 MLA_TRANSFORM_LLH_TO_BOOT = 1~%uint8 MLA_TRANSFORM_AVPMAP_TO_BOOT = 2~%uint8 MLA_TRANSFORM_EGOMOTION_TO_BOOT = 4~%uint8 available~%mla_localization_msgs/MLATransformInfo transform_llh_to_boot~%mla_localization_msgs/MLATransformInfo transform_avp_map_to_boot~%mla_localization_msgs/MLATransformInfo transform_ego_motion_to_boot~%~%================================================================================~%MSG: mla_localization_msgs/MLATransformInfo~%mla_localization_msgs/MLAQuaternion transform_q~%mla_localization_msgs/MLAPosLocal transform_t~%mla_localization_msgs/MLAPosGlobal transform_center~%~%================================================================================~%MSG: mla_localization_msgs/MLAQuaternion~%float64 w~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: mla_localization_msgs/MLAPosLocal~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: mla_localization_msgs/MLAPosGlobal~%float64 latitude~%float64 longitude~%float64 altitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MLATransform)))
  "Returns full string definition for message of type 'MLATransform"
  (cl:format cl:nil "uint8 MLA_TRANSFORM_LLH_TO_BOOT = 1~%uint8 MLA_TRANSFORM_AVPMAP_TO_BOOT = 2~%uint8 MLA_TRANSFORM_EGOMOTION_TO_BOOT = 4~%uint8 available~%mla_localization_msgs/MLATransformInfo transform_llh_to_boot~%mla_localization_msgs/MLATransformInfo transform_avp_map_to_boot~%mla_localization_msgs/MLATransformInfo transform_ego_motion_to_boot~%~%================================================================================~%MSG: mla_localization_msgs/MLATransformInfo~%mla_localization_msgs/MLAQuaternion transform_q~%mla_localization_msgs/MLAPosLocal transform_t~%mla_localization_msgs/MLAPosGlobal transform_center~%~%================================================================================~%MSG: mla_localization_msgs/MLAQuaternion~%float64 w~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: mla_localization_msgs/MLAPosLocal~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: mla_localization_msgs/MLAPosGlobal~%float64 latitude~%float64 longitude~%float64 altitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MLATransform>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transform_llh_to_boot))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transform_avp_map_to_boot))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transform_ego_motion_to_boot))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MLATransform>))
  "Converts a ROS message object to a list"
  (cl:list 'MLATransform
    (cl:cons ':available (available msg))
    (cl:cons ':transform_llh_to_boot (transform_llh_to_boot msg))
    (cl:cons ':transform_avp_map_to_boot (transform_avp_map_to_boot msg))
    (cl:cons ':transform_ego_motion_to_boot (transform_ego_motion_to_boot msg))
))
