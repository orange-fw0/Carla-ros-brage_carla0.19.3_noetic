; Auto-generated. Do not edit!


(cl:in-package tos_msgs-msg)


;//! \htmlinclude TOSNudgeCmd.msg.html

(cl:defclass <TOSNudgeCmd> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (nudge_cmd
    :reader nudge_cmd
    :initarg :nudge_cmd
    :type tos_msgs-msg:TOSNudgeEnum
    :initform (cl:make-instance 'tos_msgs-msg:TOSNudgeEnum)))
)

(cl:defclass TOSNudgeCmd (<TOSNudgeCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TOSNudgeCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TOSNudgeCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tos_msgs-msg:<TOSNudgeCmd> is deprecated: use tos_msgs-msg:TOSNudgeCmd instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <TOSNudgeCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:available-val is deprecated.  Use tos_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'nudge_cmd-val :lambda-list '(m))
(cl:defmethod nudge_cmd-val ((m <TOSNudgeCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:nudge_cmd-val is deprecated.  Use tos_msgs-msg:nudge_cmd instead.")
  (nudge_cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TOSNudgeCmd>) ostream)
  "Serializes a message object of type '<TOSNudgeCmd>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'nudge_cmd) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TOSNudgeCmd>) istream)
  "Deserializes a message object of type '<TOSNudgeCmd>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'nudge_cmd) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TOSNudgeCmd>)))
  "Returns string type for a message object of type '<TOSNudgeCmd>"
  "tos_msgs/TOSNudgeCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TOSNudgeCmd)))
  "Returns string type for a message object of type 'TOSNudgeCmd"
  "tos_msgs/TOSNudgeCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TOSNudgeCmd>)))
  "Returns md5sum for a message object of type '<TOSNudgeCmd>"
  "3da070feb8c0502073d1773f4c54b9b8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TOSNudgeCmd)))
  "Returns md5sum for a message object of type 'TOSNudgeCmd"
  "3da070feb8c0502073d1773f4c54b9b8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TOSNudgeCmd>)))
  "Returns full string definition for message of type '<TOSNudgeCmd>"
  (cl:format cl:nil "uint8 available~%tos_msgs/TOSNudgeEnum nudge_cmd~%~%================================================================================~%MSG: tos_msgs/TOSNudgeEnum~%uint8 NONE = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TOSNudgeCmd)))
  "Returns full string definition for message of type 'TOSNudgeCmd"
  (cl:format cl:nil "uint8 available~%tos_msgs/TOSNudgeEnum nudge_cmd~%~%================================================================================~%MSG: tos_msgs/TOSNudgeEnum~%uint8 NONE = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TOSNudgeCmd>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'nudge_cmd))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TOSNudgeCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'TOSNudgeCmd
    (cl:cons ':available (available msg))
    (cl:cons ':nudge_cmd (nudge_cmd msg))
))
