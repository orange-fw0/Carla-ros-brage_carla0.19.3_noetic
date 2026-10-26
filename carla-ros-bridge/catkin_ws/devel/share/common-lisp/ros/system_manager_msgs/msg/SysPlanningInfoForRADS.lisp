; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude SysPlanningInfoForRADS.msg.html

(cl:defclass <SysPlanningInfoForRADS> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type system_manager_msgs-msg:FunctionModeEnum
    :initform (cl:make-instance 'system_manager_msgs-msg:FunctionModeEnum))
   (trajectory_points
    :reader trajectory_points
    :initarg :trajectory_points
    :type (cl:vector system_manager_msgs-msg:TrajectoryPoint)
   :initform (cl:make-array 0 :element-type 'system_manager_msgs-msg:TrajectoryPoint :initial-element (cl:make-instance 'system_manager_msgs-msg:TrajectoryPoint))))
)

(cl:defclass SysPlanningInfoForRADS (<SysPlanningInfoForRADS>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SysPlanningInfoForRADS>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SysPlanningInfoForRADS)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<SysPlanningInfoForRADS> is deprecated: use system_manager_msgs-msg:SysPlanningInfoForRADS instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <SysPlanningInfoForRADS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:mode-val is deprecated.  Use system_manager_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'trajectory_points-val :lambda-list '(m))
(cl:defmethod trajectory_points-val ((m <SysPlanningInfoForRADS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:trajectory_points-val is deprecated.  Use system_manager_msgs-msg:trajectory_points instead.")
  (trajectory_points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SysPlanningInfoForRADS>) ostream)
  "Serializes a message object of type '<SysPlanningInfoForRADS>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mode) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'trajectory_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'trajectory_points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SysPlanningInfoForRADS>) istream)
  "Deserializes a message object of type '<SysPlanningInfoForRADS>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mode) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'trajectory_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'trajectory_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'system_manager_msgs-msg:TrajectoryPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SysPlanningInfoForRADS>)))
  "Returns string type for a message object of type '<SysPlanningInfoForRADS>"
  "system_manager_msgs/SysPlanningInfoForRADS")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SysPlanningInfoForRADS)))
  "Returns string type for a message object of type 'SysPlanningInfoForRADS"
  "system_manager_msgs/SysPlanningInfoForRADS")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SysPlanningInfoForRADS>)))
  "Returns md5sum for a message object of type '<SysPlanningInfoForRADS>"
  "700944411c0d355f97bad6b53df332e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SysPlanningInfoForRADS)))
  "Returns md5sum for a message object of type 'SysPlanningInfoForRADS"
  "700944411c0d355f97bad6b53df332e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SysPlanningInfoForRADS>)))
  "Returns full string definition for message of type '<SysPlanningInfoForRADS>"
  (cl:format cl:nil "system_manager_msgs/FunctionModeEnum mode~%system_manager_msgs/TrajectoryPoint[] trajectory_points~%~%================================================================================~%MSG: system_manager_msgs/FunctionModeEnum~%uint8 ACC = 0~%uint8 CP = 1~%uint8 HNP = 2~%uint8 APA = 3~%uint8 SVP = 4~%uint8 PLAC = 5~%uint8 ACE = 6~%uint8 PNP = 7~%uint8 LPNP = 8~%uint8 LPNP_MAPPING = 9~%uint8 MEB = 10~%uint8 RADS = 11~%uint8 MANUAL = 12~%uint8 NRP = 13~%uint8 UNP = 14~%uint8 RPA = 15~%uint8 MANUAL_WITH_CPP = 16~%uint8 EESF = 17~%uint8 LKC = 18~%uint8 SENTRY_MODE = 20~%uint8 ECO_ASSIST = 21~%uint8 MNP = 22~%uint8 MNP_MAPPING = 23~%uint8 L3_FADEIN = 24~%uint8 MANUAL_WITH_NPP = 66~%uint8 value~%~%================================================================================~%MSG: system_manager_msgs/TrajectoryPoint~%mla_localization_msgs/MLAPosLocal position~%float64 velocity~%float64 reserved~%bool is_reverse~%float32 steering_report~%float64 yaw~%string reserved_info~%~%================================================================================~%MSG: mla_localization_msgs/MLAPosLocal~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SysPlanningInfoForRADS)))
  "Returns full string definition for message of type 'SysPlanningInfoForRADS"
  (cl:format cl:nil "system_manager_msgs/FunctionModeEnum mode~%system_manager_msgs/TrajectoryPoint[] trajectory_points~%~%================================================================================~%MSG: system_manager_msgs/FunctionModeEnum~%uint8 ACC = 0~%uint8 CP = 1~%uint8 HNP = 2~%uint8 APA = 3~%uint8 SVP = 4~%uint8 PLAC = 5~%uint8 ACE = 6~%uint8 PNP = 7~%uint8 LPNP = 8~%uint8 LPNP_MAPPING = 9~%uint8 MEB = 10~%uint8 RADS = 11~%uint8 MANUAL = 12~%uint8 NRP = 13~%uint8 UNP = 14~%uint8 RPA = 15~%uint8 MANUAL_WITH_CPP = 16~%uint8 EESF = 17~%uint8 LKC = 18~%uint8 SENTRY_MODE = 20~%uint8 ECO_ASSIST = 21~%uint8 MNP = 22~%uint8 MNP_MAPPING = 23~%uint8 L3_FADEIN = 24~%uint8 MANUAL_WITH_NPP = 66~%uint8 value~%~%================================================================================~%MSG: system_manager_msgs/TrajectoryPoint~%mla_localization_msgs/MLAPosLocal position~%float64 velocity~%float64 reserved~%bool is_reverse~%float32 steering_report~%float64 yaw~%string reserved_info~%~%================================================================================~%MSG: mla_localization_msgs/MLAPosLocal~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SysPlanningInfoForRADS>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mode))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'trajectory_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SysPlanningInfoForRADS>))
  "Converts a ROS message object to a list"
  (cl:list 'SysPlanningInfoForRADS
    (cl:cons ':mode (mode msg))
    (cl:cons ':trajectory_points (trajectory_points msg))
))
