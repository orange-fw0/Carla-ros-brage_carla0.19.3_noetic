;; Auto-generated. Do not edit!


(when (boundp 'adasis_v2_msgs::AdasisV2)
  (if (not (find-package "ADASIS_V2_MSGS"))
    (make-package "ADASIS_V2_MSGS"))
  (shadow 'AdasisV2 (find-package "ADASIS_V2_MSGS")))
(unless (find-package "ADASIS_V2_MSGS::ADASISV2")
  (make-package "ADASIS_V2_MSGS::ADASISV2"))

(in-package "ROS")
;;//! \htmlinclude AdasisV2.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass adasis_v2_msgs::AdasisV2
  :super ros::object
  :slots (_header _position _segment _stub _profile_short _profile_long _meta_data _reserved ))

(defmethod adasis_v2_msgs::AdasisV2
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:position __position) (instance adasis_v2_msgs::Position :init))
    ((:segment __segment) (instance adasis_v2_msgs::Segment :init))
    ((:stub __stub) (instance adasis_v2_msgs::Stub :init))
    ((:profile_short __profile_short) (instance adasis_v2_msgs::ProfileShort :init))
    ((:profile_long __profile_long) (instance adasis_v2_msgs::ProfileLong :init))
    ((:meta_data __meta_data) (instance adasis_v2_msgs::MetaData :init))
    ((:reserved __reserved) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _position __position)
   (setq _segment __segment)
   (setq _stub __stub)
   (setq _profile_short __profile_short)
   (setq _profile_long __profile_long)
   (setq _meta_data __meta_data)
   (setq _reserved (string __reserved))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:segment
   (&rest __segment)
   (if (keywordp (car __segment))
       (send* _segment __segment)
     (progn
       (if __segment (setq _segment (car __segment)))
       _segment)))
  (:stub
   (&rest __stub)
   (if (keywordp (car __stub))
       (send* _stub __stub)
     (progn
       (if __stub (setq _stub (car __stub)))
       _stub)))
  (:profile_short
   (&rest __profile_short)
   (if (keywordp (car __profile_short))
       (send* _profile_short __profile_short)
     (progn
       (if __profile_short (setq _profile_short (car __profile_short)))
       _profile_short)))
  (:profile_long
   (&rest __profile_long)
   (if (keywordp (car __profile_long))
       (send* _profile_long __profile_long)
     (progn
       (if __profile_long (setq _profile_long (car __profile_long)))
       _profile_long)))
  (:meta_data
   (&rest __meta_data)
   (if (keywordp (car __meta_data))
       (send* _meta_data __meta_data)
     (progn
       (if __meta_data (setq _meta_data (car __meta_data)))
       _meta_data)))
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; adasis_v2_msgs/Position _position
    (send _position :serialization-length)
    ;; adasis_v2_msgs/Segment _segment
    (send _segment :serialization-length)
    ;; adasis_v2_msgs/Stub _stub
    (send _stub :serialization-length)
    ;; adasis_v2_msgs/ProfileShort _profile_short
    (send _profile_short :serialization-length)
    ;; adasis_v2_msgs/ProfileLong _profile_long
    (send _profile_long :serialization-length)
    ;; adasis_v2_msgs/MetaData _meta_data
    (send _meta_data :serialization-length)
    ;; string _reserved
    4 (length _reserved)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; adasis_v2_msgs/Position _position
       (send _position :serialize s)
     ;; adasis_v2_msgs/Segment _segment
       (send _segment :serialize s)
     ;; adasis_v2_msgs/Stub _stub
       (send _stub :serialize s)
     ;; adasis_v2_msgs/ProfileShort _profile_short
       (send _profile_short :serialize s)
     ;; adasis_v2_msgs/ProfileLong _profile_long
       (send _profile_long :serialize s)
     ;; adasis_v2_msgs/MetaData _meta_data
       (send _meta_data :serialize s)
     ;; string _reserved
       (write-long (length _reserved) s) (princ _reserved s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; adasis_v2_msgs/Position _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; adasis_v2_msgs/Segment _segment
     (send _segment :deserialize buf ptr-) (incf ptr- (send _segment :serialization-length))
   ;; adasis_v2_msgs/Stub _stub
     (send _stub :deserialize buf ptr-) (incf ptr- (send _stub :serialization-length))
   ;; adasis_v2_msgs/ProfileShort _profile_short
     (send _profile_short :deserialize buf ptr-) (incf ptr- (send _profile_short :serialization-length))
   ;; adasis_v2_msgs/ProfileLong _profile_long
     (send _profile_long :deserialize buf ptr-) (incf ptr- (send _profile_long :serialization-length))
   ;; adasis_v2_msgs/MetaData _meta_data
     (send _meta_data :deserialize buf ptr-) (incf ptr- (send _meta_data :serialization-length))
   ;; string _reserved
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get adasis_v2_msgs::AdasisV2 :md5sum-) "adfa24684ffc911539ff33c84b7ab4dd")
(setf (get adasis_v2_msgs::AdasisV2 :datatype-) "adasis_v2_msgs/AdasisV2")
(setf (get adasis_v2_msgs::AdasisV2 :definition-)
      "std_msgs/Header header
adasis_v2_msgs/Position position
adasis_v2_msgs/Segment segment
adasis_v2_msgs/Stub stub
adasis_v2_msgs/ProfileShort profile_short
adasis_v2_msgs/ProfileLong profile_long
adasis_v2_msgs/MetaData meta_data
string reserved

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: adasis_v2_msgs/Position
uint8 cyclic_counter
uint8 path_index
uint16 offset
uint8 position_index
uint16 position_age
uint8 position_probability
uint16 speed
uint8 relative_heading
uint8 position_confidence
uint8 current_lane
uint8 reserved

================================================================================
MSG: adasis_v2_msgs/Segment
uint8 cyclic_counter
uint8 is_retransmission
uint8 path_index
uint16 offset
uint8 is_update
uint8 functional_road_class
uint8 form_of_way
uint8 effective_speed_limit
uint8 effective_speed_limit_type
uint8 lanes_num_of_driving_dir
uint8 lanes_num_of_opposite_dir
uint8 tunnel
uint8 bridge
uint8 divided_road
uint8 built_up_area
uint8 complex_intersection
uint8 relative_probability
uint8 part_of_calculated_route
uint8 reserved

================================================================================
MSG: adasis_v2_msgs/Stub
uint8 cyclic_counter
uint8 is_retransmission
uint8 path_index
uint16 offset
uint8 is_update
uint8 sub_path_index
uint8 turn_angle
uint8 relative_probability
uint8 functional_road_class
uint8 form_of_way
uint8 lanes_num_of_driving_dir
uint8 lanes_num_of_opposite_dir
uint8 complex_intersection
uint8 right_of_way
uint8 part_of_calculated_route
uint8 is_last_stub_at_offset

================================================================================
MSG: adasis_v2_msgs/ProfileShort
uint8 cyclic_counter
uint8 is_retransmission
uint8 path_index
uint16 offset
uint8 is_update
uint8 profile_type
uint8 is_control_point
uint16 value_0
uint16 distance_1
uint16 value_1
uint8 accuracy

================================================================================
MSG: adasis_v2_msgs/ProfileLong
uint8 cyclic_counter
uint8 is_retransmission
uint8 path_index
uint16 offset
uint8 is_update
uint8 profile_type
uint8 is_control_point
uint32 value

================================================================================
MSG: adasis_v2_msgs/MetaData
uint8 cyclic_counter
uint16 country_code
uint16 region_code
uint8 driving_side
uint8 speed_units
uint8 major_protocol_ver
uint8 minor_protocol_ver
uint8 minor_protocol_sub_ver
uint16 hardware_ver
uint8 map_provider
uint8 map_ver_year
uint8 map_ver_year_quarter
uint8 reserved

")



(provide :adasis_v2_msgs/AdasisV2 "adfa24684ffc911539ff33c84b7ab4dd")


