; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude MTPTrafficLight.msg.html

(cl:defclass <MTPTrafficLight> (roslisp-msg-protocol:ros-message)
  ((rect
    :reader rect
    :initarg :rect
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0)
   (state_enum
    :reader state_enum
    :initarg :state_enum
    :type cl:integer
    :initform 0)
   (pattern_enum
    :reader pattern_enum
    :initarg :pattern_enum
    :type cl:integer
    :initform 0)
   (track_id
    :reader track_id
    :initarg :track_id
    :type cl:integer
    :initform 0))
)

(cl:defclass MTPTrafficLight (<MTPTrafficLight>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MTPTrafficLight>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MTPTrafficLight)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<MTPTrafficLight> is deprecated: use momenta_msgs-msg:MTPTrafficLight instead.")))

(cl:ensure-generic-function 'rect-val :lambda-list '(m))
(cl:defmethod rect-val ((m <MTPTrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:rect-val is deprecated.  Use momenta_msgs-msg:rect instead.")
  (rect m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <MTPTrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:score-val is deprecated.  Use momenta_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'state_enum-val :lambda-list '(m))
(cl:defmethod state_enum-val ((m <MTPTrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:state_enum-val is deprecated.  Use momenta_msgs-msg:state_enum instead.")
  (state_enum m))

(cl:ensure-generic-function 'pattern_enum-val :lambda-list '(m))
(cl:defmethod pattern_enum-val ((m <MTPTrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:pattern_enum-val is deprecated.  Use momenta_msgs-msg:pattern_enum instead.")
  (pattern_enum m))

(cl:ensure-generic-function 'track_id-val :lambda-list '(m))
(cl:defmethod track_id-val ((m <MTPTrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:track_id-val is deprecated.  Use momenta_msgs-msg:track_id instead.")
  (track_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MTPTrafficLight>) ostream)
  "Serializes a message object of type '<MTPTrafficLight>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'rect))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'rect))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'state_enum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pattern_enum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'track_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MTPTrafficLight>) istream)
  "Deserializes a message object of type '<MTPTrafficLight>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rect) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'rect)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state_enum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pattern_enum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'track_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MTPTrafficLight>)))
  "Returns string type for a message object of type '<MTPTrafficLight>"
  "momenta_msgs/MTPTrafficLight")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MTPTrafficLight)))
  "Returns string type for a message object of type 'MTPTrafficLight"
  "momenta_msgs/MTPTrafficLight")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MTPTrafficLight>)))
  "Returns md5sum for a message object of type '<MTPTrafficLight>"
  "b7ac1b020fb935505e9c77ab77450d3c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MTPTrafficLight)))
  "Returns md5sum for a message object of type 'MTPTrafficLight"
  "b7ac1b020fb935505e9c77ab77450d3c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MTPTrafficLight>)))
  "Returns full string definition for message of type '<MTPTrafficLight>"
  (cl:format cl:nil "float32[] rect~%float32 score~%int32 state_enum~%int32 pattern_enum~%int32 track_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MTPTrafficLight)))
  "Returns full string definition for message of type 'MTPTrafficLight"
  (cl:format cl:nil "float32[] rect~%float32 score~%int32 state_enum~%int32 pattern_enum~%int32 track_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MTPTrafficLight>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rect) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MTPTrafficLight>))
  "Converts a ROS message object to a list"
  (cl:list 'MTPTrafficLight
    (cl:cons ':rect (rect msg))
    (cl:cons ':score (score msg))
    (cl:cons ':state_enum (state_enum msg))
    (cl:cons ':pattern_enum (pattern_enum msg))
    (cl:cons ':track_id (track_id msg))
))
