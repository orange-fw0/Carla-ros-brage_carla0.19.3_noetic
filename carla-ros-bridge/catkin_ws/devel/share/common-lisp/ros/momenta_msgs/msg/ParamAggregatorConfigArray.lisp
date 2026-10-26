; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude ParamAggregatorConfigArray.msg.html

(cl:defclass <ParamAggregatorConfigArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (config_array
    :reader config_array
    :initarg :config_array
    :type (cl:vector momenta_msgs-msg:ParamAggregatorConfig)
   :initform (cl:make-array 0 :element-type 'momenta_msgs-msg:ParamAggregatorConfig :initial-element (cl:make-instance 'momenta_msgs-msg:ParamAggregatorConfig))))
)

(cl:defclass ParamAggregatorConfigArray (<ParamAggregatorConfigArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParamAggregatorConfigArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParamAggregatorConfigArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<ParamAggregatorConfigArray> is deprecated: use momenta_msgs-msg:ParamAggregatorConfigArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ParamAggregatorConfigArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:header-val is deprecated.  Use momenta_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'config_array-val :lambda-list '(m))
(cl:defmethod config_array-val ((m <ParamAggregatorConfigArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:config_array-val is deprecated.  Use momenta_msgs-msg:config_array instead.")
  (config_array m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParamAggregatorConfigArray>) ostream)
  "Serializes a message object of type '<ParamAggregatorConfigArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'config_array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'config_array))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParamAggregatorConfigArray>) istream)
  "Deserializes a message object of type '<ParamAggregatorConfigArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'config_array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'config_array)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'momenta_msgs-msg:ParamAggregatorConfig))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParamAggregatorConfigArray>)))
  "Returns string type for a message object of type '<ParamAggregatorConfigArray>"
  "momenta_msgs/ParamAggregatorConfigArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParamAggregatorConfigArray)))
  "Returns string type for a message object of type 'ParamAggregatorConfigArray"
  "momenta_msgs/ParamAggregatorConfigArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParamAggregatorConfigArray>)))
  "Returns md5sum for a message object of type '<ParamAggregatorConfigArray>"
  "24b5eac89139060be3eae4197c8b5d02")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParamAggregatorConfigArray)))
  "Returns md5sum for a message object of type 'ParamAggregatorConfigArray"
  "24b5eac89139060be3eae4197c8b5d02")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParamAggregatorConfigArray>)))
  "Returns full string definition for message of type '<ParamAggregatorConfigArray>"
  (cl:format cl:nil "std_msgs/Header header~%momenta_msgs/ParamAggregatorConfig[] config_array~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: momenta_msgs/ParamAggregatorConfig~%string name~%string data~%string type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParamAggregatorConfigArray)))
  "Returns full string definition for message of type 'ParamAggregatorConfigArray"
  (cl:format cl:nil "std_msgs/Header header~%momenta_msgs/ParamAggregatorConfig[] config_array~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: momenta_msgs/ParamAggregatorConfig~%string name~%string data~%string type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParamAggregatorConfigArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'config_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParamAggregatorConfigArray>))
  "Converts a ROS message object to a list"
  (cl:list 'ParamAggregatorConfigArray
    (cl:cons ':header (header msg))
    (cl:cons ':config_array (config_array msg))
))
