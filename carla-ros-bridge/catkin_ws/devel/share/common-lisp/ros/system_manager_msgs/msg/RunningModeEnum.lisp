; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude RunningModeEnum.msg.html

(cl:defclass <RunningModeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RunningModeEnum (<RunningModeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RunningModeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RunningModeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<RunningModeEnum> is deprecated: use system_manager_msgs-msg:RunningModeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RunningModeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:value-val is deprecated.  Use system_manager_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RunningModeEnum>)))
    "Constants for message type '<RunningModeEnum>"
  '((:PILOT . 0)
    (:PARKING . 1)
    (:MANUAL_DRIVING . 2)
    (:PRODUCTION_LINE . 3)
    (:MEB . 4)
    (:RADS . 5)
    (:PILOT_WITH_PSD . 6)
    (:SENTRY_MODE . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RunningModeEnum)))
    "Constants for message type 'RunningModeEnum"
  '((:PILOT . 0)
    (:PARKING . 1)
    (:MANUAL_DRIVING . 2)
    (:PRODUCTION_LINE . 3)
    (:MEB . 4)
    (:RADS . 5)
    (:PILOT_WITH_PSD . 6)
    (:SENTRY_MODE . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RunningModeEnum>) ostream)
  "Serializes a message object of type '<RunningModeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RunningModeEnum>) istream)
  "Deserializes a message object of type '<RunningModeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RunningModeEnum>)))
  "Returns string type for a message object of type '<RunningModeEnum>"
  "system_manager_msgs/RunningModeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RunningModeEnum)))
  "Returns string type for a message object of type 'RunningModeEnum"
  "system_manager_msgs/RunningModeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RunningModeEnum>)))
  "Returns md5sum for a message object of type '<RunningModeEnum>"
  "7c1a9e57c3ee71324973934d7b06dd89")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RunningModeEnum)))
  "Returns md5sum for a message object of type 'RunningModeEnum"
  "7c1a9e57c3ee71324973934d7b06dd89")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RunningModeEnum>)))
  "Returns full string definition for message of type '<RunningModeEnum>"
  (cl:format cl:nil "uint8 PILOT = 0~%uint8 PARKING = 1~%uint8 MANUAL_DRIVING = 2~%uint8 PRODUCTION_LINE = 3~%uint8 MEB = 4~%uint8 RADS = 5~%uint8 PILOT_WITH_PSD = 6~%uint8 SENTRY_MODE = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RunningModeEnum)))
  "Returns full string definition for message of type 'RunningModeEnum"
  (cl:format cl:nil "uint8 PILOT = 0~%uint8 PARKING = 1~%uint8 MANUAL_DRIVING = 2~%uint8 PRODUCTION_LINE = 3~%uint8 MEB = 4~%uint8 RADS = 5~%uint8 PILOT_WITH_PSD = 6~%uint8 SENTRY_MODE = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RunningModeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RunningModeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'RunningModeEnum
    (cl:cons ':value (value msg))
))
