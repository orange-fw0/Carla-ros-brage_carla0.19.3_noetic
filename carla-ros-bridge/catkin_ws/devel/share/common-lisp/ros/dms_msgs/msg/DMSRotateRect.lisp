; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSRotateRect.msg.html

(cl:defclass <DMSRotateRect> (roslisp-msg-protocol:ros-message)
  ((center
    :reader center
    :initarg :center
    :type dms_msgs-msg:DMSPoint2f
    :initform (cl:make-instance 'dms_msgs-msg:DMSPoint2f))
   (width
    :reader width
    :initarg :width
    :type cl:float
    :initform 0.0)
   (height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0)
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass DMSRotateRect (<DMSRotateRect>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSRotateRect>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSRotateRect)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSRotateRect> is deprecated: use dms_msgs-msg:DMSRotateRect instead.")))

(cl:ensure-generic-function 'center-val :lambda-list '(m))
(cl:defmethod center-val ((m <DMSRotateRect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:center-val is deprecated.  Use dms_msgs-msg:center instead.")
  (center m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <DMSRotateRect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:width-val is deprecated.  Use dms_msgs-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <DMSRotateRect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:height-val is deprecated.  Use dms_msgs-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <DMSRotateRect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:angle-val is deprecated.  Use dms_msgs-msg:angle instead.")
  (angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSRotateRect>) ostream)
  "Serializes a message object of type '<DMSRotateRect>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'center) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSRotateRect>) istream)
  "Deserializes a message object of type '<DMSRotateRect>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'center) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width) (roslisp-utils:decode-single-float-bits bits)))
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
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSRotateRect>)))
  "Returns string type for a message object of type '<DMSRotateRect>"
  "dms_msgs/DMSRotateRect")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSRotateRect)))
  "Returns string type for a message object of type 'DMSRotateRect"
  "dms_msgs/DMSRotateRect")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSRotateRect>)))
  "Returns md5sum for a message object of type '<DMSRotateRect>"
  "4ca3a40298990ac6a3c8e888da054d9f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSRotateRect)))
  "Returns md5sum for a message object of type 'DMSRotateRect"
  "4ca3a40298990ac6a3c8e888da054d9f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSRotateRect>)))
  "Returns full string definition for message of type '<DMSRotateRect>"
  (cl:format cl:nil "dms_msgs/DMSPoint2f center~%float32 width~%float32 height~%float32 angle~%~%================================================================================~%MSG: dms_msgs/DMSPoint2f~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSRotateRect)))
  "Returns full string definition for message of type 'DMSRotateRect"
  (cl:format cl:nil "dms_msgs/DMSPoint2f center~%float32 width~%float32 height~%float32 angle~%~%================================================================================~%MSG: dms_msgs/DMSPoint2f~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSRotateRect>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSRotateRect>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSRotateRect
    (cl:cons ':center (center msg))
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
    (cl:cons ':angle (angle msg))
))
