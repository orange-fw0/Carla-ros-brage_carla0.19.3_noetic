; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude MapType.msg.html

(cl:defclass <MapType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MapType (<MapType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<MapType> is deprecated: use lane_navi_info_msgs-msg:MapType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <MapType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:value-val is deprecated.  Use lane_navi_info_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MapType>)))
    "Constants for message type '<MapType>"
  '((:SD_PRO . 0)
    (:SD_MAP . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MapType)))
    "Constants for message type 'MapType"
  '((:SD_PRO . 0)
    (:SD_MAP . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapType>) ostream)
  "Serializes a message object of type '<MapType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapType>) istream)
  "Deserializes a message object of type '<MapType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapType>)))
  "Returns string type for a message object of type '<MapType>"
  "lane_navi_info_msgs/MapType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapType)))
  "Returns string type for a message object of type 'MapType"
  "lane_navi_info_msgs/MapType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapType>)))
  "Returns md5sum for a message object of type '<MapType>"
  "1450d62389d818d3fb20c98893ec5530")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapType)))
  "Returns md5sum for a message object of type 'MapType"
  "1450d62389d818d3fb20c98893ec5530")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapType>)))
  "Returns full string definition for message of type '<MapType>"
  (cl:format cl:nil "uint8 SD_PRO = 0~%uint8 SD_MAP = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapType)))
  "Returns full string definition for message of type 'MapType"
  (cl:format cl:nil "uint8 SD_PRO = 0~%uint8 SD_MAP = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapType>))
  "Converts a ROS message object to a list"
  (cl:list 'MapType
    (cl:cons ':value (value msg))
))
