; Auto-generated. Do not edit!


(cl:in-package mla_localization_msgs-msg)


;//! \htmlinclude MLALinkOffsetInfo.msg.html

(cl:defclass <MLALinkOffsetInfo> (roslisp-msg-protocol:ros-message)
  ((source
    :reader source
    :initarg :source
    :type cl:string
    :initform "")
   (link_id
    :reader link_id
    :initarg :link_id
    :type landmark_msgs-msg:TrackId
    :initform (cl:make-instance 'landmark_msgs-msg:TrackId))
   (offset
    :reader offset
    :initarg :offset
    :type cl:integer
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MLALinkOffsetInfo (<MLALinkOffsetInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MLALinkOffsetInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MLALinkOffsetInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mla_localization_msgs-msg:<MLALinkOffsetInfo> is deprecated: use mla_localization_msgs-msg:MLALinkOffsetInfo instead.")))

(cl:ensure-generic-function 'source-val :lambda-list '(m))
(cl:defmethod source-val ((m <MLALinkOffsetInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:source-val is deprecated.  Use mla_localization_msgs-msg:source instead.")
  (source m))

(cl:ensure-generic-function 'link_id-val :lambda-list '(m))
(cl:defmethod link_id-val ((m <MLALinkOffsetInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:link_id-val is deprecated.  Use mla_localization_msgs-msg:link_id instead.")
  (link_id m))

(cl:ensure-generic-function 'offset-val :lambda-list '(m))
(cl:defmethod offset-val ((m <MLALinkOffsetInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:offset-val is deprecated.  Use mla_localization_msgs-msg:offset instead.")
  (offset m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <MLALinkOffsetInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:status-val is deprecated.  Use mla_localization_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <MLALinkOffsetInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:reserved-val is deprecated.  Use mla_localization_msgs-msg:reserved instead.")
  (reserved m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MLALinkOffsetInfo>) ostream)
  "Serializes a message object of type '<MLALinkOffsetInfo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'source))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'source))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'link_id) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'offset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'offset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'offset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'offset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MLALinkOffsetInfo>) istream)
  "Deserializes a message object of type '<MLALinkOffsetInfo>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'source) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'source) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'link_id) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'offset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'offset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'offset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'offset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MLALinkOffsetInfo>)))
  "Returns string type for a message object of type '<MLALinkOffsetInfo>"
  "mla_localization_msgs/MLALinkOffsetInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MLALinkOffsetInfo)))
  "Returns string type for a message object of type 'MLALinkOffsetInfo"
  "mla_localization_msgs/MLALinkOffsetInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MLALinkOffsetInfo>)))
  "Returns md5sum for a message object of type '<MLALinkOffsetInfo>"
  "56b99b3a00a84ef423d8e1a501b3e275")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MLALinkOffsetInfo)))
  "Returns md5sum for a message object of type 'MLALinkOffsetInfo"
  "56b99b3a00a84ef423d8e1a501b3e275")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MLALinkOffsetInfo>)))
  "Returns full string definition for message of type '<MLALinkOffsetInfo>"
  (cl:format cl:nil "string source~%landmark_msgs/TrackId link_id~%uint32 offset~%uint16 status~%uint16 reserved~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MLALinkOffsetInfo)))
  "Returns full string definition for message of type 'MLALinkOffsetInfo"
  (cl:format cl:nil "string source~%landmark_msgs/TrackId link_id~%uint32 offset~%uint16 status~%uint16 reserved~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MLALinkOffsetInfo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'source))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'link_id))
     4
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MLALinkOffsetInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'MLALinkOffsetInfo
    (cl:cons ':source (source msg))
    (cl:cons ':link_id (link_id msg))
    (cl:cons ':offset (offset msg))
    (cl:cons ':status (status msg))
    (cl:cons ':reserved (reserved msg))
))
