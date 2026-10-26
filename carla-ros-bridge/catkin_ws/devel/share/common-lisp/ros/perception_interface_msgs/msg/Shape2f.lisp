; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude Shape2f.msg.html

(cl:defclass <Shape2f> (roslisp-msg-protocol:ros-message)
  ((height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0)
   (width
    :reader width
    :initarg :width
    :type cl:float
    :initform 0.0))
)

(cl:defclass Shape2f (<Shape2f>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Shape2f>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Shape2f)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<Shape2f> is deprecated: use perception_interface_msgs-msg:Shape2f instead.")))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <Shape2f>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:height-val is deprecated.  Use perception_interface_msgs-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <Shape2f>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:width-val is deprecated.  Use perception_interface_msgs-msg:width instead.")
  (width m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Shape2f>) ostream)
  "Serializes a message object of type '<Shape2f>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Shape2f>) istream)
  "Deserializes a message object of type '<Shape2f>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Shape2f>)))
  "Returns string type for a message object of type '<Shape2f>"
  "perception_interface_msgs/Shape2f")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Shape2f)))
  "Returns string type for a message object of type 'Shape2f"
  "perception_interface_msgs/Shape2f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Shape2f>)))
  "Returns md5sum for a message object of type '<Shape2f>"
  "b3ca5b4079862766bc09a4bf31c162f1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Shape2f)))
  "Returns md5sum for a message object of type 'Shape2f"
  "b3ca5b4079862766bc09a4bf31c162f1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Shape2f>)))
  "Returns full string definition for message of type '<Shape2f>"
  (cl:format cl:nil "float32 height~%float32 width~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Shape2f)))
  "Returns full string definition for message of type 'Shape2f"
  (cl:format cl:nil "float32 height~%float32 width~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Shape2f>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Shape2f>))
  "Converts a ROS message object to a list"
  (cl:list 'Shape2f
    (cl:cons ':height (height msg))
    (cl:cons ':width (width msg))
))
