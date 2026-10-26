; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude LandmarkFailSafe.msg.html

(cl:defclass <LandmarkFailSafe> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LandmarkFailSafe (<LandmarkFailSafe>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LandmarkFailSafe>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LandmarkFailSafe)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<LandmarkFailSafe> is deprecated: use landmark_msgs-msg:LandmarkFailSafe instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LandmarkFailSafe>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LandmarkFailSafe>)))
    "Constants for message type '<LandmarkFailSafe>"
  '((:UNKNOWN . 0)
    (:LANE_CENTER_VANISH . 1)
    (:LANE_BOUNDARY_VANISH . 2)
    (:ROAD_BOUNDARY_VANISH . 3)
    (:ROAD_VANISH . 4)
    (:STOP_LINE_VANISH . 5)
    (:CROSS_WALK_VANISH . 6)
    (:VALID_ROI_VANISH . 7)
    (:ROAD_MARK_VANISH . 8)
    (:AOI_VANISH . 9)
    (:SPEED_BUMP_VANISH . 10)
    (:TRAFFIC_SIGN_VANISH . 11)
    (:POLE_VANISH . 12)
    (:TRAFFIC_LIGHT_VANISH . 13)
    (:DASH_LINE_END_VANISH . 14)
    (:ROAD_ENTRY_LINE_VANISH . 15)
    (:TRAFFIC_SIGN_GUIDE_ARROW_VANISH . 16)
    (:NO_PARKING_ZONE_VANISH . 17)
    (:NORMAL . 65)
    (:ABNORMAL_LANE_CENTER_INTERSECT_WITH_ROAD_BOUNDARY . 66)
    (:ALL_VANISH . 65535))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LandmarkFailSafe)))
    "Constants for message type 'LandmarkFailSafe"
  '((:UNKNOWN . 0)
    (:LANE_CENTER_VANISH . 1)
    (:LANE_BOUNDARY_VANISH . 2)
    (:ROAD_BOUNDARY_VANISH . 3)
    (:ROAD_VANISH . 4)
    (:STOP_LINE_VANISH . 5)
    (:CROSS_WALK_VANISH . 6)
    (:VALID_ROI_VANISH . 7)
    (:ROAD_MARK_VANISH . 8)
    (:AOI_VANISH . 9)
    (:SPEED_BUMP_VANISH . 10)
    (:TRAFFIC_SIGN_VANISH . 11)
    (:POLE_VANISH . 12)
    (:TRAFFIC_LIGHT_VANISH . 13)
    (:DASH_LINE_END_VANISH . 14)
    (:ROAD_ENTRY_LINE_VANISH . 15)
    (:TRAFFIC_SIGN_GUIDE_ARROW_VANISH . 16)
    (:NO_PARKING_ZONE_VANISH . 17)
    (:NORMAL . 65)
    (:ABNORMAL_LANE_CENTER_INTERSECT_WITH_ROAD_BOUNDARY . 66)
    (:ALL_VANISH . 65535))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LandmarkFailSafe>) ostream)
  "Serializes a message object of type '<LandmarkFailSafe>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LandmarkFailSafe>) istream)
  "Deserializes a message object of type '<LandmarkFailSafe>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LandmarkFailSafe>)))
  "Returns string type for a message object of type '<LandmarkFailSafe>"
  "landmark_msgs/LandmarkFailSafe")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LandmarkFailSafe)))
  "Returns string type for a message object of type 'LandmarkFailSafe"
  "landmark_msgs/LandmarkFailSafe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LandmarkFailSafe>)))
  "Returns md5sum for a message object of type '<LandmarkFailSafe>"
  "36b67acc3bb98a9fdcccafd0bef22c3e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LandmarkFailSafe)))
  "Returns md5sum for a message object of type 'LandmarkFailSafe"
  "36b67acc3bb98a9fdcccafd0bef22c3e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LandmarkFailSafe>)))
  "Returns full string definition for message of type '<LandmarkFailSafe>"
  (cl:format cl:nil "uint16 UNKNOWN = 0~%uint16 LANE_CENTER_VANISH = 1~%uint16 LANE_BOUNDARY_VANISH = 2~%uint16 ROAD_BOUNDARY_VANISH = 3~%uint16 ROAD_VANISH = 4~%uint16 STOP_LINE_VANISH = 5~%uint16 CROSS_WALK_VANISH = 6~%uint16 VALID_ROI_VANISH = 7~%uint16 ROAD_MARK_VANISH = 8~%uint16 AOI_VANISH = 9~%uint16 SPEED_BUMP_VANISH = 10~%uint16 TRAFFIC_SIGN_VANISH = 11~%uint16 POLE_VANISH = 12~%uint16 TRAFFIC_LIGHT_VANISH = 13~%uint16 DASH_LINE_END_VANISH = 14~%uint16 ROAD_ENTRY_LINE_VANISH = 15~%uint16 TRAFFIC_SIGN_GUIDE_ARROW_VANISH = 16~%uint16 NO_PARKING_ZONE_VANISH = 17~%uint16 NORMAL = 65~%uint16 ABNORMAL_LANE_CENTER_INTERSECT_WITH_ROAD_BOUNDARY = 66~%uint16 ALL_VANISH = 65535~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LandmarkFailSafe)))
  "Returns full string definition for message of type 'LandmarkFailSafe"
  (cl:format cl:nil "uint16 UNKNOWN = 0~%uint16 LANE_CENTER_VANISH = 1~%uint16 LANE_BOUNDARY_VANISH = 2~%uint16 ROAD_BOUNDARY_VANISH = 3~%uint16 ROAD_VANISH = 4~%uint16 STOP_LINE_VANISH = 5~%uint16 CROSS_WALK_VANISH = 6~%uint16 VALID_ROI_VANISH = 7~%uint16 ROAD_MARK_VANISH = 8~%uint16 AOI_VANISH = 9~%uint16 SPEED_BUMP_VANISH = 10~%uint16 TRAFFIC_SIGN_VANISH = 11~%uint16 POLE_VANISH = 12~%uint16 TRAFFIC_LIGHT_VANISH = 13~%uint16 DASH_LINE_END_VANISH = 14~%uint16 ROAD_ENTRY_LINE_VANISH = 15~%uint16 TRAFFIC_SIGN_GUIDE_ARROW_VANISH = 16~%uint16 NO_PARKING_ZONE_VANISH = 17~%uint16 NORMAL = 65~%uint16 ABNORMAL_LANE_CENTER_INTERSECT_WITH_ROAD_BOUNDARY = 66~%uint16 ALL_VANISH = 65535~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LandmarkFailSafe>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LandmarkFailSafe>))
  "Converts a ROS message object to a list"
  (cl:list 'LandmarkFailSafe
    (cl:cons ':value (value msg))
))
