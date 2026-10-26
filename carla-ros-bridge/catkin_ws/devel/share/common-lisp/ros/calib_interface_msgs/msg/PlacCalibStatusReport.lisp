; Auto-generated. Do not edit!


(cl:in-package calib_interface_msgs-msg)


;//! \htmlinclude PlacCalibStatusReport.msg.html

(cl:defclass <PlacCalibStatusReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (calib_status
    :reader calib_status
    :initarg :calib_status
    :type calib_interface_msgs-msg:PlacCalibStatusEnum
    :initform (cl:make-instance 'calib_interface_msgs-msg:PlacCalibStatusEnum))
   (error_code
    :reader error_code
    :initarg :error_code
    :type calib_interface_msgs-msg:PlacTotalErrorCodeEnum
    :initform (cl:make-instance 'calib_interface_msgs-msg:PlacTotalErrorCodeEnum)))
)

(cl:defclass PlacCalibStatusReport (<PlacCalibStatusReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlacCalibStatusReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlacCalibStatusReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name calib_interface_msgs-msg:<PlacCalibStatusReport> is deprecated: use calib_interface_msgs-msg:PlacCalibStatusReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PlacCalibStatusReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:header-val is deprecated.  Use calib_interface_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'calib_status-val :lambda-list '(m))
(cl:defmethod calib_status-val ((m <PlacCalibStatusReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:calib_status-val is deprecated.  Use calib_interface_msgs-msg:calib_status instead.")
  (calib_status m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <PlacCalibStatusReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:error_code-val is deprecated.  Use calib_interface_msgs-msg:error_code instead.")
  (error_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlacCalibStatusReport>) ostream)
  "Serializes a message object of type '<PlacCalibStatusReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'calib_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'error_code) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlacCalibStatusReport>) istream)
  "Deserializes a message object of type '<PlacCalibStatusReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'calib_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'error_code) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlacCalibStatusReport>)))
  "Returns string type for a message object of type '<PlacCalibStatusReport>"
  "calib_interface_msgs/PlacCalibStatusReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlacCalibStatusReport)))
  "Returns string type for a message object of type 'PlacCalibStatusReport"
  "calib_interface_msgs/PlacCalibStatusReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlacCalibStatusReport>)))
  "Returns md5sum for a message object of type '<PlacCalibStatusReport>"
  "0625ca16d445a3930c2b759a2df5d93d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlacCalibStatusReport)))
  "Returns md5sum for a message object of type 'PlacCalibStatusReport"
  "0625ca16d445a3930c2b759a2df5d93d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlacCalibStatusReport>)))
  "Returns full string definition for message of type '<PlacCalibStatusReport>"
  (cl:format cl:nil "std_msgs/Header header~%calib_interface_msgs/PlacCalibStatusEnum calib_status~%calib_interface_msgs/PlacTotalErrorCodeEnum error_code~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: calib_interface_msgs/PlacCalibStatusEnum~%uint8 CALIB_STATUS_IDLE = 0~%uint8 CALIB_STATUS_RUNNING = 1~%uint8 CALIB_STATUS_SUCCESS = 2~%uint8 CALIB_STATUS_FAIL = 3~%uint8 value~%~%================================================================================~%MSG: calib_interface_msgs/PlacTotalErrorCodeEnum~%uint8 CALIB_NORMAL = 0~%uint8 CALIB_INIT_ERROR = 1~%uint8 CALIB_FISHEYE_ERROR = 2~%uint8 CALIB_NORMAL_ERROR = 3~%uint8 CALIB_OPT_ERROR = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlacCalibStatusReport)))
  "Returns full string definition for message of type 'PlacCalibStatusReport"
  (cl:format cl:nil "std_msgs/Header header~%calib_interface_msgs/PlacCalibStatusEnum calib_status~%calib_interface_msgs/PlacTotalErrorCodeEnum error_code~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: calib_interface_msgs/PlacCalibStatusEnum~%uint8 CALIB_STATUS_IDLE = 0~%uint8 CALIB_STATUS_RUNNING = 1~%uint8 CALIB_STATUS_SUCCESS = 2~%uint8 CALIB_STATUS_FAIL = 3~%uint8 value~%~%================================================================================~%MSG: calib_interface_msgs/PlacTotalErrorCodeEnum~%uint8 CALIB_NORMAL = 0~%uint8 CALIB_INIT_ERROR = 1~%uint8 CALIB_FISHEYE_ERROR = 2~%uint8 CALIB_NORMAL_ERROR = 3~%uint8 CALIB_OPT_ERROR = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlacCalibStatusReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'calib_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'error_code))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlacCalibStatusReport>))
  "Converts a ROS message object to a list"
  (cl:list 'PlacCalibStatusReport
    (cl:cons ':header (header msg))
    (cl:cons ':calib_status (calib_status msg))
    (cl:cons ':error_code (error_code msg))
))
