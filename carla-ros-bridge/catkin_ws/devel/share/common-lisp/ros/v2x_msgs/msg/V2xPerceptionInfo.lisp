; Auto-generated. Do not edit!


(cl:in-package v2x_msgs-msg)


;//! \htmlinclude V2xPerceptionInfo.msg.html

(cl:defclass <V2xPerceptionInfo> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (v2x_perception_object
    :reader v2x_perception_object
    :initarg :v2x_perception_object
    :type (cl:vector v2x_msgs-msg:V2xPerceptionObject)
   :initform (cl:make-array 0 :element-type 'v2x_msgs-msg:V2xPerceptionObject :initial-element (cl:make-instance 'v2x_msgs-msg:V2xPerceptionObject))))
)

(cl:defclass V2xPerceptionInfo (<V2xPerceptionInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <V2xPerceptionInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'V2xPerceptionInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name v2x_msgs-msg:<V2xPerceptionInfo> is deprecated: use v2x_msgs-msg:V2xPerceptionInfo instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <V2xPerceptionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x_msgs-msg:available-val is deprecated.  Use v2x_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'v2x_perception_object-val :lambda-list '(m))
(cl:defmethod v2x_perception_object-val ((m <V2xPerceptionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x_msgs-msg:v2x_perception_object-val is deprecated.  Use v2x_msgs-msg:v2x_perception_object instead.")
  (v2x_perception_object m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<V2xPerceptionInfo>)))
    "Constants for message type '<V2xPerceptionInfo>"
  '((:V2X_PERCEPTION_OBJECT . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'V2xPerceptionInfo)))
    "Constants for message type 'V2xPerceptionInfo"
  '((:V2X_PERCEPTION_OBJECT . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <V2xPerceptionInfo>) ostream)
  "Serializes a message object of type '<V2xPerceptionInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'v2x_perception_object))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'v2x_perception_object))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <V2xPerceptionInfo>) istream)
  "Deserializes a message object of type '<V2xPerceptionInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'v2x_perception_object) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'v2x_perception_object)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'v2x_msgs-msg:V2xPerceptionObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<V2xPerceptionInfo>)))
  "Returns string type for a message object of type '<V2xPerceptionInfo>"
  "v2x_msgs/V2xPerceptionInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'V2xPerceptionInfo)))
  "Returns string type for a message object of type 'V2xPerceptionInfo"
  "v2x_msgs/V2xPerceptionInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<V2xPerceptionInfo>)))
  "Returns md5sum for a message object of type '<V2xPerceptionInfo>"
  "3a147861573f52ac4a82123b87cb1ba5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'V2xPerceptionInfo)))
  "Returns md5sum for a message object of type 'V2xPerceptionInfo"
  "3a147861573f52ac4a82123b87cb1ba5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<V2xPerceptionInfo>)))
  "Returns full string definition for message of type '<V2xPerceptionInfo>"
  (cl:format cl:nil "uint8 V2X_PERCEPTION_OBJECT = 1~%uint8 available~%v2x_msgs/V2xPerceptionObject[] v2x_perception_object~%~%================================================================================~%MSG: v2x_msgs/V2xPerceptionObject~%v2x_msgs/V2xPerceptionObjectType type~%float64 longitude~%float64 latitude~%float64 elevation~%float64 speed~%float64 heading~%float64 width~%float64 length~%float64 height~%~%================================================================================~%MSG: v2x_msgs/V2xPerceptionObjectType~%uint32 UNKNOWN = 0~%uint32 PEDESTRIAN = 1~%uint32 NON_MOTOR = 2~%uint32 MOTOR = 3~%uint32 OTHER = 4~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'V2xPerceptionInfo)))
  "Returns full string definition for message of type 'V2xPerceptionInfo"
  (cl:format cl:nil "uint8 V2X_PERCEPTION_OBJECT = 1~%uint8 available~%v2x_msgs/V2xPerceptionObject[] v2x_perception_object~%~%================================================================================~%MSG: v2x_msgs/V2xPerceptionObject~%v2x_msgs/V2xPerceptionObjectType type~%float64 longitude~%float64 latitude~%float64 elevation~%float64 speed~%float64 heading~%float64 width~%float64 length~%float64 height~%~%================================================================================~%MSG: v2x_msgs/V2xPerceptionObjectType~%uint32 UNKNOWN = 0~%uint32 PEDESTRIAN = 1~%uint32 NON_MOTOR = 2~%uint32 MOTOR = 3~%uint32 OTHER = 4~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <V2xPerceptionInfo>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'v2x_perception_object) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <V2xPerceptionInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'V2xPerceptionInfo
    (cl:cons ':available (available msg))
    (cl:cons ':v2x_perception_object (v2x_perception_object msg))
))
