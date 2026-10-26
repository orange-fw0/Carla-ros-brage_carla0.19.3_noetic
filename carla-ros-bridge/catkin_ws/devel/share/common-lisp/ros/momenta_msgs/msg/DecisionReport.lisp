; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude DecisionReport.msg.html

(cl:defclass <DecisionReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (current_direction
    :reader current_direction
    :initarg :current_direction
    :type cl:fixnum
    :initform 0)
   (light_status
    :reader light_status
    :initarg :light_status
    :type cl:fixnum
    :initform 0)
   (light_pattern
    :reader light_pattern
    :initarg :light_pattern
    :type cl:fixnum
    :initform 0)
   (dist2stopline
    :reader dist2stopline
    :initarg :dist2stopline
    :type cl:float
    :initform 0.0)
   (current_state
    :reader current_state
    :initarg :current_state
    :type cl:string
    :initform "")
   (current_lane_id
    :reader current_lane_id
    :initarg :current_lane_id
    :type cl:string
    :initform ""))
)

(cl:defclass DecisionReport (<DecisionReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DecisionReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DecisionReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<DecisionReport> is deprecated: use momenta_msgs-msg:DecisionReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DecisionReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:header-val is deprecated.  Use momenta_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'current_direction-val :lambda-list '(m))
(cl:defmethod current_direction-val ((m <DecisionReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:current_direction-val is deprecated.  Use momenta_msgs-msg:current_direction instead.")
  (current_direction m))

(cl:ensure-generic-function 'light_status-val :lambda-list '(m))
(cl:defmethod light_status-val ((m <DecisionReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:light_status-val is deprecated.  Use momenta_msgs-msg:light_status instead.")
  (light_status m))

(cl:ensure-generic-function 'light_pattern-val :lambda-list '(m))
(cl:defmethod light_pattern-val ((m <DecisionReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:light_pattern-val is deprecated.  Use momenta_msgs-msg:light_pattern instead.")
  (light_pattern m))

(cl:ensure-generic-function 'dist2stopline-val :lambda-list '(m))
(cl:defmethod dist2stopline-val ((m <DecisionReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:dist2stopline-val is deprecated.  Use momenta_msgs-msg:dist2stopline instead.")
  (dist2stopline m))

(cl:ensure-generic-function 'current_state-val :lambda-list '(m))
(cl:defmethod current_state-val ((m <DecisionReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:current_state-val is deprecated.  Use momenta_msgs-msg:current_state instead.")
  (current_state m))

(cl:ensure-generic-function 'current_lane_id-val :lambda-list '(m))
(cl:defmethod current_lane_id-val ((m <DecisionReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:current_lane_id-val is deprecated.  Use momenta_msgs-msg:current_lane_id instead.")
  (current_lane_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DecisionReport>) ostream)
  "Serializes a message object of type '<DecisionReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_direction)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'light_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'light_pattern)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dist2stopline))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'current_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'current_state))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'current_lane_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'current_lane_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DecisionReport>) istream)
  "Deserializes a message object of type '<DecisionReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_direction)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'light_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'light_pattern)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dist2stopline) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'current_state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_lane_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'current_lane_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DecisionReport>)))
  "Returns string type for a message object of type '<DecisionReport>"
  "momenta_msgs/DecisionReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DecisionReport)))
  "Returns string type for a message object of type 'DecisionReport"
  "momenta_msgs/DecisionReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DecisionReport>)))
  "Returns md5sum for a message object of type '<DecisionReport>"
  "c4dd61aa0e0369ed7fe9d2ee06fc542c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DecisionReport)))
  "Returns md5sum for a message object of type 'DecisionReport"
  "c4dd61aa0e0369ed7fe9d2ee06fc542c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DecisionReport>)))
  "Returns full string definition for message of type '<DecisionReport>"
  (cl:format cl:nil "std_msgs/Header header~%uint8 current_direction~%uint8 light_status~%uint8 light_pattern~%float64 dist2stopline~%string current_state~%string current_lane_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DecisionReport)))
  "Returns full string definition for message of type 'DecisionReport"
  (cl:format cl:nil "std_msgs/Header header~%uint8 current_direction~%uint8 light_status~%uint8 light_pattern~%float64 dist2stopline~%string current_state~%string current_lane_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DecisionReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     8
     4 (cl:length (cl:slot-value msg 'current_state))
     4 (cl:length (cl:slot-value msg 'current_lane_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DecisionReport>))
  "Converts a ROS message object to a list"
  (cl:list 'DecisionReport
    (cl:cons ':header (header msg))
    (cl:cons ':current_direction (current_direction msg))
    (cl:cons ':light_status (light_status msg))
    (cl:cons ':light_pattern (light_pattern msg))
    (cl:cons ':dist2stopline (dist2stopline msg))
    (cl:cons ':current_state (current_state msg))
    (cl:cons ':current_lane_id (current_lane_id msg))
))
