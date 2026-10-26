; Auto-generated. Do not edit!


(cl:in-package hdmap_msgs-msg)


;//! \htmlinclude LocalMap.msg.html

(cl:defclass <LocalMap> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (LocalMap_data
    :reader LocalMap_data
    :initarg :LocalMap_data
    :type hdmap_msgs-msg:LocalMapData
    :initform (cl:make-instance 'hdmap_msgs-msg:LocalMapData)))
)

(cl:defclass LocalMap (<LocalMap>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocalMap>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocalMap)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdmap_msgs-msg:<LocalMap> is deprecated: use hdmap_msgs-msg:LocalMap instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LocalMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdmap_msgs-msg:header-val is deprecated.  Use hdmap_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'LocalMap_data-val :lambda-list '(m))
(cl:defmethod LocalMap_data-val ((m <LocalMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdmap_msgs-msg:LocalMap_data-val is deprecated.  Use hdmap_msgs-msg:LocalMap_data instead.")
  (LocalMap_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocalMap>) ostream)
  "Serializes a message object of type '<LocalMap>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'LocalMap_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocalMap>) istream)
  "Deserializes a message object of type '<LocalMap>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'LocalMap_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocalMap>)))
  "Returns string type for a message object of type '<LocalMap>"
  "hdmap_msgs/LocalMap")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalMap)))
  "Returns string type for a message object of type 'LocalMap"
  "hdmap_msgs/LocalMap")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocalMap>)))
  "Returns md5sum for a message object of type '<LocalMap>"
  "4e8ebd9a9d88b6add0f69bb000ededd2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocalMap)))
  "Returns md5sum for a message object of type 'LocalMap"
  "4e8ebd9a9d88b6add0f69bb000ededd2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocalMap>)))
  "Returns full string definition for message of type '<LocalMap>"
  (cl:format cl:nil "std_msgs/Header header~%hdmap_msgs/LocalMapData LocalMap_data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: hdmap_msgs/LocalMapData~%uint8 MDM = 1~%uint8 ANDM = 2~%uint8 MAP_MATCH_INFO = 4~%uint8 OTHER = 8~%uint8 ESR = 16~%uint8 available~%hdmap_msgs/LocalMapLayer mdm~%hdmap_msgs/LocalMapLayer andm~%hdmap_msgs/LocalMapLayer map_match_info~%hdmap_msgs/LocalMapLayer other~%hdmap_msgs/LocalMapLayer esr~%~%================================================================================~%MSG: hdmap_msgs/LocalMapLayer~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocalMap)))
  "Returns full string definition for message of type 'LocalMap"
  (cl:format cl:nil "std_msgs/Header header~%hdmap_msgs/LocalMapData LocalMap_data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: hdmap_msgs/LocalMapData~%uint8 MDM = 1~%uint8 ANDM = 2~%uint8 MAP_MATCH_INFO = 4~%uint8 OTHER = 8~%uint8 ESR = 16~%uint8 available~%hdmap_msgs/LocalMapLayer mdm~%hdmap_msgs/LocalMapLayer andm~%hdmap_msgs/LocalMapLayer map_match_info~%hdmap_msgs/LocalMapLayer other~%hdmap_msgs/LocalMapLayer esr~%~%================================================================================~%MSG: hdmap_msgs/LocalMapLayer~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocalMap>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'LocalMap_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocalMap>))
  "Converts a ROS message object to a list"
  (cl:list 'LocalMap
    (cl:cons ':header (header msg))
    (cl:cons ':LocalMap_data (LocalMap_data msg))
))
