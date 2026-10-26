; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude SuspensionHeightValid.msg.html

(cl:defclass <SuspensionHeightValid> (roslisp-msg-protocol:ros-message)
  ((front_left
    :reader front_left
    :initarg :front_left
    :type cl:boolean
    :initform cl:nil)
   (front_right
    :reader front_right
    :initarg :front_right
    :type cl:boolean
    :initform cl:nil)
   (rear_left
    :reader rear_left
    :initarg :rear_left
    :type cl:boolean
    :initform cl:nil)
   (rear_right
    :reader rear_right
    :initarg :rear_right
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SuspensionHeightValid (<SuspensionHeightValid>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SuspensionHeightValid>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SuspensionHeightValid)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<SuspensionHeightValid> is deprecated: use endpoint_msgs-msg:SuspensionHeightValid instead.")))

(cl:ensure-generic-function 'front_left-val :lambda-list '(m))
(cl:defmethod front_left-val ((m <SuspensionHeightValid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:front_left-val is deprecated.  Use endpoint_msgs-msg:front_left instead.")
  (front_left m))

(cl:ensure-generic-function 'front_right-val :lambda-list '(m))
(cl:defmethod front_right-val ((m <SuspensionHeightValid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:front_right-val is deprecated.  Use endpoint_msgs-msg:front_right instead.")
  (front_right m))

(cl:ensure-generic-function 'rear_left-val :lambda-list '(m))
(cl:defmethod rear_left-val ((m <SuspensionHeightValid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:rear_left-val is deprecated.  Use endpoint_msgs-msg:rear_left instead.")
  (rear_left m))

(cl:ensure-generic-function 'rear_right-val :lambda-list '(m))
(cl:defmethod rear_right-val ((m <SuspensionHeightValid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:rear_right-val is deprecated.  Use endpoint_msgs-msg:rear_right instead.")
  (rear_right m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SuspensionHeightValid>) ostream)
  "Serializes a message object of type '<SuspensionHeightValid>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'front_left) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'front_right) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rear_left) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rear_right) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SuspensionHeightValid>) istream)
  "Deserializes a message object of type '<SuspensionHeightValid>"
    (cl:setf (cl:slot-value msg 'front_left) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'front_right) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'rear_left) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'rear_right) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SuspensionHeightValid>)))
  "Returns string type for a message object of type '<SuspensionHeightValid>"
  "endpoint_msgs/SuspensionHeightValid")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SuspensionHeightValid)))
  "Returns string type for a message object of type 'SuspensionHeightValid"
  "endpoint_msgs/SuspensionHeightValid")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SuspensionHeightValid>)))
  "Returns md5sum for a message object of type '<SuspensionHeightValid>"
  "463c10ee21ee0ccee80e4d06b1d4c100")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SuspensionHeightValid)))
  "Returns md5sum for a message object of type 'SuspensionHeightValid"
  "463c10ee21ee0ccee80e4d06b1d4c100")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SuspensionHeightValid>)))
  "Returns full string definition for message of type '<SuspensionHeightValid>"
  (cl:format cl:nil "bool front_left~%bool front_right~%bool rear_left~%bool rear_right~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SuspensionHeightValid)))
  "Returns full string definition for message of type 'SuspensionHeightValid"
  (cl:format cl:nil "bool front_left~%bool front_right~%bool rear_left~%bool rear_right~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SuspensionHeightValid>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SuspensionHeightValid>))
  "Converts a ROS message object to a list"
  (cl:list 'SuspensionHeightValid
    (cl:cons ':front_left (front_left msg))
    (cl:cons ':front_right (front_right msg))
    (cl:cons ':rear_left (rear_left msg))
    (cl:cons ':rear_right (rear_right msg))
))
