; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude ParkOutInfo.msg.html

(cl:defclass <ParkOutInfo> (roslisp-msg-protocol:ros-message)
  ((available_direction
    :reader available_direction
    :initarg :available_direction
    :type cl:integer
    :initform 0)
   (recommend_direction
    :reader recommend_direction
    :initarg :recommend_direction
    :type cl:integer
    :initform 0)
   (disable_reason
    :reader disable_reason
    :initarg :disable_reason
    :type planning_msgs-msg:ParkOutDisableReason
    :initform (cl:make-instance 'planning_msgs-msg:ParkOutDisableReason))
   (reached_take_over_point
    :reader reached_take_over_point
    :initarg :reached_take_over_point
    :type cl:boolean
    :initform cl:nil)
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:string
    :initform ""))
)

(cl:defclass ParkOutInfo (<ParkOutInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParkOutInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParkOutInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<ParkOutInfo> is deprecated: use planning_msgs-msg:ParkOutInfo instead.")))

(cl:ensure-generic-function 'available_direction-val :lambda-list '(m))
(cl:defmethod available_direction-val ((m <ParkOutInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:available_direction-val is deprecated.  Use planning_msgs-msg:available_direction instead.")
  (available_direction m))

(cl:ensure-generic-function 'recommend_direction-val :lambda-list '(m))
(cl:defmethod recommend_direction-val ((m <ParkOutInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:recommend_direction-val is deprecated.  Use planning_msgs-msg:recommend_direction instead.")
  (recommend_direction m))

(cl:ensure-generic-function 'disable_reason-val :lambda-list '(m))
(cl:defmethod disable_reason-val ((m <ParkOutInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:disable_reason-val is deprecated.  Use planning_msgs-msg:disable_reason instead.")
  (disable_reason m))

(cl:ensure-generic-function 'reached_take_over_point-val :lambda-list '(m))
(cl:defmethod reached_take_over_point-val ((m <ParkOutInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:reached_take_over_point-val is deprecated.  Use planning_msgs-msg:reached_take_over_point instead.")
  (reached_take_over_point m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <ParkOutInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:reserved-val is deprecated.  Use planning_msgs-msg:reserved instead.")
  (reserved m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParkOutInfo>) ostream)
  "Serializes a message object of type '<ParkOutInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available_direction)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available_direction)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'available_direction)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'available_direction)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'recommend_direction)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'recommend_direction)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'recommend_direction)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'recommend_direction)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'disable_reason) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reached_take_over_point) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParkOutInfo>) istream)
  "Deserializes a message object of type '<ParkOutInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available_direction)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available_direction)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'available_direction)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'available_direction)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'recommend_direction)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'recommend_direction)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'recommend_direction)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'recommend_direction)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'disable_reason) istream)
    (cl:setf (cl:slot-value msg 'reached_take_over_point) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reserved) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reserved) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParkOutInfo>)))
  "Returns string type for a message object of type '<ParkOutInfo>"
  "planning_msgs/ParkOutInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParkOutInfo)))
  "Returns string type for a message object of type 'ParkOutInfo"
  "planning_msgs/ParkOutInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParkOutInfo>)))
  "Returns md5sum for a message object of type '<ParkOutInfo>"
  "4c6c29f45111b1842a48d69a77ddff9a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParkOutInfo)))
  "Returns md5sum for a message object of type 'ParkOutInfo"
  "4c6c29f45111b1842a48d69a77ddff9a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParkOutInfo>)))
  "Returns full string definition for message of type '<ParkOutInfo>"
  (cl:format cl:nil "uint32 available_direction~%uint32 recommend_direction~%planning_msgs/ParkOutDisableReason disable_reason~%bool reached_take_over_point~%string reserved~%~%================================================================================~%MSG: planning_msgs/ParkOutDisableReason~%uint32 NONE = 0~%uint32 PARALLEL_NO_OBSTACLE_AHEAD = 1~%uint32 DISABLED_NON_PARALLEL = 2~%uint32 NOT_IN_PARKING_SLOT = 3~%uint32 PARKOUT_NOT_READY = 4~%uint32 SLOT_TOO_SMALL = 5~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParkOutInfo)))
  "Returns full string definition for message of type 'ParkOutInfo"
  (cl:format cl:nil "uint32 available_direction~%uint32 recommend_direction~%planning_msgs/ParkOutDisableReason disable_reason~%bool reached_take_over_point~%string reserved~%~%================================================================================~%MSG: planning_msgs/ParkOutDisableReason~%uint32 NONE = 0~%uint32 PARALLEL_NO_OBSTACLE_AHEAD = 1~%uint32 DISABLED_NON_PARALLEL = 2~%uint32 NOT_IN_PARKING_SLOT = 3~%uint32 PARKOUT_NOT_READY = 4~%uint32 SLOT_TOO_SMALL = 5~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParkOutInfo>))
  (cl:+ 0
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'disable_reason))
     1
     4 (cl:length (cl:slot-value msg 'reserved))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParkOutInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'ParkOutInfo
    (cl:cons ':available_direction (available_direction msg))
    (cl:cons ':recommend_direction (recommend_direction msg))
    (cl:cons ':disable_reason (disable_reason msg))
    (cl:cons ':reached_take_over_point (reached_take_over_point msg))
    (cl:cons ':reserved (reserved msg))
))
