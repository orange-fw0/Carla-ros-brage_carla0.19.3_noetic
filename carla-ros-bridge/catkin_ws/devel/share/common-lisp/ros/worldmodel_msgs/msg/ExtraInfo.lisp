; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude ExtraInfo.msg.html

(cl:defclass <ExtraInfo> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (ramp_maneuver
    :reader ramp_maneuver
    :initarg :ramp_maneuver
    :type worldmodel_msgs-msg:RampManeuver
    :initform (cl:make-instance 'worldmodel_msgs-msg:RampManeuver))
   (scene_type
    :reader scene_type
    :initarg :scene_type
    :type cl:string
    :initform "")
   (reserved_info
    :reader reserved_info
    :initarg :reserved_info
    :type cl:string
    :initform ""))
)

(cl:defclass ExtraInfo (<ExtraInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExtraInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExtraInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<ExtraInfo> is deprecated: use worldmodel_msgs-msg:ExtraInfo instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <ExtraInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:available-val is deprecated.  Use worldmodel_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'ramp_maneuver-val :lambda-list '(m))
(cl:defmethod ramp_maneuver-val ((m <ExtraInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:ramp_maneuver-val is deprecated.  Use worldmodel_msgs-msg:ramp_maneuver instead.")
  (ramp_maneuver m))

(cl:ensure-generic-function 'scene_type-val :lambda-list '(m))
(cl:defmethod scene_type-val ((m <ExtraInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:scene_type-val is deprecated.  Use worldmodel_msgs-msg:scene_type instead.")
  (scene_type m))

(cl:ensure-generic-function 'reserved_info-val :lambda-list '(m))
(cl:defmethod reserved_info-val ((m <ExtraInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:reserved_info-val is deprecated.  Use worldmodel_msgs-msg:reserved_info instead.")
  (reserved_info m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ExtraInfo>)))
    "Constants for message type '<ExtraInfo>"
  '((:RAMP_MANEUVER . 1)
    (:SCENE_TYPE . 2)
    (:RESERVED_INFO . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ExtraInfo)))
    "Constants for message type 'ExtraInfo"
  '((:RAMP_MANEUVER . 1)
    (:SCENE_TYPE . 2)
    (:RESERVED_INFO . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExtraInfo>) ostream)
  "Serializes a message object of type '<ExtraInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ramp_maneuver) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'scene_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'scene_type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExtraInfo>) istream)
  "Deserializes a message object of type '<ExtraInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ramp_maneuver) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'scene_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'scene_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reserved_info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reserved_info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExtraInfo>)))
  "Returns string type for a message object of type '<ExtraInfo>"
  "worldmodel_msgs/ExtraInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExtraInfo)))
  "Returns string type for a message object of type 'ExtraInfo"
  "worldmodel_msgs/ExtraInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExtraInfo>)))
  "Returns md5sum for a message object of type '<ExtraInfo>"
  "48e58682922bc2853877e0204ca96dfa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExtraInfo)))
  "Returns md5sum for a message object of type 'ExtraInfo"
  "48e58682922bc2853877e0204ca96dfa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExtraInfo>)))
  "Returns full string definition for message of type '<ExtraInfo>"
  (cl:format cl:nil "uint8 RAMP_MANEUVER = 1~%uint8 SCENE_TYPE = 2~%uint8 RESERVED_INFO = 4~%uint8 available~%worldmodel_msgs/RampManeuver ramp_maneuver~%string scene_type~%string reserved_info~%~%================================================================================~%MSG: worldmodel_msgs/RampManeuver~%float32 dis_to_ramp~%float32 length~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExtraInfo)))
  "Returns full string definition for message of type 'ExtraInfo"
  (cl:format cl:nil "uint8 RAMP_MANEUVER = 1~%uint8 SCENE_TYPE = 2~%uint8 RESERVED_INFO = 4~%uint8 available~%worldmodel_msgs/RampManeuver ramp_maneuver~%string scene_type~%string reserved_info~%~%================================================================================~%MSG: worldmodel_msgs/RampManeuver~%float32 dis_to_ramp~%float32 length~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExtraInfo>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ramp_maneuver))
     4 (cl:length (cl:slot-value msg 'scene_type))
     4 (cl:length (cl:slot-value msg 'reserved_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExtraInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'ExtraInfo
    (cl:cons ':available (available msg))
    (cl:cons ':ramp_maneuver (ramp_maneuver msg))
    (cl:cons ':scene_type (scene_type msg))
    (cl:cons ':reserved_info (reserved_info msg))
))
