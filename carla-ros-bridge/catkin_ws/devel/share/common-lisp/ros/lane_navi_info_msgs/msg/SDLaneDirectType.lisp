; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude SDLaneDirectType.msg.html

(cl:defclass <SDLaneDirectType> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SDLaneDirectType (<SDLaneDirectType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SDLaneDirectType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SDLaneDirectType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<SDLaneDirectType> is deprecated: use lane_navi_info_msgs-msg:SDLaneDirectType instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <SDLaneDirectType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:type-val is deprecated.  Use lane_navi_info_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SDLaneDirectType>)))
    "Constants for message type '<SDLaneDirectType>"
  '((:SD_LANE_DIRECT_TYPE_NORMAL . 0)
    (:SD_LANE_DIRECT_TYPE_BUS . 1)
    (:SD_LANE_DIRECT_TYPE_OTHER_SPECIAL . 2)
    (:SD_LANE_DIRECT_TYPE_REVERSIBLE . 3)
    (:SD_LANE_DIRECT_TYPE_VARIABLE . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SDLaneDirectType)))
    "Constants for message type 'SDLaneDirectType"
  '((:SD_LANE_DIRECT_TYPE_NORMAL . 0)
    (:SD_LANE_DIRECT_TYPE_BUS . 1)
    (:SD_LANE_DIRECT_TYPE_OTHER_SPECIAL . 2)
    (:SD_LANE_DIRECT_TYPE_REVERSIBLE . 3)
    (:SD_LANE_DIRECT_TYPE_VARIABLE . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SDLaneDirectType>) ostream)
  "Serializes a message object of type '<SDLaneDirectType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SDLaneDirectType>) istream)
  "Deserializes a message object of type '<SDLaneDirectType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SDLaneDirectType>)))
  "Returns string type for a message object of type '<SDLaneDirectType>"
  "lane_navi_info_msgs/SDLaneDirectType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SDLaneDirectType)))
  "Returns string type for a message object of type 'SDLaneDirectType"
  "lane_navi_info_msgs/SDLaneDirectType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SDLaneDirectType>)))
  "Returns md5sum for a message object of type '<SDLaneDirectType>"
  "af2c45ff4447e4771a866405902d2bee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SDLaneDirectType)))
  "Returns md5sum for a message object of type 'SDLaneDirectType"
  "af2c45ff4447e4771a866405902d2bee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SDLaneDirectType>)))
  "Returns full string definition for message of type '<SDLaneDirectType>"
  (cl:format cl:nil "uint8 SD_LANE_DIRECT_TYPE_NORMAL = 0~%uint8 SD_LANE_DIRECT_TYPE_BUS = 1~%uint8 SD_LANE_DIRECT_TYPE_OTHER_SPECIAL = 2~%uint8 SD_LANE_DIRECT_TYPE_REVERSIBLE = 3~%uint8 SD_LANE_DIRECT_TYPE_VARIABLE = 4~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SDLaneDirectType)))
  "Returns full string definition for message of type 'SDLaneDirectType"
  (cl:format cl:nil "uint8 SD_LANE_DIRECT_TYPE_NORMAL = 0~%uint8 SD_LANE_DIRECT_TYPE_BUS = 1~%uint8 SD_LANE_DIRECT_TYPE_OTHER_SPECIAL = 2~%uint8 SD_LANE_DIRECT_TYPE_REVERSIBLE = 3~%uint8 SD_LANE_DIRECT_TYPE_VARIABLE = 4~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SDLaneDirectType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SDLaneDirectType>))
  "Converts a ROS message object to a list"
  (cl:list 'SDLaneDirectType
    (cl:cons ':type (type msg))
))
