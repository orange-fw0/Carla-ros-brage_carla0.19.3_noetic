; Auto-generated. Do not edit!


(cl:in-package v2x_msgs-msg)


;//! \htmlinclude V2xPhaseState.msg.html

(cl:defclass <V2xPhaseState> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type perception_interface_msgs-msg:TrafficLightStatusEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:TrafficLightStatusEnum))
   (start_time
    :reader start_time
    :initarg :start_time
    :type cl:float
    :initform 0.0)
   (likely_end_time
    :reader likely_end_time
    :initarg :likely_end_time
    :type cl:float
    :initform 0.0))
)

(cl:defclass V2xPhaseState (<V2xPhaseState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <V2xPhaseState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'V2xPhaseState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name v2x_msgs-msg:<V2xPhaseState> is deprecated: use v2x_msgs-msg:V2xPhaseState instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <V2xPhaseState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x_msgs-msg:status-val is deprecated.  Use v2x_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'start_time-val :lambda-list '(m))
(cl:defmethod start_time-val ((m <V2xPhaseState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x_msgs-msg:start_time-val is deprecated.  Use v2x_msgs-msg:start_time instead.")
  (start_time m))

(cl:ensure-generic-function 'likely_end_time-val :lambda-list '(m))
(cl:defmethod likely_end_time-val ((m <V2xPhaseState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x_msgs-msg:likely_end_time-val is deprecated.  Use v2x_msgs-msg:likely_end_time instead.")
  (likely_end_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <V2xPhaseState>) ostream)
  "Serializes a message object of type '<V2xPhaseState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'start_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'likely_end_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <V2xPhaseState>) istream)
  "Deserializes a message object of type '<V2xPhaseState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'start_time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'likely_end_time) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<V2xPhaseState>)))
  "Returns string type for a message object of type '<V2xPhaseState>"
  "v2x_msgs/V2xPhaseState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'V2xPhaseState)))
  "Returns string type for a message object of type 'V2xPhaseState"
  "v2x_msgs/V2xPhaseState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<V2xPhaseState>)))
  "Returns md5sum for a message object of type '<V2xPhaseState>"
  "556fa6a805144e1ce137ff42b839324d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'V2xPhaseState)))
  "Returns md5sum for a message object of type 'V2xPhaseState"
  "556fa6a805144e1ce137ff42b839324d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<V2xPhaseState>)))
  "Returns full string definition for message of type '<V2xPhaseState>"
  (cl:format cl:nil "perception_interface_msgs/TrafficLightStatusEnum status~%float64 start_time~%float64 likely_end_time~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightStatusEnum~%uint8 TRAFFIC_LIGHT_STATUS_RED = 0~%uint8 TRAFFIC_LIGHT_STATUS_YELLOW = 1~%uint8 TRAFFIC_LIGHT_STATUS_GREEN = 2~%uint8 TRAFFIC_LIGHT_STATUS_YELLOW_BLINKING = 3~%uint8 TRAFFIC_LIGHT_STATUS_GREEN_BLINKING = 4~%uint8 TRAFFIC_LIGHT_STATUS_OFF = 5~%uint8 TRAFFIC_LIGHT_STATUS_OTHER = 6~%uint8 TRAFFIC_LIGHT_STATUS_UNKNOWN = 7~%uint8 TRAFFIC_LIGHT_STATUS_RED_BLINKING = 8~%uint8 TRAFFIC_LIGHT_STATUS_UNMARKED = 9~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE1 = 10~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE2 = 11~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE3 = 12~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'V2xPhaseState)))
  "Returns full string definition for message of type 'V2xPhaseState"
  (cl:format cl:nil "perception_interface_msgs/TrafficLightStatusEnum status~%float64 start_time~%float64 likely_end_time~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightStatusEnum~%uint8 TRAFFIC_LIGHT_STATUS_RED = 0~%uint8 TRAFFIC_LIGHT_STATUS_YELLOW = 1~%uint8 TRAFFIC_LIGHT_STATUS_GREEN = 2~%uint8 TRAFFIC_LIGHT_STATUS_YELLOW_BLINKING = 3~%uint8 TRAFFIC_LIGHT_STATUS_GREEN_BLINKING = 4~%uint8 TRAFFIC_LIGHT_STATUS_OFF = 5~%uint8 TRAFFIC_LIGHT_STATUS_OTHER = 6~%uint8 TRAFFIC_LIGHT_STATUS_UNKNOWN = 7~%uint8 TRAFFIC_LIGHT_STATUS_RED_BLINKING = 8~%uint8 TRAFFIC_LIGHT_STATUS_UNMARKED = 9~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE1 = 10~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE2 = 11~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE3 = 12~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <V2xPhaseState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <V2xPhaseState>))
  "Converts a ROS message object to a list"
  (cl:list 'V2xPhaseState
    (cl:cons ':status (status msg))
    (cl:cons ':start_time (start_time msg))
    (cl:cons ':likely_end_time (likely_end_time msg))
))
