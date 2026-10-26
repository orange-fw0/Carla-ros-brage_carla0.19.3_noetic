; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude SpeedSignCategoryEnum.msg.html

(cl:defclass <SpeedSignCategoryEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SpeedSignCategoryEnum (<SpeedSignCategoryEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpeedSignCategoryEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpeedSignCategoryEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<SpeedSignCategoryEnum> is deprecated: use perception_interface_msgs-msg:SpeedSignCategoryEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SpeedSignCategoryEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SpeedSignCategoryEnum>)))
    "Constants for message type '<SpeedSignCategoryEnum>"
  '((:SPEED_SIGN_CATEGORY_UNKNOWN . 0)
    (:SPEED_SIGN_CATEGORY_ORDINARY . 1)
    (:SPEED_SIGN_CATEGORY_ELECTRONIC . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SpeedSignCategoryEnum)))
    "Constants for message type 'SpeedSignCategoryEnum"
  '((:SPEED_SIGN_CATEGORY_UNKNOWN . 0)
    (:SPEED_SIGN_CATEGORY_ORDINARY . 1)
    (:SPEED_SIGN_CATEGORY_ELECTRONIC . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpeedSignCategoryEnum>) ostream)
  "Serializes a message object of type '<SpeedSignCategoryEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpeedSignCategoryEnum>) istream)
  "Deserializes a message object of type '<SpeedSignCategoryEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpeedSignCategoryEnum>)))
  "Returns string type for a message object of type '<SpeedSignCategoryEnum>"
  "perception_interface_msgs/SpeedSignCategoryEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeedSignCategoryEnum)))
  "Returns string type for a message object of type 'SpeedSignCategoryEnum"
  "perception_interface_msgs/SpeedSignCategoryEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpeedSignCategoryEnum>)))
  "Returns md5sum for a message object of type '<SpeedSignCategoryEnum>"
  "5c9fb779d6b98e70bfb731f33be883b0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpeedSignCategoryEnum)))
  "Returns md5sum for a message object of type 'SpeedSignCategoryEnum"
  "5c9fb779d6b98e70bfb731f33be883b0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpeedSignCategoryEnum>)))
  "Returns full string definition for message of type '<SpeedSignCategoryEnum>"
  (cl:format cl:nil "uint8 SPEED_SIGN_CATEGORY_UNKNOWN = 0~%uint8 SPEED_SIGN_CATEGORY_ORDINARY = 1~%uint8 SPEED_SIGN_CATEGORY_ELECTRONIC = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpeedSignCategoryEnum)))
  "Returns full string definition for message of type 'SpeedSignCategoryEnum"
  (cl:format cl:nil "uint8 SPEED_SIGN_CATEGORY_UNKNOWN = 0~%uint8 SPEED_SIGN_CATEGORY_ORDINARY = 1~%uint8 SPEED_SIGN_CATEGORY_ELECTRONIC = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpeedSignCategoryEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpeedSignCategoryEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'SpeedSignCategoryEnum
    (cl:cons ':value (value msg))
))
