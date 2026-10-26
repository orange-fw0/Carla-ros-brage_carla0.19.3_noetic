; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude TimeOfDay.msg.html

(cl:defclass <TimeOfDay> (roslisp-msg-protocol:ros-message)
  ((hours
    :reader hours
    :initarg :hours
    :type cl:fixnum
    :initform 0)
   (minutes
    :reader minutes
    :initarg :minutes
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TimeOfDay (<TimeOfDay>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TimeOfDay>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TimeOfDay)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<TimeOfDay> is deprecated: use lane_navi_info_msgs-msg:TimeOfDay instead.")))

(cl:ensure-generic-function 'hours-val :lambda-list '(m))
(cl:defmethod hours-val ((m <TimeOfDay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:hours-val is deprecated.  Use lane_navi_info_msgs-msg:hours instead.")
  (hours m))

(cl:ensure-generic-function 'minutes-val :lambda-list '(m))
(cl:defmethod minutes-val ((m <TimeOfDay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:minutes-val is deprecated.  Use lane_navi_info_msgs-msg:minutes instead.")
  (minutes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TimeOfDay>) ostream)
  "Serializes a message object of type '<TimeOfDay>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hours)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'minutes)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TimeOfDay>) istream)
  "Deserializes a message object of type '<TimeOfDay>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hours)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'minutes)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TimeOfDay>)))
  "Returns string type for a message object of type '<TimeOfDay>"
  "lane_navi_info_msgs/TimeOfDay")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TimeOfDay)))
  "Returns string type for a message object of type 'TimeOfDay"
  "lane_navi_info_msgs/TimeOfDay")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TimeOfDay>)))
  "Returns md5sum for a message object of type '<TimeOfDay>"
  "85e50a6bb0fc8b267a30544fb5165be0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TimeOfDay)))
  "Returns md5sum for a message object of type 'TimeOfDay"
  "85e50a6bb0fc8b267a30544fb5165be0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TimeOfDay>)))
  "Returns full string definition for message of type '<TimeOfDay>"
  (cl:format cl:nil "uint8 hours~%uint8 minutes~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TimeOfDay)))
  "Returns full string definition for message of type 'TimeOfDay"
  (cl:format cl:nil "uint8 hours~%uint8 minutes~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TimeOfDay>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TimeOfDay>))
  "Converts a ROS message object to a list"
  (cl:list 'TimeOfDay
    (cl:cons ':hours (hours msg))
    (cl:cons ':minutes (minutes msg))
))
