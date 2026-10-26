; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude VehicledrivingMode.msg.html

(cl:defclass <VehicledrivingMode> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (sub_mode
    :reader sub_mode
    :initarg :sub_mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VehicledrivingMode (<VehicledrivingMode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicledrivingMode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicledrivingMode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<VehicledrivingMode> is deprecated: use endpoint_msgs-msg:VehicledrivingMode instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <VehicledrivingMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:mode-val is deprecated.  Use endpoint_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'sub_mode-val :lambda-list '(m))
(cl:defmethod sub_mode-val ((m <VehicledrivingMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:sub_mode-val is deprecated.  Use endpoint_msgs-msg:sub_mode instead.")
  (sub_mode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VehicledrivingMode>)))
    "Constants for message type '<VehicledrivingMode>"
  '((:NONE . 0)
    (:NORMAL . 1)
    (:DRIFT_EXP . 2)
    (:WINTER_SPORT . 3)
    (:OFFROAD . 4)
    (:RACE_TRACK . 5)
    (:ROCK . 6)
    (:SAND . 7)
    (:SPORT . 8)
    (:ECO . 9)
    (:MUD . 10)
    (:OPD . 11)
    (:WADING . 12)
    (:SNOW . 13)
    (:ICE . 14)
    (:GRASS . 15)
    (:GRIT . 16)
    (:MOUNTAIN . 17)
    (:SUPER_WADING . 18)
    (:ADAPTIVE_FEEDBACK_SYSTEM . 19)
    (:TURN_IN_PLACE . 20)
    (:ECO_PLUS . 21)
    (:RALLY . 22)
    (:LIMP_MODE . 23)
    (:SPORT_PLUS . 24)
    (:CREEP . 25)
    (:OVERCLOCKING_MODE . 26)
    (:ANTISKID_CHAIN . 27)
    (:STRUCK_ASSISTANT . 28)
    (:TERRAIN_ASSISTANT . 29)
    (:ITAC . 30)
    (:EXT_ENDURANCE . 31)
    (:DEEPSNOW . 32)
    (:TBS_DETN . 33)
    (:AUTOMATIC_MODE . 34)
    (:CUSTOM_MODE . 35)
    (:RESERVED1 . 36)
    (:RESERVED2 . 37)
    (:RESERVED3 . 38))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VehicledrivingMode)))
    "Constants for message type 'VehicledrivingMode"
  '((:NONE . 0)
    (:NORMAL . 1)
    (:DRIFT_EXP . 2)
    (:WINTER_SPORT . 3)
    (:OFFROAD . 4)
    (:RACE_TRACK . 5)
    (:ROCK . 6)
    (:SAND . 7)
    (:SPORT . 8)
    (:ECO . 9)
    (:MUD . 10)
    (:OPD . 11)
    (:WADING . 12)
    (:SNOW . 13)
    (:ICE . 14)
    (:GRASS . 15)
    (:GRIT . 16)
    (:MOUNTAIN . 17)
    (:SUPER_WADING . 18)
    (:ADAPTIVE_FEEDBACK_SYSTEM . 19)
    (:TURN_IN_PLACE . 20)
    (:ECO_PLUS . 21)
    (:RALLY . 22)
    (:LIMP_MODE . 23)
    (:SPORT_PLUS . 24)
    (:CREEP . 25)
    (:OVERCLOCKING_MODE . 26)
    (:ANTISKID_CHAIN . 27)
    (:STRUCK_ASSISTANT . 28)
    (:TERRAIN_ASSISTANT . 29)
    (:ITAC . 30)
    (:EXT_ENDURANCE . 31)
    (:DEEPSNOW . 32)
    (:TBS_DETN . 33)
    (:AUTOMATIC_MODE . 34)
    (:CUSTOM_MODE . 35)
    (:RESERVED1 . 36)
    (:RESERVED2 . 37)
    (:RESERVED3 . 38))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicledrivingMode>) ostream)
  "Serializes a message object of type '<VehicledrivingMode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sub_mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicledrivingMode>) istream)
  "Deserializes a message object of type '<VehicledrivingMode>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sub_mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicledrivingMode>)))
  "Returns string type for a message object of type '<VehicledrivingMode>"
  "endpoint_msgs/VehicledrivingMode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicledrivingMode)))
  "Returns string type for a message object of type 'VehicledrivingMode"
  "endpoint_msgs/VehicledrivingMode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicledrivingMode>)))
  "Returns md5sum for a message object of type '<VehicledrivingMode>"
  "95271e4159c01cb2988d9ea2d24929b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicledrivingMode)))
  "Returns md5sum for a message object of type 'VehicledrivingMode"
  "95271e4159c01cb2988d9ea2d24929b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicledrivingMode>)))
  "Returns full string definition for message of type '<VehicledrivingMode>"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 NORMAL = 1~%uint8 DRIFT_EXP = 2~%uint8 WINTER_SPORT = 3~%uint8 OFFROAD = 4~%uint8 RACE_TRACK = 5~%uint8 ROCK = 6~%uint8 SAND = 7~%uint8 SPORT = 8~%uint8 ECO = 9~%uint8 MUD = 10~%uint8 OPD = 11~%uint8 WADING = 12~%uint8 SNOW = 13~%uint8 ICE = 14~%uint8 GRASS = 15~%uint8 GRIT = 16~%uint8 MOUNTAIN = 17~%uint8 SUPER_WADING = 18~%uint8 ADAPTIVE_FEEDBACK_SYSTEM = 19~%uint8 TURN_IN_PLACE = 20~%uint8 ECO_PLUS = 21~%uint8 RALLY = 22~%uint8 LIMP_MODE = 23~%uint8 SPORT_PLUS = 24~%uint8 CREEP = 25~%uint8 OVERCLOCKING_MODE = 26~%uint8 ANTISKID_CHAIN = 27~%uint8 STRUCK_ASSISTANT = 28~%uint8 TERRAIN_ASSISTANT = 29~%uint8 ITAC = 30~%uint8 Ext_Endurance = 31~%uint8 DEEPSNOW = 32~%uint8 TBS_Detn = 33~%uint8 AUTOMATIC_MODE = 34~%uint8 CUSTOM_MODE = 35~%uint8 RESERVED1 = 36~%uint8 RESERVED2 = 37~%uint8 RESERVED3 = 38~%uint8 mode~%uint8 sub_mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicledrivingMode)))
  "Returns full string definition for message of type 'VehicledrivingMode"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 NORMAL = 1~%uint8 DRIFT_EXP = 2~%uint8 WINTER_SPORT = 3~%uint8 OFFROAD = 4~%uint8 RACE_TRACK = 5~%uint8 ROCK = 6~%uint8 SAND = 7~%uint8 SPORT = 8~%uint8 ECO = 9~%uint8 MUD = 10~%uint8 OPD = 11~%uint8 WADING = 12~%uint8 SNOW = 13~%uint8 ICE = 14~%uint8 GRASS = 15~%uint8 GRIT = 16~%uint8 MOUNTAIN = 17~%uint8 SUPER_WADING = 18~%uint8 ADAPTIVE_FEEDBACK_SYSTEM = 19~%uint8 TURN_IN_PLACE = 20~%uint8 ECO_PLUS = 21~%uint8 RALLY = 22~%uint8 LIMP_MODE = 23~%uint8 SPORT_PLUS = 24~%uint8 CREEP = 25~%uint8 OVERCLOCKING_MODE = 26~%uint8 ANTISKID_CHAIN = 27~%uint8 STRUCK_ASSISTANT = 28~%uint8 TERRAIN_ASSISTANT = 29~%uint8 ITAC = 30~%uint8 Ext_Endurance = 31~%uint8 DEEPSNOW = 32~%uint8 TBS_Detn = 33~%uint8 AUTOMATIC_MODE = 34~%uint8 CUSTOM_MODE = 35~%uint8 RESERVED1 = 36~%uint8 RESERVED2 = 37~%uint8 RESERVED3 = 38~%uint8 mode~%uint8 sub_mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicledrivingMode>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicledrivingMode>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicledrivingMode
    (cl:cons ':mode (mode msg))
    (cl:cons ':sub_mode (sub_mode msg))
))
