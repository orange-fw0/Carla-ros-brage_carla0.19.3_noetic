; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude BoundarySourceEnum.msg.html

(cl:defclass <BoundarySourceEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass BoundarySourceEnum (<BoundarySourceEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BoundarySourceEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BoundarySourceEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<BoundarySourceEnum> is deprecated: use landmark_msgs-msg:BoundarySourceEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <BoundarySourceEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<BoundarySourceEnum>)))
    "Constants for message type '<BoundarySourceEnum>"
  '((:OTHER . 0)
    (:AUTO_MAPPING . 1)
    (:MANUAL_VALID . 2)
    (:MANUAL_GUESS . 3)
    (:INTERNAL . 4)
    (:EXTERNAL . 5)
    (:INTERNAL_SHARED . 6)
    (:NONE . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'BoundarySourceEnum)))
    "Constants for message type 'BoundarySourceEnum"
  '((:OTHER . 0)
    (:AUTO_MAPPING . 1)
    (:MANUAL_VALID . 2)
    (:MANUAL_GUESS . 3)
    (:INTERNAL . 4)
    (:EXTERNAL . 5)
    (:INTERNAL_SHARED . 6)
    (:NONE . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BoundarySourceEnum>) ostream)
  "Serializes a message object of type '<BoundarySourceEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BoundarySourceEnum>) istream)
  "Deserializes a message object of type '<BoundarySourceEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BoundarySourceEnum>)))
  "Returns string type for a message object of type '<BoundarySourceEnum>"
  "landmark_msgs/BoundarySourceEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BoundarySourceEnum)))
  "Returns string type for a message object of type 'BoundarySourceEnum"
  "landmark_msgs/BoundarySourceEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BoundarySourceEnum>)))
  "Returns md5sum for a message object of type '<BoundarySourceEnum>"
  "e7eae1cfc86301b9b9d79d2550ce15c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BoundarySourceEnum)))
  "Returns md5sum for a message object of type 'BoundarySourceEnum"
  "e7eae1cfc86301b9b9d79d2550ce15c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BoundarySourceEnum>)))
  "Returns full string definition for message of type '<BoundarySourceEnum>"
  (cl:format cl:nil "uint8 OTHER = 0~%uint8 AUTO_MAPPING = 1~%uint8 MANUAL_VALID = 2~%uint8 MANUAL_GUESS = 3~%uint8 INTERNAL = 4~%uint8 EXTERNAL = 5~%uint8 INTERNAL_SHARED = 6~%uint8 NONE = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BoundarySourceEnum)))
  "Returns full string definition for message of type 'BoundarySourceEnum"
  (cl:format cl:nil "uint8 OTHER = 0~%uint8 AUTO_MAPPING = 1~%uint8 MANUAL_VALID = 2~%uint8 MANUAL_GUESS = 3~%uint8 INTERNAL = 4~%uint8 EXTERNAL = 5~%uint8 INTERNAL_SHARED = 6~%uint8 NONE = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BoundarySourceEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BoundarySourceEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'BoundarySourceEnum
    (cl:cons ':value (value msg))
))
