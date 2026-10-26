; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude AoiNodeTypeEnum.msg.html

(cl:defclass <AoiNodeTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AoiNodeTypeEnum (<AoiNodeTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AoiNodeTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AoiNodeTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<AoiNodeTypeEnum> is deprecated: use landmark_msgs-msg:AoiNodeTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <AoiNodeTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AoiNodeTypeEnum>)))
    "Constants for message type '<AoiNodeTypeEnum>"
  '((:AOI_TYPE_UNKNOWN . 0)
    (:AOI_TYPE_EMERGENCY_PARKING_AREA . 1)
    (:AOI_TYPE_EMERGENCY_ESCAPE_AREA . 2)
    (:AOI_TYPE_TOLLGATE . 3)
    (:AOI_TYPE_CHECK_POINT . 4)
    (:AOI_TYPE_SERVICE_AREA . 5)
    (:AOI_TYPE_CONSTRUCTION_AREA . 6)
    (:AOI_TYPE_INTERSECTION . 7)
    (:AOI_TYPE_BARRIER_GAP . 8)
    (:AOI_TYPE_STOPPING_AREA . 9)
    (:AOI_TYPE_ELEVATOR_ENTRANCE . 10)
    (:AOI_TYPE_FACILITY_ENTRANCE . 11)
    (:AOI_TYPE_FACILITY_EXIT_AND_ENTRANCE . 12)
    (:AOI_TYPE_FLOORS . 13)
    (:AOI_TYPE_GARAGE_EXIT . 14)
    (:AOI_TYPE_GARAGE_ENTRANCE_EXIT . 15)
    (:AOI_TYPE_HILL . 16)
    (:AOI_TYPE_HUMAN_ACCESS . 17)
    (:AOI_TYPE_PARK_INTERSECTION . 18)
    (:AOI_TYPE_TOLL_GATE . 19)
    (:AOI_TYPE_SUB_REGION . 20)
    (:AOI_TYPE_MARKET_ENTRANCE . 21)
    (:AOI_TYPE_GARAGE_ENTRANCE . 22)
    (:AOI_TYPE_FACILITY_EXIT . 23)
    (:AOI_TYPE_BUS_STOP . 24)
    (:AOI_TYPE_CHARGIINIG_AREA . 25)
    (:AOI_TYPE_ESCALATOR_ENTRANCE . 26)
    (:AOI_TYPE_DASH_UTURN_AREA . 27))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AoiNodeTypeEnum)))
    "Constants for message type 'AoiNodeTypeEnum"
  '((:AOI_TYPE_UNKNOWN . 0)
    (:AOI_TYPE_EMERGENCY_PARKING_AREA . 1)
    (:AOI_TYPE_EMERGENCY_ESCAPE_AREA . 2)
    (:AOI_TYPE_TOLLGATE . 3)
    (:AOI_TYPE_CHECK_POINT . 4)
    (:AOI_TYPE_SERVICE_AREA . 5)
    (:AOI_TYPE_CONSTRUCTION_AREA . 6)
    (:AOI_TYPE_INTERSECTION . 7)
    (:AOI_TYPE_BARRIER_GAP . 8)
    (:AOI_TYPE_STOPPING_AREA . 9)
    (:AOI_TYPE_ELEVATOR_ENTRANCE . 10)
    (:AOI_TYPE_FACILITY_ENTRANCE . 11)
    (:AOI_TYPE_FACILITY_EXIT_AND_ENTRANCE . 12)
    (:AOI_TYPE_FLOORS . 13)
    (:AOI_TYPE_GARAGE_EXIT . 14)
    (:AOI_TYPE_GARAGE_ENTRANCE_EXIT . 15)
    (:AOI_TYPE_HILL . 16)
    (:AOI_TYPE_HUMAN_ACCESS . 17)
    (:AOI_TYPE_PARK_INTERSECTION . 18)
    (:AOI_TYPE_TOLL_GATE . 19)
    (:AOI_TYPE_SUB_REGION . 20)
    (:AOI_TYPE_MARKET_ENTRANCE . 21)
    (:AOI_TYPE_GARAGE_ENTRANCE . 22)
    (:AOI_TYPE_FACILITY_EXIT . 23)
    (:AOI_TYPE_BUS_STOP . 24)
    (:AOI_TYPE_CHARGIINIG_AREA . 25)
    (:AOI_TYPE_ESCALATOR_ENTRANCE . 26)
    (:AOI_TYPE_DASH_UTURN_AREA . 27))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AoiNodeTypeEnum>) ostream)
  "Serializes a message object of type '<AoiNodeTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AoiNodeTypeEnum>) istream)
  "Deserializes a message object of type '<AoiNodeTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AoiNodeTypeEnum>)))
  "Returns string type for a message object of type '<AoiNodeTypeEnum>"
  "landmark_msgs/AoiNodeTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AoiNodeTypeEnum)))
  "Returns string type for a message object of type 'AoiNodeTypeEnum"
  "landmark_msgs/AoiNodeTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AoiNodeTypeEnum>)))
  "Returns md5sum for a message object of type '<AoiNodeTypeEnum>"
  "c6de3066781b9a65077179a9c754202a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AoiNodeTypeEnum)))
  "Returns md5sum for a message object of type 'AoiNodeTypeEnum"
  "c6de3066781b9a65077179a9c754202a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AoiNodeTypeEnum>)))
  "Returns full string definition for message of type '<AoiNodeTypeEnum>"
  (cl:format cl:nil "uint8 AOI_TYPE_UNKNOWN = 0~%uint8 AOI_TYPE_EMERGENCY_PARKING_AREA = 1~%uint8 AOI_TYPE_EMERGENCY_ESCAPE_AREA = 2~%uint8 AOI_TYPE_TOLLGATE = 3~%uint8 AOI_TYPE_CHECK_POINT = 4~%uint8 AOI_TYPE_SERVICE_AREA = 5~%uint8 AOI_TYPE_CONSTRUCTION_AREA = 6~%uint8 AOI_TYPE_INTERSECTION = 7~%uint8 AOI_TYPE_BARRIER_GAP = 8~%uint8 AOI_TYPE_STOPPING_AREA = 9~%uint8 AOI_TYPE_ELEVATOR_ENTRANCE = 10~%uint8 AOI_TYPE_FACILITY_ENTRANCE = 11~%uint8 AOI_TYPE_FACILITY_EXIT_AND_ENTRANCE = 12~%uint8 AOI_TYPE_FLOORS = 13~%uint8 AOI_TYPE_GARAGE_EXIT = 14~%uint8 AOI_TYPE_GARAGE_ENTRANCE_EXIT = 15~%uint8 AOI_TYPE_HILL = 16~%uint8 AOI_TYPE_HUMAN_ACCESS = 17~%uint8 AOI_TYPE_PARK_INTERSECTION = 18~%uint8 AOI_TYPE_TOLL_GATE = 19~%uint8 AOI_TYPE_SUB_REGION = 20~%uint8 AOI_TYPE_MARKET_ENTRANCE = 21~%uint8 AOI_TYPE_GARAGE_ENTRANCE = 22~%uint8 AOI_TYPE_FACILITY_EXIT = 23~%uint8 AOI_TYPE_BUS_STOP = 24~%uint8 AOI_TYPE_CHARGIINIG_AREA = 25~%uint8 AOI_TYPE_ESCALATOR_ENTRANCE = 26~%uint8 AOI_TYPE_DASH_UTURN_AREA = 27~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AoiNodeTypeEnum)))
  "Returns full string definition for message of type 'AoiNodeTypeEnum"
  (cl:format cl:nil "uint8 AOI_TYPE_UNKNOWN = 0~%uint8 AOI_TYPE_EMERGENCY_PARKING_AREA = 1~%uint8 AOI_TYPE_EMERGENCY_ESCAPE_AREA = 2~%uint8 AOI_TYPE_TOLLGATE = 3~%uint8 AOI_TYPE_CHECK_POINT = 4~%uint8 AOI_TYPE_SERVICE_AREA = 5~%uint8 AOI_TYPE_CONSTRUCTION_AREA = 6~%uint8 AOI_TYPE_INTERSECTION = 7~%uint8 AOI_TYPE_BARRIER_GAP = 8~%uint8 AOI_TYPE_STOPPING_AREA = 9~%uint8 AOI_TYPE_ELEVATOR_ENTRANCE = 10~%uint8 AOI_TYPE_FACILITY_ENTRANCE = 11~%uint8 AOI_TYPE_FACILITY_EXIT_AND_ENTRANCE = 12~%uint8 AOI_TYPE_FLOORS = 13~%uint8 AOI_TYPE_GARAGE_EXIT = 14~%uint8 AOI_TYPE_GARAGE_ENTRANCE_EXIT = 15~%uint8 AOI_TYPE_HILL = 16~%uint8 AOI_TYPE_HUMAN_ACCESS = 17~%uint8 AOI_TYPE_PARK_INTERSECTION = 18~%uint8 AOI_TYPE_TOLL_GATE = 19~%uint8 AOI_TYPE_SUB_REGION = 20~%uint8 AOI_TYPE_MARKET_ENTRANCE = 21~%uint8 AOI_TYPE_GARAGE_ENTRANCE = 22~%uint8 AOI_TYPE_FACILITY_EXIT = 23~%uint8 AOI_TYPE_BUS_STOP = 24~%uint8 AOI_TYPE_CHARGIINIG_AREA = 25~%uint8 AOI_TYPE_ESCALATOR_ENTRANCE = 26~%uint8 AOI_TYPE_DASH_UTURN_AREA = 27~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AoiNodeTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AoiNodeTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'AoiNodeTypeEnum
    (cl:cons ':value (value msg))
))
