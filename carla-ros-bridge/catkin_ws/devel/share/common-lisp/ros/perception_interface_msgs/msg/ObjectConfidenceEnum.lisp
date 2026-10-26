; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude ObjectConfidenceEnum.msg.html

(cl:defclass <ObjectConfidenceEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ObjectConfidenceEnum (<ObjectConfidenceEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectConfidenceEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectConfidenceEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<ObjectConfidenceEnum> is deprecated: use perception_interface_msgs-msg:ObjectConfidenceEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ObjectConfidenceEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ObjectConfidenceEnum>)))
    "Constants for message type '<ObjectConfidenceEnum>"
  '((:LOW_CONFIDENCE . 0)
    (:MIDIUM_CONFIDENCE . 1)
    (:HIGH_CONFIDENCE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ObjectConfidenceEnum)))
    "Constants for message type 'ObjectConfidenceEnum"
  '((:LOW_CONFIDENCE . 0)
    (:MIDIUM_CONFIDENCE . 1)
    (:HIGH_CONFIDENCE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectConfidenceEnum>) ostream)
  "Serializes a message object of type '<ObjectConfidenceEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectConfidenceEnum>) istream)
  "Deserializes a message object of type '<ObjectConfidenceEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectConfidenceEnum>)))
  "Returns string type for a message object of type '<ObjectConfidenceEnum>"
  "perception_interface_msgs/ObjectConfidenceEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectConfidenceEnum)))
  "Returns string type for a message object of type 'ObjectConfidenceEnum"
  "perception_interface_msgs/ObjectConfidenceEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectConfidenceEnum>)))
  "Returns md5sum for a message object of type '<ObjectConfidenceEnum>"
  "e2613edbb52fd2b95b1e83b350ec2886")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectConfidenceEnum)))
  "Returns md5sum for a message object of type 'ObjectConfidenceEnum"
  "e2613edbb52fd2b95b1e83b350ec2886")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectConfidenceEnum>)))
  "Returns full string definition for message of type '<ObjectConfidenceEnum>"
  (cl:format cl:nil "uint8 LOW_CONFIDENCE = 0~%uint8 MIDIUM_CONFIDENCE = 1~%uint8 HIGH_CONFIDENCE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectConfidenceEnum)))
  "Returns full string definition for message of type 'ObjectConfidenceEnum"
  (cl:format cl:nil "uint8 LOW_CONFIDENCE = 0~%uint8 MIDIUM_CONFIDENCE = 1~%uint8 HIGH_CONFIDENCE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectConfidenceEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectConfidenceEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectConfidenceEnum
    (cl:cons ':value (value msg))
))
