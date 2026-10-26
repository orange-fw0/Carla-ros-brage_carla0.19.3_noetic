; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude TBTLongSolidLine.msg.html

(cl:defclass <TBTLongSolidLine> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (start_offset
    :reader start_offset
    :initarg :start_offset
    :type cl:float
    :initform 0.0)
   (end_offset
    :reader end_offset
    :initarg :end_offset
    :type cl:float
    :initform 0.0)
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0)
   (lane_index
    :reader lane_index
    :initarg :lane_index
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TBTLongSolidLine (<TBTLongSolidLine>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TBTLongSolidLine>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TBTLongSolidLine)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<TBTLongSolidLine> is deprecated: use lane_navi_info_msgs-msg:TBTLongSolidLine instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <TBTLongSolidLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:available-val is deprecated.  Use lane_navi_info_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'start_offset-val :lambda-list '(m))
(cl:defmethod start_offset-val ((m <TBTLongSolidLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:start_offset-val is deprecated.  Use lane_navi_info_msgs-msg:start_offset instead.")
  (start_offset m))

(cl:ensure-generic-function 'end_offset-val :lambda-list '(m))
(cl:defmethod end_offset-val ((m <TBTLongSolidLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:end_offset-val is deprecated.  Use lane_navi_info_msgs-msg:end_offset instead.")
  (end_offset m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <TBTLongSolidLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:length-val is deprecated.  Use lane_navi_info_msgs-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'lane_index-val :lambda-list '(m))
(cl:defmethod lane_index-val ((m <TBTLongSolidLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:lane_index-val is deprecated.  Use lane_navi_info_msgs-msg:lane_index instead.")
  (lane_index m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TBTLongSolidLine>)))
    "Constants for message type '<TBTLongSolidLine>"
  '((:START_OFFSET_VALID . 1)
    (:END_OFFSET_VALID . 2)
    (:LENGTH_VALID . 4)
    (:LANE_INDEX_VALID . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TBTLongSolidLine)))
    "Constants for message type 'TBTLongSolidLine"
  '((:START_OFFSET_VALID . 1)
    (:END_OFFSET_VALID . 2)
    (:LENGTH_VALID . 4)
    (:LANE_INDEX_VALID . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TBTLongSolidLine>) ostream)
  "Serializes a message object of type '<TBTLongSolidLine>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'start_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'end_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_index)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TBTLongSolidLine>) istream)
  "Deserializes a message object of type '<TBTLongSolidLine>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'start_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'end_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_index)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TBTLongSolidLine>)))
  "Returns string type for a message object of type '<TBTLongSolidLine>"
  "lane_navi_info_msgs/TBTLongSolidLine")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TBTLongSolidLine)))
  "Returns string type for a message object of type 'TBTLongSolidLine"
  "lane_navi_info_msgs/TBTLongSolidLine")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TBTLongSolidLine>)))
  "Returns md5sum for a message object of type '<TBTLongSolidLine>"
  "60d23b4c1cc4eb455f494217d8b1f953")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TBTLongSolidLine)))
  "Returns md5sum for a message object of type 'TBTLongSolidLine"
  "60d23b4c1cc4eb455f494217d8b1f953")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TBTLongSolidLine>)))
  "Returns full string definition for message of type '<TBTLongSolidLine>"
  (cl:format cl:nil "uint8 START_OFFSET_VALID = 1~%uint8 END_OFFSET_VALID = 2~%uint8 LENGTH_VALID = 4~%uint8 LANE_INDEX_VALID = 8~%uint8 available~%float32 start_offset~%float32 end_offset~%float32 length~%uint8 lane_index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TBTLongSolidLine)))
  "Returns full string definition for message of type 'TBTLongSolidLine"
  (cl:format cl:nil "uint8 START_OFFSET_VALID = 1~%uint8 END_OFFSET_VALID = 2~%uint8 LENGTH_VALID = 4~%uint8 LANE_INDEX_VALID = 8~%uint8 available~%float32 start_offset~%float32 end_offset~%float32 length~%uint8 lane_index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TBTLongSolidLine>))
  (cl:+ 0
     1
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TBTLongSolidLine>))
  "Converts a ROS message object to a list"
  (cl:list 'TBTLongSolidLine
    (cl:cons ':available (available msg))
    (cl:cons ':start_offset (start_offset msg))
    (cl:cons ':end_offset (end_offset msg))
    (cl:cons ':length (length msg))
    (cl:cons ':lane_index (lane_index msg))
))
