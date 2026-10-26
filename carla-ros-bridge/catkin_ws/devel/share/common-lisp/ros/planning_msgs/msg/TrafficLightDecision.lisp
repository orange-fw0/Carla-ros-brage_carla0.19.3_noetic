; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude TrafficLightDecision.msg.html

(cl:defclass <TrafficLightDecision> (roslisp-msg-protocol:ros-message)
  ((traffic_light_state
    :reader traffic_light_state
    :initarg :traffic_light_state
    :type cl:integer
    :initform 0)
   (stop_reason
    :reader stop_reason
    :initarg :stop_reason
    :type cl:integer
    :initform 0)
   (stop_flag
    :reader stop_flag
    :initarg :stop_flag
    :type cl:boolean
    :initform cl:nil)
   (is_passed_stop_line
    :reader is_passed_stop_line
    :initarg :is_passed_stop_line
    :type cl:boolean
    :initform cl:nil)
   (faster_pass
    :reader faster_pass
    :initarg :faster_pass
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TrafficLightDecision (<TrafficLightDecision>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficLightDecision>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficLightDecision)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<TrafficLightDecision> is deprecated: use planning_msgs-msg:TrafficLightDecision instead.")))

(cl:ensure-generic-function 'traffic_light_state-val :lambda-list '(m))
(cl:defmethod traffic_light_state-val ((m <TrafficLightDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:traffic_light_state-val is deprecated.  Use planning_msgs-msg:traffic_light_state instead.")
  (traffic_light_state m))

(cl:ensure-generic-function 'stop_reason-val :lambda-list '(m))
(cl:defmethod stop_reason-val ((m <TrafficLightDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:stop_reason-val is deprecated.  Use planning_msgs-msg:stop_reason instead.")
  (stop_reason m))

(cl:ensure-generic-function 'stop_flag-val :lambda-list '(m))
(cl:defmethod stop_flag-val ((m <TrafficLightDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:stop_flag-val is deprecated.  Use planning_msgs-msg:stop_flag instead.")
  (stop_flag m))

(cl:ensure-generic-function 'is_passed_stop_line-val :lambda-list '(m))
(cl:defmethod is_passed_stop_line-val ((m <TrafficLightDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:is_passed_stop_line-val is deprecated.  Use planning_msgs-msg:is_passed_stop_line instead.")
  (is_passed_stop_line m))

(cl:ensure-generic-function 'faster_pass-val :lambda-list '(m))
(cl:defmethod faster_pass-val ((m <TrafficLightDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:faster_pass-val is deprecated.  Use planning_msgs-msg:faster_pass instead.")
  (faster_pass m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficLightDecision>) ostream)
  "Serializes a message object of type '<TrafficLightDecision>"
  (cl:let* ((signed (cl:slot-value msg 'traffic_light_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'stop_reason)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stop_flag) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_passed_stop_line) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'faster_pass) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficLightDecision>) istream)
  "Deserializes a message object of type '<TrafficLightDecision>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'traffic_light_state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stop_reason) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'stop_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_passed_stop_line) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'faster_pass) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficLightDecision>)))
  "Returns string type for a message object of type '<TrafficLightDecision>"
  "planning_msgs/TrafficLightDecision")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficLightDecision)))
  "Returns string type for a message object of type 'TrafficLightDecision"
  "planning_msgs/TrafficLightDecision")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficLightDecision>)))
  "Returns md5sum for a message object of type '<TrafficLightDecision>"
  "d3b63bda515ee9c08bd539eb146789f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficLightDecision)))
  "Returns md5sum for a message object of type 'TrafficLightDecision"
  "d3b63bda515ee9c08bd539eb146789f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficLightDecision>)))
  "Returns full string definition for message of type '<TrafficLightDecision>"
  (cl:format cl:nil "int32 traffic_light_state~%int32 stop_reason~%bool stop_flag~%bool is_passed_stop_line~%bool faster_pass~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficLightDecision)))
  "Returns full string definition for message of type 'TrafficLightDecision"
  (cl:format cl:nil "int32 traffic_light_state~%int32 stop_reason~%bool stop_flag~%bool is_passed_stop_line~%bool faster_pass~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficLightDecision>))
  (cl:+ 0
     4
     4
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficLightDecision>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficLightDecision
    (cl:cons ':traffic_light_state (traffic_light_state msg))
    (cl:cons ':stop_reason (stop_reason msg))
    (cl:cons ':stop_flag (stop_flag msg))
    (cl:cons ':is_passed_stop_line (is_passed_stop_line msg))
    (cl:cons ':faster_pass (faster_pass msg))
))
