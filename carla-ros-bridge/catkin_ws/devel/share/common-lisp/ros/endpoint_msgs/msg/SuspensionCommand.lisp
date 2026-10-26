; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude SuspensionCommand.msg.html

(cl:defclass <SuspensionCommand> (roslisp-msg-protocol:ros-message)
  ((suspension_enable
    :reader suspension_enable
    :initarg :suspension_enable
    :type cl:boolean
    :initform cl:nil)
   (suspension_adjust_pause
    :reader suspension_adjust_pause
    :initarg :suspension_adjust_pause
    :type cl:boolean
    :initform cl:nil)
   (suspension_safety_mode
    :reader suspension_safety_mode
    :initarg :suspension_safety_mode
    :type cl:boolean
    :initform cl:nil)
   (suspension_level_command
    :reader suspension_level_command
    :initarg :suspension_level_command
    :type endpoint_msgs-msg:SuspensionLevel
    :initform (cl:make-instance 'endpoint_msgs-msg:SuspensionLevel)))
)

(cl:defclass SuspensionCommand (<SuspensionCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SuspensionCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SuspensionCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<SuspensionCommand> is deprecated: use endpoint_msgs-msg:SuspensionCommand instead.")))

(cl:ensure-generic-function 'suspension_enable-val :lambda-list '(m))
(cl:defmethod suspension_enable-val ((m <SuspensionCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:suspension_enable-val is deprecated.  Use endpoint_msgs-msg:suspension_enable instead.")
  (suspension_enable m))

(cl:ensure-generic-function 'suspension_adjust_pause-val :lambda-list '(m))
(cl:defmethod suspension_adjust_pause-val ((m <SuspensionCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:suspension_adjust_pause-val is deprecated.  Use endpoint_msgs-msg:suspension_adjust_pause instead.")
  (suspension_adjust_pause m))

(cl:ensure-generic-function 'suspension_safety_mode-val :lambda-list '(m))
(cl:defmethod suspension_safety_mode-val ((m <SuspensionCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:suspension_safety_mode-val is deprecated.  Use endpoint_msgs-msg:suspension_safety_mode instead.")
  (suspension_safety_mode m))

(cl:ensure-generic-function 'suspension_level_command-val :lambda-list '(m))
(cl:defmethod suspension_level_command-val ((m <SuspensionCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:suspension_level_command-val is deprecated.  Use endpoint_msgs-msg:suspension_level_command instead.")
  (suspension_level_command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SuspensionCommand>) ostream)
  "Serializes a message object of type '<SuspensionCommand>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'suspension_enable) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'suspension_adjust_pause) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'suspension_safety_mode) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'suspension_level_command) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SuspensionCommand>) istream)
  "Deserializes a message object of type '<SuspensionCommand>"
    (cl:setf (cl:slot-value msg 'suspension_enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'suspension_adjust_pause) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'suspension_safety_mode) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'suspension_level_command) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SuspensionCommand>)))
  "Returns string type for a message object of type '<SuspensionCommand>"
  "endpoint_msgs/SuspensionCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SuspensionCommand)))
  "Returns string type for a message object of type 'SuspensionCommand"
  "endpoint_msgs/SuspensionCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SuspensionCommand>)))
  "Returns md5sum for a message object of type '<SuspensionCommand>"
  "ffeb9a9bde5675f34eb1cdac701a006f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SuspensionCommand)))
  "Returns md5sum for a message object of type 'SuspensionCommand"
  "ffeb9a9bde5675f34eb1cdac701a006f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SuspensionCommand>)))
  "Returns full string definition for message of type '<SuspensionCommand>"
  (cl:format cl:nil "bool suspension_enable~%bool suspension_adjust_pause~%bool suspension_safety_mode~%endpoint_msgs/SuspensionLevel suspension_level_command~%~%================================================================================~%MSG: endpoint_msgs/SuspensionLevel~%uint8 SUSPENSION_NONE = 0~%uint8 SUSPENSION_LEVEL1 = 1~%uint8 SUSPENSION_LEVEL2 = 2~%uint8 SUSPENSION_LEVEL3 = 3~%uint8 SUSPENSION_LEVEL4 = 4~%uint8 SUSPENSION_LEVEL5 = 5~%uint8 SUSPENSION_LEVEL6 = 6~%uint8 SUSPENSION_LEVEL7 = 7~%uint8 SUSPENSION_LEVEL8 = 8~%uint8 SUSPENSION_LEVEL9 = 9~%uint8 SUSPENSION_LEVEL10 = 10~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SuspensionCommand)))
  "Returns full string definition for message of type 'SuspensionCommand"
  (cl:format cl:nil "bool suspension_enable~%bool suspension_adjust_pause~%bool suspension_safety_mode~%endpoint_msgs/SuspensionLevel suspension_level_command~%~%================================================================================~%MSG: endpoint_msgs/SuspensionLevel~%uint8 SUSPENSION_NONE = 0~%uint8 SUSPENSION_LEVEL1 = 1~%uint8 SUSPENSION_LEVEL2 = 2~%uint8 SUSPENSION_LEVEL3 = 3~%uint8 SUSPENSION_LEVEL4 = 4~%uint8 SUSPENSION_LEVEL5 = 5~%uint8 SUSPENSION_LEVEL6 = 6~%uint8 SUSPENSION_LEVEL7 = 7~%uint8 SUSPENSION_LEVEL8 = 8~%uint8 SUSPENSION_LEVEL9 = 9~%uint8 SUSPENSION_LEVEL10 = 10~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SuspensionCommand>))
  (cl:+ 0
     1
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'suspension_level_command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SuspensionCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'SuspensionCommand
    (cl:cons ':suspension_enable (suspension_enable msg))
    (cl:cons ':suspension_adjust_pause (suspension_adjust_pause msg))
    (cl:cons ':suspension_safety_mode (suspension_safety_mode msg))
    (cl:cons ':suspension_level_command (suspension_level_command msg))
))
