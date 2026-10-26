; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude Mdf.msg.html

(cl:defclass <Mdf> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (idx
    :reader idx
    :initarg :idx
    :type cl:integer
    :initform 0)
   (speed_limit
    :reader speed_limit
    :initarg :speed_limit
    :type cl:float
    :initform 0.0)
   (p1
    :reader p1
    :initarg :p1
    :type cl:integer
    :initform 0)
   (p2
    :reader p2
    :initarg :p2
    :type cl:integer
    :initform 0)
   (traffic_light
    :reader traffic_light
    :initarg :traffic_light
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Mdf (<Mdf>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Mdf>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Mdf)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<Mdf> is deprecated: use momenta_msgs-msg:Mdf instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Mdf>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:id-val is deprecated.  Use momenta_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'idx-val :lambda-list '(m))
(cl:defmethod idx-val ((m <Mdf>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:idx-val is deprecated.  Use momenta_msgs-msg:idx instead.")
  (idx m))

(cl:ensure-generic-function 'speed_limit-val :lambda-list '(m))
(cl:defmethod speed_limit-val ((m <Mdf>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:speed_limit-val is deprecated.  Use momenta_msgs-msg:speed_limit instead.")
  (speed_limit m))

(cl:ensure-generic-function 'p1-val :lambda-list '(m))
(cl:defmethod p1-val ((m <Mdf>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:p1-val is deprecated.  Use momenta_msgs-msg:p1 instead.")
  (p1 m))

(cl:ensure-generic-function 'p2-val :lambda-list '(m))
(cl:defmethod p2-val ((m <Mdf>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:p2-val is deprecated.  Use momenta_msgs-msg:p2 instead.")
  (p2 m))

(cl:ensure-generic-function 'traffic_light-val :lambda-list '(m))
(cl:defmethod traffic_light-val ((m <Mdf>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:traffic_light-val is deprecated.  Use momenta_msgs-msg:traffic_light instead.")
  (traffic_light m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Mdf>) ostream)
  "Serializes a message object of type '<Mdf>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'idx)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed_limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'p1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'p2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'traffic_light) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Mdf>) istream)
  "Deserializes a message object of type '<Mdf>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'idx) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_limit) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'p1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'p2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'traffic_light) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Mdf>)))
  "Returns string type for a message object of type '<Mdf>"
  "momenta_msgs/Mdf")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Mdf)))
  "Returns string type for a message object of type 'Mdf"
  "momenta_msgs/Mdf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Mdf>)))
  "Returns md5sum for a message object of type '<Mdf>"
  "b7bd4ea8d7dba1815b53b9cfb328a69b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Mdf)))
  "Returns md5sum for a message object of type 'Mdf"
  "b7bd4ea8d7dba1815b53b9cfb328a69b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Mdf>)))
  "Returns full string definition for message of type '<Mdf>"
  (cl:format cl:nil "int32 id~%int32 idx~%float32 speed_limit~%int32 p1~%int32 p2~%bool traffic_light~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Mdf)))
  "Returns full string definition for message of type 'Mdf"
  (cl:format cl:nil "int32 id~%int32 idx~%float32 speed_limit~%int32 p1~%int32 p2~%bool traffic_light~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Mdf>))
  (cl:+ 0
     4
     4
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Mdf>))
  "Converts a ROS message object to a list"
  (cl:list 'Mdf
    (cl:cons ':id (id msg))
    (cl:cons ':idx (idx msg))
    (cl:cons ':speed_limit (speed_limit msg))
    (cl:cons ':p1 (p1 msg))
    (cl:cons ':p2 (p2 msg))
    (cl:cons ':traffic_light (traffic_light msg))
))
