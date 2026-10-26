; Auto-generated. Do not edit!


(cl:in-package v2x_msgs-msg)


;//! \htmlinclude V2xPerceptionObjectType.msg.html

(cl:defclass <V2xPerceptionObjectType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass V2xPerceptionObjectType (<V2xPerceptionObjectType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <V2xPerceptionObjectType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'V2xPerceptionObjectType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name v2x_msgs-msg:<V2xPerceptionObjectType> is deprecated: use v2x_msgs-msg:V2xPerceptionObjectType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <V2xPerceptionObjectType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x_msgs-msg:value-val is deprecated.  Use v2x_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<V2xPerceptionObjectType>)))
    "Constants for message type '<V2xPerceptionObjectType>"
  '((:UNKNOWN . 0)
    (:PEDESTRIAN . 1)
    (:NON_MOTOR . 2)
    (:MOTOR . 3)
    (:OTHER . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'V2xPerceptionObjectType)))
    "Constants for message type 'V2xPerceptionObjectType"
  '((:UNKNOWN . 0)
    (:PEDESTRIAN . 1)
    (:NON_MOTOR . 2)
    (:MOTOR . 3)
    (:OTHER . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <V2xPerceptionObjectType>) ostream)
  "Serializes a message object of type '<V2xPerceptionObjectType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <V2xPerceptionObjectType>) istream)
  "Deserializes a message object of type '<V2xPerceptionObjectType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<V2xPerceptionObjectType>)))
  "Returns string type for a message object of type '<V2xPerceptionObjectType>"
  "v2x_msgs/V2xPerceptionObjectType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'V2xPerceptionObjectType)))
  "Returns string type for a message object of type 'V2xPerceptionObjectType"
  "v2x_msgs/V2xPerceptionObjectType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<V2xPerceptionObjectType>)))
  "Returns md5sum for a message object of type '<V2xPerceptionObjectType>"
  "e39096ee7f4de975b80be797cac9f4d7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'V2xPerceptionObjectType)))
  "Returns md5sum for a message object of type 'V2xPerceptionObjectType"
  "e39096ee7f4de975b80be797cac9f4d7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<V2xPerceptionObjectType>)))
  "Returns full string definition for message of type '<V2xPerceptionObjectType>"
  (cl:format cl:nil "uint32 UNKNOWN = 0~%uint32 PEDESTRIAN = 1~%uint32 NON_MOTOR = 2~%uint32 MOTOR = 3~%uint32 OTHER = 4~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'V2xPerceptionObjectType)))
  "Returns full string definition for message of type 'V2xPerceptionObjectType"
  (cl:format cl:nil "uint32 UNKNOWN = 0~%uint32 PEDESTRIAN = 1~%uint32 NON_MOTOR = 2~%uint32 MOTOR = 3~%uint32 OTHER = 4~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <V2xPerceptionObjectType>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <V2xPerceptionObjectType>))
  "Converts a ROS message object to a list"
  (cl:list 'V2xPerceptionObjectType
    (cl:cons ':value (value msg))
))
