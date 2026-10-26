; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude DaysOfWeekType.msg.html

(cl:defclass <DaysOfWeekType> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DaysOfWeekType (<DaysOfWeekType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DaysOfWeekType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DaysOfWeekType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<DaysOfWeekType> is deprecated: use lane_navi_info_msgs-msg:DaysOfWeekType instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <DaysOfWeekType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:type-val is deprecated.  Use lane_navi_info_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DaysOfWeekType>)))
    "Constants for message type '<DaysOfWeekType>"
  '((:DAYSOFWEEKTYPE_INVALID . 0)
    (:DAYSOFWEEKTYPE_SUNDAY . 1)
    (:DAYSOFWEEKTYPE_MONDAY . 2)
    (:DAYSOFWEEKTYPE_TUESDAY . 3)
    (:DAYSOFWEEKTYPE_WEDNESDAY . 4)
    (:DAYSOFWEEKTYPE_THURSDAY . 5)
    (:DAYSOFWEEKTYPE_FRIDAY . 6)
    (:DAYSOFWEEKTYPE_SATURDAY . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DaysOfWeekType)))
    "Constants for message type 'DaysOfWeekType"
  '((:DAYSOFWEEKTYPE_INVALID . 0)
    (:DAYSOFWEEKTYPE_SUNDAY . 1)
    (:DAYSOFWEEKTYPE_MONDAY . 2)
    (:DAYSOFWEEKTYPE_TUESDAY . 3)
    (:DAYSOFWEEKTYPE_WEDNESDAY . 4)
    (:DAYSOFWEEKTYPE_THURSDAY . 5)
    (:DAYSOFWEEKTYPE_FRIDAY . 6)
    (:DAYSOFWEEKTYPE_SATURDAY . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DaysOfWeekType>) ostream)
  "Serializes a message object of type '<DaysOfWeekType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DaysOfWeekType>) istream)
  "Deserializes a message object of type '<DaysOfWeekType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DaysOfWeekType>)))
  "Returns string type for a message object of type '<DaysOfWeekType>"
  "lane_navi_info_msgs/DaysOfWeekType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DaysOfWeekType)))
  "Returns string type for a message object of type 'DaysOfWeekType"
  "lane_navi_info_msgs/DaysOfWeekType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DaysOfWeekType>)))
  "Returns md5sum for a message object of type '<DaysOfWeekType>"
  "f2cb84d546f7ff966764d161e0c65525")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DaysOfWeekType)))
  "Returns md5sum for a message object of type 'DaysOfWeekType"
  "f2cb84d546f7ff966764d161e0c65525")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DaysOfWeekType>)))
  "Returns full string definition for message of type '<DaysOfWeekType>"
  (cl:format cl:nil "uint8 DAYSOFWEEKTYPE_INVALID = 0~%uint8 DAYSOFWEEKTYPE_SUNDAY = 1~%uint8 DAYSOFWEEKTYPE_MONDAY = 2~%uint8 DAYSOFWEEKTYPE_TUESDAY = 3~%uint8 DAYSOFWEEKTYPE_WEDNESDAY = 4~%uint8 DAYSOFWEEKTYPE_THURSDAY = 5~%uint8 DAYSOFWEEKTYPE_FRIDAY = 6~%uint8 DAYSOFWEEKTYPE_SATURDAY = 7~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DaysOfWeekType)))
  "Returns full string definition for message of type 'DaysOfWeekType"
  (cl:format cl:nil "uint8 DAYSOFWEEKTYPE_INVALID = 0~%uint8 DAYSOFWEEKTYPE_SUNDAY = 1~%uint8 DAYSOFWEEKTYPE_MONDAY = 2~%uint8 DAYSOFWEEKTYPE_TUESDAY = 3~%uint8 DAYSOFWEEKTYPE_WEDNESDAY = 4~%uint8 DAYSOFWEEKTYPE_THURSDAY = 5~%uint8 DAYSOFWEEKTYPE_FRIDAY = 6~%uint8 DAYSOFWEEKTYPE_SATURDAY = 7~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DaysOfWeekType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DaysOfWeekType>))
  "Converts a ROS message object to a list"
  (cl:list 'DaysOfWeekType
    (cl:cons ':type (type msg))
))
