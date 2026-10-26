; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude ArsObject.msg.html

(cl:defclass <ArsObject> (roslisp-msg-protocol:ros-message)
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
   (orientation_rms
    :reader orientation_rms
    :initarg :orientation_rms
    :type cl:fixnum
    :initform 0)
   (meas_state
    :reader meas_state
    :initarg :meas_state
    :type cl:fixnum
    :initform 0)
   (probofexist
    :reader probofexist
    :initarg :probofexist
    :type cl:fixnum
    :initform 0)
   (are_long
    :reader are_long
    :initarg :are_long
    :type cl:float
    :initform 0.0)
   (obj_class
    :reader obj_class
    :initarg :obj_class
    :type cl:fixnum
    :initform 0)
   (are_lat
    :reader are_lat
    :initarg :are_lat
    :type cl:float
    :initform 0.0)
   (orientation_angle
    :reader orientation_angle
    :initarg :orientation_angle
    :type cl:float
    :initform 0.0)
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0)
   (width
    :reader width
    :initarg :width
    :type cl:float
    :initform 0.0))
)

(cl:defclass ArsObject (<ArsObject>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArsObject>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArsObject)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<ArsObject> is deprecated: use momenta_msgs-msg:ArsObject instead.")))

(cl:ensure-generic-function 'detection_id-val :lambda-list '(m))
(cl:defmethod detection_id-val ((m <ArsObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:detection_id-val is deprecated.  Use momenta_msgs-msg:detection_id instead.")
  (detection_id m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <ArsObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:position-val is deprecated.  Use momenta_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <ArsObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:velocity-val is deprecated.  Use momenta_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'dyn_prop-val :lambda-list '(m))
(cl:defmethod dyn_prop-val ((m <ArsObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:dyn_prop-val is deprecated.  Use momenta_msgs-msg:dyn_prop instead.")
  (dyn_prop m))

(cl:ensure-generic-function 'rcs-val :lambda-list '(m))
(cl:defmethod rcs-val ((m <ArsObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:rcs-val is deprecated.  Use momenta_msgs-msg:rcs instead.")
  (rcs m))

(cl:ensure-generic-function 'dislong_rms-val :lambda-list '(m))
(cl:defmethod dislong_rms-val ((m <ArsObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:dislong_rms-val is deprecated.  Use momenta_msgs-msg:dislong_rms instead.")
  (dislong_rms m))

(cl:ensure-generic-function 'dislat_rms-val :lambda-list '(m))
(cl:defmethod dislat_rms-val ((m <ArsObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:dislat_rms-val is deprecated.  Use momenta_msgs-msg:dislat_rms instead.")
  (dislat_rms m))

(cl:ensure-generic-function 'verllong_rms-val :lambda-list '(m))
(cl:defmethod verllong_rms-val ((m <ArsObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:verllong_rms-val is deprecated.  Use momenta_msgs-msg:verllong_rms instead.")
  (verllong_rms m))

(cl:ensure-generic-function 'verllat_rms-val :lambda-list '(m))
(cl:defmethod verllat_rms-val ((m <ArsObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:verllat_rms-val is deprecated.  Use momenta_msgs-msg:verllat_rms instead.")
  (verllat_rms m))

(cl:ensure-generic-function 'arellong_rms-val :lambda-list '(m))
(cl:defmethod arellong_rms-val ((m <ArsObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:arellong_rms-val is deprecated.  Use momenta_msgs-msg:arellong_rms instead.")
  (arellong_rms m))

(cl:ensure-generic-function 'arellat_rms-val :lambda-list '(m))
(cl:defmethod arellat_rms-val ((m <ArsObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:arellat_rms-val is deprecated.  Use momenta_msgs-msg:arellat_rms instead.")
  (arellat_rms m))

(cl:ensure-generic-function 'orientation_rms-val :lambda-list '(m))
(cl:defmethod orientation_rms-val ((m <ArsObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:orientation_rms-val is deprecated.  Use momenta_msgs-msg:orientation_rms instead.")
  (orientation_rms m))

(cl:ensure-generic-function 'meas_state-val :lambda-list '(m))
(cl:defmethod meas_state-val ((m <ArsObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:meas_state-val is deprecated.  Use momenta_msgs-msg:meas_state instead.")
  (meas_state m))

(cl:ensure-generic-function 'probofexist-val :lambda-list '(m))
(cl:defmethod probofexist-val ((m <ArsObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:probofexist-val is deprecated.  Use momenta_msgs-msg:probofexist instead.")
  (probofexist m))

(cl:ensure-generic-function 'are_long-val :lambda-list '(m))
(cl:defmethod are_long-val ((m <ArsObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:are_long-val is deprecated.  Use momenta_msgs-msg:are_long instead.")
  (are_long m))

(cl:ensure-generic-function 'obj_class-val :lambda-list '(m))
(cl:defmethod obj_class-val ((m <ArsObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:obj_class-val is deprecated.  Use momenta_msgs-msg:obj_class instead.")
  (obj_class m))

(cl:ensure-generic-function 'are_lat-val :lambda-list '(m))
(cl:defmethod are_lat-val ((m <ArsObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:are_lat-val is deprecated.  Use momenta_msgs-msg:are_lat instead.")
  (are_lat m))

(cl:ensure-generic-function 'orientation_angle-val :lambda-list '(m))
(cl:defmethod orientation_angle-val ((m <ArsObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:orientation_angle-val is deprecated.  Use momenta_msgs-msg:orientation_angle instead.")
  (orientation_angle m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <ArsObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:length-val is deprecated.  Use momenta_msgs-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <ArsObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:width-val is deprecated.  Use momenta_msgs-msg:width instead.")
  (width m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArsObject>) ostream)
  "Serializes a message object of type '<ArsObject>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'orientation_rms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'meas_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'probofexist)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'are_long))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'obj_class)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'are_lat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'orientation_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArsObject>) istream)
  "Deserializes a message object of type '<ArsObject>"
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'orientation_rms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'meas_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'probofexist)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'are_long) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'obj_class)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'are_lat) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'orientation_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArsObject>)))
  "Returns string type for a message object of type '<ArsObject>"
  "momenta_msgs/ArsObject")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArsObject)))
  "Returns string type for a message object of type 'ArsObject"
  "momenta_msgs/ArsObject")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArsObject>)))
  "Returns md5sum for a message object of type '<ArsObject>"
  "64d99256889fd984c50365eb36bd8884")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArsObject)))
  "Returns md5sum for a message object of type 'ArsObject"
  "64d99256889fd984c50365eb36bd8884")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArsObject>)))
  "Returns full string definition for message of type '<ArsObject>"
  (cl:format cl:nil "uint16 detection_id~%geometry_msgs/Point position~%geometry_msgs/Vector3 velocity~%uint8 dyn_prop~%float32 rcs~%uint8 dislong_rms~%uint8 dislat_rms~%uint8 verllong_rms~%uint8 verllat_rms~%uint8 arellong_rms~%uint8 arellat_rms~%uint8 orientation_rms~%uint8 meas_state~%uint8 probofexist~%float32 are_long~%uint8 obj_class~%float32 are_lat~%float32 orientation_angle~%float32 length~%float32 width~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArsObject)))
  "Returns full string definition for message of type 'ArsObject"
  (cl:format cl:nil "uint16 detection_id~%geometry_msgs/Point position~%geometry_msgs/Vector3 velocity~%uint8 dyn_prop~%float32 rcs~%uint8 dislong_rms~%uint8 dislat_rms~%uint8 verllong_rms~%uint8 verllat_rms~%uint8 arellong_rms~%uint8 arellat_rms~%uint8 orientation_rms~%uint8 meas_state~%uint8 probofexist~%float32 are_long~%uint8 obj_class~%float32 are_lat~%float32 orientation_angle~%float32 length~%float32 width~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArsObject>))
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
     4
     1
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArsObject>))
  "Converts a ROS message object to a list"
  (cl:list 'ArsObject
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
    (cl:cons ':orientation_rms (orientation_rms msg))
    (cl:cons ':meas_state (meas_state msg))
    (cl:cons ':probofexist (probofexist msg))
    (cl:cons ':are_long (are_long msg))
    (cl:cons ':obj_class (obj_class msg))
    (cl:cons ':are_lat (are_lat msg))
    (cl:cons ':orientation_angle (orientation_angle msg))
    (cl:cons ':length (length msg))
    (cl:cons ':width (width msg))
))
