; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude SrrCluster.msg.html

(cl:defclass <SrrCluster> (roslisp-msg-protocol:ros-message)
  ((detection_id
    :reader detection_id
    :initarg :detection_id
    :type cl:fixnum
    :initform 0)
   (range
    :reader range
    :initarg :range
    :type cl:float
    :initform 0.0)
   (azimuth
    :reader azimuth
    :initarg :azimuth
    :type cl:float
    :initform 0.0)
   (vrel
    :reader vrel
    :initarg :vrel
    :type cl:float
    :initform 0.0)
   (dyn_prop
    :reader dyn_prop
    :initarg :dyn_prop
    :type cl:fixnum
    :initform 0)
   (rcs
    :reader rcs
    :initarg :rcs
    :type cl:float
    :initform 0.0))
)

(cl:defclass SrrCluster (<SrrCluster>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SrrCluster>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SrrCluster)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<SrrCluster> is deprecated: use momenta_msgs-msg:SrrCluster instead.")))

(cl:ensure-generic-function 'detection_id-val :lambda-list '(m))
(cl:defmethod detection_id-val ((m <SrrCluster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:detection_id-val is deprecated.  Use momenta_msgs-msg:detection_id instead.")
  (detection_id m))

(cl:ensure-generic-function 'range-val :lambda-list '(m))
(cl:defmethod range-val ((m <SrrCluster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:range-val is deprecated.  Use momenta_msgs-msg:range instead.")
  (range m))

(cl:ensure-generic-function 'azimuth-val :lambda-list '(m))
(cl:defmethod azimuth-val ((m <SrrCluster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:azimuth-val is deprecated.  Use momenta_msgs-msg:azimuth instead.")
  (azimuth m))

(cl:ensure-generic-function 'vrel-val :lambda-list '(m))
(cl:defmethod vrel-val ((m <SrrCluster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:vrel-val is deprecated.  Use momenta_msgs-msg:vrel instead.")
  (vrel m))

(cl:ensure-generic-function 'dyn_prop-val :lambda-list '(m))
(cl:defmethod dyn_prop-val ((m <SrrCluster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:dyn_prop-val is deprecated.  Use momenta_msgs-msg:dyn_prop instead.")
  (dyn_prop m))

(cl:ensure-generic-function 'rcs-val :lambda-list '(m))
(cl:defmethod rcs-val ((m <SrrCluster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:rcs-val is deprecated.  Use momenta_msgs-msg:rcs instead.")
  (rcs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SrrCluster>) ostream)
  "Serializes a message object of type '<SrrCluster>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'detection_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'detection_id)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'range))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'azimuth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vrel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dyn_prop)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rcs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SrrCluster>) istream)
  "Deserializes a message object of type '<SrrCluster>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'detection_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'detection_id)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'range) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'azimuth) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vrel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dyn_prop)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rcs) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SrrCluster>)))
  "Returns string type for a message object of type '<SrrCluster>"
  "momenta_msgs/SrrCluster")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SrrCluster)))
  "Returns string type for a message object of type 'SrrCluster"
  "momenta_msgs/SrrCluster")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SrrCluster>)))
  "Returns md5sum for a message object of type '<SrrCluster>"
  "e8d02025d67bc80f65d08985ba70b84e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SrrCluster)))
  "Returns md5sum for a message object of type 'SrrCluster"
  "e8d02025d67bc80f65d08985ba70b84e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SrrCluster>)))
  "Returns full string definition for message of type '<SrrCluster>"
  (cl:format cl:nil "uint16 detection_id~%float32 range~%float32 azimuth~%float32 vrel~%uint8 dyn_prop~%float32 rcs~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SrrCluster)))
  "Returns full string definition for message of type 'SrrCluster"
  (cl:format cl:nil "uint16 detection_id~%float32 range~%float32 azimuth~%float32 vrel~%uint8 dyn_prop~%float32 rcs~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SrrCluster>))
  (cl:+ 0
     2
     4
     4
     4
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SrrCluster>))
  "Converts a ROS message object to a list"
  (cl:list 'SrrCluster
    (cl:cons ':detection_id (detection_id msg))
    (cl:cons ':range (range msg))
    (cl:cons ':azimuth (azimuth msg))
    (cl:cons ':vrel (vrel msg))
    (cl:cons ':dyn_prop (dyn_prop msg))
    (cl:cons ':rcs (rcs msg))
))
