; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude TimeRangeOfDay.msg.html

(cl:defclass <TimeRangeOfDay> (roslisp-msg-protocol:ros-message)
  ((start_time
    :reader start_time
    :initarg :start_time
    :type lane_navi_info_msgs-msg:TimeOfDay
    :initform (cl:make-instance 'lane_navi_info_msgs-msg:TimeOfDay))
   (end_time
    :reader end_time
    :initarg :end_time
    :type lane_navi_info_msgs-msg:TimeOfDay
    :initform (cl:make-instance 'lane_navi_info_msgs-msg:TimeOfDay))
   (is_limited
    :reader is_limited
    :initarg :is_limited
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TimeRangeOfDay (<TimeRangeOfDay>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TimeRangeOfDay>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TimeRangeOfDay)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<TimeRangeOfDay> is deprecated: use lane_navi_info_msgs-msg:TimeRangeOfDay instead.")))

(cl:ensure-generic-function 'start_time-val :lambda-list '(m))
(cl:defmethod start_time-val ((m <TimeRangeOfDay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:start_time-val is deprecated.  Use lane_navi_info_msgs-msg:start_time instead.")
  (start_time m))

(cl:ensure-generic-function 'end_time-val :lambda-list '(m))
(cl:defmethod end_time-val ((m <TimeRangeOfDay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:end_time-val is deprecated.  Use lane_navi_info_msgs-msg:end_time instead.")
  (end_time m))

(cl:ensure-generic-function 'is_limited-val :lambda-list '(m))
(cl:defmethod is_limited-val ((m <TimeRangeOfDay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:is_limited-val is deprecated.  Use lane_navi_info_msgs-msg:is_limited instead.")
  (is_limited m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TimeRangeOfDay>) ostream)
  "Serializes a message object of type '<TimeRangeOfDay>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start_time) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'end_time) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_limited) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TimeRangeOfDay>) istream)
  "Deserializes a message object of type '<TimeRangeOfDay>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start_time) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'end_time) istream)
    (cl:setf (cl:slot-value msg 'is_limited) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TimeRangeOfDay>)))
  "Returns string type for a message object of type '<TimeRangeOfDay>"
  "lane_navi_info_msgs/TimeRangeOfDay")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TimeRangeOfDay)))
  "Returns string type for a message object of type 'TimeRangeOfDay"
  "lane_navi_info_msgs/TimeRangeOfDay")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TimeRangeOfDay>)))
  "Returns md5sum for a message object of type '<TimeRangeOfDay>"
  "d64816f00386664350bca76cedc111ff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TimeRangeOfDay)))
  "Returns md5sum for a message object of type 'TimeRangeOfDay"
  "d64816f00386664350bca76cedc111ff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TimeRangeOfDay>)))
  "Returns full string definition for message of type '<TimeRangeOfDay>"
  (cl:format cl:nil "lane_navi_info_msgs/TimeOfDay start_time~%lane_navi_info_msgs/TimeOfDay end_time~%bool is_limited~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeOfDay~%uint8 hours~%uint8 minutes~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TimeRangeOfDay)))
  "Returns full string definition for message of type 'TimeRangeOfDay"
  (cl:format cl:nil "lane_navi_info_msgs/TimeOfDay start_time~%lane_navi_info_msgs/TimeOfDay end_time~%bool is_limited~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeOfDay~%uint8 hours~%uint8 minutes~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TimeRangeOfDay>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start_time))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'end_time))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TimeRangeOfDay>))
  "Converts a ROS message object to a list"
  (cl:list 'TimeRangeOfDay
    (cl:cons ':start_time (start_time msg))
    (cl:cons ':end_time (end_time msg))
    (cl:cons ':is_limited (is_limited msg))
))
