; Auto-generated. Do not edit!


(cl:in-package oms_msgs-msg)


;//! \htmlinclude OMSBodyProperty.msg.html

(cl:defclass <OMSBodyProperty> (roslisp-msg-protocol:ros-message)
  ((det_roi
    :reader det_roi
    :initarg :det_roi
    :type (cl:vector oms_msgs-msg:OMSRect2f)
   :initform (cl:make-array 0 :element-type 'oms_msgs-msg:OMSRect2f :initial-element (cl:make-instance 'oms_msgs-msg:OMSRect2f)))
   (body_infos
    :reader body_infos
    :initarg :body_infos
    :type (cl:vector oms_msgs-msg:OMSBodyInfo)
   :initform (cl:make-array 0 :element-type 'oms_msgs-msg:OMSBodyInfo :initial-element (cl:make-instance 'oms_msgs-msg:OMSBodyInfo)))
   (sod_status
    :reader sod_status
    :initarg :sod_status
    :type (cl:vector oms_msgs-msg:OMSSodStatus)
   :initform (cl:make-array 0 :element-type 'oms_msgs-msg:OMSSodStatus :initial-element (cl:make-instance 'oms_msgs-msg:OMSSodStatus))))
)

(cl:defclass OMSBodyProperty (<OMSBodyProperty>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OMSBodyProperty>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OMSBodyProperty)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name oms_msgs-msg:<OMSBodyProperty> is deprecated: use oms_msgs-msg:OMSBodyProperty instead.")))

(cl:ensure-generic-function 'det_roi-val :lambda-list '(m))
(cl:defmethod det_roi-val ((m <OMSBodyProperty>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:det_roi-val is deprecated.  Use oms_msgs-msg:det_roi instead.")
  (det_roi m))

(cl:ensure-generic-function 'body_infos-val :lambda-list '(m))
(cl:defmethod body_infos-val ((m <OMSBodyProperty>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:body_infos-val is deprecated.  Use oms_msgs-msg:body_infos instead.")
  (body_infos m))

(cl:ensure-generic-function 'sod_status-val :lambda-list '(m))
(cl:defmethod sod_status-val ((m <OMSBodyProperty>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:sod_status-val is deprecated.  Use oms_msgs-msg:sod_status instead.")
  (sod_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OMSBodyProperty>) ostream)
  "Serializes a message object of type '<OMSBodyProperty>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'det_roi))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'det_roi))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'body_infos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'body_infos))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sod_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'sod_status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OMSBodyProperty>) istream)
  "Deserializes a message object of type '<OMSBodyProperty>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'det_roi) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'det_roi)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'oms_msgs-msg:OMSRect2f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'body_infos) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'body_infos)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'oms_msgs-msg:OMSBodyInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sod_status) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sod_status)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'oms_msgs-msg:OMSSodStatus))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OMSBodyProperty>)))
  "Returns string type for a message object of type '<OMSBodyProperty>"
  "oms_msgs/OMSBodyProperty")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OMSBodyProperty)))
  "Returns string type for a message object of type 'OMSBodyProperty"
  "oms_msgs/OMSBodyProperty")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OMSBodyProperty>)))
  "Returns md5sum for a message object of type '<OMSBodyProperty>"
  "62ccae5420939cb724c8ed49db69018d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OMSBodyProperty)))
  "Returns md5sum for a message object of type 'OMSBodyProperty"
  "62ccae5420939cb724c8ed49db69018d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OMSBodyProperty>)))
  "Returns full string definition for message of type '<OMSBodyProperty>"
  (cl:format cl:nil "oms_msgs/OMSRect2f[] det_roi~%oms_msgs/OMSBodyInfo[] body_infos~%oms_msgs/OMSSodStatus[] sod_status~%~%================================================================================~%MSG: oms_msgs/OMSRect2f~%float32 left~%float32 top~%float32 right~%float32 bottom~%float32 score~%~%================================================================================~%MSG: oms_msgs/OMSBodyInfo~%uint8 seat_id~%oms_msgs/OMSBodyDetResult body_det_result~%oms_msgs/OMSSeatBeltStatus seatbelt_status~%oms_msgs/OMSAgeGroup age_cls_result~%oms_msgs/OMSBodyEventInfo body_event_info~%~%================================================================================~%MSG: oms_msgs/OMSBodyDetResult~%uint8 UNAVAILABLE = 0~%uint8 AVAILABLE = 1~%uint8 UNCERTAIN = 2~%uint8 value~%oms_msgs/OMSRect2f body_rect~%oms_msgs/OMSPoint2f[] body_keypoints~%~%================================================================================~%MSG: oms_msgs/OMSPoint2f~%float32 x~%float32 y~%float32 score~%~%================================================================================~%MSG: oms_msgs/OMSSeatBeltStatus~%uint8 UNAVAILABLE = 0~%uint8 BUCKLE_UP = 1~%uint8 UNBUCKLE = 2~%uint8 UNCERTAIN = 3~%uint8 value~%float32 score~%~%================================================================================~%MSG: oms_msgs/OMSAgeGroup~%uint8 UNAVAILABLE = 0~%uint8 BABY = 1~%uint8 CHILD = 2~%uint8 YOUTH = 3~%uint8 OLD = 4~%uint8 UNCERTAIN = 5~%uint8 value~%float32 score~%~%================================================================================~%MSG: oms_msgs/OMSBodyEventInfo~%uint8 UNAVAILABLE = 0~%uint8 HAND_OUT_OF_WINDOW = 1~%uint8 BODY_LEAVING_THE_SEAT = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 RESERVED4 = 6~%uint8 RESERVED5 = 7~%uint8 UNCERTAIN = 8~%uint8 value~%float32 score~%uint64 start_time~%uint64 end_time~%~%================================================================================~%MSG: oms_msgs/OMSSodStatus~%uint8 UNAVAILABLE = 0~%uint8 OCCUPIED = 1~%uint8 UNOCCUPIED = 2~%uint8 UNCERTAIN = 3~%uint8 value~%uint8 seat_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OMSBodyProperty)))
  "Returns full string definition for message of type 'OMSBodyProperty"
  (cl:format cl:nil "oms_msgs/OMSRect2f[] det_roi~%oms_msgs/OMSBodyInfo[] body_infos~%oms_msgs/OMSSodStatus[] sod_status~%~%================================================================================~%MSG: oms_msgs/OMSRect2f~%float32 left~%float32 top~%float32 right~%float32 bottom~%float32 score~%~%================================================================================~%MSG: oms_msgs/OMSBodyInfo~%uint8 seat_id~%oms_msgs/OMSBodyDetResult body_det_result~%oms_msgs/OMSSeatBeltStatus seatbelt_status~%oms_msgs/OMSAgeGroup age_cls_result~%oms_msgs/OMSBodyEventInfo body_event_info~%~%================================================================================~%MSG: oms_msgs/OMSBodyDetResult~%uint8 UNAVAILABLE = 0~%uint8 AVAILABLE = 1~%uint8 UNCERTAIN = 2~%uint8 value~%oms_msgs/OMSRect2f body_rect~%oms_msgs/OMSPoint2f[] body_keypoints~%~%================================================================================~%MSG: oms_msgs/OMSPoint2f~%float32 x~%float32 y~%float32 score~%~%================================================================================~%MSG: oms_msgs/OMSSeatBeltStatus~%uint8 UNAVAILABLE = 0~%uint8 BUCKLE_UP = 1~%uint8 UNBUCKLE = 2~%uint8 UNCERTAIN = 3~%uint8 value~%float32 score~%~%================================================================================~%MSG: oms_msgs/OMSAgeGroup~%uint8 UNAVAILABLE = 0~%uint8 BABY = 1~%uint8 CHILD = 2~%uint8 YOUTH = 3~%uint8 OLD = 4~%uint8 UNCERTAIN = 5~%uint8 value~%float32 score~%~%================================================================================~%MSG: oms_msgs/OMSBodyEventInfo~%uint8 UNAVAILABLE = 0~%uint8 HAND_OUT_OF_WINDOW = 1~%uint8 BODY_LEAVING_THE_SEAT = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 RESERVED4 = 6~%uint8 RESERVED5 = 7~%uint8 UNCERTAIN = 8~%uint8 value~%float32 score~%uint64 start_time~%uint64 end_time~%~%================================================================================~%MSG: oms_msgs/OMSSodStatus~%uint8 UNAVAILABLE = 0~%uint8 OCCUPIED = 1~%uint8 UNOCCUPIED = 2~%uint8 UNCERTAIN = 3~%uint8 value~%uint8 seat_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OMSBodyProperty>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'det_roi) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'body_infos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sod_status) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OMSBodyProperty>))
  "Converts a ROS message object to a list"
  (cl:list 'OMSBodyProperty
    (cl:cons ':det_roi (det_roi msg))
    (cl:cons ':body_infos (body_infos msg))
    (cl:cons ':sod_status (sod_status msg))
))
