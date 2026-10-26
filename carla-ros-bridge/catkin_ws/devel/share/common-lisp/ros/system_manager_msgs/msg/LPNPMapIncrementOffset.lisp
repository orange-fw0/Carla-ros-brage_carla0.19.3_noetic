; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude LPNPMapIncrementOffset.msg.html

(cl:defclass <LPNPMapIncrementOffset> (roslisp-msg-protocol:ros-message)
  ((parking_slot
    :reader parking_slot
    :initarg :parking_slot
    :type cl:integer
    :initform 0)
   (speed_bump
    :reader speed_bump
    :initarg :speed_bump
    :type cl:integer
    :initform 0)
   (trajectory_point
    :reader trajectory_point
    :initarg :trajectory_point
    :type cl:integer
    :initform 0))
)

(cl:defclass LPNPMapIncrementOffset (<LPNPMapIncrementOffset>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LPNPMapIncrementOffset>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LPNPMapIncrementOffset)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<LPNPMapIncrementOffset> is deprecated: use system_manager_msgs-msg:LPNPMapIncrementOffset instead.")))

(cl:ensure-generic-function 'parking_slot-val :lambda-list '(m))
(cl:defmethod parking_slot-val ((m <LPNPMapIncrementOffset>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:parking_slot-val is deprecated.  Use system_manager_msgs-msg:parking_slot instead.")
  (parking_slot m))

(cl:ensure-generic-function 'speed_bump-val :lambda-list '(m))
(cl:defmethod speed_bump-val ((m <LPNPMapIncrementOffset>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:speed_bump-val is deprecated.  Use system_manager_msgs-msg:speed_bump instead.")
  (speed_bump m))

(cl:ensure-generic-function 'trajectory_point-val :lambda-list '(m))
(cl:defmethod trajectory_point-val ((m <LPNPMapIncrementOffset>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:trajectory_point-val is deprecated.  Use system_manager_msgs-msg:trajectory_point instead.")
  (trajectory_point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LPNPMapIncrementOffset>) ostream)
  "Serializes a message object of type '<LPNPMapIncrementOffset>"
  (cl:let* ((signed (cl:slot-value msg 'parking_slot)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'speed_bump)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'trajectory_point)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LPNPMapIncrementOffset>) istream)
  "Deserializes a message object of type '<LPNPMapIncrementOffset>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parking_slot) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed_bump) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'trajectory_point) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LPNPMapIncrementOffset>)))
  "Returns string type for a message object of type '<LPNPMapIncrementOffset>"
  "system_manager_msgs/LPNPMapIncrementOffset")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LPNPMapIncrementOffset)))
  "Returns string type for a message object of type 'LPNPMapIncrementOffset"
  "system_manager_msgs/LPNPMapIncrementOffset")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LPNPMapIncrementOffset>)))
  "Returns md5sum for a message object of type '<LPNPMapIncrementOffset>"
  "cdb306b306f07d5632f2ea49e6101c24")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LPNPMapIncrementOffset)))
  "Returns md5sum for a message object of type 'LPNPMapIncrementOffset"
  "cdb306b306f07d5632f2ea49e6101c24")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LPNPMapIncrementOffset>)))
  "Returns full string definition for message of type '<LPNPMapIncrementOffset>"
  (cl:format cl:nil "int32 parking_slot~%int32 speed_bump~%int32 trajectory_point~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LPNPMapIncrementOffset)))
  "Returns full string definition for message of type 'LPNPMapIncrementOffset"
  (cl:format cl:nil "int32 parking_slot~%int32 speed_bump~%int32 trajectory_point~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LPNPMapIncrementOffset>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LPNPMapIncrementOffset>))
  "Converts a ROS message object to a list"
  (cl:list 'LPNPMapIncrementOffset
    (cl:cons ':parking_slot (parking_slot msg))
    (cl:cons ':speed_bump (speed_bump msg))
    (cl:cons ':trajectory_point (trajectory_point msg))
))
