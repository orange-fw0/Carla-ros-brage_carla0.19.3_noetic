; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude SrsCollosion.msg.html

(cl:defclass <SrsCollosion> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SrsCollosion (<SrsCollosion>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SrsCollosion>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SrsCollosion)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<SrsCollosion> is deprecated: use endpoint_msgs-msg:SrsCollosion instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SrsCollosion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SrsCollosion>)))
    "Constants for message type '<SrsCollosion>"
  '((:NONE . 0)
    (:NOT_COLLOSION . 1)
    (:COLLOSION . 2)
    (:INVALID . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SrsCollosion)))
    "Constants for message type 'SrsCollosion"
  '((:NONE . 0)
    (:NOT_COLLOSION . 1)
    (:COLLOSION . 2)
    (:INVALID . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SrsCollosion>) ostream)
  "Serializes a message object of type '<SrsCollosion>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SrsCollosion>) istream)
  "Deserializes a message object of type '<SrsCollosion>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SrsCollosion>)))
  "Returns string type for a message object of type '<SrsCollosion>"
  "endpoint_msgs/SrsCollosion")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SrsCollosion)))
  "Returns string type for a message object of type 'SrsCollosion"
  "endpoint_msgs/SrsCollosion")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SrsCollosion>)))
  "Returns md5sum for a message object of type '<SrsCollosion>"
  "9c6ba30f48214789243273d1b2902a0e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SrsCollosion)))
  "Returns md5sum for a message object of type 'SrsCollosion"
  "9c6ba30f48214789243273d1b2902a0e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SrsCollosion>)))
  "Returns full string definition for message of type '<SrsCollosion>"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 NOT_COLLOSION = 1~%uint8 COLLOSION = 2~%uint8 INVALID = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SrsCollosion)))
  "Returns full string definition for message of type 'SrsCollosion"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 NOT_COLLOSION = 1~%uint8 COLLOSION = 2~%uint8 INVALID = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SrsCollosion>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SrsCollosion>))
  "Converts a ROS message object to a list"
  (cl:list 'SrsCollosion
    (cl:cons ':value (value msg))
))
