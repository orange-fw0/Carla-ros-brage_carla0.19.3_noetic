; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude ImageRetrievalDescriptor.msg.html

(cl:defclass <ImageRetrievalDescriptor> (roslisp-msg-protocol:ros-message)
  ((tag
    :reader tag
    :initarg :tag
    :type cl:string
    :initform "")
   (available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (feature_descriptor
    :reader feature_descriptor
    :initarg :feature_descriptor
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (log_info_2d
    :reader log_info_2d
    :initarg :log_info_2d
    :type cl:string
    :initform "")
   (reserved_info
    :reader reserved_info
    :initarg :reserved_info
    :type cl:string
    :initform ""))
)

(cl:defclass ImageRetrievalDescriptor (<ImageRetrievalDescriptor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImageRetrievalDescriptor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImageRetrievalDescriptor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<ImageRetrievalDescriptor> is deprecated: use perception_interface_msgs-msg:ImageRetrievalDescriptor instead.")))

(cl:ensure-generic-function 'tag-val :lambda-list '(m))
(cl:defmethod tag-val ((m <ImageRetrievalDescriptor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:tag-val is deprecated.  Use perception_interface_msgs-msg:tag instead.")
  (tag m))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <ImageRetrievalDescriptor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:available-val is deprecated.  Use perception_interface_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'feature_descriptor-val :lambda-list '(m))
(cl:defmethod feature_descriptor-val ((m <ImageRetrievalDescriptor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:feature_descriptor-val is deprecated.  Use perception_interface_msgs-msg:feature_descriptor instead.")
  (feature_descriptor m))

(cl:ensure-generic-function 'log_info_2d-val :lambda-list '(m))
(cl:defmethod log_info_2d-val ((m <ImageRetrievalDescriptor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:log_info_2d-val is deprecated.  Use perception_interface_msgs-msg:log_info_2d instead.")
  (log_info_2d m))

(cl:ensure-generic-function 'reserved_info-val :lambda-list '(m))
(cl:defmethod reserved_info-val ((m <ImageRetrievalDescriptor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:reserved_info-val is deprecated.  Use perception_interface_msgs-msg:reserved_info instead.")
  (reserved_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImageRetrievalDescriptor>) ostream)
  "Serializes a message object of type '<ImageRetrievalDescriptor>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'tag))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'tag))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'feature_descriptor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'feature_descriptor))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'log_info_2d))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'log_info_2d))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImageRetrievalDescriptor>) istream)
  "Deserializes a message object of type '<ImageRetrievalDescriptor>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tag) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'tag) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'feature_descriptor) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'feature_descriptor)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'log_info_2d) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'log_info_2d) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reserved_info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reserved_info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImageRetrievalDescriptor>)))
  "Returns string type for a message object of type '<ImageRetrievalDescriptor>"
  "perception_interface_msgs/ImageRetrievalDescriptor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImageRetrievalDescriptor)))
  "Returns string type for a message object of type 'ImageRetrievalDescriptor"
  "perception_interface_msgs/ImageRetrievalDescriptor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImageRetrievalDescriptor>)))
  "Returns md5sum for a message object of type '<ImageRetrievalDescriptor>"
  "6aadb9376782722101ee023374c6a713")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImageRetrievalDescriptor)))
  "Returns md5sum for a message object of type 'ImageRetrievalDescriptor"
  "6aadb9376782722101ee023374c6a713")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImageRetrievalDescriptor>)))
  "Returns full string definition for message of type '<ImageRetrievalDescriptor>"
  (cl:format cl:nil "string tag~%uint8 available~%float32[] feature_descriptor~%string log_info_2d~%string reserved_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImageRetrievalDescriptor)))
  "Returns full string definition for message of type 'ImageRetrievalDescriptor"
  (cl:format cl:nil "string tag~%uint8 available~%float32[] feature_descriptor~%string log_info_2d~%string reserved_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImageRetrievalDescriptor>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'tag))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'feature_descriptor) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:length (cl:slot-value msg 'log_info_2d))
     4 (cl:length (cl:slot-value msg 'reserved_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImageRetrievalDescriptor>))
  "Converts a ROS message object to a list"
  (cl:list 'ImageRetrievalDescriptor
    (cl:cons ':tag (tag msg))
    (cl:cons ':available (available msg))
    (cl:cons ':feature_descriptor (feature_descriptor msg))
    (cl:cons ':log_info_2d (log_info_2d msg))
    (cl:cons ':reserved_info (reserved_info msg))
))
