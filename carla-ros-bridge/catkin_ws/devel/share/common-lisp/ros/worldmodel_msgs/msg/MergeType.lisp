; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude MergeType.msg.html

(cl:defclass <MergeType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MergeType (<MergeType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MergeType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MergeType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<MergeType> is deprecated: use worldmodel_msgs-msg:MergeType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <MergeType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:value-val is deprecated.  Use worldmodel_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MergeType>)))
    "Constants for message type '<MergeType>"
  '((:UNKNOWN . 0)
    (:UNRELATED . 1)
    (:FROM_RIGHT . 2)
    (:FROM_LEFT . 3)
    (:FROM_BOTH . 4)
    (:LANE_END . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MergeType)))
    "Constants for message type 'MergeType"
  '((:UNKNOWN . 0)
    (:UNRELATED . 1)
    (:FROM_RIGHT . 2)
    (:FROM_LEFT . 3)
    (:FROM_BOTH . 4)
    (:LANE_END . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MergeType>) ostream)
  "Serializes a message object of type '<MergeType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MergeType>) istream)
  "Deserializes a message object of type '<MergeType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MergeType>)))
  "Returns string type for a message object of type '<MergeType>"
  "worldmodel_msgs/MergeType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MergeType)))
  "Returns string type for a message object of type 'MergeType"
  "worldmodel_msgs/MergeType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MergeType>)))
  "Returns md5sum for a message object of type '<MergeType>"
  "5af07d3266060f38a429b126e858139b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MergeType)))
  "Returns md5sum for a message object of type 'MergeType"
  "5af07d3266060f38a429b126e858139b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MergeType>)))
  "Returns full string definition for message of type '<MergeType>"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 UNRELATED = 1~%uint8 FROM_RIGHT = 2~%uint8 FROM_LEFT = 3~%uint8 FROM_BOTH = 4~%uint8 LANE_END = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MergeType)))
  "Returns full string definition for message of type 'MergeType"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 UNRELATED = 1~%uint8 FROM_RIGHT = 2~%uint8 FROM_LEFT = 3~%uint8 FROM_BOTH = 4~%uint8 LANE_END = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MergeType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MergeType>))
  "Converts a ROS message object to a list"
  (cl:list 'MergeType
    (cl:cons ':value (value msg))
))
