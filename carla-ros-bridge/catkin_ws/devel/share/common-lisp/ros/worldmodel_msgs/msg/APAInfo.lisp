; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude APAInfo.msg.html

(cl:defclass <APAInfo> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (map_id
    :reader map_id
    :initarg :map_id
    :type cl:integer
    :initform 0)
   (last_update_timestamp
    :reader last_update_timestamp
    :initarg :last_update_timestamp
    :type cl:integer
    :initform 0)
   (allow_back_in
    :reader allow_back_in
    :initarg :allow_back_in
    :type cl:boolean
    :initform cl:nil)
   (allow_front_in
    :reader allow_front_in
    :initarg :allow_front_in
    :type cl:boolean
    :initform cl:nil)
   (back_in_estimated_zigzag_num
    :reader back_in_estimated_zigzag_num
    :initarg :back_in_estimated_zigzag_num
    :type cl:integer
    :initform 0)
   (front_in_estimated_zigzag_num
    :reader front_in_estimated_zigzag_num
    :initarg :front_in_estimated_zigzag_num
    :type cl:integer
    :initform 0))
)

(cl:defclass APAInfo (<APAInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <APAInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'APAInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<APAInfo> is deprecated: use worldmodel_msgs-msg:APAInfo instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <APAInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:status-val is deprecated.  Use worldmodel_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'map_id-val :lambda-list '(m))
(cl:defmethod map_id-val ((m <APAInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:map_id-val is deprecated.  Use worldmodel_msgs-msg:map_id instead.")
  (map_id m))

(cl:ensure-generic-function 'last_update_timestamp-val :lambda-list '(m))
(cl:defmethod last_update_timestamp-val ((m <APAInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:last_update_timestamp-val is deprecated.  Use worldmodel_msgs-msg:last_update_timestamp instead.")
  (last_update_timestamp m))

(cl:ensure-generic-function 'allow_back_in-val :lambda-list '(m))
(cl:defmethod allow_back_in-val ((m <APAInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:allow_back_in-val is deprecated.  Use worldmodel_msgs-msg:allow_back_in instead.")
  (allow_back_in m))

(cl:ensure-generic-function 'allow_front_in-val :lambda-list '(m))
(cl:defmethod allow_front_in-val ((m <APAInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:allow_front_in-val is deprecated.  Use worldmodel_msgs-msg:allow_front_in instead.")
  (allow_front_in m))

(cl:ensure-generic-function 'back_in_estimated_zigzag_num-val :lambda-list '(m))
(cl:defmethod back_in_estimated_zigzag_num-val ((m <APAInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:back_in_estimated_zigzag_num-val is deprecated.  Use worldmodel_msgs-msg:back_in_estimated_zigzag_num instead.")
  (back_in_estimated_zigzag_num m))

(cl:ensure-generic-function 'front_in_estimated_zigzag_num-val :lambda-list '(m))
(cl:defmethod front_in_estimated_zigzag_num-val ((m <APAInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:front_in_estimated_zigzag_num-val is deprecated.  Use worldmodel_msgs-msg:front_in_estimated_zigzag_num instead.")
  (front_in_estimated_zigzag_num m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<APAInfo>)))
    "Constants for message type '<APAInfo>"
  '((:UNKNOWN . 0)
    (:OCCUPIED . 1)
    (:VACANT . 2)
    (:APA_FAIL . 3)
    (:APA_SUCCEED . 4)
    (:REVERSED . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'APAInfo)))
    "Constants for message type 'APAInfo"
  '((:UNKNOWN . 0)
    (:OCCUPIED . 1)
    (:VACANT . 2)
    (:APA_FAIL . 3)
    (:APA_SUCCEED . 4)
    (:REVERSED . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <APAInfo>) ostream)
  "Serializes a message object of type '<APAInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'map_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'last_update_timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'last_update_timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'last_update_timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'last_update_timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'last_update_timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'last_update_timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'last_update_timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'last_update_timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'allow_back_in) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'allow_front_in) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'back_in_estimated_zigzag_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'front_in_estimated_zigzag_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <APAInfo>) istream)
  "Deserializes a message object of type '<APAInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'last_update_timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'last_update_timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'last_update_timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'last_update_timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'last_update_timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'last_update_timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'last_update_timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'last_update_timestamp)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'allow_back_in) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'allow_front_in) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'back_in_estimated_zigzag_num) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'front_in_estimated_zigzag_num) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<APAInfo>)))
  "Returns string type for a message object of type '<APAInfo>"
  "worldmodel_msgs/APAInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'APAInfo)))
  "Returns string type for a message object of type 'APAInfo"
  "worldmodel_msgs/APAInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<APAInfo>)))
  "Returns md5sum for a message object of type '<APAInfo>"
  "d28bc323f691be3d9ac9ed39ca01246c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'APAInfo)))
  "Returns md5sum for a message object of type 'APAInfo"
  "d28bc323f691be3d9ac9ed39ca01246c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<APAInfo>)))
  "Returns full string definition for message of type '<APAInfo>"
  (cl:format cl:nil "uint32 UNKNOWN = 0~%uint32 OCCUPIED = 1~%uint32 VACANT = 2~%uint32 APA_FAIL = 3~%uint32 APA_SUCCEED = 4~%uint32 REVERSED = 5~%uint32 status~%int32 map_id~%uint64 last_update_timestamp~%bool allow_back_in~%bool allow_front_in~%int32 back_in_estimated_zigzag_num~%int32 front_in_estimated_zigzag_num~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'APAInfo)))
  "Returns full string definition for message of type 'APAInfo"
  (cl:format cl:nil "uint32 UNKNOWN = 0~%uint32 OCCUPIED = 1~%uint32 VACANT = 2~%uint32 APA_FAIL = 3~%uint32 APA_SUCCEED = 4~%uint32 REVERSED = 5~%uint32 status~%int32 map_id~%uint64 last_update_timestamp~%bool allow_back_in~%bool allow_front_in~%int32 back_in_estimated_zigzag_num~%int32 front_in_estimated_zigzag_num~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <APAInfo>))
  (cl:+ 0
     4
     4
     8
     1
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <APAInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'APAInfo
    (cl:cons ':status (status msg))
    (cl:cons ':map_id (map_id msg))
    (cl:cons ':last_update_timestamp (last_update_timestamp msg))
    (cl:cons ':allow_back_in (allow_back_in msg))
    (cl:cons ':allow_front_in (allow_front_in msg))
    (cl:cons ':back_in_estimated_zigzag_num (back_in_estimated_zigzag_num msg))
    (cl:cons ':front_in_estimated_zigzag_num (front_in_estimated_zigzag_num msg))
))
