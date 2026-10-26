; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude IntersectionType.msg.html

(cl:defclass <IntersectionType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass IntersectionType (<IntersectionType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IntersectionType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IntersectionType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<IntersectionType> is deprecated: use lane_navi_info_msgs-msg:IntersectionType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <IntersectionType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:value-val is deprecated.  Use lane_navi_info_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<IntersectionType>)))
    "Constants for message type '<IntersectionType>"
  '((:UNKNOWN . 0)
    (:HIGHWAY_SPLIT . 1)
    (:URBAN_NORMAL . 2)
    (:NORMAL_SPLIT_MERGE . 3)
    (:T_JUNCTION . 4)
    (:Y_JUNCTION . 5)
    (:ROUNDABOUT . 6)
    (:OVERPASS . 7)
    (:OTHERS . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'IntersectionType)))
    "Constants for message type 'IntersectionType"
  '((:UNKNOWN . 0)
    (:HIGHWAY_SPLIT . 1)
    (:URBAN_NORMAL . 2)
    (:NORMAL_SPLIT_MERGE . 3)
    (:T_JUNCTION . 4)
    (:Y_JUNCTION . 5)
    (:ROUNDABOUT . 6)
    (:OVERPASS . 7)
    (:OTHERS . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IntersectionType>) ostream)
  "Serializes a message object of type '<IntersectionType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IntersectionType>) istream)
  "Deserializes a message object of type '<IntersectionType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IntersectionType>)))
  "Returns string type for a message object of type '<IntersectionType>"
  "lane_navi_info_msgs/IntersectionType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IntersectionType)))
  "Returns string type for a message object of type 'IntersectionType"
  "lane_navi_info_msgs/IntersectionType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IntersectionType>)))
  "Returns md5sum for a message object of type '<IntersectionType>"
  "17a20b3ea6b3a397c26232434b5abaac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IntersectionType)))
  "Returns md5sum for a message object of type 'IntersectionType"
  "17a20b3ea6b3a397c26232434b5abaac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IntersectionType>)))
  "Returns full string definition for message of type '<IntersectionType>"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 HIGHWAY_SPLIT = 1~%uint8 URBAN_NORMAL = 2~%uint8 NORMAL_SPLIT_MERGE = 3~%uint8 T_JUNCTION = 4~%uint8 Y_JUNCTION = 5~%uint8 ROUNDABOUT = 6~%uint8 OVERPASS = 7~%uint8 OTHERS = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IntersectionType)))
  "Returns full string definition for message of type 'IntersectionType"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 HIGHWAY_SPLIT = 1~%uint8 URBAN_NORMAL = 2~%uint8 NORMAL_SPLIT_MERGE = 3~%uint8 T_JUNCTION = 4~%uint8 Y_JUNCTION = 5~%uint8 ROUNDABOUT = 6~%uint8 OVERPASS = 7~%uint8 OTHERS = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IntersectionType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IntersectionType>))
  "Converts a ROS message object to a list"
  (cl:list 'IntersectionType
    (cl:cons ':value (value msg))
))
