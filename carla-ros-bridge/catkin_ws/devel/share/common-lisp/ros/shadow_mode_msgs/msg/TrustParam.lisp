; Auto-generated. Do not edit!


(cl:in-package shadow_mode_msgs-msg)


;//! \htmlinclude TrustParam.msg.html

(cl:defclass <TrustParam> (roslisp-msg-protocol:ros-message)
  ((trust_value
    :reader trust_value
    :initarg :trust_value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrustParam (<TrustParam>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrustParam>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrustParam)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name shadow_mode_msgs-msg:<TrustParam> is deprecated: use shadow_mode_msgs-msg:TrustParam instead.")))

(cl:ensure-generic-function 'trust_value-val :lambda-list '(m))
(cl:defmethod trust_value-val ((m <TrustParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shadow_mode_msgs-msg:trust_value-val is deprecated.  Use shadow_mode_msgs-msg:trust_value instead.")
  (trust_value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrustParam>)))
    "Constants for message type '<TrustParam>"
  '((:NONE . 0)
    (:BEFORE . 1)
    (:AFTER . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrustParam)))
    "Constants for message type 'TrustParam"
  '((:NONE . 0)
    (:BEFORE . 1)
    (:AFTER . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrustParam>) ostream)
  "Serializes a message object of type '<TrustParam>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'trust_value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrustParam>) istream)
  "Deserializes a message object of type '<TrustParam>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'trust_value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrustParam>)))
  "Returns string type for a message object of type '<TrustParam>"
  "shadow_mode_msgs/TrustParam")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrustParam)))
  "Returns string type for a message object of type 'TrustParam"
  "shadow_mode_msgs/TrustParam")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrustParam>)))
  "Returns md5sum for a message object of type '<TrustParam>"
  "a1edeb9fd6ed1d68d4a45e9e6425ce6e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrustParam)))
  "Returns md5sum for a message object of type 'TrustParam"
  "a1edeb9fd6ed1d68d4a45e9e6425ce6e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrustParam>)))
  "Returns full string definition for message of type '<TrustParam>"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 BEFORE = 1~%uint8 AFTER = 2~%uint8 trust_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrustParam)))
  "Returns full string definition for message of type 'TrustParam"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 BEFORE = 1~%uint8 AFTER = 2~%uint8 trust_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrustParam>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrustParam>))
  "Converts a ROS message object to a list"
  (cl:list 'TrustParam
    (cl:cons ':trust_value (trust_value msg))
))
