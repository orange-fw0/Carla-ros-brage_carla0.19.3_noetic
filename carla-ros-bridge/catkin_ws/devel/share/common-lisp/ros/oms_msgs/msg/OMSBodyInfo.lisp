; Auto-generated. Do not edit!


(cl:in-package oms_msgs-msg)


;//! \htmlinclude OMSBodyInfo.msg.html

(cl:defclass <OMSBodyInfo> (roslisp-msg-protocol:ros-message)
  ((seat_id
    :reader seat_id
    :initarg :seat_id
    :type cl:fixnum
    :initform 0)
   (body_det_result
    :reader body_det_result
    :initarg :body_det_result
    :type oms_msgs-msg:OMSBodyDetResult
    :initform (cl:make-instance 'oms_msgs-msg:OMSBodyDetResult))
   (seatbelt_status
    :reader seatbelt_status
    :initarg :seatbelt_status
    :type oms_msgs-msg:OMSSeatBeltStatus
    :initform (cl:make-instance 'oms_msgs-msg:OMSSeatBeltStatus))
   (age_cls_result
    :reader age_cls_result
    :initarg :age_cls_result
    :type oms_msgs-msg:OMSAgeGroup
    :initform (cl:make-instance 'oms_msgs-msg:OMSAgeGroup))
   (body_event_info
    :reader body_event_info
    :initarg :body_event_info
    :type oms_msgs-msg:OMSBodyEventInfo
    :initform (cl:make-instance 'oms_msgs-msg:OMSBodyEventInfo)))
)

(cl:defclass OMSBodyInfo (<OMSBodyInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OMSBodyInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OMSBodyInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name oms_msgs-msg:<OMSBodyInfo> is deprecated: use oms_msgs-msg:OMSBodyInfo instead.")))

(cl:ensure-generic-function 'seat_id-val :lambda-list '(m))
(cl:defmethod seat_id-val ((m <OMSBodyInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:seat_id-val is deprecated.  Use oms_msgs-msg:seat_id instead.")
  (seat_id m))

(cl:ensure-generic-function 'body_det_result-val :lambda-list '(m))
(cl:defmethod body_det_result-val ((m <OMSBodyInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:body_det_result-val is deprecated.  Use oms_msgs-msg:body_det_result instead.")
  (body_det_result m))

(cl:ensure-generic-function 'seatbelt_status-val :lambda-list '(m))
(cl:defmethod seatbelt_status-val ((m <OMSBodyInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:seatbelt_status-val is deprecated.  Use oms_msgs-msg:seatbelt_status instead.")
  (seatbelt_status m))

(cl:ensure-generic-function 'age_cls_result-val :lambda-list '(m))
(cl:defmethod age_cls_result-val ((m <OMSBodyInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:age_cls_result-val is deprecated.  Use oms_msgs-msg:age_cls_result instead.")
  (age_cls_result m))

(cl:ensure-generic-function 'body_event_info-val :lambda-list '(m))
(cl:defmethod body_event_info-val ((m <OMSBodyInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:body_event_info-val is deprecated.  Use oms_msgs-msg:body_event_info instead.")
  (body_event_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OMSBodyInfo>) ostream)
  "Serializes a message object of type '<OMSBodyInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seat_id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'body_det_result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'seatbelt_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'age_cls_result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'body_event_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OMSBodyInfo>) istream)
  "Deserializes a message object of type '<OMSBodyInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seat_id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'body_det_result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'seatbelt_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'age_cls_result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'body_event_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OMSBodyInfo>)))
  "Returns string type for a message object of type '<OMSBodyInfo>"
  "oms_msgs/OMSBodyInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OMSBodyInfo)))
  "Returns string type for a message object of type 'OMSBodyInfo"
  "oms_msgs/OMSBodyInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OMSBodyInfo>)))
  "Returns md5sum for a message object of type '<OMSBodyInfo>"
  "1dfe137d0f785f9f6b93ddebcb9299ee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OMSBodyInfo)))
  "Returns md5sum for a message object of type 'OMSBodyInfo"
  "1dfe137d0f785f9f6b93ddebcb9299ee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OMSBodyInfo>)))
  "Returns full string definition for message of type '<OMSBodyInfo>"
  (cl:format cl:nil "uint8 seat_id~%oms_msgs/OMSBodyDetResult body_det_result~%oms_msgs/OMSSeatBeltStatus seatbelt_status~%oms_msgs/OMSAgeGroup age_cls_result~%oms_msgs/OMSBodyEventInfo body_event_info~%~%================================================================================~%MSG: oms_msgs/OMSBodyDetResult~%uint8 UNAVAILABLE = 0~%uint8 AVAILABLE = 1~%uint8 UNCERTAIN = 2~%uint8 value~%oms_msgs/OMSRect2f body_rect~%oms_msgs/OMSPoint2f[] body_keypoints~%~%================================================================================~%MSG: oms_msgs/OMSRect2f~%float32 left~%float32 top~%float32 right~%float32 bottom~%float32 score~%~%================================================================================~%MSG: oms_msgs/OMSPoint2f~%float32 x~%float32 y~%float32 score~%~%================================================================================~%MSG: oms_msgs/OMSSeatBeltStatus~%uint8 UNAVAILABLE = 0~%uint8 BUCKLE_UP = 1~%uint8 UNBUCKLE = 2~%uint8 UNCERTAIN = 3~%uint8 value~%float32 score~%~%================================================================================~%MSG: oms_msgs/OMSAgeGroup~%uint8 UNAVAILABLE = 0~%uint8 BABY = 1~%uint8 CHILD = 2~%uint8 YOUTH = 3~%uint8 OLD = 4~%uint8 UNCERTAIN = 5~%uint8 value~%float32 score~%~%================================================================================~%MSG: oms_msgs/OMSBodyEventInfo~%uint8 UNAVAILABLE = 0~%uint8 HAND_OUT_OF_WINDOW = 1~%uint8 BODY_LEAVING_THE_SEAT = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 RESERVED4 = 6~%uint8 RESERVED5 = 7~%uint8 UNCERTAIN = 8~%uint8 value~%float32 score~%uint64 start_time~%uint64 end_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OMSBodyInfo)))
  "Returns full string definition for message of type 'OMSBodyInfo"
  (cl:format cl:nil "uint8 seat_id~%oms_msgs/OMSBodyDetResult body_det_result~%oms_msgs/OMSSeatBeltStatus seatbelt_status~%oms_msgs/OMSAgeGroup age_cls_result~%oms_msgs/OMSBodyEventInfo body_event_info~%~%================================================================================~%MSG: oms_msgs/OMSBodyDetResult~%uint8 UNAVAILABLE = 0~%uint8 AVAILABLE = 1~%uint8 UNCERTAIN = 2~%uint8 value~%oms_msgs/OMSRect2f body_rect~%oms_msgs/OMSPoint2f[] body_keypoints~%~%================================================================================~%MSG: oms_msgs/OMSRect2f~%float32 left~%float32 top~%float32 right~%float32 bottom~%float32 score~%~%================================================================================~%MSG: oms_msgs/OMSPoint2f~%float32 x~%float32 y~%float32 score~%~%================================================================================~%MSG: oms_msgs/OMSSeatBeltStatus~%uint8 UNAVAILABLE = 0~%uint8 BUCKLE_UP = 1~%uint8 UNBUCKLE = 2~%uint8 UNCERTAIN = 3~%uint8 value~%float32 score~%~%================================================================================~%MSG: oms_msgs/OMSAgeGroup~%uint8 UNAVAILABLE = 0~%uint8 BABY = 1~%uint8 CHILD = 2~%uint8 YOUTH = 3~%uint8 OLD = 4~%uint8 UNCERTAIN = 5~%uint8 value~%float32 score~%~%================================================================================~%MSG: oms_msgs/OMSBodyEventInfo~%uint8 UNAVAILABLE = 0~%uint8 HAND_OUT_OF_WINDOW = 1~%uint8 BODY_LEAVING_THE_SEAT = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 RESERVED4 = 6~%uint8 RESERVED5 = 7~%uint8 UNCERTAIN = 8~%uint8 value~%float32 score~%uint64 start_time~%uint64 end_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OMSBodyInfo>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'body_det_result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'seatbelt_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'age_cls_result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'body_event_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OMSBodyInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'OMSBodyInfo
    (cl:cons ':seat_id (seat_id msg))
    (cl:cons ':body_det_result (body_det_result msg))
    (cl:cons ':seatbelt_status (seatbelt_status msg))
    (cl:cons ':age_cls_result (age_cls_result msg))
    (cl:cons ':body_event_info (body_event_info msg))
))
