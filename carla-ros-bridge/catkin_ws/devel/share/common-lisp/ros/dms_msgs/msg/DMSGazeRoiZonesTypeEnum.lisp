; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSGazeRoiZonesTypeEnum.msg.html

(cl:defclass <DMSGazeRoiZonesTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass DMSGazeRoiZonesTypeEnum (<DMSGazeRoiZonesTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSGazeRoiZonesTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSGazeRoiZonesTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSGazeRoiZonesTypeEnum> is deprecated: use dms_msgs-msg:DMSGazeRoiZonesTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <DMSGazeRoiZonesTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:value-val is deprecated.  Use dms_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSGazeRoiZonesTypeEnum>)))
    "Constants for message type '<DMSGazeRoiZonesTypeEnum>"
  '((:WINDSHIELDDRIVER . 1)
    (:REARVIEWMIRROR . 2)
    (:WINDSHIELDPASSENGER . 3)
    (:RESERVED . 4)
    (:DIM . 5)
    (:IHU . 6)
    (:WINDOWDRIVER . 7)
    (:REARMIRRORLEFT . 8)
    (:DOORDRIVER . 9)
    (:WINDOWPASSENGER . 10)
    (:REARMIRRORRIGHT . 11)
    (:DOORDPASSENGER . 12)
    (:FLOORDRIVER . 13)
    (:FLOORPASSENGER . 14)
    (:OTHER . 15)
    (:RESERVED1 . 16)
    (:RESERVED2 . 17)
    (:RESERVED3 . 18)
    (:STEERWHEELLE . 19)
    (:STEERWHEELRI . 20)
    (:RESERVED4 . 21)
    (:RESERVED5 . 22)
    (:RESERVED6 . 23)
    (:RESERVED7 . 24)
    (:RESERVED8 . 25))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSGazeRoiZonesTypeEnum)))
    "Constants for message type 'DMSGazeRoiZonesTypeEnum"
  '((:WINDSHIELDDRIVER . 1)
    (:REARVIEWMIRROR . 2)
    (:WINDSHIELDPASSENGER . 3)
    (:RESERVED . 4)
    (:DIM . 5)
    (:IHU . 6)
    (:WINDOWDRIVER . 7)
    (:REARMIRRORLEFT . 8)
    (:DOORDRIVER . 9)
    (:WINDOWPASSENGER . 10)
    (:REARMIRRORRIGHT . 11)
    (:DOORDPASSENGER . 12)
    (:FLOORDRIVER . 13)
    (:FLOORPASSENGER . 14)
    (:OTHER . 15)
    (:RESERVED1 . 16)
    (:RESERVED2 . 17)
    (:RESERVED3 . 18)
    (:STEERWHEELLE . 19)
    (:STEERWHEELRI . 20)
    (:RESERVED4 . 21)
    (:RESERVED5 . 22)
    (:RESERVED6 . 23)
    (:RESERVED7 . 24)
    (:RESERVED8 . 25))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSGazeRoiZonesTypeEnum>) ostream)
  "Serializes a message object of type '<DMSGazeRoiZonesTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSGazeRoiZonesTypeEnum>) istream)
  "Deserializes a message object of type '<DMSGazeRoiZonesTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSGazeRoiZonesTypeEnum>)))
  "Returns string type for a message object of type '<DMSGazeRoiZonesTypeEnum>"
  "dms_msgs/DMSGazeRoiZonesTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSGazeRoiZonesTypeEnum)))
  "Returns string type for a message object of type 'DMSGazeRoiZonesTypeEnum"
  "dms_msgs/DMSGazeRoiZonesTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSGazeRoiZonesTypeEnum>)))
  "Returns md5sum for a message object of type '<DMSGazeRoiZonesTypeEnum>"
  "0589f1c3aee746b0829940dc6bc5f641")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSGazeRoiZonesTypeEnum)))
  "Returns md5sum for a message object of type 'DMSGazeRoiZonesTypeEnum"
  "0589f1c3aee746b0829940dc6bc5f641")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSGazeRoiZonesTypeEnum>)))
  "Returns full string definition for message of type '<DMSGazeRoiZonesTypeEnum>"
  (cl:format cl:nil "uint32 WINDSHIELDDRIVER = 1~%uint32 REARVIEWMIRROR = 2~%uint32 WINDSHIELDPASSENGER = 3~%uint32 RESERVED = 4~%uint32 DIM = 5~%uint32 IHU = 6~%uint32 WINDOWDRIVER = 7~%uint32 REARMIRRORLEFT = 8~%uint32 DOORDRIVER = 9~%uint32 WINDOWPASSENGER = 10~%uint32 REARMIRRORRIGHT = 11~%uint32 DOORDPASSENGER = 12~%uint32 FLOORDRIVER = 13~%uint32 FLOORPASSENGER = 14~%uint32 OTHER = 15~%uint32 RESERVED1 = 16~%uint32 RESERVED2 = 17~%uint32 RESERVED3 = 18~%uint32 STEERWHEELLE = 19~%uint32 STEERWHEELRI = 20~%uint32 RESERVED4 = 21~%uint32 RESERVED5 = 22~%uint32 RESERVED6 = 23~%uint32 RESERVED7 = 24~%uint32 RESERVED8 = 25~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSGazeRoiZonesTypeEnum)))
  "Returns full string definition for message of type 'DMSGazeRoiZonesTypeEnum"
  (cl:format cl:nil "uint32 WINDSHIELDDRIVER = 1~%uint32 REARVIEWMIRROR = 2~%uint32 WINDSHIELDPASSENGER = 3~%uint32 RESERVED = 4~%uint32 DIM = 5~%uint32 IHU = 6~%uint32 WINDOWDRIVER = 7~%uint32 REARMIRRORLEFT = 8~%uint32 DOORDRIVER = 9~%uint32 WINDOWPASSENGER = 10~%uint32 REARMIRRORRIGHT = 11~%uint32 DOORDPASSENGER = 12~%uint32 FLOORDRIVER = 13~%uint32 FLOORPASSENGER = 14~%uint32 OTHER = 15~%uint32 RESERVED1 = 16~%uint32 RESERVED2 = 17~%uint32 RESERVED3 = 18~%uint32 STEERWHEELLE = 19~%uint32 STEERWHEELRI = 20~%uint32 RESERVED4 = 21~%uint32 RESERVED5 = 22~%uint32 RESERVED6 = 23~%uint32 RESERVED7 = 24~%uint32 RESERVED8 = 25~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSGazeRoiZonesTypeEnum>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSGazeRoiZonesTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSGazeRoiZonesTypeEnum
    (cl:cons ':value (value msg))
))
