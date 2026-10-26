; Auto-generated. Do not edit!


(cl:in-package adasis_v2_msgs-msg)


;//! \htmlinclude AdasisV2.msg.html

(cl:defclass <AdasisV2> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (position
    :reader position
    :initarg :position
    :type adasis_v2_msgs-msg:Position
    :initform (cl:make-instance 'adasis_v2_msgs-msg:Position))
   (segment
    :reader segment
    :initarg :segment
    :type adasis_v2_msgs-msg:Segment
    :initform (cl:make-instance 'adasis_v2_msgs-msg:Segment))
   (stub
    :reader stub
    :initarg :stub
    :type adasis_v2_msgs-msg:Stub
    :initform (cl:make-instance 'adasis_v2_msgs-msg:Stub))
   (profile_short
    :reader profile_short
    :initarg :profile_short
    :type adasis_v2_msgs-msg:ProfileShort
    :initform (cl:make-instance 'adasis_v2_msgs-msg:ProfileShort))
   (profile_long
    :reader profile_long
    :initarg :profile_long
    :type adasis_v2_msgs-msg:ProfileLong
    :initform (cl:make-instance 'adasis_v2_msgs-msg:ProfileLong))
   (meta_data
    :reader meta_data
    :initarg :meta_data
    :type adasis_v2_msgs-msg:MetaData
    :initform (cl:make-instance 'adasis_v2_msgs-msg:MetaData))
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:string
    :initform ""))
)

(cl:defclass AdasisV2 (<AdasisV2>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AdasisV2>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AdasisV2)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name adasis_v2_msgs-msg:<AdasisV2> is deprecated: use adasis_v2_msgs-msg:AdasisV2 instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AdasisV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:header-val is deprecated.  Use adasis_v2_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <AdasisV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:position-val is deprecated.  Use adasis_v2_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'segment-val :lambda-list '(m))
(cl:defmethod segment-val ((m <AdasisV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:segment-val is deprecated.  Use adasis_v2_msgs-msg:segment instead.")
  (segment m))

(cl:ensure-generic-function 'stub-val :lambda-list '(m))
(cl:defmethod stub-val ((m <AdasisV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:stub-val is deprecated.  Use adasis_v2_msgs-msg:stub instead.")
  (stub m))

(cl:ensure-generic-function 'profile_short-val :lambda-list '(m))
(cl:defmethod profile_short-val ((m <AdasisV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:profile_short-val is deprecated.  Use adasis_v2_msgs-msg:profile_short instead.")
  (profile_short m))

(cl:ensure-generic-function 'profile_long-val :lambda-list '(m))
(cl:defmethod profile_long-val ((m <AdasisV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:profile_long-val is deprecated.  Use adasis_v2_msgs-msg:profile_long instead.")
  (profile_long m))

(cl:ensure-generic-function 'meta_data-val :lambda-list '(m))
(cl:defmethod meta_data-val ((m <AdasisV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:meta_data-val is deprecated.  Use adasis_v2_msgs-msg:meta_data instead.")
  (meta_data m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <AdasisV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:reserved-val is deprecated.  Use adasis_v2_msgs-msg:reserved instead.")
  (reserved m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AdasisV2>) ostream)
  "Serializes a message object of type '<AdasisV2>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'segment) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'stub) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'profile_short) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'profile_long) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta_data) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AdasisV2>) istream)
  "Deserializes a message object of type '<AdasisV2>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'segment) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'stub) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'profile_short) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'profile_long) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta_data) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reserved) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reserved) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AdasisV2>)))
  "Returns string type for a message object of type '<AdasisV2>"
  "adasis_v2_msgs/AdasisV2")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AdasisV2)))
  "Returns string type for a message object of type 'AdasisV2"
  "adasis_v2_msgs/AdasisV2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AdasisV2>)))
  "Returns md5sum for a message object of type '<AdasisV2>"
  "adfa24684ffc911539ff33c84b7ab4dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AdasisV2)))
  "Returns md5sum for a message object of type 'AdasisV2"
  "adfa24684ffc911539ff33c84b7ab4dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AdasisV2>)))
  "Returns full string definition for message of type '<AdasisV2>"
  (cl:format cl:nil "std_msgs/Header header~%adasis_v2_msgs/Position position~%adasis_v2_msgs/Segment segment~%adasis_v2_msgs/Stub stub~%adasis_v2_msgs/ProfileShort profile_short~%adasis_v2_msgs/ProfileLong profile_long~%adasis_v2_msgs/MetaData meta_data~%string reserved~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: adasis_v2_msgs/Position~%uint8 cyclic_counter~%uint8 path_index~%uint16 offset~%uint8 position_index~%uint16 position_age~%uint8 position_probability~%uint16 speed~%uint8 relative_heading~%uint8 position_confidence~%uint8 current_lane~%uint8 reserved~%~%================================================================================~%MSG: adasis_v2_msgs/Segment~%uint8 cyclic_counter~%uint8 is_retransmission~%uint8 path_index~%uint16 offset~%uint8 is_update~%uint8 functional_road_class~%uint8 form_of_way~%uint8 effective_speed_limit~%uint8 effective_speed_limit_type~%uint8 lanes_num_of_driving_dir~%uint8 lanes_num_of_opposite_dir~%uint8 tunnel~%uint8 bridge~%uint8 divided_road~%uint8 built_up_area~%uint8 complex_intersection~%uint8 relative_probability~%uint8 part_of_calculated_route~%uint8 reserved~%~%================================================================================~%MSG: adasis_v2_msgs/Stub~%uint8 cyclic_counter~%uint8 is_retransmission~%uint8 path_index~%uint16 offset~%uint8 is_update~%uint8 sub_path_index~%uint8 turn_angle~%uint8 relative_probability~%uint8 functional_road_class~%uint8 form_of_way~%uint8 lanes_num_of_driving_dir~%uint8 lanes_num_of_opposite_dir~%uint8 complex_intersection~%uint8 right_of_way~%uint8 part_of_calculated_route~%uint8 is_last_stub_at_offset~%~%================================================================================~%MSG: adasis_v2_msgs/ProfileShort~%uint8 cyclic_counter~%uint8 is_retransmission~%uint8 path_index~%uint16 offset~%uint8 is_update~%uint8 profile_type~%uint8 is_control_point~%uint16 value_0~%uint16 distance_1~%uint16 value_1~%uint8 accuracy~%~%================================================================================~%MSG: adasis_v2_msgs/ProfileLong~%uint8 cyclic_counter~%uint8 is_retransmission~%uint8 path_index~%uint16 offset~%uint8 is_update~%uint8 profile_type~%uint8 is_control_point~%uint32 value~%~%================================================================================~%MSG: adasis_v2_msgs/MetaData~%uint8 cyclic_counter~%uint16 country_code~%uint16 region_code~%uint8 driving_side~%uint8 speed_units~%uint8 major_protocol_ver~%uint8 minor_protocol_ver~%uint8 minor_protocol_sub_ver~%uint16 hardware_ver~%uint8 map_provider~%uint8 map_ver_year~%uint8 map_ver_year_quarter~%uint8 reserved~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AdasisV2)))
  "Returns full string definition for message of type 'AdasisV2"
  (cl:format cl:nil "std_msgs/Header header~%adasis_v2_msgs/Position position~%adasis_v2_msgs/Segment segment~%adasis_v2_msgs/Stub stub~%adasis_v2_msgs/ProfileShort profile_short~%adasis_v2_msgs/ProfileLong profile_long~%adasis_v2_msgs/MetaData meta_data~%string reserved~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: adasis_v2_msgs/Position~%uint8 cyclic_counter~%uint8 path_index~%uint16 offset~%uint8 position_index~%uint16 position_age~%uint8 position_probability~%uint16 speed~%uint8 relative_heading~%uint8 position_confidence~%uint8 current_lane~%uint8 reserved~%~%================================================================================~%MSG: adasis_v2_msgs/Segment~%uint8 cyclic_counter~%uint8 is_retransmission~%uint8 path_index~%uint16 offset~%uint8 is_update~%uint8 functional_road_class~%uint8 form_of_way~%uint8 effective_speed_limit~%uint8 effective_speed_limit_type~%uint8 lanes_num_of_driving_dir~%uint8 lanes_num_of_opposite_dir~%uint8 tunnel~%uint8 bridge~%uint8 divided_road~%uint8 built_up_area~%uint8 complex_intersection~%uint8 relative_probability~%uint8 part_of_calculated_route~%uint8 reserved~%~%================================================================================~%MSG: adasis_v2_msgs/Stub~%uint8 cyclic_counter~%uint8 is_retransmission~%uint8 path_index~%uint16 offset~%uint8 is_update~%uint8 sub_path_index~%uint8 turn_angle~%uint8 relative_probability~%uint8 functional_road_class~%uint8 form_of_way~%uint8 lanes_num_of_driving_dir~%uint8 lanes_num_of_opposite_dir~%uint8 complex_intersection~%uint8 right_of_way~%uint8 part_of_calculated_route~%uint8 is_last_stub_at_offset~%~%================================================================================~%MSG: adasis_v2_msgs/ProfileShort~%uint8 cyclic_counter~%uint8 is_retransmission~%uint8 path_index~%uint16 offset~%uint8 is_update~%uint8 profile_type~%uint8 is_control_point~%uint16 value_0~%uint16 distance_1~%uint16 value_1~%uint8 accuracy~%~%================================================================================~%MSG: adasis_v2_msgs/ProfileLong~%uint8 cyclic_counter~%uint8 is_retransmission~%uint8 path_index~%uint16 offset~%uint8 is_update~%uint8 profile_type~%uint8 is_control_point~%uint32 value~%~%================================================================================~%MSG: adasis_v2_msgs/MetaData~%uint8 cyclic_counter~%uint16 country_code~%uint16 region_code~%uint8 driving_side~%uint8 speed_units~%uint8 major_protocol_ver~%uint8 minor_protocol_ver~%uint8 minor_protocol_sub_ver~%uint16 hardware_ver~%uint8 map_provider~%uint8 map_ver_year~%uint8 map_ver_year_quarter~%uint8 reserved~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AdasisV2>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'segment))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'stub))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'profile_short))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'profile_long))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta_data))
     4 (cl:length (cl:slot-value msg 'reserved))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AdasisV2>))
  "Converts a ROS message object to a list"
  (cl:list 'AdasisV2
    (cl:cons ':header (header msg))
    (cl:cons ':position (position msg))
    (cl:cons ':segment (segment msg))
    (cl:cons ':stub (stub msg))
    (cl:cons ':profile_short (profile_short msg))
    (cl:cons ':profile_long (profile_long msg))
    (cl:cons ':meta_data (meta_data msg))
    (cl:cons ':reserved (reserved msg))
))
