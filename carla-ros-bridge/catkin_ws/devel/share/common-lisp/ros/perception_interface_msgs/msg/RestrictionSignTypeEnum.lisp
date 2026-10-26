; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude RestrictionSignTypeEnum.msg.html

(cl:defclass <RestrictionSignTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RestrictionSignTypeEnum (<RestrictionSignTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RestrictionSignTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RestrictionSignTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<RestrictionSignTypeEnum> is deprecated: use perception_interface_msgs-msg:RestrictionSignTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RestrictionSignTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RestrictionSignTypeEnum>)))
    "Constants for message type '<RestrictionSignTypeEnum>"
  '((:RESTRINCTION_SIGN_TYPE_UNKNOWN . 0)
    (:RESTRINCTION_SIGN_TYPE_HEIGHT_LIMIT . 1)
    (:RESTRINCTION_SIGN_TYPE_WEIGHT_LIMIT . 2)
    (:RESTRINCTION_SIGN_TYPE_WIDTH_LIMIT . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RestrictionSignTypeEnum)))
    "Constants for message type 'RestrictionSignTypeEnum"
  '((:RESTRINCTION_SIGN_TYPE_UNKNOWN . 0)
    (:RESTRINCTION_SIGN_TYPE_HEIGHT_LIMIT . 1)
    (:RESTRINCTION_SIGN_TYPE_WEIGHT_LIMIT . 2)
    (:RESTRINCTION_SIGN_TYPE_WIDTH_LIMIT . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RestrictionSignTypeEnum>) ostream)
  "Serializes a message object of type '<RestrictionSignTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RestrictionSignTypeEnum>) istream)
  "Deserializes a message object of type '<RestrictionSignTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RestrictionSignTypeEnum>)))
  "Returns string type for a message object of type '<RestrictionSignTypeEnum>"
  "perception_interface_msgs/RestrictionSignTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RestrictionSignTypeEnum)))
  "Returns string type for a message object of type 'RestrictionSignTypeEnum"
  "perception_interface_msgs/RestrictionSignTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RestrictionSignTypeEnum>)))
  "Returns md5sum for a message object of type '<RestrictionSignTypeEnum>"
  "be50291993090a3423538c4109fb9e0b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RestrictionSignTypeEnum)))
  "Returns md5sum for a message object of type 'RestrictionSignTypeEnum"
  "be50291993090a3423538c4109fb9e0b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RestrictionSignTypeEnum>)))
  "Returns full string definition for message of type '<RestrictionSignTypeEnum>"
  (cl:format cl:nil "uint8 RESTRINCTION_SIGN_TYPE_UNKNOWN = 0~%uint8 RESTRINCTION_SIGN_TYPE_HEIGHT_LIMIT = 1~%uint8 RESTRINCTION_SIGN_TYPE_WEIGHT_LIMIT = 2~%uint8 RESTRINCTION_SIGN_TYPE_WIDTH_LIMIT = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RestrictionSignTypeEnum)))
  "Returns full string definition for message of type 'RestrictionSignTypeEnum"
  (cl:format cl:nil "uint8 RESTRINCTION_SIGN_TYPE_UNKNOWN = 0~%uint8 RESTRINCTION_SIGN_TYPE_HEIGHT_LIMIT = 1~%uint8 RESTRINCTION_SIGN_TYPE_WEIGHT_LIMIT = 2~%uint8 RESTRINCTION_SIGN_TYPE_WIDTH_LIMIT = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RestrictionSignTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RestrictionSignTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'RestrictionSignTypeEnum
    (cl:cons ':value (value msg))
))
