; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude ParkInInfo.msg.html

(cl:defclass <ParkInInfo> (roslisp-msg-protocol:ros-message)
  ((parkin_direction
    :reader parkin_direction
    :initarg :parkin_direction
    :type cl:integer
    :initform 0)
   (wlc_status
    :reader wlc_status
    :initarg :wlc_status
    :type planning_msgs-msg:WlcStatus
    :initform (cl:make-instance 'planning_msgs-msg:WlcStatus))
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:string
    :initform ""))
)

(cl:defclass ParkInInfo (<ParkInInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParkInInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParkInInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<ParkInInfo> is deprecated: use planning_msgs-msg:ParkInInfo instead.")))

(cl:ensure-generic-function 'parkin_direction-val :lambda-list '(m))
(cl:defmethod parkin_direction-val ((m <ParkInInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:parkin_direction-val is deprecated.  Use planning_msgs-msg:parkin_direction instead.")
  (parkin_direction m))

(cl:ensure-generic-function 'wlc_status-val :lambda-list '(m))
(cl:defmethod wlc_status-val ((m <ParkInInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:wlc_status-val is deprecated.  Use planning_msgs-msg:wlc_status instead.")
  (wlc_status m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <ParkInInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:reserved-val is deprecated.  Use planning_msgs-msg:reserved instead.")
  (reserved m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParkInInfo>) ostream)
  "Serializes a message object of type '<ParkInInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'parkin_direction)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'parkin_direction)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'parkin_direction)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'parkin_direction)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wlc_status) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParkInInfo>) istream)
  "Deserializes a message object of type '<ParkInInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'parkin_direction)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'parkin_direction)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'parkin_direction)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'parkin_direction)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wlc_status) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParkInInfo>)))
  "Returns string type for a message object of type '<ParkInInfo>"
  "planning_msgs/ParkInInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParkInInfo)))
  "Returns string type for a message object of type 'ParkInInfo"
  "planning_msgs/ParkInInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParkInInfo>)))
  "Returns md5sum for a message object of type '<ParkInInfo>"
  "db550575a6336f00e9add342260502d4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParkInInfo)))
  "Returns md5sum for a message object of type 'ParkInInfo"
  "db550575a6336f00e9add342260502d4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParkInInfo>)))
  "Returns full string definition for message of type '<ParkInInfo>"
  (cl:format cl:nil "uint32 parkin_direction~%planning_msgs/WlcStatus wlc_status~%string reserved~%~%================================================================================~%MSG: planning_msgs/WlcStatus~%uint32 NO_WLC = 0~%uint32 APPROACHING = 1~%uint32 APPROACHED = 2~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParkInInfo)))
  "Returns full string definition for message of type 'ParkInInfo"
  (cl:format cl:nil "uint32 parkin_direction~%planning_msgs/WlcStatus wlc_status~%string reserved~%~%================================================================================~%MSG: planning_msgs/WlcStatus~%uint32 NO_WLC = 0~%uint32 APPROACHING = 1~%uint32 APPROACHED = 2~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParkInInfo>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wlc_status))
     4 (cl:length (cl:slot-value msg 'reserved))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParkInInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'ParkInInfo
    (cl:cons ':parkin_direction (parkin_direction msg))
    (cl:cons ':wlc_status (wlc_status msg))
    (cl:cons ':reserved (reserved msg))
))
