; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude PathType.msg.html

(cl:defclass <PathType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PathType (<PathType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PathType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PathType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<PathType> is deprecated: use lane_navi_info_msgs-msg:PathType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <PathType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:value-val is deprecated.  Use lane_navi_info_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PathType>)))
    "Constants for message type '<PathType>"
  '((:UNKNOWN . 0)
    (:NAVIGATION . 1)
    (:CRUISE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PathType)))
    "Constants for message type 'PathType"
  '((:UNKNOWN . 0)
    (:NAVIGATION . 1)
    (:CRUISE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PathType>) ostream)
  "Serializes a message object of type '<PathType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PathType>) istream)
  "Deserializes a message object of type '<PathType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PathType>)))
  "Returns string type for a message object of type '<PathType>"
  "lane_navi_info_msgs/PathType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathType)))
  "Returns string type for a message object of type 'PathType"
  "lane_navi_info_msgs/PathType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PathType>)))
  "Returns md5sum for a message object of type '<PathType>"
  "684e44c8547bd1ec4f7fcdc6862743c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PathType)))
  "Returns md5sum for a message object of type 'PathType"
  "684e44c8547bd1ec4f7fcdc6862743c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PathType>)))
  "Returns full string definition for message of type '<PathType>"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 NAVIGATION = 1~%uint8 CRUISE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PathType)))
  "Returns full string definition for message of type 'PathType"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 NAVIGATION = 1~%uint8 CRUISE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PathType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PathType>))
  "Converts a ROS message object to a list"
  (cl:list 'PathType
    (cl:cons ':value (value msg))
))
