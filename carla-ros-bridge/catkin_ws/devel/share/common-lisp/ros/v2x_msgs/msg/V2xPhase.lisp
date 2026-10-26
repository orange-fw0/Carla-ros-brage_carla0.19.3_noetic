; Auto-generated. Do not edit!


(cl:in-package v2x_msgs-msg)


;//! \htmlinclude V2xPhase.msg.html

(cl:defclass <V2xPhase> (roslisp-msg-protocol:ros-message)
  ((phase_id
    :reader phase_id
    :initarg :phase_id
    :type cl:integer
    :initform 0)
   (v2x_phase_state
    :reader v2x_phase_state
    :initarg :v2x_phase_state
    :type v2x_msgs-msg:V2xPhaseState
    :initform (cl:make-instance 'v2x_msgs-msg:V2xPhaseState)))
)

(cl:defclass V2xPhase (<V2xPhase>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <V2xPhase>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'V2xPhase)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name v2x_msgs-msg:<V2xPhase> is deprecated: use v2x_msgs-msg:V2xPhase instead.")))

(cl:ensure-generic-function 'phase_id-val :lambda-list '(m))
(cl:defmethod phase_id-val ((m <V2xPhase>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x_msgs-msg:phase_id-val is deprecated.  Use v2x_msgs-msg:phase_id instead.")
  (phase_id m))

(cl:ensure-generic-function 'v2x_phase_state-val :lambda-list '(m))
(cl:defmethod v2x_phase_state-val ((m <V2xPhase>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x_msgs-msg:v2x_phase_state-val is deprecated.  Use v2x_msgs-msg:v2x_phase_state instead.")
  (v2x_phase_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <V2xPhase>) ostream)
  "Serializes a message object of type '<V2xPhase>"
  (cl:let* ((signed (cl:slot-value msg 'phase_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'v2x_phase_state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <V2xPhase>) istream)
  "Deserializes a message object of type '<V2xPhase>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'phase_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'v2x_phase_state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<V2xPhase>)))
  "Returns string type for a message object of type '<V2xPhase>"
  "v2x_msgs/V2xPhase")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'V2xPhase)))
  "Returns string type for a message object of type 'V2xPhase"
  "v2x_msgs/V2xPhase")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<V2xPhase>)))
  "Returns md5sum for a message object of type '<V2xPhase>"
  "742f1ef510e48f41e0c6b694531938fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'V2xPhase)))
  "Returns md5sum for a message object of type 'V2xPhase"
  "742f1ef510e48f41e0c6b694531938fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<V2xPhase>)))
  "Returns full string definition for message of type '<V2xPhase>"
  (cl:format cl:nil "int32 phase_id~%v2x_msgs/V2xPhaseState v2x_phase_state~%~%================================================================================~%MSG: v2x_msgs/V2xPhaseState~%perception_interface_msgs/TrafficLightStatusEnum status~%float64 start_time~%float64 likely_end_time~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightStatusEnum~%uint8 TRAFFIC_LIGHT_STATUS_RED = 0~%uint8 TRAFFIC_LIGHT_STATUS_YELLOW = 1~%uint8 TRAFFIC_LIGHT_STATUS_GREEN = 2~%uint8 TRAFFIC_LIGHT_STATUS_YELLOW_BLINKING = 3~%uint8 TRAFFIC_LIGHT_STATUS_GREEN_BLINKING = 4~%uint8 TRAFFIC_LIGHT_STATUS_OFF = 5~%uint8 TRAFFIC_LIGHT_STATUS_OTHER = 6~%uint8 TRAFFIC_LIGHT_STATUS_UNKNOWN = 7~%uint8 TRAFFIC_LIGHT_STATUS_RED_BLINKING = 8~%uint8 TRAFFIC_LIGHT_STATUS_UNMARKED = 9~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE1 = 10~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE2 = 11~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE3 = 12~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'V2xPhase)))
  "Returns full string definition for message of type 'V2xPhase"
  (cl:format cl:nil "int32 phase_id~%v2x_msgs/V2xPhaseState v2x_phase_state~%~%================================================================================~%MSG: v2x_msgs/V2xPhaseState~%perception_interface_msgs/TrafficLightStatusEnum status~%float64 start_time~%float64 likely_end_time~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightStatusEnum~%uint8 TRAFFIC_LIGHT_STATUS_RED = 0~%uint8 TRAFFIC_LIGHT_STATUS_YELLOW = 1~%uint8 TRAFFIC_LIGHT_STATUS_GREEN = 2~%uint8 TRAFFIC_LIGHT_STATUS_YELLOW_BLINKING = 3~%uint8 TRAFFIC_LIGHT_STATUS_GREEN_BLINKING = 4~%uint8 TRAFFIC_LIGHT_STATUS_OFF = 5~%uint8 TRAFFIC_LIGHT_STATUS_OTHER = 6~%uint8 TRAFFIC_LIGHT_STATUS_UNKNOWN = 7~%uint8 TRAFFIC_LIGHT_STATUS_RED_BLINKING = 8~%uint8 TRAFFIC_LIGHT_STATUS_UNMARKED = 9~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE1 = 10~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE2 = 11~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE3 = 12~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <V2xPhase>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'v2x_phase_state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <V2xPhase>))
  "Converts a ROS message object to a list"
  (cl:list 'V2xPhase
    (cl:cons ':phase_id (phase_id msg))
    (cl:cons ':v2x_phase_state (v2x_phase_state msg))
))
