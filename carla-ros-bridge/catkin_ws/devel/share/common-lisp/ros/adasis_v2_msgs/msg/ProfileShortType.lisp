; Auto-generated. Do not edit!


(cl:in-package adasis_v2_msgs-msg)


;//! \htmlinclude ProfileShortType.msg.html

(cl:defclass <ProfileShortType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ProfileShortType (<ProfileShortType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProfileShortType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProfileShortType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name adasis_v2_msgs-msg:<ProfileShortType> is deprecated: use adasis_v2_msgs-msg:ProfileShortType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ProfileShortType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:value-val is deprecated.  Use adasis_v2_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ProfileShortType>)))
    "Constants for message type '<ProfileShortType>"
  '((:CURVATURE . 1)
    (:ROUTE_NUMBER_TYPES . 2)
    (:SLOPE_STEP . 3)
    (:SLOPE_LINEAR . 4)
    (:ROAD_ACCESSIBILITY . 5)
    (:ROAD_CONDITION . 6)
    (:VARIABLE_SPEED_SIGN_POSITION . 7)
    (:HEADING_CHANGE . 8)
    (:SPEED_LIMIT_ASSIST_LOCATION . 16)
    (:HISTORY_AVERAGE_SPEED . 18)
    (:TRAFFIC_FLOW . 19))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ProfileShortType)))
    "Constants for message type 'ProfileShortType"
  '((:CURVATURE . 1)
    (:ROUTE_NUMBER_TYPES . 2)
    (:SLOPE_STEP . 3)
    (:SLOPE_LINEAR . 4)
    (:ROAD_ACCESSIBILITY . 5)
    (:ROAD_CONDITION . 6)
    (:VARIABLE_SPEED_SIGN_POSITION . 7)
    (:HEADING_CHANGE . 8)
    (:SPEED_LIMIT_ASSIST_LOCATION . 16)
    (:HISTORY_AVERAGE_SPEED . 18)
    (:TRAFFIC_FLOW . 19))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProfileShortType>) ostream)
  "Serializes a message object of type '<ProfileShortType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProfileShortType>) istream)
  "Deserializes a message object of type '<ProfileShortType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProfileShortType>)))
  "Returns string type for a message object of type '<ProfileShortType>"
  "adasis_v2_msgs/ProfileShortType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProfileShortType)))
  "Returns string type for a message object of type 'ProfileShortType"
  "adasis_v2_msgs/ProfileShortType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProfileShortType>)))
  "Returns md5sum for a message object of type '<ProfileShortType>"
  "ff195243e3bdc4f717336e14b7b79d5f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProfileShortType)))
  "Returns md5sum for a message object of type 'ProfileShortType"
  "ff195243e3bdc4f717336e14b7b79d5f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProfileShortType>)))
  "Returns full string definition for message of type '<ProfileShortType>"
  (cl:format cl:nil "uint8 CURVATURE = 1~%uint8 ROUTE_NUMBER_TYPES = 2~%uint8 SLOPE_STEP = 3~%uint8 SLOPE_LINEAR = 4~%uint8 ROAD_ACCESSIBILITY = 5~%uint8 ROAD_CONDITION = 6~%uint8 VARIABLE_SPEED_SIGN_POSITION = 7~%uint8 HEADING_CHANGE = 8~%uint8 SPEED_LIMIT_ASSIST_LOCATION = 16~%uint8 HISTORY_AVERAGE_SPEED = 18~%uint8 TRAFFIC_FLOW = 19~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProfileShortType)))
  "Returns full string definition for message of type 'ProfileShortType"
  (cl:format cl:nil "uint8 CURVATURE = 1~%uint8 ROUTE_NUMBER_TYPES = 2~%uint8 SLOPE_STEP = 3~%uint8 SLOPE_LINEAR = 4~%uint8 ROAD_ACCESSIBILITY = 5~%uint8 ROAD_CONDITION = 6~%uint8 VARIABLE_SPEED_SIGN_POSITION = 7~%uint8 HEADING_CHANGE = 8~%uint8 SPEED_LIMIT_ASSIST_LOCATION = 16~%uint8 HISTORY_AVERAGE_SPEED = 18~%uint8 TRAFFIC_FLOW = 19~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProfileShortType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProfileShortType>))
  "Converts a ROS message object to a list"
  (cl:list 'ProfileShortType
    (cl:cons ':value (value msg))
))
