; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude FeaturePointArrayPropertyEnum.msg.html

(cl:defclass <FeaturePointArrayPropertyEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass FeaturePointArrayPropertyEnum (<FeaturePointArrayPropertyEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FeaturePointArrayPropertyEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FeaturePointArrayPropertyEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<FeaturePointArrayPropertyEnum> is deprecated: use perception_interface_msgs-msg:FeaturePointArrayPropertyEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <FeaturePointArrayPropertyEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FeaturePointArrayPropertyEnum>)))
    "Constants for message type '<FeaturePointArrayPropertyEnum>"
  '((:FEATURE_POINT_ARRAY_PROPERTY_TAG . 0)
    (:FEATURE_POINT_ARRAY_PROPERTY_AVAILABLE . 1)
    (:FEATURE_POINT_ARRAY_PROPERTY_NUM_POINT . 2)
    (:FEATURE_POINT_ARRAY_PROPERTY_TRACK_IDS . 3)
    (:FEATURE_POINT_ARRAY_PROPERTY_POINT_XS . 4)
    (:FEATURE_POINT_ARRAY_PROPERTY_POINT_YS . 5)
    (:FEATURE_POINT_ARRAY_PROPERTY_DESCRIPTOR_SIZE . 6)
    (:FEATURE_POINT_ARRAY_PROPERTY_DESCRIPTORS . 7)
    (:FEATURE_POINT_ARRAY_PROPERTY_LOG_INFO_2D . 8)
    (:FEATURE_POINT_ARRAY_PROPERTY_RESERVED_INFO . 9))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FeaturePointArrayPropertyEnum)))
    "Constants for message type 'FeaturePointArrayPropertyEnum"
  '((:FEATURE_POINT_ARRAY_PROPERTY_TAG . 0)
    (:FEATURE_POINT_ARRAY_PROPERTY_AVAILABLE . 1)
    (:FEATURE_POINT_ARRAY_PROPERTY_NUM_POINT . 2)
    (:FEATURE_POINT_ARRAY_PROPERTY_TRACK_IDS . 3)
    (:FEATURE_POINT_ARRAY_PROPERTY_POINT_XS . 4)
    (:FEATURE_POINT_ARRAY_PROPERTY_POINT_YS . 5)
    (:FEATURE_POINT_ARRAY_PROPERTY_DESCRIPTOR_SIZE . 6)
    (:FEATURE_POINT_ARRAY_PROPERTY_DESCRIPTORS . 7)
    (:FEATURE_POINT_ARRAY_PROPERTY_LOG_INFO_2D . 8)
    (:FEATURE_POINT_ARRAY_PROPERTY_RESERVED_INFO . 9))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FeaturePointArrayPropertyEnum>) ostream)
  "Serializes a message object of type '<FeaturePointArrayPropertyEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FeaturePointArrayPropertyEnum>) istream)
  "Deserializes a message object of type '<FeaturePointArrayPropertyEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FeaturePointArrayPropertyEnum>)))
  "Returns string type for a message object of type '<FeaturePointArrayPropertyEnum>"
  "perception_interface_msgs/FeaturePointArrayPropertyEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FeaturePointArrayPropertyEnum)))
  "Returns string type for a message object of type 'FeaturePointArrayPropertyEnum"
  "perception_interface_msgs/FeaturePointArrayPropertyEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FeaturePointArrayPropertyEnum>)))
  "Returns md5sum for a message object of type '<FeaturePointArrayPropertyEnum>"
  "104404b0b6ef7ba60d2836c3b46814dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FeaturePointArrayPropertyEnum)))
  "Returns md5sum for a message object of type 'FeaturePointArrayPropertyEnum"
  "104404b0b6ef7ba60d2836c3b46814dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FeaturePointArrayPropertyEnum>)))
  "Returns full string definition for message of type '<FeaturePointArrayPropertyEnum>"
  (cl:format cl:nil "uint8 FEATURE_POINT_ARRAY_PROPERTY_TAG = 0~%uint8 FEATURE_POINT_ARRAY_PROPERTY_AVAILABLE = 1~%uint8 FEATURE_POINT_ARRAY_PROPERTY_NUM_POINT = 2~%uint8 FEATURE_POINT_ARRAY_PROPERTY_TRACK_IDS = 3~%uint8 FEATURE_POINT_ARRAY_PROPERTY_POINT_XS = 4~%uint8 FEATURE_POINT_ARRAY_PROPERTY_POINT_YS = 5~%uint8 FEATURE_POINT_ARRAY_PROPERTY_DESCRIPTOR_SIZE = 6~%uint8 FEATURE_POINT_ARRAY_PROPERTY_DESCRIPTORS = 7~%uint8 FEATURE_POINT_ARRAY_PROPERTY_LOG_INFO_2D = 8~%uint8 FEATURE_POINT_ARRAY_PROPERTY_RESERVED_INFO = 9~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FeaturePointArrayPropertyEnum)))
  "Returns full string definition for message of type 'FeaturePointArrayPropertyEnum"
  (cl:format cl:nil "uint8 FEATURE_POINT_ARRAY_PROPERTY_TAG = 0~%uint8 FEATURE_POINT_ARRAY_PROPERTY_AVAILABLE = 1~%uint8 FEATURE_POINT_ARRAY_PROPERTY_NUM_POINT = 2~%uint8 FEATURE_POINT_ARRAY_PROPERTY_TRACK_IDS = 3~%uint8 FEATURE_POINT_ARRAY_PROPERTY_POINT_XS = 4~%uint8 FEATURE_POINT_ARRAY_PROPERTY_POINT_YS = 5~%uint8 FEATURE_POINT_ARRAY_PROPERTY_DESCRIPTOR_SIZE = 6~%uint8 FEATURE_POINT_ARRAY_PROPERTY_DESCRIPTORS = 7~%uint8 FEATURE_POINT_ARRAY_PROPERTY_LOG_INFO_2D = 8~%uint8 FEATURE_POINT_ARRAY_PROPERTY_RESERVED_INFO = 9~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FeaturePointArrayPropertyEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FeaturePointArrayPropertyEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'FeaturePointArrayPropertyEnum
    (cl:cons ':value (value msg))
))
