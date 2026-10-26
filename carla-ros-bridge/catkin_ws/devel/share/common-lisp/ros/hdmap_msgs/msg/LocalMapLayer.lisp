; Auto-generated. Do not edit!


(cl:in-package hdmap_msgs-msg)


;//! \htmlinclude LocalMapLayer.msg.html

(cl:defclass <LocalMapLayer> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:string
    :initform ""))
)

(cl:defclass LocalMapLayer (<LocalMapLayer>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocalMapLayer>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocalMapLayer)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdmap_msgs-msg:<LocalMapLayer> is deprecated: use hdmap_msgs-msg:LocalMapLayer instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <LocalMapLayer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdmap_msgs-msg:data-val is deprecated.  Use hdmap_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocalMapLayer>) ostream)
  "Serializes a message object of type '<LocalMapLayer>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocalMapLayer>) istream)
  "Deserializes a message object of type '<LocalMapLayer>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocalMapLayer>)))
  "Returns string type for a message object of type '<LocalMapLayer>"
  "hdmap_msgs/LocalMapLayer")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalMapLayer)))
  "Returns string type for a message object of type 'LocalMapLayer"
  "hdmap_msgs/LocalMapLayer")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocalMapLayer>)))
  "Returns md5sum for a message object of type '<LocalMapLayer>"
  "992ce8a1687cec8c8bd883ec73ca41d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocalMapLayer)))
  "Returns md5sum for a message object of type 'LocalMapLayer"
  "992ce8a1687cec8c8bd883ec73ca41d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocalMapLayer>)))
  "Returns full string definition for message of type '<LocalMapLayer>"
  (cl:format cl:nil "string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocalMapLayer)))
  "Returns full string definition for message of type 'LocalMapLayer"
  (cl:format cl:nil "string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocalMapLayer>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocalMapLayer>))
  "Converts a ROS message object to a list"
  (cl:list 'LocalMapLayer
    (cl:cons ':data (data msg))
))
