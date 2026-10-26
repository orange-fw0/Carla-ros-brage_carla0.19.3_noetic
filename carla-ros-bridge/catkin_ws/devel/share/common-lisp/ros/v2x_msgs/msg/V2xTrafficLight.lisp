; Auto-generated. Do not edit!


(cl:in-package v2x_msgs-msg)


;//! \htmlinclude V2xTrafficLight.msg.html

(cl:defclass <V2xTrafficLight> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (meta
    :reader meta
    :initarg :meta
    :type v2x_msgs-msg:V2xMeta
    :initform (cl:make-instance 'v2x_msgs-msg:V2xMeta))
   (v2x_traffic_light_info
    :reader v2x_traffic_light_info
    :initarg :v2x_traffic_light_info
    :type v2x_msgs-msg:V2xTrafficLightInfo
    :initform (cl:make-instance 'v2x_msgs-msg:V2xTrafficLightInfo)))
)

(cl:defclass V2xTrafficLight (<V2xTrafficLight>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <V2xTrafficLight>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'V2xTrafficLight)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name v2x_msgs-msg:<V2xTrafficLight> is deprecated: use v2x_msgs-msg:V2xTrafficLight instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <V2xTrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x_msgs-msg:header-val is deprecated.  Use v2x_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'meta-val :lambda-list '(m))
(cl:defmethod meta-val ((m <V2xTrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x_msgs-msg:meta-val is deprecated.  Use v2x_msgs-msg:meta instead.")
  (meta m))

(cl:ensure-generic-function 'v2x_traffic_light_info-val :lambda-list '(m))
(cl:defmethod v2x_traffic_light_info-val ((m <V2xTrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x_msgs-msg:v2x_traffic_light_info-val is deprecated.  Use v2x_msgs-msg:v2x_traffic_light_info instead.")
  (v2x_traffic_light_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <V2xTrafficLight>) ostream)
  "Serializes a message object of type '<V2xTrafficLight>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'v2x_traffic_light_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <V2xTrafficLight>) istream)
  "Deserializes a message object of type '<V2xTrafficLight>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'v2x_traffic_light_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<V2xTrafficLight>)))
  "Returns string type for a message object of type '<V2xTrafficLight>"
  "v2x_msgs/V2xTrafficLight")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'V2xTrafficLight)))
  "Returns string type for a message object of type 'V2xTrafficLight"
  "v2x_msgs/V2xTrafficLight")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<V2xTrafficLight>)))
  "Returns md5sum for a message object of type '<V2xTrafficLight>"
  "1d30e375a597d2397918c9af98d8b1b0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'V2xTrafficLight)))
  "Returns md5sum for a message object of type 'V2xTrafficLight"
  "1d30e375a597d2397918c9af98d8b1b0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<V2xTrafficLight>)))
  "Returns full string definition for message of type '<V2xTrafficLight>"
  (cl:format cl:nil "std_msgs/Header header~%v2x_msgs/V2xMeta meta~%v2x_msgs/V2xTrafficLightInfo v2x_traffic_light_info~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: v2x_msgs/V2xMeta~%uint64 timestamp_us~%string frame_id~%~%================================================================================~%MSG: v2x_msgs/V2xTrafficLightInfo~%uint8 V2X_INTERSECTION_STATE = 1~%uint8 available~%v2x_msgs/V2xIntersectionState[] v2x_intersection_state~%~%================================================================================~%MSG: v2x_msgs/V2xIntersectionState~%int32 intersection_id~%v2x_msgs/V2xPhase[] v2x_phase~%~%================================================================================~%MSG: v2x_msgs/V2xPhase~%int32 phase_id~%v2x_msgs/V2xPhaseState v2x_phase_state~%~%================================================================================~%MSG: v2x_msgs/V2xPhaseState~%perception_interface_msgs/TrafficLightStatusEnum status~%float64 start_time~%float64 likely_end_time~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightStatusEnum~%uint8 TRAFFIC_LIGHT_STATUS_RED = 0~%uint8 TRAFFIC_LIGHT_STATUS_YELLOW = 1~%uint8 TRAFFIC_LIGHT_STATUS_GREEN = 2~%uint8 TRAFFIC_LIGHT_STATUS_YELLOW_BLINKING = 3~%uint8 TRAFFIC_LIGHT_STATUS_GREEN_BLINKING = 4~%uint8 TRAFFIC_LIGHT_STATUS_OFF = 5~%uint8 TRAFFIC_LIGHT_STATUS_OTHER = 6~%uint8 TRAFFIC_LIGHT_STATUS_UNKNOWN = 7~%uint8 TRAFFIC_LIGHT_STATUS_RED_BLINKING = 8~%uint8 TRAFFIC_LIGHT_STATUS_UNMARKED = 9~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE1 = 10~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE2 = 11~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE3 = 12~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'V2xTrafficLight)))
  "Returns full string definition for message of type 'V2xTrafficLight"
  (cl:format cl:nil "std_msgs/Header header~%v2x_msgs/V2xMeta meta~%v2x_msgs/V2xTrafficLightInfo v2x_traffic_light_info~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: v2x_msgs/V2xMeta~%uint64 timestamp_us~%string frame_id~%~%================================================================================~%MSG: v2x_msgs/V2xTrafficLightInfo~%uint8 V2X_INTERSECTION_STATE = 1~%uint8 available~%v2x_msgs/V2xIntersectionState[] v2x_intersection_state~%~%================================================================================~%MSG: v2x_msgs/V2xIntersectionState~%int32 intersection_id~%v2x_msgs/V2xPhase[] v2x_phase~%~%================================================================================~%MSG: v2x_msgs/V2xPhase~%int32 phase_id~%v2x_msgs/V2xPhaseState v2x_phase_state~%~%================================================================================~%MSG: v2x_msgs/V2xPhaseState~%perception_interface_msgs/TrafficLightStatusEnum status~%float64 start_time~%float64 likely_end_time~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightStatusEnum~%uint8 TRAFFIC_LIGHT_STATUS_RED = 0~%uint8 TRAFFIC_LIGHT_STATUS_YELLOW = 1~%uint8 TRAFFIC_LIGHT_STATUS_GREEN = 2~%uint8 TRAFFIC_LIGHT_STATUS_YELLOW_BLINKING = 3~%uint8 TRAFFIC_LIGHT_STATUS_GREEN_BLINKING = 4~%uint8 TRAFFIC_LIGHT_STATUS_OFF = 5~%uint8 TRAFFIC_LIGHT_STATUS_OTHER = 6~%uint8 TRAFFIC_LIGHT_STATUS_UNKNOWN = 7~%uint8 TRAFFIC_LIGHT_STATUS_RED_BLINKING = 8~%uint8 TRAFFIC_LIGHT_STATUS_UNMARKED = 9~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE1 = 10~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE2 = 11~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE3 = 12~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <V2xTrafficLight>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'v2x_traffic_light_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <V2xTrafficLight>))
  "Converts a ROS message object to a list"
  (cl:list 'V2xTrafficLight
    (cl:cons ':header (header msg))
    (cl:cons ':meta (meta msg))
    (cl:cons ':v2x_traffic_light_info (v2x_traffic_light_info msg))
))
