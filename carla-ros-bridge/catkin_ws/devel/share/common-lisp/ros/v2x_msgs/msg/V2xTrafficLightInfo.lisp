; Auto-generated. Do not edit!


(cl:in-package v2x_msgs-msg)


;//! \htmlinclude V2xTrafficLightInfo.msg.html

(cl:defclass <V2xTrafficLightInfo> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (v2x_intersection_state
    :reader v2x_intersection_state
    :initarg :v2x_intersection_state
    :type (cl:vector v2x_msgs-msg:V2xIntersectionState)
   :initform (cl:make-array 0 :element-type 'v2x_msgs-msg:V2xIntersectionState :initial-element (cl:make-instance 'v2x_msgs-msg:V2xIntersectionState))))
)

(cl:defclass V2xTrafficLightInfo (<V2xTrafficLightInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <V2xTrafficLightInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'V2xTrafficLightInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name v2x_msgs-msg:<V2xTrafficLightInfo> is deprecated: use v2x_msgs-msg:V2xTrafficLightInfo instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <V2xTrafficLightInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x_msgs-msg:available-val is deprecated.  Use v2x_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'v2x_intersection_state-val :lambda-list '(m))
(cl:defmethod v2x_intersection_state-val ((m <V2xTrafficLightInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x_msgs-msg:v2x_intersection_state-val is deprecated.  Use v2x_msgs-msg:v2x_intersection_state instead.")
  (v2x_intersection_state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<V2xTrafficLightInfo>)))
    "Constants for message type '<V2xTrafficLightInfo>"
  '((:V2X_INTERSECTION_STATE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'V2xTrafficLightInfo)))
    "Constants for message type 'V2xTrafficLightInfo"
  '((:V2X_INTERSECTION_STATE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <V2xTrafficLightInfo>) ostream)
  "Serializes a message object of type '<V2xTrafficLightInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'v2x_intersection_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'v2x_intersection_state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <V2xTrafficLightInfo>) istream)
  "Deserializes a message object of type '<V2xTrafficLightInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'v2x_intersection_state) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'v2x_intersection_state)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'v2x_msgs-msg:V2xIntersectionState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<V2xTrafficLightInfo>)))
  "Returns string type for a message object of type '<V2xTrafficLightInfo>"
  "v2x_msgs/V2xTrafficLightInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'V2xTrafficLightInfo)))
  "Returns string type for a message object of type 'V2xTrafficLightInfo"
  "v2x_msgs/V2xTrafficLightInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<V2xTrafficLightInfo>)))
  "Returns md5sum for a message object of type '<V2xTrafficLightInfo>"
  "626a56c32b9882f64677a70e62d28a68")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'V2xTrafficLightInfo)))
  "Returns md5sum for a message object of type 'V2xTrafficLightInfo"
  "626a56c32b9882f64677a70e62d28a68")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<V2xTrafficLightInfo>)))
  "Returns full string definition for message of type '<V2xTrafficLightInfo>"
  (cl:format cl:nil "uint8 V2X_INTERSECTION_STATE = 1~%uint8 available~%v2x_msgs/V2xIntersectionState[] v2x_intersection_state~%~%================================================================================~%MSG: v2x_msgs/V2xIntersectionState~%int32 intersection_id~%v2x_msgs/V2xPhase[] v2x_phase~%~%================================================================================~%MSG: v2x_msgs/V2xPhase~%int32 phase_id~%v2x_msgs/V2xPhaseState v2x_phase_state~%~%================================================================================~%MSG: v2x_msgs/V2xPhaseState~%perception_interface_msgs/TrafficLightStatusEnum status~%float64 start_time~%float64 likely_end_time~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightStatusEnum~%uint8 TRAFFIC_LIGHT_STATUS_RED = 0~%uint8 TRAFFIC_LIGHT_STATUS_YELLOW = 1~%uint8 TRAFFIC_LIGHT_STATUS_GREEN = 2~%uint8 TRAFFIC_LIGHT_STATUS_YELLOW_BLINKING = 3~%uint8 TRAFFIC_LIGHT_STATUS_GREEN_BLINKING = 4~%uint8 TRAFFIC_LIGHT_STATUS_OFF = 5~%uint8 TRAFFIC_LIGHT_STATUS_OTHER = 6~%uint8 TRAFFIC_LIGHT_STATUS_UNKNOWN = 7~%uint8 TRAFFIC_LIGHT_STATUS_RED_BLINKING = 8~%uint8 TRAFFIC_LIGHT_STATUS_UNMARKED = 9~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE1 = 10~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE2 = 11~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE3 = 12~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'V2xTrafficLightInfo)))
  "Returns full string definition for message of type 'V2xTrafficLightInfo"
  (cl:format cl:nil "uint8 V2X_INTERSECTION_STATE = 1~%uint8 available~%v2x_msgs/V2xIntersectionState[] v2x_intersection_state~%~%================================================================================~%MSG: v2x_msgs/V2xIntersectionState~%int32 intersection_id~%v2x_msgs/V2xPhase[] v2x_phase~%~%================================================================================~%MSG: v2x_msgs/V2xPhase~%int32 phase_id~%v2x_msgs/V2xPhaseState v2x_phase_state~%~%================================================================================~%MSG: v2x_msgs/V2xPhaseState~%perception_interface_msgs/TrafficLightStatusEnum status~%float64 start_time~%float64 likely_end_time~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightStatusEnum~%uint8 TRAFFIC_LIGHT_STATUS_RED = 0~%uint8 TRAFFIC_LIGHT_STATUS_YELLOW = 1~%uint8 TRAFFIC_LIGHT_STATUS_GREEN = 2~%uint8 TRAFFIC_LIGHT_STATUS_YELLOW_BLINKING = 3~%uint8 TRAFFIC_LIGHT_STATUS_GREEN_BLINKING = 4~%uint8 TRAFFIC_LIGHT_STATUS_OFF = 5~%uint8 TRAFFIC_LIGHT_STATUS_OTHER = 6~%uint8 TRAFFIC_LIGHT_STATUS_UNKNOWN = 7~%uint8 TRAFFIC_LIGHT_STATUS_RED_BLINKING = 8~%uint8 TRAFFIC_LIGHT_STATUS_UNMARKED = 9~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE1 = 10~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE2 = 11~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE3 = 12~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <V2xTrafficLightInfo>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'v2x_intersection_state) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <V2xTrafficLightInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'V2xTrafficLightInfo
    (cl:cons ':available (available msg))
    (cl:cons ':v2x_intersection_state (v2x_intersection_state msg))
))
