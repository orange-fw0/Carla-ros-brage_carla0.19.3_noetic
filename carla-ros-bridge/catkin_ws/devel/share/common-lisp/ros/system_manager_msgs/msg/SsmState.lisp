; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude SsmState.msg.html

(cl:defclass <SsmState> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass SsmState (<SsmState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SsmState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SsmState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<SsmState> is deprecated: use system_manager_msgs-msg:SsmState instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SsmState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:value-val is deprecated.  Use system_manager_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SsmState>)))
    "Constants for message type '<SsmState>"
  '((:NONE . 255)
    (:INIT . 0)
    (:SHUTDOWN . 1)
    (:MANUAL . 2)
    (:AD . 3)
    (:SENTINEL . 4)
    (:PLCA . 5)
    (:SLCA . 6)
    (:NORMAL . 2)
    (:CALIB_PLAC_CAMERA . 9)
    (:CALIB_PLAC_LIDAR . 10)
    (:CALIB_ACE_CAMERA . 11)
    (:CALIB_ACE_LIDAR . 12))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SsmState)))
    "Constants for message type 'SsmState"
  '((:NONE . 255)
    (:INIT . 0)
    (:SHUTDOWN . 1)
    (:MANUAL . 2)
    (:AD . 3)
    (:SENTINEL . 4)
    (:PLCA . 5)
    (:SLCA . 6)
    (:NORMAL . 2)
    (:CALIB_PLAC_CAMERA . 9)
    (:CALIB_PLAC_LIDAR . 10)
    (:CALIB_ACE_CAMERA . 11)
    (:CALIB_ACE_LIDAR . 12))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SsmState>) ostream)
  "Serializes a message object of type '<SsmState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SsmState>) istream)
  "Deserializes a message object of type '<SsmState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SsmState>)))
  "Returns string type for a message object of type '<SsmState>"
  "system_manager_msgs/SsmState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SsmState)))
  "Returns string type for a message object of type 'SsmState"
  "system_manager_msgs/SsmState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SsmState>)))
  "Returns md5sum for a message object of type '<SsmState>"
  "e38500ff3e78d15e6912178d9b8134a6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SsmState)))
  "Returns md5sum for a message object of type 'SsmState"
  "e38500ff3e78d15e6912178d9b8134a6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SsmState>)))
  "Returns full string definition for message of type '<SsmState>"
  (cl:format cl:nil "uint8 NONE = 255~%uint8 INIT = 0~%uint8 SHUTDOWN = 1~%uint8 MANUAL = 2~%uint8 AD = 3~%uint8 SENTINEL = 4~%uint8 PLCA = 5~%uint8 SLCA = 6~%uint8 NORMAL = 2~%uint8 CALIB_PLAC_CAMERA = 9~%uint8 CALIB_PLAC_LIDAR = 10~%uint8 CALIB_ACE_CAMERA = 11~%uint8 CALIB_ACE_LIDAR = 12~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SsmState)))
  "Returns full string definition for message of type 'SsmState"
  (cl:format cl:nil "uint8 NONE = 255~%uint8 INIT = 0~%uint8 SHUTDOWN = 1~%uint8 MANUAL = 2~%uint8 AD = 3~%uint8 SENTINEL = 4~%uint8 PLCA = 5~%uint8 SLCA = 6~%uint8 NORMAL = 2~%uint8 CALIB_PLAC_CAMERA = 9~%uint8 CALIB_PLAC_LIDAR = 10~%uint8 CALIB_ACE_CAMERA = 11~%uint8 CALIB_ACE_LIDAR = 12~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SsmState>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SsmState>))
  "Converts a ROS message object to a list"
  (cl:list 'SsmState
    (cl:cons ':value (value msg))
))
