; Auto-generated. Do not edit!


(cl:in-package adasis_v2_msgs-msg)


;//! \htmlinclude ProfileLongType.msg.html

(cl:defclass <ProfileLongType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ProfileLongType (<ProfileLongType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProfileLongType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProfileLongType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name adasis_v2_msgs-msg:<ProfileLongType> is deprecated: use adasis_v2_msgs-msg:ProfileLongType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ProfileLongType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:value-val is deprecated.  Use adasis_v2_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ProfileLongType>)))
    "Constants for message type '<ProfileLongType>"
  '((:LONGITUDE . 1)
    (:LATITUDE . 2)
    (:ALTITUDE . 3)
    (:CONTROL_POINT_LONGITUDE . 4)
    (:CONTROL_POINT_LATITUDE . 5)
    (:CONTROL_POINT_ALTITUDE . 6)
    (:LINK_IDENTIFIER . 7)
    (:TRAFFIC_SIGN . 8)
    (:TRUCK_SPEED_LIMIT . 9)
    (:EXTENDED_LANE . 10)
    (:HARZ_SPEED_LIMIT_0_AND_1 . 16)
    (:HARZ_SPEED_LIMIT_1 . 17)
    (:TRAFFIC_EVENT . 19)
    (:WEATHER . 20))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ProfileLongType)))
    "Constants for message type 'ProfileLongType"
  '((:LONGITUDE . 1)
    (:LATITUDE . 2)
    (:ALTITUDE . 3)
    (:CONTROL_POINT_LONGITUDE . 4)
    (:CONTROL_POINT_LATITUDE . 5)
    (:CONTROL_POINT_ALTITUDE . 6)
    (:LINK_IDENTIFIER . 7)
    (:TRAFFIC_SIGN . 8)
    (:TRUCK_SPEED_LIMIT . 9)
    (:EXTENDED_LANE . 10)
    (:HARZ_SPEED_LIMIT_0_AND_1 . 16)
    (:HARZ_SPEED_LIMIT_1 . 17)
    (:TRAFFIC_EVENT . 19)
    (:WEATHER . 20))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProfileLongType>) ostream)
  "Serializes a message object of type '<ProfileLongType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProfileLongType>) istream)
  "Deserializes a message object of type '<ProfileLongType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProfileLongType>)))
  "Returns string type for a message object of type '<ProfileLongType>"
  "adasis_v2_msgs/ProfileLongType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProfileLongType)))
  "Returns string type for a message object of type 'ProfileLongType"
  "adasis_v2_msgs/ProfileLongType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProfileLongType>)))
  "Returns md5sum for a message object of type '<ProfileLongType>"
  "4c05289cf9e11da36b33fae39a854b02")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProfileLongType)))
  "Returns md5sum for a message object of type 'ProfileLongType"
  "4c05289cf9e11da36b33fae39a854b02")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProfileLongType>)))
  "Returns full string definition for message of type '<ProfileLongType>"
  (cl:format cl:nil "uint8 LONGITUDE = 1~%uint8 LATITUDE = 2~%uint8 ALTITUDE = 3~%uint8 CONTROL_POINT_LONGITUDE = 4~%uint8 CONTROL_POINT_LATITUDE = 5~%uint8 CONTROL_POINT_ALTITUDE = 6~%uint8 LINK_IDENTIFIER = 7~%uint8 TRAFFIC_SIGN = 8~%uint8 TRUCK_SPEED_LIMIT = 9~%uint8 EXTENDED_LANE = 10~%uint8 HARZ_SPEED_LIMIT_0_AND_1 = 16~%uint8 HARZ_SPEED_LIMIT_1 = 17~%uint8 TRAFFIC_EVENT = 19~%uint8 WEATHER = 20~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProfileLongType)))
  "Returns full string definition for message of type 'ProfileLongType"
  (cl:format cl:nil "uint8 LONGITUDE = 1~%uint8 LATITUDE = 2~%uint8 ALTITUDE = 3~%uint8 CONTROL_POINT_LONGITUDE = 4~%uint8 CONTROL_POINT_LATITUDE = 5~%uint8 CONTROL_POINT_ALTITUDE = 6~%uint8 LINK_IDENTIFIER = 7~%uint8 TRAFFIC_SIGN = 8~%uint8 TRUCK_SPEED_LIMIT = 9~%uint8 EXTENDED_LANE = 10~%uint8 HARZ_SPEED_LIMIT_0_AND_1 = 16~%uint8 HARZ_SPEED_LIMIT_1 = 17~%uint8 TRAFFIC_EVENT = 19~%uint8 WEATHER = 20~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProfileLongType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProfileLongType>))
  "Converts a ROS message object to a list"
  (cl:list 'ProfileLongType
    (cl:cons ':value (value msg))
))
