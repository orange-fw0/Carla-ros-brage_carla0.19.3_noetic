; Auto-generated. Do not edit!


(cl:in-package tos_msgs-msg)


;//! \htmlinclude TOSResponse.msg.html

(cl:defclass <TOSResponse> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (decision
    :reader decision
    :initarg :decision
    :type tos_msgs-msg:TOSResponseDecisionEnum
    :initform (cl:make-instance 'tos_msgs-msg:TOSResponseDecisionEnum))
   (candidate
    :reader candidate
    :initarg :candidate
    :type tos_msgs-msg:TOSResponseCandidate
    :initform (cl:make-instance 'tos_msgs-msg:TOSResponseCandidate)))
)

(cl:defclass TOSResponse (<TOSResponse>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TOSResponse>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TOSResponse)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tos_msgs-msg:<TOSResponse> is deprecated: use tos_msgs-msg:TOSResponse instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TOSResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:header-val is deprecated.  Use tos_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'decision-val :lambda-list '(m))
(cl:defmethod decision-val ((m <TOSResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:decision-val is deprecated.  Use tos_msgs-msg:decision instead.")
  (decision m))

(cl:ensure-generic-function 'candidate-val :lambda-list '(m))
(cl:defmethod candidate-val ((m <TOSResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:candidate-val is deprecated.  Use tos_msgs-msg:candidate instead.")
  (candidate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TOSResponse>) ostream)
  "Serializes a message object of type '<TOSResponse>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'decision) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'candidate) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TOSResponse>) istream)
  "Deserializes a message object of type '<TOSResponse>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'decision) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'candidate) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TOSResponse>)))
  "Returns string type for a message object of type '<TOSResponse>"
  "tos_msgs/TOSResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TOSResponse)))
  "Returns string type for a message object of type 'TOSResponse"
  "tos_msgs/TOSResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TOSResponse>)))
  "Returns md5sum for a message object of type '<TOSResponse>"
  "7a4d73c8f2338d30ec9e7e8bed564936")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TOSResponse)))
  "Returns md5sum for a message object of type 'TOSResponse"
  "7a4d73c8f2338d30ec9e7e8bed564936")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TOSResponse>)))
  "Returns full string definition for message of type '<TOSResponse>"
  (cl:format cl:nil "std_msgs/Header header~%tos_msgs/TOSResponseDecisionEnum decision~%tos_msgs/TOSResponseCandidate candidate~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tos_msgs/TOSResponseDecisionEnum~%uint8 UNKNOWN = 0~%uint8 YES = 1~%uint8 NO = 2~%uint8 value~%~%================================================================================~%MSG: tos_msgs/TOSResponseCandidate~%uint32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TOSResponse)))
  "Returns full string definition for message of type 'TOSResponse"
  (cl:format cl:nil "std_msgs/Header header~%tos_msgs/TOSResponseDecisionEnum decision~%tos_msgs/TOSResponseCandidate candidate~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tos_msgs/TOSResponseDecisionEnum~%uint8 UNKNOWN = 0~%uint8 YES = 1~%uint8 NO = 2~%uint8 value~%~%================================================================================~%MSG: tos_msgs/TOSResponseCandidate~%uint32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TOSResponse>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'decision))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'candidate))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TOSResponse>))
  "Converts a ROS message object to a list"
  (cl:list 'TOSResponse
    (cl:cons ':header (header msg))
    (cl:cons ':decision (decision msg))
    (cl:cons ':candidate (candidate msg))
))
