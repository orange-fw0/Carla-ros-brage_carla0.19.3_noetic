; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude MergePoint.msg.html

(cl:defclass <MergePoint> (roslisp-msg-protocol:ros-message)
  ((distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (merge_type
    :reader merge_type
    :initarg :merge_type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MergePoint (<MergePoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MergePoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MergePoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<MergePoint> is deprecated: use momenta_msgs-msg:MergePoint instead.")))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <MergePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:distance-val is deprecated.  Use momenta_msgs-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'merge_type-val :lambda-list '(m))
(cl:defmethod merge_type-val ((m <MergePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:merge_type-val is deprecated.  Use momenta_msgs-msg:merge_type instead.")
  (merge_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MergePoint>) ostream)
  "Serializes a message object of type '<MergePoint>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'merge_type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MergePoint>) istream)
  "Deserializes a message object of type '<MergePoint>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'merge_type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MergePoint>)))
  "Returns string type for a message object of type '<MergePoint>"
  "momenta_msgs/MergePoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MergePoint)))
  "Returns string type for a message object of type 'MergePoint"
  "momenta_msgs/MergePoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MergePoint>)))
  "Returns md5sum for a message object of type '<MergePoint>"
  "e518a5cf8cea6798ae93996bb8f9b3dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MergePoint)))
  "Returns md5sum for a message object of type 'MergePoint"
  "e518a5cf8cea6798ae93996bb8f9b3dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MergePoint>)))
  "Returns full string definition for message of type '<MergePoint>"
  (cl:format cl:nil "float64 distance~%uint8 merge_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MergePoint)))
  "Returns full string definition for message of type 'MergePoint"
  (cl:format cl:nil "float64 distance~%uint8 merge_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MergePoint>))
  (cl:+ 0
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MergePoint>))
  "Converts a ROS message object to a list"
  (cl:list 'MergePoint
    (cl:cons ':distance (distance msg))
    (cl:cons ':merge_type (merge_type msg))
))
