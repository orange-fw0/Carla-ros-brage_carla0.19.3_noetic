; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude LaneIdWithOnRouteInfo.msg.html

(cl:defclass <LaneIdWithOnRouteInfo> (roslisp-msg-protocol:ros-message)
  ((lane_id
    :reader lane_id
    :initarg :lane_id
    :type landmark_msgs-msg:TrackId
    :initform (cl:make-instance 'landmark_msgs-msg:TrackId))
   (on_route_info
    :reader on_route_info
    :initarg :on_route_info
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LaneIdWithOnRouteInfo (<LaneIdWithOnRouteInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneIdWithOnRouteInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneIdWithOnRouteInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<LaneIdWithOnRouteInfo> is deprecated: use landmark_msgs-msg:LaneIdWithOnRouteInfo instead.")))

(cl:ensure-generic-function 'lane_id-val :lambda-list '(m))
(cl:defmethod lane_id-val ((m <LaneIdWithOnRouteInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:lane_id-val is deprecated.  Use landmark_msgs-msg:lane_id instead.")
  (lane_id m))

(cl:ensure-generic-function 'on_route_info-val :lambda-list '(m))
(cl:defmethod on_route_info-val ((m <LaneIdWithOnRouteInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:on_route_info-val is deprecated.  Use landmark_msgs-msg:on_route_info instead.")
  (on_route_info m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LaneIdWithOnRouteInfo>)))
    "Constants for message type '<LaneIdWithOnRouteInfo>"
  '((:UNKNOWN . 0)
    (:ON_ROUTE . 1)
    (:OFF_ROUTE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LaneIdWithOnRouteInfo)))
    "Constants for message type 'LaneIdWithOnRouteInfo"
  '((:UNKNOWN . 0)
    (:ON_ROUTE . 1)
    (:OFF_ROUTE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneIdWithOnRouteInfo>) ostream)
  "Serializes a message object of type '<LaneIdWithOnRouteInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lane_id) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'on_route_info)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneIdWithOnRouteInfo>) istream)
  "Deserializes a message object of type '<LaneIdWithOnRouteInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lane_id) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'on_route_info)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneIdWithOnRouteInfo>)))
  "Returns string type for a message object of type '<LaneIdWithOnRouteInfo>"
  "landmark_msgs/LaneIdWithOnRouteInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneIdWithOnRouteInfo)))
  "Returns string type for a message object of type 'LaneIdWithOnRouteInfo"
  "landmark_msgs/LaneIdWithOnRouteInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneIdWithOnRouteInfo>)))
  "Returns md5sum for a message object of type '<LaneIdWithOnRouteInfo>"
  "abb747e6f87d7fd6d3abcadf1ba5cd36")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneIdWithOnRouteInfo)))
  "Returns md5sum for a message object of type 'LaneIdWithOnRouteInfo"
  "abb747e6f87d7fd6d3abcadf1ba5cd36")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneIdWithOnRouteInfo>)))
  "Returns full string definition for message of type '<LaneIdWithOnRouteInfo>"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 ON_ROUTE = 1~%uint8 OFF_ROUTE = 2~%landmark_msgs/TrackId lane_id~%uint8 on_route_info~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneIdWithOnRouteInfo)))
  "Returns full string definition for message of type 'LaneIdWithOnRouteInfo"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 ON_ROUTE = 1~%uint8 OFF_ROUTE = 2~%landmark_msgs/TrackId lane_id~%uint8 on_route_info~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneIdWithOnRouteInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lane_id))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneIdWithOnRouteInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneIdWithOnRouteInfo
    (cl:cons ':lane_id (lane_id msg))
    (cl:cons ':on_route_info (on_route_info msg))
))
