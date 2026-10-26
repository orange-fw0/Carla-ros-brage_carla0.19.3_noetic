; Auto-generated. Do not edit!


(cl:in-package tbt_msgs-msg)


;//! \htmlinclude RelativeLocationOnRoute.msg.html

(cl:defclass <RelativeLocationOnRoute> (roslisp-msg-protocol:ros-message)
  ((ori_cur_step_id
    :reader ori_cur_step_id
    :initarg :ori_cur_step_id
    :type cl:integer
    :initform 0)
   (ori_cur_link_id_in_step
    :reader ori_cur_link_id_in_step
    :initarg :ori_cur_link_id_in_step
    :type cl:integer
    :initform 0)
   (ori_link_offset
    :reader ori_link_offset
    :initarg :ori_link_offset
    :type cl:integer
    :initform 0)
   (link_index
    :reader link_index
    :initarg :link_index
    :type cl:integer
    :initform 0)
   (offset
    :reader offset
    :initarg :offset
    :type cl:integer
    :initform 0)
   (valid
    :reader valid
    :initarg :valid
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RelativeLocationOnRoute (<RelativeLocationOnRoute>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RelativeLocationOnRoute>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RelativeLocationOnRoute)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tbt_msgs-msg:<RelativeLocationOnRoute> is deprecated: use tbt_msgs-msg:RelativeLocationOnRoute instead.")))

(cl:ensure-generic-function 'ori_cur_step_id-val :lambda-list '(m))
(cl:defmethod ori_cur_step_id-val ((m <RelativeLocationOnRoute>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:ori_cur_step_id-val is deprecated.  Use tbt_msgs-msg:ori_cur_step_id instead.")
  (ori_cur_step_id m))

(cl:ensure-generic-function 'ori_cur_link_id_in_step-val :lambda-list '(m))
(cl:defmethod ori_cur_link_id_in_step-val ((m <RelativeLocationOnRoute>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:ori_cur_link_id_in_step-val is deprecated.  Use tbt_msgs-msg:ori_cur_link_id_in_step instead.")
  (ori_cur_link_id_in_step m))

(cl:ensure-generic-function 'ori_link_offset-val :lambda-list '(m))
(cl:defmethod ori_link_offset-val ((m <RelativeLocationOnRoute>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:ori_link_offset-val is deprecated.  Use tbt_msgs-msg:ori_link_offset instead.")
  (ori_link_offset m))

(cl:ensure-generic-function 'link_index-val :lambda-list '(m))
(cl:defmethod link_index-val ((m <RelativeLocationOnRoute>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:link_index-val is deprecated.  Use tbt_msgs-msg:link_index instead.")
  (link_index m))

(cl:ensure-generic-function 'offset-val :lambda-list '(m))
(cl:defmethod offset-val ((m <RelativeLocationOnRoute>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:offset-val is deprecated.  Use tbt_msgs-msg:offset instead.")
  (offset m))

(cl:ensure-generic-function 'valid-val :lambda-list '(m))
(cl:defmethod valid-val ((m <RelativeLocationOnRoute>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:valid-val is deprecated.  Use tbt_msgs-msg:valid instead.")
  (valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RelativeLocationOnRoute>) ostream)
  "Serializes a message object of type '<RelativeLocationOnRoute>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ori_cur_step_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ori_cur_step_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ori_cur_step_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ori_cur_step_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ori_cur_link_id_in_step)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ori_cur_link_id_in_step)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ori_cur_link_id_in_step)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ori_cur_link_id_in_step)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ori_link_offset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ori_link_offset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ori_link_offset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ori_link_offset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'link_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'link_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'link_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'link_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'offset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'offset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'offset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'offset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'valid)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RelativeLocationOnRoute>) istream)
  "Deserializes a message object of type '<RelativeLocationOnRoute>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ori_cur_step_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ori_cur_step_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ori_cur_step_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ori_cur_step_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ori_cur_link_id_in_step)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ori_cur_link_id_in_step)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ori_cur_link_id_in_step)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ori_cur_link_id_in_step)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ori_link_offset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ori_link_offset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ori_link_offset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ori_link_offset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'link_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'link_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'link_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'link_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'offset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'offset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'offset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'offset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'valid)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RelativeLocationOnRoute>)))
  "Returns string type for a message object of type '<RelativeLocationOnRoute>"
  "tbt_msgs/RelativeLocationOnRoute")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RelativeLocationOnRoute)))
  "Returns string type for a message object of type 'RelativeLocationOnRoute"
  "tbt_msgs/RelativeLocationOnRoute")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RelativeLocationOnRoute>)))
  "Returns md5sum for a message object of type '<RelativeLocationOnRoute>"
  "605e58d4b028301bebad62b632acdfa6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RelativeLocationOnRoute)))
  "Returns md5sum for a message object of type 'RelativeLocationOnRoute"
  "605e58d4b028301bebad62b632acdfa6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RelativeLocationOnRoute>)))
  "Returns full string definition for message of type '<RelativeLocationOnRoute>"
  (cl:format cl:nil "uint32 ori_cur_step_id~%uint32 ori_cur_link_id_in_step~%uint32 ori_link_offset~%uint32 link_index~%uint32 offset~%uint8 valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RelativeLocationOnRoute)))
  "Returns full string definition for message of type 'RelativeLocationOnRoute"
  (cl:format cl:nil "uint32 ori_cur_step_id~%uint32 ori_cur_link_id_in_step~%uint32 ori_link_offset~%uint32 link_index~%uint32 offset~%uint8 valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RelativeLocationOnRoute>))
  (cl:+ 0
     4
     4
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RelativeLocationOnRoute>))
  "Converts a ROS message object to a list"
  (cl:list 'RelativeLocationOnRoute
    (cl:cons ':ori_cur_step_id (ori_cur_step_id msg))
    (cl:cons ':ori_cur_link_id_in_step (ori_cur_link_id_in_step msg))
    (cl:cons ':ori_link_offset (ori_link_offset msg))
    (cl:cons ':link_index (link_index msg))
    (cl:cons ':offset (offset msg))
    (cl:cons ':valid (valid msg))
))
