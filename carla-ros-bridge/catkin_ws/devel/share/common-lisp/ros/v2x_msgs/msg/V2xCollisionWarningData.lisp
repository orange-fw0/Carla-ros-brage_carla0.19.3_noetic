; Auto-generated. Do not edit!


(cl:in-package v2x_msgs-msg)


;//! \htmlinclude V2xCollisionWarningData.msg.html

(cl:defclass <V2xCollisionWarningData> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (warning
    :reader warning
    :initarg :warning
    :type cl:string
    :initform ""))
)

(cl:defclass V2xCollisionWarningData (<V2xCollisionWarningData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <V2xCollisionWarningData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'V2xCollisionWarningData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name v2x_msgs-msg:<V2xCollisionWarningData> is deprecated: use v2x_msgs-msg:V2xCollisionWarningData instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <V2xCollisionWarningData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x_msgs-msg:id-val is deprecated.  Use v2x_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'warning-val :lambda-list '(m))
(cl:defmethod warning-val ((m <V2xCollisionWarningData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x_msgs-msg:warning-val is deprecated.  Use v2x_msgs-msg:warning instead.")
  (warning m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <V2xCollisionWarningData>) ostream)
  "Serializes a message object of type '<V2xCollisionWarningData>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'warning))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'warning))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <V2xCollisionWarningData>) istream)
  "Deserializes a message object of type '<V2xCollisionWarningData>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'id) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'id)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'warning) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'warning) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<V2xCollisionWarningData>)))
  "Returns string type for a message object of type '<V2xCollisionWarningData>"
  "v2x_msgs/V2xCollisionWarningData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'V2xCollisionWarningData)))
  "Returns string type for a message object of type 'V2xCollisionWarningData"
  "v2x_msgs/V2xCollisionWarningData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<V2xCollisionWarningData>)))
  "Returns md5sum for a message object of type '<V2xCollisionWarningData>"
  "30e6106a92d1ed9b1327b13f2afa0f13")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'V2xCollisionWarningData)))
  "Returns md5sum for a message object of type 'V2xCollisionWarningData"
  "30e6106a92d1ed9b1327b13f2afa0f13")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<V2xCollisionWarningData>)))
  "Returns full string definition for message of type '<V2xCollisionWarningData>"
  (cl:format cl:nil "int32[] id~%string warning~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'V2xCollisionWarningData)))
  "Returns full string definition for message of type 'V2xCollisionWarningData"
  (cl:format cl:nil "int32[] id~%string warning~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <V2xCollisionWarningData>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'id) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:length (cl:slot-value msg 'warning))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <V2xCollisionWarningData>))
  "Converts a ROS message object to a list"
  (cl:list 'V2xCollisionWarningData
    (cl:cons ':id (id msg))
    (cl:cons ':warning (warning msg))
))
