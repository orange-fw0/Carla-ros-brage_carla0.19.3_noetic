; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude ArsCluster.msg.html

(cl:defclass <ArsCluster> (roslisp-msg-protocol:ros-message)
  ((detection_id
    :reader detection_id
    :initarg :detection_id
    :type cl:fixnum
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (dyn_prop
    :reader dyn_prop
    :initarg :dyn_prop
    :type cl:fixnum
    :initform 0)
   (rcs
    :reader rcs
    :initarg :rcs
    :type cl:float
    :initform 0.0)
   (dislong_rms
    :reader dislong_rms
    :initarg :dislong_rms
    :type cl:fixnum
    :initform 0)
   (dislat_rms
    :reader dislat_rms
    :initarg :dislat_rms
    :type cl:fixnum
    :initform 0)
   (verllong_rms
    :reader verllong_rms
    :initarg :verllong_rms
    :type cl:fixnum
    :initform 0)
   (verllat_rms
    :reader verllat_rms
    :initarg :verllat_rms
    :type cl:fixnum
    :initform 0)
   (arellong_rms
    :reader arellong_rms
    :initarg :arellong_rms
    :type cl:fixnum
    :initform 0)
   (arellat_rms
    :reader arellat_rms
    :initarg :arellat_rms
    :type cl:fixnum
    :initform 0)
   (pdh0
    :reader pdh0
    :initarg :pdh0
    :type cl:fixnum
    :initform 0)
   (ambigstate
    :reader ambigstate
    :initarg :ambigstate
    :type cl:fixnum
    :initform 0)
   (invalidstate
    :reader invalidstate
    :initarg :invalidstate
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ArsCluster (<ArsCluster>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArsCluster>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArsCluster)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<ArsCluster> is deprecated: use momenta_msgs-msg:ArsCluster instead.")))

(cl:ensure-generic-function 'detection_id-val :lambda-list '(m))
(cl:defmethod detection_id-val ((m <ArsCluster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:detection_id-val is deprecated.  Use momenta_msgs-msg:detection_id instead.")
  (detection_id m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <ArsCluster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:position-val is deprecated.  Use momenta_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <ArsCluster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:velocity-val is deprecated.  Use momenta_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'dyn_prop-val :lambda-list '(m))
(cl:defmethod dyn_prop-val ((m <ArsCluster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:dyn_prop-val is deprecated.  Use momenta_msgs-msg:dyn_prop instead.")
  (dyn_prop m))

(cl:ensure-generic-function 'rcs-val :lambda-list '(m))
(cl:defmethod rcs-val ((m <ArsCluster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:rcs-val is deprecated.  Use momenta_msgs-msg:rcs instead.")
  (rcs m))

(cl:ensure-generic-function 'dislong_rms-val :lambda-list '(m))
(cl:defmethod dislong_rms-val ((m <ArsCluster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:dislong_rms-val is deprecated.  Use momenta_msgs-msg:dislong_rms instead.")
  (dislong_rms m))

(cl:ensure-generic-function 'dislat_rms-val :lambda-list '(m))
(cl:defmethod dislat_rms-val ((m <ArsCluster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:dislat_rms-val is deprecated.  Use momenta_msgs-msg:dislat_rms instead.")
  (dislat_rms m))

(cl:ensure-generic-function 'verllong_rms-val :lambda-list '(m))
(cl:defmethod verllong_rms-val ((m <ArsCluster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:verllong_rms-val is deprecated.  Use momenta_msgs-msg:verllong_rms instead.")
  (verllong_rms m))

(cl:ensure-generic-function 'verllat_rms-val :lambda-list '(m))
(cl:defmethod verllat_rms-val ((m <ArsCluster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:verllat_rms-val is deprecated.  Use momenta_msgs-msg:verllat_rms instead.")
  (verllat_rms m))

(cl:ensure-generic-function 'arellong_rms-val :lambda-list '(m))
(cl:defmethod arellong_rms-val ((m <ArsCluster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:arellong_rms-val is deprecated.  Use momenta_msgs-msg:arellong_rms instead.")
  (arellong_rms m))

(cl:ensure-generic-function 'arellat_rms-val :lambda-list '(m))
(cl:defmethod arellat_rms-val ((m <ArsCluster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:arellat_rms-val is deprecated.  Use momenta_msgs-msg:arellat_rms instead.")
  (arellat_rms m))

(cl:ensure-generic-function 'pdh0-val :lambda-list '(m))
(cl:defmethod pdh0-val ((m <ArsCluster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:pdh0-val is deprecated.  Use momenta_msgs-msg:pdh0 instead.")
  (pdh0 m))

(cl:ensure-generic-function 'ambigstate-val :lambda-list '(m))
(cl:defmethod ambigstate-val ((m <ArsCluster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:ambigstate-val is deprecated.  Use momenta_msgs-msg:ambigstate instead.")
  (ambigstate m))

(cl:ensure-generic-function 'invalidstate-val :lambda-list '(m))
(cl:defmethod invalidstate-val ((m <ArsCluster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:invalidstate-val is deprecated.  Use momenta_msgs-msg:invalidstate instead.")
  (invalidstate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArsCluster>) ostream)
  "Serializes a message object of type '<ArsCluster>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'detection_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'detection_id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dyn_prop)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rcs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dislong_rms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dislat_rms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'verllong_rms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'verllat_rms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'arellong_rms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'arellat_rms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pdh0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ambigstate)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'invalidstate)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArsCluster>) istream)
  "Deserializes a message object of type '<ArsCluster>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'detection_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'detection_id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dyn_prop)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rcs) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dislong_rms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dislat_rms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'verllong_rms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'verllat_rms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'arellong_rms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'arellat_rms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pdh0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ambigstate)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'invalidstate)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArsCluster>)))
  "Returns string type for a message object of type '<ArsCluster>"
  "momenta_msgs/ArsCluster")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArsCluster)))
  "Returns string type for a message object of type 'ArsCluster"
  "momenta_msgs/ArsCluster")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArsCluster>)))
  "Returns md5sum for a message object of type '<ArsCluster>"
  "116a250881e257c3186d20d0388e7b45")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArsCluster)))
  "Returns md5sum for a message object of type 'ArsCluster"
  "116a250881e257c3186d20d0388e7b45")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArsCluster>)))
  "Returns full string definition for message of type '<ArsCluster>"
  (cl:format cl:nil "uint16 detection_id~%geometry_msgs/Point position~%geometry_msgs/Vector3 velocity~%uint8 dyn_prop~%float32 rcs~%uint8 dislong_rms~%uint8 dislat_rms~%uint8 verllong_rms~%uint8 verllat_rms~%uint8 arellong_rms~%uint8 arellat_rms~%uint8 pdh0~%uint8 ambigstate~%uint8 invalidstate~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArsCluster)))
  "Returns full string definition for message of type 'ArsCluster"
  (cl:format cl:nil "uint16 detection_id~%geometry_msgs/Point position~%geometry_msgs/Vector3 velocity~%uint8 dyn_prop~%float32 rcs~%uint8 dislong_rms~%uint8 dislat_rms~%uint8 verllong_rms~%uint8 verllat_rms~%uint8 arellong_rms~%uint8 arellat_rms~%uint8 pdh0~%uint8 ambigstate~%uint8 invalidstate~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArsCluster>))
  (cl:+ 0
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     1
     4
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArsCluster>))
  "Converts a ROS message object to a list"
  (cl:list 'ArsCluster
    (cl:cons ':detection_id (detection_id msg))
    (cl:cons ':position (position msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':dyn_prop (dyn_prop msg))
    (cl:cons ':rcs (rcs msg))
    (cl:cons ':dislong_rms (dislong_rms msg))
    (cl:cons ':dislat_rms (dislat_rms msg))
    (cl:cons ':verllong_rms (verllong_rms msg))
    (cl:cons ':verllat_rms (verllat_rms msg))
    (cl:cons ':arellong_rms (arellong_rms msg))
    (cl:cons ':arellat_rms (arellat_rms msg))
    (cl:cons ':pdh0 (pdh0 msg))
    (cl:cons ':ambigstate (ambigstate msg))
    (cl:cons ':invalidstate (invalidstate msg))
))
