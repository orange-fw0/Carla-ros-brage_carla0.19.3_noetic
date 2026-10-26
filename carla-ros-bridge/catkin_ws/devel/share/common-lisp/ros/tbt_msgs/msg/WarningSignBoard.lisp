; Auto-generated. Do not edit!


(cl:in-package tbt_msgs-msg)


;//! \htmlinclude WarningSignBoard.msg.html

(cl:defclass <WarningSignBoard> (roslisp-msg-protocol:ros-message)
  ((sign_type_list
    :reader sign_type_list
    :initarg :sign_type_list
    :type (cl:vector tbt_msgs-msg:SignTypeEnum)
   :initform (cl:make-array 0 :element-type 'tbt_msgs-msg:SignTypeEnum :initial-element (cl:make-instance 'tbt_msgs-msg:SignTypeEnum)))
   (distance_to_sign_list
    :reader distance_to_sign_list
    :initarg :distance_to_sign_list
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (speed_limit_list
    :reader speed_limit_list
    :initarg :speed_limit_list
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass WarningSignBoard (<WarningSignBoard>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WarningSignBoard>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WarningSignBoard)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tbt_msgs-msg:<WarningSignBoard> is deprecated: use tbt_msgs-msg:WarningSignBoard instead.")))

(cl:ensure-generic-function 'sign_type_list-val :lambda-list '(m))
(cl:defmethod sign_type_list-val ((m <WarningSignBoard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:sign_type_list-val is deprecated.  Use tbt_msgs-msg:sign_type_list instead.")
  (sign_type_list m))

(cl:ensure-generic-function 'distance_to_sign_list-val :lambda-list '(m))
(cl:defmethod distance_to_sign_list-val ((m <WarningSignBoard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:distance_to_sign_list-val is deprecated.  Use tbt_msgs-msg:distance_to_sign_list instead.")
  (distance_to_sign_list m))

(cl:ensure-generic-function 'speed_limit_list-val :lambda-list '(m))
(cl:defmethod speed_limit_list-val ((m <WarningSignBoard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:speed_limit_list-val is deprecated.  Use tbt_msgs-msg:speed_limit_list instead.")
  (speed_limit_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WarningSignBoard>) ostream)
  "Serializes a message object of type '<WarningSignBoard>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sign_type_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'sign_type_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'distance_to_sign_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'distance_to_sign_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'speed_limit_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'speed_limit_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WarningSignBoard>) istream)
  "Deserializes a message object of type '<WarningSignBoard>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sign_type_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sign_type_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tbt_msgs-msg:SignTypeEnum))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'distance_to_sign_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'distance_to_sign_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'speed_limit_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'speed_limit_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WarningSignBoard>)))
  "Returns string type for a message object of type '<WarningSignBoard>"
  "tbt_msgs/WarningSignBoard")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WarningSignBoard)))
  "Returns string type for a message object of type 'WarningSignBoard"
  "tbt_msgs/WarningSignBoard")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WarningSignBoard>)))
  "Returns md5sum for a message object of type '<WarningSignBoard>"
  "8da5e5656ae20c7c4bc7bd2dbf8039f1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WarningSignBoard)))
  "Returns md5sum for a message object of type 'WarningSignBoard"
  "8da5e5656ae20c7c4bc7bd2dbf8039f1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WarningSignBoard>)))
  "Returns full string definition for message of type '<WarningSignBoard>"
  (cl:format cl:nil "tbt_msgs/SignTypeEnum[] sign_type_list~%uint16[] distance_to_sign_list~%uint8[] speed_limit_list~%~%================================================================================~%MSG: tbt_msgs/SignTypeEnum~%uint8 FacilityTypeNULL = 0~%uint8 FacilityTypeLeftInterflow = 1~%uint8 FacilityTypeRightInterflow = 2~%uint8 FacilityTypeSharpTurn = 3~%uint8 FacilityTypeReverseTurn = 4~%uint8 FacilityTypeLinkingTurn = 5~%uint8 FacilityTypeAccidentArea = 6~%uint8 FacilityTypeFallingRocks = 7~%uint8 FacilityTypeFailwayCross = 8~%uint8 FacilityTypeSlippery = 9~%uint8 FacilityTypeMaxSpeedLimit = 10~%uint8 FacilityTypeMinSpeedLimit = 11~%uint8 FacilityTypeVillage = 12~%uint8 FacilityTypeLeftNarrow = 13~%uint8 FacilityTypeRightNarrow = 14~%uint8 FacilityTypeDoubleNarrow = 15~%uint8 FacilityTypeCrosswindArea = 16~%uint8 FacilityTypeSchoolZone = 17~%uint8 FacilityTypeOvertakeForbid = 18~%uint8 FacilityTypeNarrowBridge = 19~%uint8 FacilityTypeDoubleDetour = 20~%uint8 FacilityTypeLeftDetour = 21~%uint8 FacilityTypeRightDetour = 22~%uint8 FacilityTypeLeftDangerous = 23~%uint8 FacilityTypeRightDangerous = 24~%uint8 FacilityTypeUpperSteep = 25~%uint8 FacilityTypeDownSteep = 26~%uint8 FacilityTypeWaterPavement = 27~%uint8 FacilityTypeIrregularityPavement = 28~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WarningSignBoard)))
  "Returns full string definition for message of type 'WarningSignBoard"
  (cl:format cl:nil "tbt_msgs/SignTypeEnum[] sign_type_list~%uint16[] distance_to_sign_list~%uint8[] speed_limit_list~%~%================================================================================~%MSG: tbt_msgs/SignTypeEnum~%uint8 FacilityTypeNULL = 0~%uint8 FacilityTypeLeftInterflow = 1~%uint8 FacilityTypeRightInterflow = 2~%uint8 FacilityTypeSharpTurn = 3~%uint8 FacilityTypeReverseTurn = 4~%uint8 FacilityTypeLinkingTurn = 5~%uint8 FacilityTypeAccidentArea = 6~%uint8 FacilityTypeFallingRocks = 7~%uint8 FacilityTypeFailwayCross = 8~%uint8 FacilityTypeSlippery = 9~%uint8 FacilityTypeMaxSpeedLimit = 10~%uint8 FacilityTypeMinSpeedLimit = 11~%uint8 FacilityTypeVillage = 12~%uint8 FacilityTypeLeftNarrow = 13~%uint8 FacilityTypeRightNarrow = 14~%uint8 FacilityTypeDoubleNarrow = 15~%uint8 FacilityTypeCrosswindArea = 16~%uint8 FacilityTypeSchoolZone = 17~%uint8 FacilityTypeOvertakeForbid = 18~%uint8 FacilityTypeNarrowBridge = 19~%uint8 FacilityTypeDoubleDetour = 20~%uint8 FacilityTypeLeftDetour = 21~%uint8 FacilityTypeRightDetour = 22~%uint8 FacilityTypeLeftDangerous = 23~%uint8 FacilityTypeRightDangerous = 24~%uint8 FacilityTypeUpperSteep = 25~%uint8 FacilityTypeDownSteep = 26~%uint8 FacilityTypeWaterPavement = 27~%uint8 FacilityTypeIrregularityPavement = 28~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WarningSignBoard>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sign_type_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'distance_to_sign_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'speed_limit_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WarningSignBoard>))
  "Converts a ROS message object to a list"
  (cl:list 'WarningSignBoard
    (cl:cons ':sign_type_list (sign_type_list msg))
    (cl:cons ':distance_to_sign_list (distance_to_sign_list msg))
    (cl:cons ':speed_limit_list (speed_limit_list msg))
))
