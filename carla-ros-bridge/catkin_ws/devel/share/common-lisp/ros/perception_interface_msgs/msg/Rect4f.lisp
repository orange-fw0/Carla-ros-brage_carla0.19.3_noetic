; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude Rect4f.msg.html

(cl:defclass <Rect4f> (roslisp-msg-protocol:ros-message)
  ((left
    :reader left
    :initarg :left
    :type cl:float
    :initform 0.0)
   (top
    :reader top
    :initarg :top
    :type cl:float
    :initform 0.0)
   (right
    :reader right
    :initarg :right
    :type cl:float
    :initform 0.0)
   (bottom
    :reader bottom
    :initarg :bottom
    :type cl:float
    :initform 0.0))
)

(cl:defclass Rect4f (<Rect4f>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Rect4f>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Rect4f)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<Rect4f> is deprecated: use perception_interface_msgs-msg:Rect4f instead.")))

(cl:ensure-generic-function 'left-val :lambda-list '(m))
(cl:defmethod left-val ((m <Rect4f>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:left-val is deprecated.  Use perception_interface_msgs-msg:left instead.")
  (left m))

(cl:ensure-generic-function 'top-val :lambda-list '(m))
(cl:defmethod top-val ((m <Rect4f>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:top-val is deprecated.  Use perception_interface_msgs-msg:top instead.")
  (top m))

(cl:ensure-generic-function 'right-val :lambda-list '(m))
(cl:defmethod right-val ((m <Rect4f>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:right-val is deprecated.  Use perception_interface_msgs-msg:right instead.")
  (right m))

(cl:ensure-generic-function 'bottom-val :lambda-list '(m))
(cl:defmethod bottom-val ((m <Rect4f>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:bottom-val is deprecated.  Use perception_interface_msgs-msg:bottom instead.")
  (bottom m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Rect4f>) ostream)
  "Serializes a message object of type '<Rect4f>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'left))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'top))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'right))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'bottom))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Rect4f>) istream)
  "Deserializes a message object of type '<Rect4f>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'top) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bottom) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Rect4f>)))
  "Returns string type for a message object of type '<Rect4f>"
  "perception_interface_msgs/Rect4f")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Rect4f)))
  "Returns string type for a message object of type 'Rect4f"
  "perception_interface_msgs/Rect4f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Rect4f>)))
  "Returns md5sum for a message object of type '<Rect4f>"
  "7aad971742c7cc38deb20cfb704affa1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Rect4f)))
  "Returns md5sum for a message object of type 'Rect4f"
  "7aad971742c7cc38deb20cfb704affa1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Rect4f>)))
  "Returns full string definition for message of type '<Rect4f>"
  (cl:format cl:nil "float32 left~%float32 top~%float32 right~%float32 bottom~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Rect4f)))
  "Returns full string definition for message of type 'Rect4f"
  (cl:format cl:nil "float32 left~%float32 top~%float32 right~%float32 bottom~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Rect4f>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Rect4f>))
  "Converts a ROS message object to a list"
  (cl:list 'Rect4f
    (cl:cons ':left (left msg))
    (cl:cons ':top (top msg))
    (cl:cons ':right (right msg))
    (cl:cons ':bottom (bottom msg))
))
