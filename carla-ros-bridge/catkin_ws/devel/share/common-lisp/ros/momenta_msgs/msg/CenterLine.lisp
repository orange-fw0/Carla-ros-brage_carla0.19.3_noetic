; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude CenterLine.msg.html

(cl:defclass <CenterLine> (roslisp-msg-protocol:ros-message)
  ((polycoeff
    :reader polycoeff
    :initarg :polycoeff
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (head
    :reader head
    :initarg :head
    :type cl:float
    :initform 0.0)
   (tail
    :reader tail
    :initarg :tail
    :type cl:float
    :initform 0.0)
   (is_recommended
    :reader is_recommended
    :initarg :is_recommended
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CenterLine (<CenterLine>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CenterLine>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CenterLine)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<CenterLine> is deprecated: use momenta_msgs-msg:CenterLine instead.")))

(cl:ensure-generic-function 'polycoeff-val :lambda-list '(m))
(cl:defmethod polycoeff-val ((m <CenterLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:polycoeff-val is deprecated.  Use momenta_msgs-msg:polycoeff instead.")
  (polycoeff m))

(cl:ensure-generic-function 'head-val :lambda-list '(m))
(cl:defmethod head-val ((m <CenterLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:head-val is deprecated.  Use momenta_msgs-msg:head instead.")
  (head m))

(cl:ensure-generic-function 'tail-val :lambda-list '(m))
(cl:defmethod tail-val ((m <CenterLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:tail-val is deprecated.  Use momenta_msgs-msg:tail instead.")
  (tail m))

(cl:ensure-generic-function 'is_recommended-val :lambda-list '(m))
(cl:defmethod is_recommended-val ((m <CenterLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:is_recommended-val is deprecated.  Use momenta_msgs-msg:is_recommended instead.")
  (is_recommended m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CenterLine>) ostream)
  "Serializes a message object of type '<CenterLine>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'polycoeff))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'polycoeff))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'head))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'tail))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_recommended) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CenterLine>) istream)
  "Deserializes a message object of type '<CenterLine>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'polycoeff) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'polycoeff)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'head) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tail) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'is_recommended) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CenterLine>)))
  "Returns string type for a message object of type '<CenterLine>"
  "momenta_msgs/CenterLine")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CenterLine)))
  "Returns string type for a message object of type 'CenterLine"
  "momenta_msgs/CenterLine")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CenterLine>)))
  "Returns md5sum for a message object of type '<CenterLine>"
  "fd2107c395db9ffe9f267903e950b9dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CenterLine)))
  "Returns md5sum for a message object of type 'CenterLine"
  "fd2107c395db9ffe9f267903e950b9dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CenterLine>)))
  "Returns full string definition for message of type '<CenterLine>"
  (cl:format cl:nil "float64[] polycoeff~%float64 head~%float64 tail~%bool is_recommended~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CenterLine)))
  "Returns full string definition for message of type 'CenterLine"
  (cl:format cl:nil "float64[] polycoeff~%float64 head~%float64 tail~%bool is_recommended~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CenterLine>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'polycoeff) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CenterLine>))
  "Converts a ROS message object to a list"
  (cl:list 'CenterLine
    (cl:cons ':polycoeff (polycoeff msg))
    (cl:cons ':head (head msg))
    (cl:cons ':tail (tail msg))
    (cl:cons ':is_recommended (is_recommended msg))
))
