; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude APATrajectoryInfo.msg.html

(cl:defclass <APATrajectoryInfo> (roslisp-msg-protocol:ros-message)
  ((extend_type
    :reader extend_type
    :initarg :extend_type
    :type planning_msgs-msg:APATrajectoryExtendType
    :initform (cl:make-instance 'planning_msgs-msg:APATrajectoryExtendType))
   (at_last_segment
    :reader at_last_segment
    :initarg :at_last_segment
    :type cl:boolean
    :initform cl:nil)
   (remain_safe_distance
    :reader remain_safe_distance
    :initarg :remain_safe_distance
    :type cl:float
    :initform 0.0)
   (first_remain_distance
    :reader first_remain_distance
    :initarg :first_remain_distance
    :type cl:float
    :initform 0.0)
   (second_remain_distance
    :reader second_remain_distance
    :initarg :second_remain_distance
    :type cl:float
    :initform 0.0)
   (second_target_v
    :reader second_target_v
    :initarg :second_target_v
    :type cl:float
    :initform 0.0)
   (first_gear
    :reader first_gear
    :initarg :first_gear
    :type planning_msgs-msg:Gear
    :initform (cl:make-instance 'planning_msgs-msg:Gear))
   (second_gear
    :reader second_gear
    :initarg :second_gear
    :type planning_msgs-msg:Gear
    :initform (cl:make-instance 'planning_msgs-msg:Gear))
   (second_start_index
    :reader second_start_index
    :initarg :second_start_index
    :type cl:integer
    :initform 0)
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:string
    :initform ""))
)

(cl:defclass APATrajectoryInfo (<APATrajectoryInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <APATrajectoryInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'APATrajectoryInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<APATrajectoryInfo> is deprecated: use planning_msgs-msg:APATrajectoryInfo instead.")))

(cl:ensure-generic-function 'extend_type-val :lambda-list '(m))
(cl:defmethod extend_type-val ((m <APATrajectoryInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:extend_type-val is deprecated.  Use planning_msgs-msg:extend_type instead.")
  (extend_type m))

(cl:ensure-generic-function 'at_last_segment-val :lambda-list '(m))
(cl:defmethod at_last_segment-val ((m <APATrajectoryInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:at_last_segment-val is deprecated.  Use planning_msgs-msg:at_last_segment instead.")
  (at_last_segment m))

(cl:ensure-generic-function 'remain_safe_distance-val :lambda-list '(m))
(cl:defmethod remain_safe_distance-val ((m <APATrajectoryInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:remain_safe_distance-val is deprecated.  Use planning_msgs-msg:remain_safe_distance instead.")
  (remain_safe_distance m))

(cl:ensure-generic-function 'first_remain_distance-val :lambda-list '(m))
(cl:defmethod first_remain_distance-val ((m <APATrajectoryInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:first_remain_distance-val is deprecated.  Use planning_msgs-msg:first_remain_distance instead.")
  (first_remain_distance m))

(cl:ensure-generic-function 'second_remain_distance-val :lambda-list '(m))
(cl:defmethod second_remain_distance-val ((m <APATrajectoryInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:second_remain_distance-val is deprecated.  Use planning_msgs-msg:second_remain_distance instead.")
  (second_remain_distance m))

(cl:ensure-generic-function 'second_target_v-val :lambda-list '(m))
(cl:defmethod second_target_v-val ((m <APATrajectoryInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:second_target_v-val is deprecated.  Use planning_msgs-msg:second_target_v instead.")
  (second_target_v m))

(cl:ensure-generic-function 'first_gear-val :lambda-list '(m))
(cl:defmethod first_gear-val ((m <APATrajectoryInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:first_gear-val is deprecated.  Use planning_msgs-msg:first_gear instead.")
  (first_gear m))

(cl:ensure-generic-function 'second_gear-val :lambda-list '(m))
(cl:defmethod second_gear-val ((m <APATrajectoryInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:second_gear-val is deprecated.  Use planning_msgs-msg:second_gear instead.")
  (second_gear m))

(cl:ensure-generic-function 'second_start_index-val :lambda-list '(m))
(cl:defmethod second_start_index-val ((m <APATrajectoryInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:second_start_index-val is deprecated.  Use planning_msgs-msg:second_start_index instead.")
  (second_start_index m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <APATrajectoryInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:reserved-val is deprecated.  Use planning_msgs-msg:reserved instead.")
  (reserved m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <APATrajectoryInfo>) ostream)
  "Serializes a message object of type '<APATrajectoryInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'extend_type) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'at_last_segment) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'remain_safe_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'first_remain_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'second_remain_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'second_target_v))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'first_gear) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'second_gear) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'second_start_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'second_start_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'second_start_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'second_start_index)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <APATrajectoryInfo>) istream)
  "Deserializes a message object of type '<APATrajectoryInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'extend_type) istream)
    (cl:setf (cl:slot-value msg 'at_last_segment) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'remain_safe_distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'first_remain_distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'second_remain_distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'second_target_v) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'first_gear) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'second_gear) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'second_start_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'second_start_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'second_start_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'second_start_index)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<APATrajectoryInfo>)))
  "Returns string type for a message object of type '<APATrajectoryInfo>"
  "planning_msgs/APATrajectoryInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'APATrajectoryInfo)))
  "Returns string type for a message object of type 'APATrajectoryInfo"
  "planning_msgs/APATrajectoryInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<APATrajectoryInfo>)))
  "Returns md5sum for a message object of type '<APATrajectoryInfo>"
  "da508b5fa999bcd13fcd323ade31d18a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'APATrajectoryInfo)))
  "Returns md5sum for a message object of type 'APATrajectoryInfo"
  "da508b5fa999bcd13fcd323ade31d18a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<APATrajectoryInfo>)))
  "Returns full string definition for message of type '<APATrajectoryInfo>"
  (cl:format cl:nil "planning_msgs/APATrajectoryExtendType extend_type~%bool at_last_segment~%float32 remain_safe_distance~%float32 first_remain_distance~%float32 second_remain_distance~%float32 second_target_v~%planning_msgs/Gear first_gear~%planning_msgs/Gear second_gear~%uint32 second_start_index~%string reserved~%~%================================================================================~%MSG: planning_msgs/APATrajectoryExtendType~%uint8 UNEXTENDED = 0~%uint8 STRAIGHT = 1~%uint8 CIRCULAR_CURVE = 2~%uint8 value~%~%================================================================================~%MSG: planning_msgs/Gear~%uint8 NONE = 0~%uint8 PARK = 1~%uint8 REVERSE = 2~%uint8 NEUTRAL = 3~%uint8 DRIVE = 4~%uint8 LOW = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'APATrajectoryInfo)))
  "Returns full string definition for message of type 'APATrajectoryInfo"
  (cl:format cl:nil "planning_msgs/APATrajectoryExtendType extend_type~%bool at_last_segment~%float32 remain_safe_distance~%float32 first_remain_distance~%float32 second_remain_distance~%float32 second_target_v~%planning_msgs/Gear first_gear~%planning_msgs/Gear second_gear~%uint32 second_start_index~%string reserved~%~%================================================================================~%MSG: planning_msgs/APATrajectoryExtendType~%uint8 UNEXTENDED = 0~%uint8 STRAIGHT = 1~%uint8 CIRCULAR_CURVE = 2~%uint8 value~%~%================================================================================~%MSG: planning_msgs/Gear~%uint8 NONE = 0~%uint8 PARK = 1~%uint8 REVERSE = 2~%uint8 NEUTRAL = 3~%uint8 DRIVE = 4~%uint8 LOW = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <APATrajectoryInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'extend_type))
     1
     4
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'first_gear))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'second_gear))
     4
     4 (cl:length (cl:slot-value msg 'reserved))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <APATrajectoryInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'APATrajectoryInfo
    (cl:cons ':extend_type (extend_type msg))
    (cl:cons ':at_last_segment (at_last_segment msg))
    (cl:cons ':remain_safe_distance (remain_safe_distance msg))
    (cl:cons ':first_remain_distance (first_remain_distance msg))
    (cl:cons ':second_remain_distance (second_remain_distance msg))
    (cl:cons ':second_target_v (second_target_v msg))
    (cl:cons ':first_gear (first_gear msg))
    (cl:cons ':second_gear (second_gear msg))
    (cl:cons ':second_start_index (second_start_index msg))
    (cl:cons ':reserved (reserved msg))
))
