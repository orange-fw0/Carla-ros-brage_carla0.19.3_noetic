; Auto-generated. Do not edit!


(cl:in-package adasis_v2_msgs-msg)


;//! \htmlinclude FunctionalRoadClassType.msg.html

(cl:defclass <FunctionalRoadClassType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass FunctionalRoadClassType (<FunctionalRoadClassType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FunctionalRoadClassType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FunctionalRoadClassType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name adasis_v2_msgs-msg:<FunctionalRoadClassType> is deprecated: use adasis_v2_msgs-msg:FunctionalRoadClassType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <FunctionalRoadClassType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:value-val is deprecated.  Use adasis_v2_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FunctionalRoadClassType>)))
    "Constants for message type '<FunctionalRoadClassType>"
  '((:UNKNOWN . 0)
    (:HIGH_WAY . 1)
    (:URBAN_EXPRESS_WAY . 2)
    (:NATIONAL_ROAD . 3)
    (:PROVINCE_OR_COUNTRY_ROAD . 4)
    (:URBAN_MAIN_ROAD . 5)
    (:OTHER_ROAD_OR_AVENUE . 6)
    (:NOT_APPLICABLE . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FunctionalRoadClassType)))
    "Constants for message type 'FunctionalRoadClassType"
  '((:UNKNOWN . 0)
    (:HIGH_WAY . 1)
    (:URBAN_EXPRESS_WAY . 2)
    (:NATIONAL_ROAD . 3)
    (:PROVINCE_OR_COUNTRY_ROAD . 4)
    (:URBAN_MAIN_ROAD . 5)
    (:OTHER_ROAD_OR_AVENUE . 6)
    (:NOT_APPLICABLE . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FunctionalRoadClassType>) ostream)
  "Serializes a message object of type '<FunctionalRoadClassType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FunctionalRoadClassType>) istream)
  "Deserializes a message object of type '<FunctionalRoadClassType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FunctionalRoadClassType>)))
  "Returns string type for a message object of type '<FunctionalRoadClassType>"
  "adasis_v2_msgs/FunctionalRoadClassType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FunctionalRoadClassType)))
  "Returns string type for a message object of type 'FunctionalRoadClassType"
  "adasis_v2_msgs/FunctionalRoadClassType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FunctionalRoadClassType>)))
  "Returns md5sum for a message object of type '<FunctionalRoadClassType>"
  "0c25d4b2779450dd40b9eff67c90eef4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FunctionalRoadClassType)))
  "Returns md5sum for a message object of type 'FunctionalRoadClassType"
  "0c25d4b2779450dd40b9eff67c90eef4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FunctionalRoadClassType>)))
  "Returns full string definition for message of type '<FunctionalRoadClassType>"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 HIGH_WAY = 1~%uint8 URBAN_EXPRESS_WAY = 2~%uint8 NATIONAL_ROAD = 3~%uint8 PROVINCE_OR_COUNTRY_ROAD = 4~%uint8 URBAN_MAIN_ROAD = 5~%uint8 OTHER_ROAD_OR_AVENUE = 6~%uint8 NOT_APPLICABLE = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FunctionalRoadClassType)))
  "Returns full string definition for message of type 'FunctionalRoadClassType"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 HIGH_WAY = 1~%uint8 URBAN_EXPRESS_WAY = 2~%uint8 NATIONAL_ROAD = 3~%uint8 PROVINCE_OR_COUNTRY_ROAD = 4~%uint8 URBAN_MAIN_ROAD = 5~%uint8 OTHER_ROAD_OR_AVENUE = 6~%uint8 NOT_APPLICABLE = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FunctionalRoadClassType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FunctionalRoadClassType>))
  "Converts a ROS message object to a list"
  (cl:list 'FunctionalRoadClassType
    (cl:cons ':value (value msg))
))
