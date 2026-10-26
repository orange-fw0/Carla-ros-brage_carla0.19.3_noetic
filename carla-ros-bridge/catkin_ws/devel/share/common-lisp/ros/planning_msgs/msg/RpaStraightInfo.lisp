; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude RpaStraightInfo.msg.html

(cl:defclass <RpaStraightInfo> (roslisp-msg-protocol:ros-message)
  ((forward_distance
    :reader forward_distance
    :initarg :forward_distance
    :type cl:float
    :initform 0.0)
   (backward_distance
    :reader backward_distance
    :initarg :backward_distance
    :type cl:float
    :initform 0.0)
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:string
    :initform ""))
)

(cl:defclass RpaStraightInfo (<RpaStraightInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RpaStraightInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RpaStraightInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<RpaStraightInfo> is deprecated: use planning_msgs-msg:RpaStraightInfo instead.")))

(cl:ensure-generic-function 'forward_distance-val :lambda-list '(m))
(cl:defmethod forward_distance-val ((m <RpaStraightInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:forward_distance-val is deprecated.  Use planning_msgs-msg:forward_distance instead.")
  (forward_distance m))

(cl:ensure-generic-function 'backward_distance-val :lambda-list '(m))
(cl:defmethod backward_distance-val ((m <RpaStraightInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:backward_distance-val is deprecated.  Use planning_msgs-msg:backward_distance instead.")
  (backward_distance m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <RpaStraightInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:reserved-val is deprecated.  Use planning_msgs-msg:reserved instead.")
  (reserved m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RpaStraightInfo>) ostream)
  "Serializes a message object of type '<RpaStraightInfo>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'forward_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'backward_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RpaStraightInfo>) istream)
  "Deserializes a message object of type '<RpaStraightInfo>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'forward_distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'backward_distance) (roslisp-utils:decode-single-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RpaStraightInfo>)))
  "Returns string type for a message object of type '<RpaStraightInfo>"
  "planning_msgs/RpaStraightInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RpaStraightInfo)))
  "Returns string type for a message object of type 'RpaStraightInfo"
  "planning_msgs/RpaStraightInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RpaStraightInfo>)))
  "Returns md5sum for a message object of type '<RpaStraightInfo>"
  "70c1a54230781c274779bd2179bf4210")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RpaStraightInfo)))
  "Returns md5sum for a message object of type 'RpaStraightInfo"
  "70c1a54230781c274779bd2179bf4210")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RpaStraightInfo>)))
  "Returns full string definition for message of type '<RpaStraightInfo>"
  (cl:format cl:nil "float32 forward_distance~%float32 backward_distance~%string reserved~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RpaStraightInfo)))
  "Returns full string definition for message of type 'RpaStraightInfo"
  (cl:format cl:nil "float32 forward_distance~%float32 backward_distance~%string reserved~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RpaStraightInfo>))
  (cl:+ 0
     4
     4
     4 (cl:length (cl:slot-value msg 'reserved))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RpaStraightInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'RpaStraightInfo
    (cl:cons ':forward_distance (forward_distance msg))
    (cl:cons ':backward_distance (backward_distance msg))
    (cl:cons ':reserved (reserved msg))
))
