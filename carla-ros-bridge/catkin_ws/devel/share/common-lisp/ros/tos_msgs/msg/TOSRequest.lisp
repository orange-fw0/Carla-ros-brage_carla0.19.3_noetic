; Auto-generated. Do not edit!


(cl:in-package tos_msgs-msg)


;//! \htmlinclude TOSRequest.msg.html

(cl:defclass <TOSRequest> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (scenario
    :reader scenario
    :initarg :scenario
    :type tos_msgs-msg:TOSScenarioEnum
    :initform (cl:make-instance 'tos_msgs-msg:TOSScenarioEnum))
   (decision
    :reader decision
    :initarg :decision
    :type tos_msgs-msg:TOSDecisionEnum
    :initform (cl:make-instance 'tos_msgs-msg:TOSDecisionEnum))
   (render_info
    :reader render_info
    :initarg :render_info
    :type tos_msgs-msg:TOSRequestRenderInfo
    :initform (cl:make-instance 'tos_msgs-msg:TOSRequestRenderInfo)))
)

(cl:defclass TOSRequest (<TOSRequest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TOSRequest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TOSRequest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tos_msgs-msg:<TOSRequest> is deprecated: use tos_msgs-msg:TOSRequest instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TOSRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:header-val is deprecated.  Use tos_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'scenario-val :lambda-list '(m))
(cl:defmethod scenario-val ((m <TOSRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:scenario-val is deprecated.  Use tos_msgs-msg:scenario instead.")
  (scenario m))

(cl:ensure-generic-function 'decision-val :lambda-list '(m))
(cl:defmethod decision-val ((m <TOSRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:decision-val is deprecated.  Use tos_msgs-msg:decision instead.")
  (decision m))

(cl:ensure-generic-function 'render_info-val :lambda-list '(m))
(cl:defmethod render_info-val ((m <TOSRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:render_info-val is deprecated.  Use tos_msgs-msg:render_info instead.")
  (render_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TOSRequest>) ostream)
  "Serializes a message object of type '<TOSRequest>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'scenario) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'decision) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'render_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TOSRequest>) istream)
  "Deserializes a message object of type '<TOSRequest>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'scenario) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'decision) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'render_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TOSRequest>)))
  "Returns string type for a message object of type '<TOSRequest>"
  "tos_msgs/TOSRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TOSRequest)))
  "Returns string type for a message object of type 'TOSRequest"
  "tos_msgs/TOSRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TOSRequest>)))
  "Returns md5sum for a message object of type '<TOSRequest>"
  "6eb17c6ccf81d2ccd3af4ef75a4fcc47")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TOSRequest)))
  "Returns md5sum for a message object of type 'TOSRequest"
  "6eb17c6ccf81d2ccd3af4ef75a4fcc47")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TOSRequest>)))
  "Returns full string definition for message of type '<TOSRequest>"
  (cl:format cl:nil "std_msgs/Header header~%tos_msgs/TOSScenarioEnum scenario~%tos_msgs/TOSDecisionEnum decision~%tos_msgs/TOSRequestRenderInfo render_info~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tos_msgs/TOSScenarioEnum~%uint8 LANE_BORROW = 0~%uint8 TRAFFIC_LIGHT = 1~%uint8 value~%~%================================================================================~%MSG: tos_msgs/TOSDecisionEnum~%uint8 NUDGE = 0~%uint8 LEFT_NUDGE = 1~%uint8 RIGHT_NUDGE = 2~%uint8 STOP = 3~%uint8 value~%~%================================================================================~%MSG: tos_msgs/TOSRequestRenderInfo~%tos_msgs/TOSRequestRenderODInfo[] od_info~%tos_msgs/TOSRequestRenderLDInfo[] ld_info~%tos_msgs/TOSRequestCandidate[] candidates~%~%================================================================================~%MSG: tos_msgs/TOSRequestRenderODInfo~%uint32 id~%float64 target_s~%float64 target_l~%~%================================================================================~%MSG: tos_msgs/TOSRequestRenderLDInfo~%uint32 lane_id~%~%================================================================================~%MSG: tos_msgs/TOSRequestCandidate~%uint32 candidate_id~%perception_interface_msgs/Point3d[] traj~%~%================================================================================~%MSG: perception_interface_msgs/Point3d~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TOSRequest)))
  "Returns full string definition for message of type 'TOSRequest"
  (cl:format cl:nil "std_msgs/Header header~%tos_msgs/TOSScenarioEnum scenario~%tos_msgs/TOSDecisionEnum decision~%tos_msgs/TOSRequestRenderInfo render_info~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tos_msgs/TOSScenarioEnum~%uint8 LANE_BORROW = 0~%uint8 TRAFFIC_LIGHT = 1~%uint8 value~%~%================================================================================~%MSG: tos_msgs/TOSDecisionEnum~%uint8 NUDGE = 0~%uint8 LEFT_NUDGE = 1~%uint8 RIGHT_NUDGE = 2~%uint8 STOP = 3~%uint8 value~%~%================================================================================~%MSG: tos_msgs/TOSRequestRenderInfo~%tos_msgs/TOSRequestRenderODInfo[] od_info~%tos_msgs/TOSRequestRenderLDInfo[] ld_info~%tos_msgs/TOSRequestCandidate[] candidates~%~%================================================================================~%MSG: tos_msgs/TOSRequestRenderODInfo~%uint32 id~%float64 target_s~%float64 target_l~%~%================================================================================~%MSG: tos_msgs/TOSRequestRenderLDInfo~%uint32 lane_id~%~%================================================================================~%MSG: tos_msgs/TOSRequestCandidate~%uint32 candidate_id~%perception_interface_msgs/Point3d[] traj~%~%================================================================================~%MSG: perception_interface_msgs/Point3d~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TOSRequest>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'scenario))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'decision))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'render_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TOSRequest>))
  "Converts a ROS message object to a list"
  (cl:list 'TOSRequest
    (cl:cons ':header (header msg))
    (cl:cons ':scenario (scenario msg))
    (cl:cons ':decision (decision msg))
    (cl:cons ':render_info (render_info msg))
))
