; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude APAControlCommand.msg.html

(cl:defclass <APAControlCommand> (roslisp-msg-protocol:ros-message)
  ((brake_mode
    :reader brake_mode
    :initarg :brake_mode
    :type planning_msgs-msg:APABrakeMode
    :initform (cl:make-instance 'planning_msgs-msg:APABrakeMode))
   (steering_mode
    :reader steering_mode
    :initarg :steering_mode
    :type planning_msgs-msg:APASteeringMode
    :initform (cl:make-instance 'planning_msgs-msg:APASteeringMode))
   (special_scenario_type
    :reader special_scenario_type
    :initarg :special_scenario_type
    :type cl:fixnum
    :initform 0)
   (use_second_traj_sv
    :reader use_second_traj_sv
    :initarg :use_second_traj_sv
    :type cl:boolean
    :initform cl:nil)
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:string
    :initform ""))
)

(cl:defclass APAControlCommand (<APAControlCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <APAControlCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'APAControlCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<APAControlCommand> is deprecated: use planning_msgs-msg:APAControlCommand instead.")))

(cl:ensure-generic-function 'brake_mode-val :lambda-list '(m))
(cl:defmethod brake_mode-val ((m <APAControlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:brake_mode-val is deprecated.  Use planning_msgs-msg:brake_mode instead.")
  (brake_mode m))

(cl:ensure-generic-function 'steering_mode-val :lambda-list '(m))
(cl:defmethod steering_mode-val ((m <APAControlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:steering_mode-val is deprecated.  Use planning_msgs-msg:steering_mode instead.")
  (steering_mode m))

(cl:ensure-generic-function 'special_scenario_type-val :lambda-list '(m))
(cl:defmethod special_scenario_type-val ((m <APAControlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:special_scenario_type-val is deprecated.  Use planning_msgs-msg:special_scenario_type instead.")
  (special_scenario_type m))

(cl:ensure-generic-function 'use_second_traj_sv-val :lambda-list '(m))
(cl:defmethod use_second_traj_sv-val ((m <APAControlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:use_second_traj_sv-val is deprecated.  Use planning_msgs-msg:use_second_traj_sv instead.")
  (use_second_traj_sv m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <APAControlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:reserved-val is deprecated.  Use planning_msgs-msg:reserved instead.")
  (reserved m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <APAControlCommand>) ostream)
  "Serializes a message object of type '<APAControlCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'brake_mode) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'steering_mode) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'special_scenario_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_second_traj_sv) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <APAControlCommand>) istream)
  "Deserializes a message object of type '<APAControlCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'brake_mode) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'steering_mode) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'special_scenario_type)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'use_second_traj_sv) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reserved) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reserved) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<APAControlCommand>)))
  "Returns string type for a message object of type '<APAControlCommand>"
  "planning_msgs/APAControlCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'APAControlCommand)))
  "Returns string type for a message object of type 'APAControlCommand"
  "planning_msgs/APAControlCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<APAControlCommand>)))
  "Returns md5sum for a message object of type '<APAControlCommand>"
  "62a7b78b1c9651470bdea942c2f091fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'APAControlCommand)))
  "Returns md5sum for a message object of type 'APAControlCommand"
  "62a7b78b1c9651470bdea942c2f091fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<APAControlCommand>)))
  "Returns full string definition for message of type '<APAControlCommand>"
  (cl:format cl:nil "planning_msgs/APABrakeMode brake_mode~%planning_msgs/APASteeringMode steering_mode~%uint8 special_scenario_type~%bool use_second_traj_sv~%string reserved~%~%================================================================================~%MSG: planning_msgs/APABrakeMode~%uint8 DEFAULT = 0~%uint8 HARD_BRAKE = 1~%uint8 GENTLE_BRAKE = 2~%uint8 value~%~%================================================================================~%MSG: planning_msgs/APASteeringMode~%uint8 NONE = 0~%uint8 STEERING_RESET = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'APAControlCommand)))
  "Returns full string definition for message of type 'APAControlCommand"
  (cl:format cl:nil "planning_msgs/APABrakeMode brake_mode~%planning_msgs/APASteeringMode steering_mode~%uint8 special_scenario_type~%bool use_second_traj_sv~%string reserved~%~%================================================================================~%MSG: planning_msgs/APABrakeMode~%uint8 DEFAULT = 0~%uint8 HARD_BRAKE = 1~%uint8 GENTLE_BRAKE = 2~%uint8 value~%~%================================================================================~%MSG: planning_msgs/APASteeringMode~%uint8 NONE = 0~%uint8 STEERING_RESET = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <APAControlCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'brake_mode))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'steering_mode))
     1
     1
     4 (cl:length (cl:slot-value msg 'reserved))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <APAControlCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'APAControlCommand
    (cl:cons ':brake_mode (brake_mode msg))
    (cl:cons ':steering_mode (steering_mode msg))
    (cl:cons ':special_scenario_type (special_scenario_type msg))
    (cl:cons ':use_second_traj_sv (use_second_traj_sv msg))
    (cl:cons ':reserved (reserved msg))
))
