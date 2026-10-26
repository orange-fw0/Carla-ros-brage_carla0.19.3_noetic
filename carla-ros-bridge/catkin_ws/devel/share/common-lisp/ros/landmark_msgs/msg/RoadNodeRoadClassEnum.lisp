; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude RoadNodeRoadClassEnum.msg.html

(cl:defclass <RoadNodeRoadClassEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RoadNodeRoadClassEnum (<RoadNodeRoadClassEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoadNodeRoadClassEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoadNodeRoadClassEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<RoadNodeRoadClassEnum> is deprecated: use landmark_msgs-msg:RoadNodeRoadClassEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RoadNodeRoadClassEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RoadNodeRoadClassEnum>)))
    "Constants for message type '<RoadNodeRoadClassEnum>"
  '((:ROAD_CLASS_UNKNOWN . 0)
    (:HIGHWAY . 1)
    (:URBAN . 2)
    (:CITY_EXPRESSWAY . 3)
    (:STATE_ROAD . 4)
    (:PROVINCIAL_ROAD . 5)
    (:MAIN_ROAD . 6)
    (:SECONDARY_ROAD . 7)
    (:NORMAL_ROAD . 8)
    (:COUNTY_ROAD . 9)
    (:COUNTRY_ROAD . 10)
    (:INTERNAL_ROAD . 11)
    (:OTHERS . 99))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RoadNodeRoadClassEnum)))
    "Constants for message type 'RoadNodeRoadClassEnum"
  '((:ROAD_CLASS_UNKNOWN . 0)
    (:HIGHWAY . 1)
    (:URBAN . 2)
    (:CITY_EXPRESSWAY . 3)
    (:STATE_ROAD . 4)
    (:PROVINCIAL_ROAD . 5)
    (:MAIN_ROAD . 6)
    (:SECONDARY_ROAD . 7)
    (:NORMAL_ROAD . 8)
    (:COUNTY_ROAD . 9)
    (:COUNTRY_ROAD . 10)
    (:INTERNAL_ROAD . 11)
    (:OTHERS . 99))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoadNodeRoadClassEnum>) ostream)
  "Serializes a message object of type '<RoadNodeRoadClassEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoadNodeRoadClassEnum>) istream)
  "Deserializes a message object of type '<RoadNodeRoadClassEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoadNodeRoadClassEnum>)))
  "Returns string type for a message object of type '<RoadNodeRoadClassEnum>"
  "landmark_msgs/RoadNodeRoadClassEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoadNodeRoadClassEnum)))
  "Returns string type for a message object of type 'RoadNodeRoadClassEnum"
  "landmark_msgs/RoadNodeRoadClassEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoadNodeRoadClassEnum>)))
  "Returns md5sum for a message object of type '<RoadNodeRoadClassEnum>"
  "1904da43f4202d5a315d1867284cfca2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoadNodeRoadClassEnum)))
  "Returns md5sum for a message object of type 'RoadNodeRoadClassEnum"
  "1904da43f4202d5a315d1867284cfca2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoadNodeRoadClassEnum>)))
  "Returns full string definition for message of type '<RoadNodeRoadClassEnum>"
  (cl:format cl:nil "uint8 ROAD_CLASS_UNKNOWN = 0~%uint8 HIGHWAY = 1~%uint8 URBAN = 2~%uint8 CITY_EXPRESSWAY = 3~%uint8 STATE_ROAD = 4~%uint8 PROVINCIAL_ROAD = 5~%uint8 MAIN_ROAD = 6~%uint8 SECONDARY_ROAD = 7~%uint8 NORMAL_ROAD = 8~%uint8 COUNTY_ROAD = 9~%uint8 COUNTRY_ROAD = 10~%uint8 INTERNAL_ROAD = 11~%uint8 OTHERS = 99~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoadNodeRoadClassEnum)))
  "Returns full string definition for message of type 'RoadNodeRoadClassEnum"
  (cl:format cl:nil "uint8 ROAD_CLASS_UNKNOWN = 0~%uint8 HIGHWAY = 1~%uint8 URBAN = 2~%uint8 CITY_EXPRESSWAY = 3~%uint8 STATE_ROAD = 4~%uint8 PROVINCIAL_ROAD = 5~%uint8 MAIN_ROAD = 6~%uint8 SECONDARY_ROAD = 7~%uint8 NORMAL_ROAD = 8~%uint8 COUNTY_ROAD = 9~%uint8 COUNTRY_ROAD = 10~%uint8 INTERNAL_ROAD = 11~%uint8 OTHERS = 99~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoadNodeRoadClassEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoadNodeRoadClassEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'RoadNodeRoadClassEnum
    (cl:cons ':value (value msg))
))
