; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude ExperienceSpeedLimit.msg.html

(cl:defclass <ExperienceSpeedLimit> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0)
   (start_offset
    :reader start_offset
    :initarg :start_offset
    :type cl:float
    :initform 0.0)
   (end_offset
    :reader end_offset
    :initarg :end_offset
    :type cl:float
    :initform 0.0))
)

(cl:defclass ExperienceSpeedLimit (<ExperienceSpeedLimit>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExperienceSpeedLimit>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExperienceSpeedLimit)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<ExperienceSpeedLimit> is deprecated: use lane_navi_info_msgs-msg:ExperienceSpeedLimit instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ExperienceSpeedLimit>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:value-val is deprecated.  Use lane_navi_info_msgs-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'start_offset-val :lambda-list '(m))
(cl:defmethod start_offset-val ((m <ExperienceSpeedLimit>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:start_offset-val is deprecated.  Use lane_navi_info_msgs-msg:start_offset instead.")
  (start_offset m))

(cl:ensure-generic-function 'end_offset-val :lambda-list '(m))
(cl:defmethod end_offset-val ((m <ExperienceSpeedLimit>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:end_offset-val is deprecated.  Use lane_navi_info_msgs-msg:end_offset instead.")
  (end_offset m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExperienceSpeedLimit>) ostream)
  "Serializes a message object of type '<ExperienceSpeedLimit>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'start_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'end_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExperienceSpeedLimit>) istream)
  "Deserializes a message object of type '<ExperienceSpeedLimit>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'start_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'end_offset) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExperienceSpeedLimit>)))
  "Returns string type for a message object of type '<ExperienceSpeedLimit>"
  "lane_navi_info_msgs/ExperienceSpeedLimit")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExperienceSpeedLimit)))
  "Returns string type for a message object of type 'ExperienceSpeedLimit"
  "lane_navi_info_msgs/ExperienceSpeedLimit")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExperienceSpeedLimit>)))
  "Returns md5sum for a message object of type '<ExperienceSpeedLimit>"
  "a25db3d350bed68cde4e8e7d8a7687ea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExperienceSpeedLimit)))
  "Returns md5sum for a message object of type 'ExperienceSpeedLimit"
  "a25db3d350bed68cde4e8e7d8a7687ea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExperienceSpeedLimit>)))
  "Returns full string definition for message of type '<ExperienceSpeedLimit>"
  (cl:format cl:nil "float32 value~%float32 start_offset~%float32 end_offset~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExperienceSpeedLimit)))
  "Returns full string definition for message of type 'ExperienceSpeedLimit"
  (cl:format cl:nil "float32 value~%float32 start_offset~%float32 end_offset~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExperienceSpeedLimit>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExperienceSpeedLimit>))
  "Converts a ROS message object to a list"
  (cl:list 'ExperienceSpeedLimit
    (cl:cons ':value (value msg))
    (cl:cons ':start_offset (start_offset msg))
    (cl:cons ':end_offset (end_offset msg))
))
