; Auto-generated. Do not edit!


(cl:in-package shadow_mode_msgs-msg)


;//! \htmlinclude DetailConfig.msg.html

(cl:defclass <DetailConfig> (roslisp-msg-protocol:ros-message)
  ((mlog_list
    :reader mlog_list
    :initarg :mlog_list
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (need_maf_groups
    :reader need_maf_groups
    :initarg :need_maf_groups
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass DetailConfig (<DetailConfig>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetailConfig>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetailConfig)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name shadow_mode_msgs-msg:<DetailConfig> is deprecated: use shadow_mode_msgs-msg:DetailConfig instead.")))

(cl:ensure-generic-function 'mlog_list-val :lambda-list '(m))
(cl:defmethod mlog_list-val ((m <DetailConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shadow_mode_msgs-msg:mlog_list-val is deprecated.  Use shadow_mode_msgs-msg:mlog_list instead.")
  (mlog_list m))

(cl:ensure-generic-function 'need_maf_groups-val :lambda-list '(m))
(cl:defmethod need_maf_groups-val ((m <DetailConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shadow_mode_msgs-msg:need_maf_groups-val is deprecated.  Use shadow_mode_msgs-msg:need_maf_groups instead.")
  (need_maf_groups m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetailConfig>) ostream)
  "Serializes a message object of type '<DetailConfig>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'mlog_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'mlog_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'need_maf_groups))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'need_maf_groups))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetailConfig>) istream)
  "Deserializes a message object of type '<DetailConfig>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'mlog_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'mlog_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'need_maf_groups) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'need_maf_groups)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetailConfig>)))
  "Returns string type for a message object of type '<DetailConfig>"
  "shadow_mode_msgs/DetailConfig")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetailConfig)))
  "Returns string type for a message object of type 'DetailConfig"
  "shadow_mode_msgs/DetailConfig")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetailConfig>)))
  "Returns md5sum for a message object of type '<DetailConfig>"
  "866178546220781c7d84c74e3be64c25")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetailConfig)))
  "Returns md5sum for a message object of type 'DetailConfig"
  "866178546220781c7d84c74e3be64c25")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetailConfig>)))
  "Returns full string definition for message of type '<DetailConfig>"
  (cl:format cl:nil "string[] mlog_list~%string[] need_maf_groups~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetailConfig)))
  "Returns full string definition for message of type 'DetailConfig"
  (cl:format cl:nil "string[] mlog_list~%string[] need_maf_groups~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetailConfig>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'mlog_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'need_maf_groups) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetailConfig>))
  "Converts a ROS message object to a list"
  (cl:list 'DetailConfig
    (cl:cons ':mlog_list (mlog_list msg))
    (cl:cons ':need_maf_groups (need_maf_groups msg))
))
