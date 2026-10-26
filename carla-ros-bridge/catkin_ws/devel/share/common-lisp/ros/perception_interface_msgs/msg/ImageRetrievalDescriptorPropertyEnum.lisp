; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude ImageRetrievalDescriptorPropertyEnum.msg.html

(cl:defclass <ImageRetrievalDescriptorPropertyEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ImageRetrievalDescriptorPropertyEnum (<ImageRetrievalDescriptorPropertyEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImageRetrievalDescriptorPropertyEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImageRetrievalDescriptorPropertyEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<ImageRetrievalDescriptorPropertyEnum> is deprecated: use perception_interface_msgs-msg:ImageRetrievalDescriptorPropertyEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ImageRetrievalDescriptorPropertyEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ImageRetrievalDescriptorPropertyEnum>)))
    "Constants for message type '<ImageRetrievalDescriptorPropertyEnum>"
  '((:IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_TAG . 0)
    (:IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_AVAILABLE . 1)
    (:IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_DESCRIPTOR . 2)
    (:IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_LOG_INFO_2D . 3)
    (:IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_RESERVED_INFO . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ImageRetrievalDescriptorPropertyEnum)))
    "Constants for message type 'ImageRetrievalDescriptorPropertyEnum"
  '((:IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_TAG . 0)
    (:IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_AVAILABLE . 1)
    (:IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_DESCRIPTOR . 2)
    (:IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_LOG_INFO_2D . 3)
    (:IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_RESERVED_INFO . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImageRetrievalDescriptorPropertyEnum>) ostream)
  "Serializes a message object of type '<ImageRetrievalDescriptorPropertyEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImageRetrievalDescriptorPropertyEnum>) istream)
  "Deserializes a message object of type '<ImageRetrievalDescriptorPropertyEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImageRetrievalDescriptorPropertyEnum>)))
  "Returns string type for a message object of type '<ImageRetrievalDescriptorPropertyEnum>"
  "perception_interface_msgs/ImageRetrievalDescriptorPropertyEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImageRetrievalDescriptorPropertyEnum)))
  "Returns string type for a message object of type 'ImageRetrievalDescriptorPropertyEnum"
  "perception_interface_msgs/ImageRetrievalDescriptorPropertyEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImageRetrievalDescriptorPropertyEnum>)))
  "Returns md5sum for a message object of type '<ImageRetrievalDescriptorPropertyEnum>"
  "e450904a11657950988d27ee93e3765f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImageRetrievalDescriptorPropertyEnum)))
  "Returns md5sum for a message object of type 'ImageRetrievalDescriptorPropertyEnum"
  "e450904a11657950988d27ee93e3765f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImageRetrievalDescriptorPropertyEnum>)))
  "Returns full string definition for message of type '<ImageRetrievalDescriptorPropertyEnum>"
  (cl:format cl:nil "uint8 IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_TAG = 0~%uint8 IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_AVAILABLE = 1~%uint8 IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_DESCRIPTOR = 2~%uint8 IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_LOG_INFO_2D = 3~%uint8 IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_RESERVED_INFO = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImageRetrievalDescriptorPropertyEnum)))
  "Returns full string definition for message of type 'ImageRetrievalDescriptorPropertyEnum"
  (cl:format cl:nil "uint8 IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_TAG = 0~%uint8 IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_AVAILABLE = 1~%uint8 IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_DESCRIPTOR = 2~%uint8 IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_LOG_INFO_2D = 3~%uint8 IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_RESERVED_INFO = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImageRetrievalDescriptorPropertyEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImageRetrievalDescriptorPropertyEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'ImageRetrievalDescriptorPropertyEnum
    (cl:cons ':value (value msg))
))
