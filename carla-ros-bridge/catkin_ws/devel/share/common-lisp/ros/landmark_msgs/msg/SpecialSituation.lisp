; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude SpecialSituation.msg.html

(cl:defclass <SpecialSituation> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass SpecialSituation (<SpecialSituation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpecialSituation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpecialSituation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<SpecialSituation> is deprecated: use landmark_msgs-msg:SpecialSituation instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SpecialSituation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SpecialSituation>)))
    "Constants for message type '<SpecialSituation>"
  '((:UNKNOWN . 0)
    (:TUNNEL_BEGIN . 1)
    (:TUNNEL_END . 2)
    (:BAD_WEATHER_EFFECTED_ZONE_BEGIN . 3)
    (:BAD_WEATHER_EFFECTED_ZONE_END . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SpecialSituation)))
    "Constants for message type 'SpecialSituation"
  '((:UNKNOWN . 0)
    (:TUNNEL_BEGIN . 1)
    (:TUNNEL_END . 2)
    (:BAD_WEATHER_EFFECTED_ZONE_BEGIN . 3)
    (:BAD_WEATHER_EFFECTED_ZONE_END . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpecialSituation>) ostream)
  "Serializes a message object of type '<SpecialSituation>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpecialSituation>) istream)
  "Deserializes a message object of type '<SpecialSituation>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpecialSituation>)))
  "Returns string type for a message object of type '<SpecialSituation>"
  "landmark_msgs/SpecialSituation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpecialSituation)))
  "Returns string type for a message object of type 'SpecialSituation"
  "landmark_msgs/SpecialSituation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpecialSituation>)))
  "Returns md5sum for a message object of type '<SpecialSituation>"
  "75f39bf8b1af7dc37486bbd9b97a1597")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpecialSituation)))
  "Returns md5sum for a message object of type 'SpecialSituation"
  "75f39bf8b1af7dc37486bbd9b97a1597")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpecialSituation>)))
  "Returns full string definition for message of type '<SpecialSituation>"
  (cl:format cl:nil "uint32 UNKNOWN = 0~%uint32 TUNNEL_BEGIN = 1~%uint32 TUNNEL_END = 2~%uint32 BAD_WEATHER_EFFECTED_ZONE_BEGIN = 3~%uint32 BAD_WEATHER_EFFECTED_ZONE_END = 4~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpecialSituation)))
  "Returns full string definition for message of type 'SpecialSituation"
  (cl:format cl:nil "uint32 UNKNOWN = 0~%uint32 TUNNEL_BEGIN = 1~%uint32 TUNNEL_END = 2~%uint32 BAD_WEATHER_EFFECTED_ZONE_BEGIN = 3~%uint32 BAD_WEATHER_EFFECTED_ZONE_END = 4~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpecialSituation>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpecialSituation>))
  "Converts a ROS message object to a list"
  (cl:list 'SpecialSituation
    (cl:cons ':value (value msg))
))
