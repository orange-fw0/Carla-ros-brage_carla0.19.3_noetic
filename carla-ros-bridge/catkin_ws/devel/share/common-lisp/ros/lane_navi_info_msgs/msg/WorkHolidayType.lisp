; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude WorkHolidayType.msg.html

(cl:defclass <WorkHolidayType> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WorkHolidayType (<WorkHolidayType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WorkHolidayType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WorkHolidayType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<WorkHolidayType> is deprecated: use lane_navi_info_msgs-msg:WorkHolidayType instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <WorkHolidayType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:type-val is deprecated.  Use lane_navi_info_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WorkHolidayType>)))
    "Constants for message type '<WorkHolidayType>"
  '((:WORKHOLIDAYTYPE_NONE . 0)
    (:WORKHOLIDAYTYPE_VALID . 1)
    (:WORKHOLIDAYTYPE_INVALID . 2)
    (:WORKHOLIDAYTYPE_WEEKEND . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WorkHolidayType)))
    "Constants for message type 'WorkHolidayType"
  '((:WORKHOLIDAYTYPE_NONE . 0)
    (:WORKHOLIDAYTYPE_VALID . 1)
    (:WORKHOLIDAYTYPE_INVALID . 2)
    (:WORKHOLIDAYTYPE_WEEKEND . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WorkHolidayType>) ostream)
  "Serializes a message object of type '<WorkHolidayType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WorkHolidayType>) istream)
  "Deserializes a message object of type '<WorkHolidayType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WorkHolidayType>)))
  "Returns string type for a message object of type '<WorkHolidayType>"
  "lane_navi_info_msgs/WorkHolidayType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WorkHolidayType)))
  "Returns string type for a message object of type 'WorkHolidayType"
  "lane_navi_info_msgs/WorkHolidayType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WorkHolidayType>)))
  "Returns md5sum for a message object of type '<WorkHolidayType>"
  "0a8f58778e15201357d7a171a57f38ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WorkHolidayType)))
  "Returns md5sum for a message object of type 'WorkHolidayType"
  "0a8f58778e15201357d7a171a57f38ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WorkHolidayType>)))
  "Returns full string definition for message of type '<WorkHolidayType>"
  (cl:format cl:nil "uint8 WORKHOLIDAYTYPE_NONE = 0~%uint8 WORKHOLIDAYTYPE_VALID = 1~%uint8 WORKHOLIDAYTYPE_INVALID = 2~%uint8 WORKHOLIDAYTYPE_WEEKEND = 3~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WorkHolidayType)))
  "Returns full string definition for message of type 'WorkHolidayType"
  (cl:format cl:nil "uint8 WORKHOLIDAYTYPE_NONE = 0~%uint8 WORKHOLIDAYTYPE_VALID = 1~%uint8 WORKHOLIDAYTYPE_INVALID = 2~%uint8 WORKHOLIDAYTYPE_WEEKEND = 3~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WorkHolidayType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WorkHolidayType>))
  "Converts a ROS message object to a list"
  (cl:list 'WorkHolidayType
    (cl:cons ':type (type msg))
))
