; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude SuspensionHeight.msg.html

(cl:defclass <SuspensionHeight> (roslisp-msg-protocol:ros-message)
  ((front_left
    :reader front_left
    :initarg :front_left
    :type cl:fixnum
    :initform 0)
   (front_right
    :reader front_right
    :initarg :front_right
    :type cl:fixnum
    :initform 0)
   (rear_left
    :reader rear_left
    :initarg :rear_left
    :type cl:fixnum
    :initform 0)
   (rear_right
    :reader rear_right
    :initarg :rear_right
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SuspensionHeight (<SuspensionHeight>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SuspensionHeight>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SuspensionHeight)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<SuspensionHeight> is deprecated: use endpoint_msgs-msg:SuspensionHeight instead.")))

(cl:ensure-generic-function 'front_left-val :lambda-list '(m))
(cl:defmethod front_left-val ((m <SuspensionHeight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:front_left-val is deprecated.  Use endpoint_msgs-msg:front_left instead.")
  (front_left m))

(cl:ensure-generic-function 'front_right-val :lambda-list '(m))
(cl:defmethod front_right-val ((m <SuspensionHeight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:front_right-val is deprecated.  Use endpoint_msgs-msg:front_right instead.")
  (front_right m))

(cl:ensure-generic-function 'rear_left-val :lambda-list '(m))
(cl:defmethod rear_left-val ((m <SuspensionHeight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:rear_left-val is deprecated.  Use endpoint_msgs-msg:rear_left instead.")
  (rear_left m))

(cl:ensure-generic-function 'rear_right-val :lambda-list '(m))
(cl:defmethod rear_right-val ((m <SuspensionHeight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:rear_right-val is deprecated.  Use endpoint_msgs-msg:rear_right instead.")
  (rear_right m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SuspensionHeight>) ostream)
  "Serializes a message object of type '<SuspensionHeight>"
  (cl:let* ((signed (cl:slot-value msg 'front_left)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'front_right)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rear_left)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rear_right)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SuspensionHeight>) istream)
  "Deserializes a message object of type '<SuspensionHeight>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'front_left) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'front_right) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rear_left) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rear_right) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SuspensionHeight>)))
  "Returns string type for a message object of type '<SuspensionHeight>"
  "endpoint_msgs/SuspensionHeight")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SuspensionHeight)))
  "Returns string type for a message object of type 'SuspensionHeight"
  "endpoint_msgs/SuspensionHeight")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SuspensionHeight>)))
  "Returns md5sum for a message object of type '<SuspensionHeight>"
  "a391049fca247e3d60e3a900b93bbf54")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SuspensionHeight)))
  "Returns md5sum for a message object of type 'SuspensionHeight"
  "a391049fca247e3d60e3a900b93bbf54")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SuspensionHeight>)))
  "Returns full string definition for message of type '<SuspensionHeight>"
  (cl:format cl:nil "int8 front_left~%int8 front_right~%int8 rear_left~%int8 rear_right~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SuspensionHeight)))
  "Returns full string definition for message of type 'SuspensionHeight"
  (cl:format cl:nil "int8 front_left~%int8 front_right~%int8 rear_left~%int8 rear_right~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SuspensionHeight>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SuspensionHeight>))
  "Converts a ROS message object to a list"
  (cl:list 'SuspensionHeight
    (cl:cons ':front_left (front_left msg))
    (cl:cons ':front_right (front_right msg))
    (cl:cons ':rear_left (rear_left msg))
    (cl:cons ':rear_right (rear_right msg))
))
