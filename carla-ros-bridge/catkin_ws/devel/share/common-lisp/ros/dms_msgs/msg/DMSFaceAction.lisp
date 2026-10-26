; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSFaceAction.msg.html

(cl:defclass <DMSFaceAction> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0))
)

(cl:defclass DMSFaceAction (<DMSFaceAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSFaceAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSFaceAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSFaceAction> is deprecated: use dms_msgs-msg:DMSFaceAction instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <DMSFaceAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:name-val is deprecated.  Use dms_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <DMSFaceAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:score-val is deprecated.  Use dms_msgs-msg:score instead.")
  (score m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSFaceAction>) ostream)
  "Serializes a message object of type '<DMSFaceAction>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSFaceAction>) istream)
  "Deserializes a message object of type '<DMSFaceAction>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSFaceAction>)))
  "Returns string type for a message object of type '<DMSFaceAction>"
  "dms_msgs/DMSFaceAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSFaceAction)))
  "Returns string type for a message object of type 'DMSFaceAction"
  "dms_msgs/DMSFaceAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSFaceAction>)))
  "Returns md5sum for a message object of type '<DMSFaceAction>"
  "6cee5585e1cb25a4b0c395da3a73f8bb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSFaceAction)))
  "Returns md5sum for a message object of type 'DMSFaceAction"
  "6cee5585e1cb25a4b0c395da3a73f8bb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSFaceAction>)))
  "Returns full string definition for message of type '<DMSFaceAction>"
  (cl:format cl:nil "string name~%float32 score~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSFaceAction)))
  "Returns full string definition for message of type 'DMSFaceAction"
  (cl:format cl:nil "string name~%float32 score~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSFaceAction>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSFaceAction>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSFaceAction
    (cl:cons ':name (name msg))
    (cl:cons ':score (score msg))
))
