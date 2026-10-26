; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude DayOfYear.msg.html

(cl:defclass <DayOfYear> (roslisp-msg-protocol:ros-message)
  ((year
    :reader year
    :initarg :year
    :type cl:fixnum
    :initform 0)
   (month
    :reader month
    :initarg :month
    :type cl:fixnum
    :initform 0)
   (day
    :reader day
    :initarg :day
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DayOfYear (<DayOfYear>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DayOfYear>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DayOfYear)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<DayOfYear> is deprecated: use lane_navi_info_msgs-msg:DayOfYear instead.")))

(cl:ensure-generic-function 'year-val :lambda-list '(m))
(cl:defmethod year-val ((m <DayOfYear>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:year-val is deprecated.  Use lane_navi_info_msgs-msg:year instead.")
  (year m))

(cl:ensure-generic-function 'month-val :lambda-list '(m))
(cl:defmethod month-val ((m <DayOfYear>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:month-val is deprecated.  Use lane_navi_info_msgs-msg:month instead.")
  (month m))

(cl:ensure-generic-function 'day-val :lambda-list '(m))
(cl:defmethod day-val ((m <DayOfYear>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:day-val is deprecated.  Use lane_navi_info_msgs-msg:day instead.")
  (day m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DayOfYear>) ostream)
  "Serializes a message object of type '<DayOfYear>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'year)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'year)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'month)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'day)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DayOfYear>) istream)
  "Deserializes a message object of type '<DayOfYear>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'year)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'year)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'month)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'day)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DayOfYear>)))
  "Returns string type for a message object of type '<DayOfYear>"
  "lane_navi_info_msgs/DayOfYear")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DayOfYear)))
  "Returns string type for a message object of type 'DayOfYear"
  "lane_navi_info_msgs/DayOfYear")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DayOfYear>)))
  "Returns md5sum for a message object of type '<DayOfYear>"
  "d49dd6ce1e6cb85b55fcf076e56f5636")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DayOfYear)))
  "Returns md5sum for a message object of type 'DayOfYear"
  "d49dd6ce1e6cb85b55fcf076e56f5636")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DayOfYear>)))
  "Returns full string definition for message of type '<DayOfYear>"
  (cl:format cl:nil "uint16 year~%uint8 month~%uint8 day~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DayOfYear)))
  "Returns full string definition for message of type 'DayOfYear"
  (cl:format cl:nil "uint16 year~%uint8 month~%uint8 day~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DayOfYear>))
  (cl:+ 0
     2
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DayOfYear>))
  "Converts a ROS message object to a list"
  (cl:list 'DayOfYear
    (cl:cons ':year (year msg))
    (cl:cons ':month (month msg))
    (cl:cons ':day (day msg))
))
