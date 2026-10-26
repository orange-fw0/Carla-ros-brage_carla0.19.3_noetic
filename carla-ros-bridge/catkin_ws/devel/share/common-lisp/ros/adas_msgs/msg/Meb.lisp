; Auto-generated. Do not edit!


(cl:in-package adas_msgs-msg)


;//! \htmlinclude Meb.msg.html

(cl:defclass <Meb> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (ttc
    :reader ttc
    :initarg :ttc
    :type cl:float
    :initform 0.0))
)

(cl:defclass Meb (<Meb>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Meb>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Meb)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name adas_msgs-msg:<Meb> is deprecated: use adas_msgs-msg:Meb instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Meb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adas_msgs-msg:header-val is deprecated.  Use adas_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ttc-val :lambda-list '(m))
(cl:defmethod ttc-val ((m <Meb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adas_msgs-msg:ttc-val is deprecated.  Use adas_msgs-msg:ttc instead.")
  (ttc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Meb>) ostream)
  "Serializes a message object of type '<Meb>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ttc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Meb>) istream)
  "Deserializes a message object of type '<Meb>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ttc) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Meb>)))
  "Returns string type for a message object of type '<Meb>"
  "adas_msgs/Meb")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Meb)))
  "Returns string type for a message object of type 'Meb"
  "adas_msgs/Meb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Meb>)))
  "Returns md5sum for a message object of type '<Meb>"
  "306158f58935c451e3ddf5846dd01474")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Meb)))
  "Returns md5sum for a message object of type 'Meb"
  "306158f58935c451e3ddf5846dd01474")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Meb>)))
  "Returns full string definition for message of type '<Meb>"
  (cl:format cl:nil "std_msgs/Header header~%float64 ttc~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Meb)))
  "Returns full string definition for message of type 'Meb"
  (cl:format cl:nil "std_msgs/Header header~%float64 ttc~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Meb>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Meb>))
  "Converts a ROS message object to a list"
  (cl:list 'Meb
    (cl:cons ':header (header msg))
    (cl:cons ':ttc (ttc msg))
))
