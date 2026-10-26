; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude SDSpeedLimitType.msg.html

(cl:defclass <SDSpeedLimitType> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SDSpeedLimitType (<SDSpeedLimitType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SDSpeedLimitType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SDSpeedLimitType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<SDSpeedLimitType> is deprecated: use lane_navi_info_msgs-msg:SDSpeedLimitType instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <SDSpeedLimitType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:type-val is deprecated.  Use lane_navi_info_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SDSpeedLimitType>)))
    "Constants for message type '<SDSpeedLimitType>"
  '((:SPEED_LIMIT_TYPE_DEFAULT . 0)
    (:SPEED_LIMIT_TYPE_RAMP . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SDSpeedLimitType)))
    "Constants for message type 'SDSpeedLimitType"
  '((:SPEED_LIMIT_TYPE_DEFAULT . 0)
    (:SPEED_LIMIT_TYPE_RAMP . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SDSpeedLimitType>) ostream)
  "Serializes a message object of type '<SDSpeedLimitType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SDSpeedLimitType>) istream)
  "Deserializes a message object of type '<SDSpeedLimitType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SDSpeedLimitType>)))
  "Returns string type for a message object of type '<SDSpeedLimitType>"
  "lane_navi_info_msgs/SDSpeedLimitType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SDSpeedLimitType)))
  "Returns string type for a message object of type 'SDSpeedLimitType"
  "lane_navi_info_msgs/SDSpeedLimitType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SDSpeedLimitType>)))
  "Returns md5sum for a message object of type '<SDSpeedLimitType>"
  "839be42c2a7d270dfda37b35f69d3252")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SDSpeedLimitType)))
  "Returns md5sum for a message object of type 'SDSpeedLimitType"
  "839be42c2a7d270dfda37b35f69d3252")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SDSpeedLimitType>)))
  "Returns full string definition for message of type '<SDSpeedLimitType>"
  (cl:format cl:nil "uint8 SPEED_LIMIT_TYPE_DEFAULT = 0~%uint8 SPEED_LIMIT_TYPE_RAMP = 2~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SDSpeedLimitType)))
  "Returns full string definition for message of type 'SDSpeedLimitType"
  (cl:format cl:nil "uint8 SPEED_LIMIT_TYPE_DEFAULT = 0~%uint8 SPEED_LIMIT_TYPE_RAMP = 2~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SDSpeedLimitType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SDSpeedLimitType>))
  "Converts a ROS message object to a list"
  (cl:list 'SDSpeedLimitType
    (cl:cons ':type (type msg))
))
