; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude ParkingSpaceInfo.msg.html

(cl:defclass <ParkingSpaceInfo> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (code
    :reader code
    :initarg :code
    :type cl:fixnum
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type system_manager_msgs-msg:ParkingSpaceStatusEnum
    :initform (cl:make-instance 'system_manager_msgs-msg:ParkingSpaceStatusEnum))
   (type
    :reader type
    :initarg :type
    :type system_manager_msgs-msg:ParkingSpaceTypeEnum
    :initform (cl:make-instance 'system_manager_msgs-msg:ParkingSpaceTypeEnum))
   (corners
    :reader corners
    :initarg :corners
    :type (cl:vector mla_localization_msgs-msg:MLAPosLocal)
   :initform (cl:make-array 0 :element-type 'mla_localization_msgs-msg:MLAPosLocal :initial-element (cl:make-instance 'mla_localization_msgs-msg:MLAPosLocal))))
)

(cl:defclass ParkingSpaceInfo (<ParkingSpaceInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParkingSpaceInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParkingSpaceInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<ParkingSpaceInfo> is deprecated: use system_manager_msgs-msg:ParkingSpaceInfo instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <ParkingSpaceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:id-val is deprecated.  Use system_manager_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'code-val :lambda-list '(m))
(cl:defmethod code-val ((m <ParkingSpaceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:code-val is deprecated.  Use system_manager_msgs-msg:code instead.")
  (code m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ParkingSpaceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:status-val is deprecated.  Use system_manager_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <ParkingSpaceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:type-val is deprecated.  Use system_manager_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'corners-val :lambda-list '(m))
(cl:defmethod corners-val ((m <ParkingSpaceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:corners-val is deprecated.  Use system_manager_msgs-msg:corners instead.")
  (corners m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParkingSpaceInfo>) ostream)
  "Serializes a message object of type '<ParkingSpaceInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'code)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'corners))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'corners))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParkingSpaceInfo>) istream)
  "Deserializes a message object of type '<ParkingSpaceInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'code)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'corners) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'corners)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mla_localization_msgs-msg:MLAPosLocal))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParkingSpaceInfo>)))
  "Returns string type for a message object of type '<ParkingSpaceInfo>"
  "system_manager_msgs/ParkingSpaceInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParkingSpaceInfo)))
  "Returns string type for a message object of type 'ParkingSpaceInfo"
  "system_manager_msgs/ParkingSpaceInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParkingSpaceInfo>)))
  "Returns md5sum for a message object of type '<ParkingSpaceInfo>"
  "ee747198c9da7f190b2ef73bf49bfcf4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParkingSpaceInfo)))
  "Returns md5sum for a message object of type 'ParkingSpaceInfo"
  "ee747198c9da7f190b2ef73bf49bfcf4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParkingSpaceInfo>)))
  "Returns full string definition for message of type '<ParkingSpaceInfo>"
  (cl:format cl:nil "uint64 id~%uint8 code~%system_manager_msgs/ParkingSpaceStatusEnum status~%system_manager_msgs/ParkingSpaceTypeEnum type~%mla_localization_msgs/MLAPosLocal[] corners~%~%================================================================================~%MSG: system_manager_msgs/ParkingSpaceStatusEnum~%uint8 NO_INFORMATION = 0~%uint8 PARKING_SPACE_VACANT = 1~%uint8 PARKING_SPACE_OCCUPIED = 2~%uint8 PARKING_SPACE_HIGHLIGHT = 3~%uint8 value~%~%================================================================================~%MSG: system_manager_msgs/ParkingSpaceTypeEnum~%uint8 UNKNOWN = 0~%uint8 PARKING_SPACE_WITH_CHARGING = 1~%uint8 value~%~%================================================================================~%MSG: mla_localization_msgs/MLAPosLocal~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParkingSpaceInfo)))
  "Returns full string definition for message of type 'ParkingSpaceInfo"
  (cl:format cl:nil "uint64 id~%uint8 code~%system_manager_msgs/ParkingSpaceStatusEnum status~%system_manager_msgs/ParkingSpaceTypeEnum type~%mla_localization_msgs/MLAPosLocal[] corners~%~%================================================================================~%MSG: system_manager_msgs/ParkingSpaceStatusEnum~%uint8 NO_INFORMATION = 0~%uint8 PARKING_SPACE_VACANT = 1~%uint8 PARKING_SPACE_OCCUPIED = 2~%uint8 PARKING_SPACE_HIGHLIGHT = 3~%uint8 value~%~%================================================================================~%MSG: system_manager_msgs/ParkingSpaceTypeEnum~%uint8 UNKNOWN = 0~%uint8 PARKING_SPACE_WITH_CHARGING = 1~%uint8 value~%~%================================================================================~%MSG: mla_localization_msgs/MLAPosLocal~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParkingSpaceInfo>))
  (cl:+ 0
     8
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'corners) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParkingSpaceInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'ParkingSpaceInfo
    (cl:cons ':id (id msg))
    (cl:cons ':code (code msg))
    (cl:cons ':status (status msg))
    (cl:cons ':type (type msg))
    (cl:cons ':corners (corners msg))
))
