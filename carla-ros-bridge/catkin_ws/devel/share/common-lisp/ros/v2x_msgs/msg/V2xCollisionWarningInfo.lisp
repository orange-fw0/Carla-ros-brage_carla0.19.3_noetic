; Auto-generated. Do not edit!


(cl:in-package v2x_msgs-msg)


;//! \htmlinclude V2xCollisionWarningInfo.msg.html

(cl:defclass <V2xCollisionWarningInfo> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (v2x_collision_warning_data
    :reader v2x_collision_warning_data
    :initarg :v2x_collision_warning_data
    :type v2x_msgs-msg:V2xCollisionWarningData
    :initform (cl:make-instance 'v2x_msgs-msg:V2xCollisionWarningData)))
)

(cl:defclass V2xCollisionWarningInfo (<V2xCollisionWarningInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <V2xCollisionWarningInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'V2xCollisionWarningInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name v2x_msgs-msg:<V2xCollisionWarningInfo> is deprecated: use v2x_msgs-msg:V2xCollisionWarningInfo instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <V2xCollisionWarningInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x_msgs-msg:available-val is deprecated.  Use v2x_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'v2x_collision_warning_data-val :lambda-list '(m))
(cl:defmethod v2x_collision_warning_data-val ((m <V2xCollisionWarningInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x_msgs-msg:v2x_collision_warning_data-val is deprecated.  Use v2x_msgs-msg:v2x_collision_warning_data instead.")
  (v2x_collision_warning_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<V2xCollisionWarningInfo>)))
    "Constants for message type '<V2xCollisionWarningInfo>"
  '((:V2X_COLLISION_WARNING_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'V2xCollisionWarningInfo)))
    "Constants for message type 'V2xCollisionWarningInfo"
  '((:V2X_COLLISION_WARNING_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <V2xCollisionWarningInfo>) ostream)
  "Serializes a message object of type '<V2xCollisionWarningInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'v2x_collision_warning_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <V2xCollisionWarningInfo>) istream)
  "Deserializes a message object of type '<V2xCollisionWarningInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'v2x_collision_warning_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<V2xCollisionWarningInfo>)))
  "Returns string type for a message object of type '<V2xCollisionWarningInfo>"
  "v2x_msgs/V2xCollisionWarningInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'V2xCollisionWarningInfo)))
  "Returns string type for a message object of type 'V2xCollisionWarningInfo"
  "v2x_msgs/V2xCollisionWarningInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<V2xCollisionWarningInfo>)))
  "Returns md5sum for a message object of type '<V2xCollisionWarningInfo>"
  "bc9c0babfcfa3077953b61f3ac92e573")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'V2xCollisionWarningInfo)))
  "Returns md5sum for a message object of type 'V2xCollisionWarningInfo"
  "bc9c0babfcfa3077953b61f3ac92e573")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<V2xCollisionWarningInfo>)))
  "Returns full string definition for message of type '<V2xCollisionWarningInfo>"
  (cl:format cl:nil "uint8 V2X_COLLISION_WARNING_DATA = 1~%uint8 available~%v2x_msgs/V2xCollisionWarningData v2x_collision_warning_data~%~%================================================================================~%MSG: v2x_msgs/V2xCollisionWarningData~%int32[] id~%string warning~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'V2xCollisionWarningInfo)))
  "Returns full string definition for message of type 'V2xCollisionWarningInfo"
  (cl:format cl:nil "uint8 V2X_COLLISION_WARNING_DATA = 1~%uint8 available~%v2x_msgs/V2xCollisionWarningData v2x_collision_warning_data~%~%================================================================================~%MSG: v2x_msgs/V2xCollisionWarningData~%int32[] id~%string warning~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <V2xCollisionWarningInfo>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'v2x_collision_warning_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <V2xCollisionWarningInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'V2xCollisionWarningInfo
    (cl:cons ':available (available msg))
    (cl:cons ':v2x_collision_warning_data (v2x_collision_warning_data msg))
))
