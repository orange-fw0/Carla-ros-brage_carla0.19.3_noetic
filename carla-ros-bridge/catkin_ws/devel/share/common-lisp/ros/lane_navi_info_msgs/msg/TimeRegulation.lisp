; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude TimeRegulation.msg.html

(cl:defclass <TimeRegulation> (roslisp-msg-protocol:ros-message)
  ((day
    :reader day
    :initarg :day
    :type lane_navi_info_msgs-msg:TimeOfDay
    :initform (cl:make-instance 'lane_navi_info_msgs-msg:TimeOfDay))
   (week
    :reader week
    :initarg :week
    :type cl:fixnum
    :initform 0)
   (year
    :reader year
    :initarg :year
    :type lane_navi_info_msgs-msg:DayOfYear
    :initform (cl:make-instance 'lane_navi_info_msgs-msg:DayOfYear)))
)

(cl:defclass TimeRegulation (<TimeRegulation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TimeRegulation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TimeRegulation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<TimeRegulation> is deprecated: use lane_navi_info_msgs-msg:TimeRegulation instead.")))

(cl:ensure-generic-function 'day-val :lambda-list '(m))
(cl:defmethod day-val ((m <TimeRegulation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:day-val is deprecated.  Use lane_navi_info_msgs-msg:day instead.")
  (day m))

(cl:ensure-generic-function 'week-val :lambda-list '(m))
(cl:defmethod week-val ((m <TimeRegulation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:week-val is deprecated.  Use lane_navi_info_msgs-msg:week instead.")
  (week m))

(cl:ensure-generic-function 'year-val :lambda-list '(m))
(cl:defmethod year-val ((m <TimeRegulation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:year-val is deprecated.  Use lane_navi_info_msgs-msg:year instead.")
  (year m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TimeRegulation>) ostream)
  "Serializes a message object of type '<TimeRegulation>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'day) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'week)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'year) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TimeRegulation>) istream)
  "Deserializes a message object of type '<TimeRegulation>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'day) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'week)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'year) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TimeRegulation>)))
  "Returns string type for a message object of type '<TimeRegulation>"
  "lane_navi_info_msgs/TimeRegulation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TimeRegulation)))
  "Returns string type for a message object of type 'TimeRegulation"
  "lane_navi_info_msgs/TimeRegulation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TimeRegulation>)))
  "Returns md5sum for a message object of type '<TimeRegulation>"
  "0bdaa79b298433721a197fa7c89ea150")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TimeRegulation)))
  "Returns md5sum for a message object of type 'TimeRegulation"
  "0bdaa79b298433721a197fa7c89ea150")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TimeRegulation>)))
  "Returns full string definition for message of type '<TimeRegulation>"
  (cl:format cl:nil "lane_navi_info_msgs/TimeOfDay day~%uint8 week~%lane_navi_info_msgs/DayOfYear year~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeOfDay~%uint8 hours~%uint8 minutes~%~%================================================================================~%MSG: lane_navi_info_msgs/DayOfYear~%uint16 year~%uint8 month~%uint8 day~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TimeRegulation)))
  "Returns full string definition for message of type 'TimeRegulation"
  (cl:format cl:nil "lane_navi_info_msgs/TimeOfDay day~%uint8 week~%lane_navi_info_msgs/DayOfYear year~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeOfDay~%uint8 hours~%uint8 minutes~%~%================================================================================~%MSG: lane_navi_info_msgs/DayOfYear~%uint16 year~%uint8 month~%uint8 day~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TimeRegulation>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'day))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'year))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TimeRegulation>))
  "Converts a ROS message object to a list"
  (cl:list 'TimeRegulation
    (cl:cons ':day (day msg))
    (cl:cons ':week (week msg))
    (cl:cons ':year (year msg))
))
