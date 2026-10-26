; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude RefPathTypeEnum.msg.html

(cl:defclass <RefPathTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RefPathTypeEnum (<RefPathTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RefPathTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RefPathTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<RefPathTypeEnum> is deprecated: use landmark_msgs-msg:RefPathTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RefPathTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RefPathTypeEnum>)))
    "Constants for message type '<RefPathTypeEnum>"
  '((:REFPATH_TYPE_UNKNOWN . 0)
    (:REFPATH_TYPE_LATENT_QUERY . 1)
    (:REFPATH_TYPE_ANGULAR_QUERY . 2)
    (:REFPATH_TYPE_GOAL_CONDITIONED . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RefPathTypeEnum)))
    "Constants for message type 'RefPathTypeEnum"
  '((:REFPATH_TYPE_UNKNOWN . 0)
    (:REFPATH_TYPE_LATENT_QUERY . 1)
    (:REFPATH_TYPE_ANGULAR_QUERY . 2)
    (:REFPATH_TYPE_GOAL_CONDITIONED . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RefPathTypeEnum>) ostream)
  "Serializes a message object of type '<RefPathTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RefPathTypeEnum>) istream)
  "Deserializes a message object of type '<RefPathTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RefPathTypeEnum>)))
  "Returns string type for a message object of type '<RefPathTypeEnum>"
  "landmark_msgs/RefPathTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RefPathTypeEnum)))
  "Returns string type for a message object of type 'RefPathTypeEnum"
  "landmark_msgs/RefPathTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RefPathTypeEnum>)))
  "Returns md5sum for a message object of type '<RefPathTypeEnum>"
  "7e68a73b726921287fbec8e4a60ed9ab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RefPathTypeEnum)))
  "Returns md5sum for a message object of type 'RefPathTypeEnum"
  "7e68a73b726921287fbec8e4a60ed9ab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RefPathTypeEnum>)))
  "Returns full string definition for message of type '<RefPathTypeEnum>"
  (cl:format cl:nil "uint8 REFPATH_TYPE_UNKNOWN = 0~%uint8 REFPATH_TYPE_LATENT_QUERY = 1~%uint8 REFPATH_TYPE_ANGULAR_QUERY = 2~%uint8 REFPATH_TYPE_GOAL_CONDITIONED = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RefPathTypeEnum)))
  "Returns full string definition for message of type 'RefPathTypeEnum"
  (cl:format cl:nil "uint8 REFPATH_TYPE_UNKNOWN = 0~%uint8 REFPATH_TYPE_LATENT_QUERY = 1~%uint8 REFPATH_TYPE_ANGULAR_QUERY = 2~%uint8 REFPATH_TYPE_GOAL_CONDITIONED = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RefPathTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RefPathTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'RefPathTypeEnum
    (cl:cons ':value (value msg))
))
