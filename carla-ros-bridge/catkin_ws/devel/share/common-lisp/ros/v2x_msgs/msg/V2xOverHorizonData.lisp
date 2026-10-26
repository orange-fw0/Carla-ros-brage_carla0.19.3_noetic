; Auto-generated. Do not edit!


(cl:in-package v2x_msgs-msg)


;//! \htmlinclude V2xOverHorizonData.msg.html

(cl:defclass <V2xOverHorizonData> (roslisp-msg-protocol:ros-message)
  ((intersection_id
    :reader intersection_id
    :initarg :intersection_id
    :type cl:integer
    :initform 0)
   (video_url
    :reader video_url
    :initarg :video_url
    :type cl:string
    :initform ""))
)

(cl:defclass V2xOverHorizonData (<V2xOverHorizonData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <V2xOverHorizonData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'V2xOverHorizonData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name v2x_msgs-msg:<V2xOverHorizonData> is deprecated: use v2x_msgs-msg:V2xOverHorizonData instead.")))

(cl:ensure-generic-function 'intersection_id-val :lambda-list '(m))
(cl:defmethod intersection_id-val ((m <V2xOverHorizonData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x_msgs-msg:intersection_id-val is deprecated.  Use v2x_msgs-msg:intersection_id instead.")
  (intersection_id m))

(cl:ensure-generic-function 'video_url-val :lambda-list '(m))
(cl:defmethod video_url-val ((m <V2xOverHorizonData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x_msgs-msg:video_url-val is deprecated.  Use v2x_msgs-msg:video_url instead.")
  (video_url m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <V2xOverHorizonData>) ostream)
  "Serializes a message object of type '<V2xOverHorizonData>"
  (cl:let* ((signed (cl:slot-value msg 'intersection_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'video_url))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'video_url))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <V2xOverHorizonData>) istream)
  "Deserializes a message object of type '<V2xOverHorizonData>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'intersection_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'video_url) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'video_url) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<V2xOverHorizonData>)))
  "Returns string type for a message object of type '<V2xOverHorizonData>"
  "v2x_msgs/V2xOverHorizonData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'V2xOverHorizonData)))
  "Returns string type for a message object of type 'V2xOverHorizonData"
  "v2x_msgs/V2xOverHorizonData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<V2xOverHorizonData>)))
  "Returns md5sum for a message object of type '<V2xOverHorizonData>"
  "f0568ea9f09ca526eab90db6b4cab22a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'V2xOverHorizonData)))
  "Returns md5sum for a message object of type 'V2xOverHorizonData"
  "f0568ea9f09ca526eab90db6b4cab22a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<V2xOverHorizonData>)))
  "Returns full string definition for message of type '<V2xOverHorizonData>"
  (cl:format cl:nil "int32 intersection_id~%string video_url~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'V2xOverHorizonData)))
  "Returns full string definition for message of type 'V2xOverHorizonData"
  (cl:format cl:nil "int32 intersection_id~%string video_url~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <V2xOverHorizonData>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'video_url))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <V2xOverHorizonData>))
  "Converts a ROS message object to a list"
  (cl:list 'V2xOverHorizonData
    (cl:cons ':intersection_id (intersection_id msg))
    (cl:cons ':video_url (video_url msg))
))
