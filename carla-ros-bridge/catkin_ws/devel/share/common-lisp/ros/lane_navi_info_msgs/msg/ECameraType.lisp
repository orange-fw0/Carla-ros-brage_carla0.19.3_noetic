; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude ECameraType.msg.html

(cl:defclass <ECameraType> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ECameraType (<ECameraType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ECameraType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ECameraType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<ECameraType> is deprecated: use lane_navi_info_msgs-msg:ECameraType instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <ECameraType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:type-val is deprecated.  Use lane_navi_info_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ECameraType>)))
    "Constants for message type '<ECameraType>"
  '((:ECAMERA_SPEED . 0)
    (:ECAMERA_MONITOR . 1)
    (:ECAMERA_TRAFIC_LIGHT . 2)
    (:ECAMERA_RULE . 3)
    (:ECAMERA_BUS . 4)
    (:ECAMERA_EMERGENCY . 5)
    (:ECAMERA_NON_MOTORIZED . 6)
    (:ECAMERA_RANGE . 7)
    (:ECAMERA_INTER_SPEED_START . 8)
    (:ECAMERA_INTER_SPEED_END . 9)
    (:ECAMERA_UNKNOWN . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ECameraType)))
    "Constants for message type 'ECameraType"
  '((:ECAMERA_SPEED . 0)
    (:ECAMERA_MONITOR . 1)
    (:ECAMERA_TRAFIC_LIGHT . 2)
    (:ECAMERA_RULE . 3)
    (:ECAMERA_BUS . 4)
    (:ECAMERA_EMERGENCY . 5)
    (:ECAMERA_NON_MOTORIZED . 6)
    (:ECAMERA_RANGE . 7)
    (:ECAMERA_INTER_SPEED_START . 8)
    (:ECAMERA_INTER_SPEED_END . 9)
    (:ECAMERA_UNKNOWN . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ECameraType>) ostream)
  "Serializes a message object of type '<ECameraType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ECameraType>) istream)
  "Deserializes a message object of type '<ECameraType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ECameraType>)))
  "Returns string type for a message object of type '<ECameraType>"
  "lane_navi_info_msgs/ECameraType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ECameraType)))
  "Returns string type for a message object of type 'ECameraType"
  "lane_navi_info_msgs/ECameraType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ECameraType>)))
  "Returns md5sum for a message object of type '<ECameraType>"
  "3f9c792de18abf7ccc45063122f6085b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ECameraType)))
  "Returns md5sum for a message object of type 'ECameraType"
  "3f9c792de18abf7ccc45063122f6085b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ECameraType>)))
  "Returns full string definition for message of type '<ECameraType>"
  (cl:format cl:nil "uint8 ECAMERA_SPEED = 0~%uint8 ECAMERA_MONITOR = 1~%uint8 ECAMERA_TRAFIC_LIGHT = 2~%uint8 ECAMERA_RULE = 3~%uint8 ECAMERA_BUS = 4~%uint8 ECAMERA_EMERGENCY = 5~%uint8 ECAMERA_NON_MOTORIZED = 6~%uint8 ECAMERA_RANGE = 7~%uint8 ECAMERA_INTER_SPEED_START = 8~%uint8 ECAMERA_INTER_SPEED_END = 9~%uint8 ECAMERA_UNKNOWN = 255~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ECameraType)))
  "Returns full string definition for message of type 'ECameraType"
  (cl:format cl:nil "uint8 ECAMERA_SPEED = 0~%uint8 ECAMERA_MONITOR = 1~%uint8 ECAMERA_TRAFIC_LIGHT = 2~%uint8 ECAMERA_RULE = 3~%uint8 ECAMERA_BUS = 4~%uint8 ECAMERA_EMERGENCY = 5~%uint8 ECAMERA_NON_MOTORIZED = 6~%uint8 ECAMERA_RANGE = 7~%uint8 ECAMERA_INTER_SPEED_START = 8~%uint8 ECAMERA_INTER_SPEED_END = 9~%uint8 ECAMERA_UNKNOWN = 255~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ECameraType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ECameraType>))
  "Converts a ROS message object to a list"
  (cl:list 'ECameraType
    (cl:cons ':type (type msg))
))
