; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude SysMapProviderParkingResponse.msg.html

(cl:defclass <SysMapProviderParkingResponse> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (request_seq
    :reader request_seq
    :initarg :request_seq
    :type cl:integer
    :initform 0)
   (error_code
    :reader error_code
    :initarg :error_code
    :type system_manager_msgs-msg:ParkingResponseErrorEnum
    :initform (cl:make-instance 'system_manager_msgs-msg:ParkingResponseErrorEnum))
   (parking_lot_lists
    :reader parking_lot_lists
    :initarg :parking_lot_lists
    :type (cl:vector system_manager_msgs-msg:ParkingLotInfo)
   :initform (cl:make-array 0 :element-type 'system_manager_msgs-msg:ParkingLotInfo :initial-element (cl:make-instance 'system_manager_msgs-msg:ParkingLotInfo)))
   (storage_size
    :reader storage_size
    :initarg :storage_size
    :type cl:integer
    :initform 0))
)

(cl:defclass SysMapProviderParkingResponse (<SysMapProviderParkingResponse>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SysMapProviderParkingResponse>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SysMapProviderParkingResponse)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<SysMapProviderParkingResponse> is deprecated: use system_manager_msgs-msg:SysMapProviderParkingResponse instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SysMapProviderParkingResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:header-val is deprecated.  Use system_manager_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'request_seq-val :lambda-list '(m))
(cl:defmethod request_seq-val ((m <SysMapProviderParkingResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:request_seq-val is deprecated.  Use system_manager_msgs-msg:request_seq instead.")
  (request_seq m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <SysMapProviderParkingResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:error_code-val is deprecated.  Use system_manager_msgs-msg:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'parking_lot_lists-val :lambda-list '(m))
(cl:defmethod parking_lot_lists-val ((m <SysMapProviderParkingResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:parking_lot_lists-val is deprecated.  Use system_manager_msgs-msg:parking_lot_lists instead.")
  (parking_lot_lists m))

(cl:ensure-generic-function 'storage_size-val :lambda-list '(m))
(cl:defmethod storage_size-val ((m <SysMapProviderParkingResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:storage_size-val is deprecated.  Use system_manager_msgs-msg:storage_size instead.")
  (storage_size m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SysMapProviderParkingResponse>) ostream)
  "Serializes a message object of type '<SysMapProviderParkingResponse>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'request_seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'request_seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'request_seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'request_seq)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'error_code) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'parking_lot_lists))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'parking_lot_lists))
  (cl:let* ((signed (cl:slot-value msg 'storage_size)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SysMapProviderParkingResponse>) istream)
  "Deserializes a message object of type '<SysMapProviderParkingResponse>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'request_seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'request_seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'request_seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'request_seq)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'error_code) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'parking_lot_lists) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'parking_lot_lists)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'system_manager_msgs-msg:ParkingLotInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'storage_size) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SysMapProviderParkingResponse>)))
  "Returns string type for a message object of type '<SysMapProviderParkingResponse>"
  "system_manager_msgs/SysMapProviderParkingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SysMapProviderParkingResponse)))
  "Returns string type for a message object of type 'SysMapProviderParkingResponse"
  "system_manager_msgs/SysMapProviderParkingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SysMapProviderParkingResponse>)))
  "Returns md5sum for a message object of type '<SysMapProviderParkingResponse>"
  "70d19a26cbb38866f66e1250a27f6e64")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SysMapProviderParkingResponse)))
  "Returns md5sum for a message object of type 'SysMapProviderParkingResponse"
  "70d19a26cbb38866f66e1250a27f6e64")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SysMapProviderParkingResponse>)))
  "Returns full string definition for message of type '<SysMapProviderParkingResponse>"
  (cl:format cl:nil "std_msgs/Header header~%uint32 request_seq~%system_manager_msgs/ParkingResponseErrorEnum error_code~%system_manager_msgs/ParkingLotInfo[] parking_lot_lists~%int64 storage_size~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: system_manager_msgs/ParkingResponseErrorEnum~%uint8 SUCCESS = 0~%uint8 SEARCH_RESULT_EMPTY = 1~%uint8 LOAD_LPNP_FAILED = 2~%uint8 LOAD_PNP_FAILED = 3~%uint8 DELETE_FAILED = 4~%uint8 RENAME_FAILED = 5~%uint8 value~%~%================================================================================~%MSG: system_manager_msgs/ParkingLotInfo~%float32 dist~%uint32 id~%string name~%mla_localization_msgs/MLAPosGlobal position~%uint32 parking_space_id~%mla_localization_msgs/MLAPosGlobal[] parking_space_positions~%mla_localization_msgs/MLAPosGlobal trace_start_position~%mla_localization_msgs/MLAPosGlobal trace_end_position~%system_manager_msgs/ParkingLotTypeEnum type~%string render_data~%string address~%uint32 trajectory_length~%string label~%string reversed~%~%================================================================================~%MSG: mla_localization_msgs/MLAPosGlobal~%float64 latitude~%float64 longitude~%float64 altitude~%~%================================================================================~%MSG: system_manager_msgs/ParkingLotTypeEnum~%uint8 PNP = 0~%uint8 LPNP = 1~%uint8 BOTH = 2~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SysMapProviderParkingResponse)))
  "Returns full string definition for message of type 'SysMapProviderParkingResponse"
  (cl:format cl:nil "std_msgs/Header header~%uint32 request_seq~%system_manager_msgs/ParkingResponseErrorEnum error_code~%system_manager_msgs/ParkingLotInfo[] parking_lot_lists~%int64 storage_size~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: system_manager_msgs/ParkingResponseErrorEnum~%uint8 SUCCESS = 0~%uint8 SEARCH_RESULT_EMPTY = 1~%uint8 LOAD_LPNP_FAILED = 2~%uint8 LOAD_PNP_FAILED = 3~%uint8 DELETE_FAILED = 4~%uint8 RENAME_FAILED = 5~%uint8 value~%~%================================================================================~%MSG: system_manager_msgs/ParkingLotInfo~%float32 dist~%uint32 id~%string name~%mla_localization_msgs/MLAPosGlobal position~%uint32 parking_space_id~%mla_localization_msgs/MLAPosGlobal[] parking_space_positions~%mla_localization_msgs/MLAPosGlobal trace_start_position~%mla_localization_msgs/MLAPosGlobal trace_end_position~%system_manager_msgs/ParkingLotTypeEnum type~%string render_data~%string address~%uint32 trajectory_length~%string label~%string reversed~%~%================================================================================~%MSG: mla_localization_msgs/MLAPosGlobal~%float64 latitude~%float64 longitude~%float64 altitude~%~%================================================================================~%MSG: system_manager_msgs/ParkingLotTypeEnum~%uint8 PNP = 0~%uint8 LPNP = 1~%uint8 BOTH = 2~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SysMapProviderParkingResponse>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'error_code))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'parking_lot_lists) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SysMapProviderParkingResponse>))
  "Converts a ROS message object to a list"
  (cl:list 'SysMapProviderParkingResponse
    (cl:cons ':header (header msg))
    (cl:cons ':request_seq (request_seq msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':parking_lot_lists (parking_lot_lists msg))
    (cl:cons ':storage_size (storage_size msg))
))
