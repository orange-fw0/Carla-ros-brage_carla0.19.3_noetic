; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude RearviewMirrorCommand.msg.html

(cl:defclass <RearviewMirrorCommand> (roslisp-msg-protocol:ros-message)
  ((rearview_mirror_enable
    :reader rearview_mirror_enable
    :initarg :rearview_mirror_enable
    :type cl:boolean
    :initform cl:nil)
   (rearview_mirror_command
    :reader rearview_mirror_command
    :initarg :rearview_mirror_command
    :type endpoint_msgs-msg:MirrorState
    :initform (cl:make-instance 'endpoint_msgs-msg:MirrorState))
   (rwheel_steer_mode
    :reader rwheel_steer_mode
    :initarg :rwheel_steer_mode
    :type endpoint_msgs-msg:RWhSteerModType
    :initform (cl:make-instance 'endpoint_msgs-msg:RWhSteerModType)))
)

(cl:defclass RearviewMirrorCommand (<RearviewMirrorCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RearviewMirrorCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RearviewMirrorCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<RearviewMirrorCommand> is deprecated: use endpoint_msgs-msg:RearviewMirrorCommand instead.")))

(cl:ensure-generic-function 'rearview_mirror_enable-val :lambda-list '(m))
(cl:defmethod rearview_mirror_enable-val ((m <RearviewMirrorCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:rearview_mirror_enable-val is deprecated.  Use endpoint_msgs-msg:rearview_mirror_enable instead.")
  (rearview_mirror_enable m))

(cl:ensure-generic-function 'rearview_mirror_command-val :lambda-list '(m))
(cl:defmethod rearview_mirror_command-val ((m <RearviewMirrorCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:rearview_mirror_command-val is deprecated.  Use endpoint_msgs-msg:rearview_mirror_command instead.")
  (rearview_mirror_command m))

(cl:ensure-generic-function 'rwheel_steer_mode-val :lambda-list '(m))
(cl:defmethod rwheel_steer_mode-val ((m <RearviewMirrorCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:rwheel_steer_mode-val is deprecated.  Use endpoint_msgs-msg:rwheel_steer_mode instead.")
  (rwheel_steer_mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RearviewMirrorCommand>) ostream)
  "Serializes a message object of type '<RearviewMirrorCommand>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rearview_mirror_enable) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rearview_mirror_command) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rwheel_steer_mode) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RearviewMirrorCommand>) istream)
  "Deserializes a message object of type '<RearviewMirrorCommand>"
    (cl:setf (cl:slot-value msg 'rearview_mirror_enable) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rearview_mirror_command) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rwheel_steer_mode) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RearviewMirrorCommand>)))
  "Returns string type for a message object of type '<RearviewMirrorCommand>"
  "endpoint_msgs/RearviewMirrorCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RearviewMirrorCommand)))
  "Returns string type for a message object of type 'RearviewMirrorCommand"
  "endpoint_msgs/RearviewMirrorCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RearviewMirrorCommand>)))
  "Returns md5sum for a message object of type '<RearviewMirrorCommand>"
  "e1bbd83611b308c9b14762538b2d2fe6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RearviewMirrorCommand)))
  "Returns md5sum for a message object of type 'RearviewMirrorCommand"
  "e1bbd83611b308c9b14762538b2d2fe6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RearviewMirrorCommand>)))
  "Returns full string definition for message of type '<RearviewMirrorCommand>"
  (cl:format cl:nil "bool rearview_mirror_enable~%endpoint_msgs/MirrorState rearview_mirror_command~%endpoint_msgs/RWhSteerModType rwheel_steer_mode~%~%================================================================================~%MSG: endpoint_msgs/MirrorState~%uint8 NO_REQUEST = 0~%uint8 REQUEST_UNFOLD = 1~%uint8 REQUEST_FOLD = 2~%uint8 RESERVED1 = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RWhSteerModType~%uint8 NO_REQUEST = 0~%uint8 CONTROL_REQUEST = 1~%uint8 LOCK_REQUEST = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RearviewMirrorCommand)))
  "Returns full string definition for message of type 'RearviewMirrorCommand"
  (cl:format cl:nil "bool rearview_mirror_enable~%endpoint_msgs/MirrorState rearview_mirror_command~%endpoint_msgs/RWhSteerModType rwheel_steer_mode~%~%================================================================================~%MSG: endpoint_msgs/MirrorState~%uint8 NO_REQUEST = 0~%uint8 REQUEST_UNFOLD = 1~%uint8 REQUEST_FOLD = 2~%uint8 RESERVED1 = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RWhSteerModType~%uint8 NO_REQUEST = 0~%uint8 CONTROL_REQUEST = 1~%uint8 LOCK_REQUEST = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RearviewMirrorCommand>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rearview_mirror_command))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rwheel_steer_mode))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RearviewMirrorCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'RearviewMirrorCommand
    (cl:cons ':rearview_mirror_enable (rearview_mirror_enable msg))
    (cl:cons ':rearview_mirror_command (rearview_mirror_command msg))
    (cl:cons ':rwheel_steer_mode (rwheel_steer_mode msg))
))
