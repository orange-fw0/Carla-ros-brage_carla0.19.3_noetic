; Auto-generated. Do not edit!


(cl:in-package v2x_msgs-msg)


;//! \htmlinclude V2xIntersectionState.msg.html

(cl:defclass <V2xIntersectionState> (roslisp-msg-protocol:ros-message)
  ((intersection_id
    :reader intersection_id
    :initarg :intersection_id
    :type cl:integer
    :initform 0)
   (v2x_phase
    :reader v2x_phase
    :initarg :v2x_phase
    :type (cl:vector v2x_msgs-msg:V2xPhase)
   :initform (cl:make-array 0 :element-type 'v2x_msgs-msg:V2xPhase :initial-element (cl:make-instance 'v2x_msgs-msg:V2xPhase))))
)

(cl:defclass V2xIntersectionState (<V2xIntersectionState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <V2xIntersectionState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'V2xIntersectionState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name v2x_msgs-msg:<V2xIntersectionState> is deprecated: use v2x_msgs-msg:V2xIntersectionState instead.")))

(cl:ensure-generic-function 'intersection_id-val :lambda-list '(m))
(cl:defmethod intersection_id-val ((m <V2xIntersectionState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x_msgs-msg:intersection_id-val is deprecated.  Use v2x_msgs-msg:intersection_id instead.")
  (intersection_id m))

(cl:ensure-generic-function 'v2x_phase-val :lambda-list '(m))
(cl:defmethod v2x_phase-val ((m <V2xIntersectionState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x_msgs-msg:v2x_phase-val is deprecated.  Use v2x_msgs-msg:v2x_phase instead.")
  (v2x_phase m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <V2xIntersectionState>) ostream)
  "Serializes a message object of type '<V2xIntersectionState>"
  (cl:let* ((signed (cl:slot-value msg 'intersection_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'v2x_phase))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'v2x_phase))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <V2xIntersectionState>) istream)
  "Deserializes a message object of type '<V2xIntersectionState>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'intersection_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'v2x_phase) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'v2x_phase)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'v2x_msgs-msg:V2xPhase))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<V2xIntersectionState>)))
  "Returns string type for a message object of type '<V2xIntersectionState>"
  "v2x_msgs/V2xIntersectionState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'V2xIntersectionState)))
  "Returns string type for a message object of type 'V2xIntersectionState"
  "v2x_msgs/V2xIntersectionState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<V2xIntersectionState>)))
  "Returns md5sum for a message object of type '<V2xIntersectionState>"
  "678dc7bfbee0a47d506f17354aae9a41")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'V2xIntersectionState)))
  "Returns md5sum for a message object of type 'V2xIntersectionState"
  "678dc7bfbee0a47d506f17354aae9a41")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<V2xIntersectionState>)))
  "Returns full string definition for message of type '<V2xIntersectionState>"
  (cl:format cl:nil "int32 intersection_id~%v2x_msgs/V2xPhase[] v2x_phase~%~%================================================================================~%MSG: v2x_msgs/V2xPhase~%int32 phase_id~%v2x_msgs/V2xPhaseState v2x_phase_state~%~%================================================================================~%MSG: v2x_msgs/V2xPhaseState~%perception_interface_msgs/TrafficLightStatusEnum status~%float64 start_time~%float64 likely_end_time~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightStatusEnum~%uint8 TRAFFIC_LIGHT_STATUS_RED = 0~%uint8 TRAFFIC_LIGHT_STATUS_YELLOW = 1~%uint8 TRAFFIC_LIGHT_STATUS_GREEN = 2~%uint8 TRAFFIC_LIGHT_STATUS_YELLOW_BLINKING = 3~%uint8 TRAFFIC_LIGHT_STATUS_GREEN_BLINKING = 4~%uint8 TRAFFIC_LIGHT_STATUS_OFF = 5~%uint8 TRAFFIC_LIGHT_STATUS_OTHER = 6~%uint8 TRAFFIC_LIGHT_STATUS_UNKNOWN = 7~%uint8 TRAFFIC_LIGHT_STATUS_RED_BLINKING = 8~%uint8 TRAFFIC_LIGHT_STATUS_UNMARKED = 9~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE1 = 10~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE2 = 11~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE3 = 12~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'V2xIntersectionState)))
  "Returns full string definition for message of type 'V2xIntersectionState"
  (cl:format cl:nil "int32 intersection_id~%v2x_msgs/V2xPhase[] v2x_phase~%~%================================================================================~%MSG: v2x_msgs/V2xPhase~%int32 phase_id~%v2x_msgs/V2xPhaseState v2x_phase_state~%~%================================================================================~%MSG: v2x_msgs/V2xPhaseState~%perception_interface_msgs/TrafficLightStatusEnum status~%float64 start_time~%float64 likely_end_time~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightStatusEnum~%uint8 TRAFFIC_LIGHT_STATUS_RED = 0~%uint8 TRAFFIC_LIGHT_STATUS_YELLOW = 1~%uint8 TRAFFIC_LIGHT_STATUS_GREEN = 2~%uint8 TRAFFIC_LIGHT_STATUS_YELLOW_BLINKING = 3~%uint8 TRAFFIC_LIGHT_STATUS_GREEN_BLINKING = 4~%uint8 TRAFFIC_LIGHT_STATUS_OFF = 5~%uint8 TRAFFIC_LIGHT_STATUS_OTHER = 6~%uint8 TRAFFIC_LIGHT_STATUS_UNKNOWN = 7~%uint8 TRAFFIC_LIGHT_STATUS_RED_BLINKING = 8~%uint8 TRAFFIC_LIGHT_STATUS_UNMARKED = 9~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE1 = 10~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE2 = 11~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE3 = 12~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <V2xIntersectionState>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'v2x_phase) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <V2xIntersectionState>))
  "Converts a ROS message object to a list"
  (cl:list 'V2xIntersectionState
    (cl:cons ':intersection_id (intersection_id msg))
    (cl:cons ':v2x_phase (v2x_phase msg))
))
