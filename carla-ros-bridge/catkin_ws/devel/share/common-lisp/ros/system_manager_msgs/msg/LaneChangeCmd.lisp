; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude LaneChangeCmd.msg.html

(cl:defclass <LaneChangeCmd> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type system_manager_msgs-msg:LaneChangeTypeEnum
    :initform (cl:make-instance 'system_manager_msgs-msg:LaneChangeTypeEnum))
   (direction
    :reader direction
    :initarg :direction
    :type system_manager_msgs-msg:LaneChangeDirectionEnum
    :initform (cl:make-instance 'system_manager_msgs-msg:LaneChangeDirectionEnum)))
)

(cl:defclass LaneChangeCmd (<LaneChangeCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneChangeCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneChangeCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<LaneChangeCmd> is deprecated: use system_manager_msgs-msg:LaneChangeCmd instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <LaneChangeCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:type-val is deprecated.  Use system_manager_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <LaneChangeCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:direction-val is deprecated.  Use system_manager_msgs-msg:direction instead.")
  (direction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneChangeCmd>) ostream)
  "Serializes a message object of type '<LaneChangeCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'direction) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneChangeCmd>) istream)
  "Deserializes a message object of type '<LaneChangeCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'direction) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneChangeCmd>)))
  "Returns string type for a message object of type '<LaneChangeCmd>"
  "system_manager_msgs/LaneChangeCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneChangeCmd)))
  "Returns string type for a message object of type 'LaneChangeCmd"
  "system_manager_msgs/LaneChangeCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneChangeCmd>)))
  "Returns md5sum for a message object of type '<LaneChangeCmd>"
  "3b28b244e0f7f96a3811cc9ee5ce717e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneChangeCmd)))
  "Returns md5sum for a message object of type 'LaneChangeCmd"
  "3b28b244e0f7f96a3811cc9ee5ce717e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneChangeCmd>)))
  "Returns full string definition for message of type '<LaneChangeCmd>"
  (cl:format cl:nil "system_manager_msgs/LaneChangeTypeEnum type~%system_manager_msgs/LaneChangeDirectionEnum direction~%~%================================================================================~%MSG: system_manager_msgs/LaneChangeTypeEnum~%uint8 FORBIDDEN = 0~%uint8 INTERACTIVE = 1~%uint8 REMOVE_FORBIDDEN = 2~%uint8 REMOVE_INTERACTIVE = 3~%uint8 CONFIRM_MODE = 4~%uint8 REMOVE_CONFIRM_MODE = 5~%uint8 CONFIRM_APPROVED = 6~%uint8 CONFIRM_REFUSED = 7~%uint8 ENABLE_EVASIVE = 10~%uint8 DISABLE_EVASIVE = 11~%uint8 FORBIDDEN_INTERACTIVE = 12~%uint8 REMOVE_FORBIDDEN_INTERACTIVE = 13~%uint8 FORBIDDEN_AUTO = 14~%uint8 REMOVE_FORBIDDEN_AUTO = 15~%uint8 FORBIDDEN_NAVI = 16~%uint8 REMOVE_FORBIDDEN_NAVI = 17~%uint8 CONFIRM_TIMEOUT = 18~%uint8 ENABLE_INITIALTIVE_AUTOMOUS = 20~%uint8 ENABLE_RECOMMAND_AUTOMOUS = 21~%uint8 DISABLE_AUTOMOUS = 22~%uint8 ENABLE_PREFERED_LANE = 23~%uint8 DISABLE_PREFERED_LANE = 24~%uint8 LEFT_FIRST_LANE = 25~%uint8 LEFT_SECOND_LANE = 26~%uint8 value~%~%================================================================================~%MSG: system_manager_msgs/LaneChangeDirectionEnum~%uint8 LEFT = 0~%uint8 RIGHT = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneChangeCmd)))
  "Returns full string definition for message of type 'LaneChangeCmd"
  (cl:format cl:nil "system_manager_msgs/LaneChangeTypeEnum type~%system_manager_msgs/LaneChangeDirectionEnum direction~%~%================================================================================~%MSG: system_manager_msgs/LaneChangeTypeEnum~%uint8 FORBIDDEN = 0~%uint8 INTERACTIVE = 1~%uint8 REMOVE_FORBIDDEN = 2~%uint8 REMOVE_INTERACTIVE = 3~%uint8 CONFIRM_MODE = 4~%uint8 REMOVE_CONFIRM_MODE = 5~%uint8 CONFIRM_APPROVED = 6~%uint8 CONFIRM_REFUSED = 7~%uint8 ENABLE_EVASIVE = 10~%uint8 DISABLE_EVASIVE = 11~%uint8 FORBIDDEN_INTERACTIVE = 12~%uint8 REMOVE_FORBIDDEN_INTERACTIVE = 13~%uint8 FORBIDDEN_AUTO = 14~%uint8 REMOVE_FORBIDDEN_AUTO = 15~%uint8 FORBIDDEN_NAVI = 16~%uint8 REMOVE_FORBIDDEN_NAVI = 17~%uint8 CONFIRM_TIMEOUT = 18~%uint8 ENABLE_INITIALTIVE_AUTOMOUS = 20~%uint8 ENABLE_RECOMMAND_AUTOMOUS = 21~%uint8 DISABLE_AUTOMOUS = 22~%uint8 ENABLE_PREFERED_LANE = 23~%uint8 DISABLE_PREFERED_LANE = 24~%uint8 LEFT_FIRST_LANE = 25~%uint8 LEFT_SECOND_LANE = 26~%uint8 value~%~%================================================================================~%MSG: system_manager_msgs/LaneChangeDirectionEnum~%uint8 LEFT = 0~%uint8 RIGHT = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneChangeCmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'direction))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneChangeCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneChangeCmd
    (cl:cons ':type (type msg))
    (cl:cons ':direction (direction msg))
))
