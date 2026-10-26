; Auto-generated. Do not edit!


(cl:in-package sensor_interface_msgs-msg)


;//! \htmlinclude UltrasonicParkslotReport.msg.html

(cl:defclass <UltrasonicParkslotReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (uss_parkslot_result
    :reader uss_parkslot_result
    :initarg :uss_parkslot_result
    :type sensor_interface_msgs-msg:UltrasonicParkSlotResult
    :initform (cl:make-instance 'sensor_interface_msgs-msg:UltrasonicParkSlotResult)))
)

(cl:defclass UltrasonicParkslotReport (<UltrasonicParkslotReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UltrasonicParkslotReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UltrasonicParkslotReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_interface_msgs-msg:<UltrasonicParkslotReport> is deprecated: use sensor_interface_msgs-msg:UltrasonicParkslotReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <UltrasonicParkslotReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:header-val is deprecated.  Use sensor_interface_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'uss_parkslot_result-val :lambda-list '(m))
(cl:defmethod uss_parkslot_result-val ((m <UltrasonicParkslotReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:uss_parkslot_result-val is deprecated.  Use sensor_interface_msgs-msg:uss_parkslot_result instead.")
  (uss_parkslot_result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UltrasonicParkslotReport>) ostream)
  "Serializes a message object of type '<UltrasonicParkslotReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'uss_parkslot_result) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UltrasonicParkslotReport>) istream)
  "Deserializes a message object of type '<UltrasonicParkslotReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'uss_parkslot_result) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UltrasonicParkslotReport>)))
  "Returns string type for a message object of type '<UltrasonicParkslotReport>"
  "sensor_interface_msgs/UltrasonicParkslotReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UltrasonicParkslotReport)))
  "Returns string type for a message object of type 'UltrasonicParkslotReport"
  "sensor_interface_msgs/UltrasonicParkslotReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UltrasonicParkslotReport>)))
  "Returns md5sum for a message object of type '<UltrasonicParkslotReport>"
  "63489b9b41b44ca5cf5afaf5ae615160")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UltrasonicParkslotReport)))
  "Returns md5sum for a message object of type 'UltrasonicParkslotReport"
  "63489b9b41b44ca5cf5afaf5ae615160")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UltrasonicParkslotReport>)))
  "Returns full string definition for message of type '<UltrasonicParkslotReport>"
  (cl:format cl:nil "std_msgs/Header header~%sensor_interface_msgs/UltrasonicParkSlotResult uss_parkslot_result~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicParkSlotResult~%sensor_interface_msgs/UssParkSlotData[] uss_park_slot_data~%~%================================================================================~%MSG: sensor_interface_msgs/UssParkSlotData~%uint8 available~%sensor_interface_msgs/UltrasonicResultMeta meta~%uint32 parkslot_id~%sensor_interface_msgs/UltrasonicPaingslotType parking_slot_type~%sensor_interface_msgs/BordertType[] border_type_data~%float32 veh_obj1_x~%float32 veh_obj1_y~%float32 veh_obj2_x~%float32 veh_obj2_y~%float32 veh_obj3_x~%float32 veh_obj3_y~%float32 veh_obj4_x~%float32 veh_obj4_y~%float32 parkslot_prob~%string reserved_info~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicResultMeta~%uint64 timestamp_us~%uint64 seq~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicPaingslotType~%uint8 PSC_SLOT_PARALLE_LE = 0~%uint8 PSC_SLOT_PARALLE_RI = 1~%uint8 PSC_SLOT_CROSS_LE = 2~%uint8 PSC_SLOT_CROSS_RI = 3~%uint8 PSC_SLOT_OBLIQUE_LE = 4~%uint8 PSC_SLOT_OBLIQUE_RI = 5~%uint8 PSC_COMMON_SLOT_LE = 6~%uint8 PSC_COMMON_SLOT_RI = 7~%uint8 POC_SLOT_PARALLE_LE = 8~%uint8 POC_SLOT_PARALLE_RI = 9~%uint8 POC_SLOT_CROSS_LE = 10~%uint8 POC_SLOT_CROSS_RI = 11~%uint8 POC_COMMON_SLOT_LE = 12~%uint8 POC_COMMON_SLOT_RI = 13~%uint8 RESERVED_INFO1 = 14~%uint8 RESERVED_INFO2 = 15~%uint8 value~%~%================================================================================~%MSG: sensor_interface_msgs/BordertType~%uint8 HAT_USLOT_NON_CURB = 0~%uint8 HAT_USLOT_EXIST_CURB = 1~%uint8 UNKNOWN = 2~%uint8 RESERVED_INFO = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UltrasonicParkslotReport)))
  "Returns full string definition for message of type 'UltrasonicParkslotReport"
  (cl:format cl:nil "std_msgs/Header header~%sensor_interface_msgs/UltrasonicParkSlotResult uss_parkslot_result~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicParkSlotResult~%sensor_interface_msgs/UssParkSlotData[] uss_park_slot_data~%~%================================================================================~%MSG: sensor_interface_msgs/UssParkSlotData~%uint8 available~%sensor_interface_msgs/UltrasonicResultMeta meta~%uint32 parkslot_id~%sensor_interface_msgs/UltrasonicPaingslotType parking_slot_type~%sensor_interface_msgs/BordertType[] border_type_data~%float32 veh_obj1_x~%float32 veh_obj1_y~%float32 veh_obj2_x~%float32 veh_obj2_y~%float32 veh_obj3_x~%float32 veh_obj3_y~%float32 veh_obj4_x~%float32 veh_obj4_y~%float32 parkslot_prob~%string reserved_info~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicResultMeta~%uint64 timestamp_us~%uint64 seq~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicPaingslotType~%uint8 PSC_SLOT_PARALLE_LE = 0~%uint8 PSC_SLOT_PARALLE_RI = 1~%uint8 PSC_SLOT_CROSS_LE = 2~%uint8 PSC_SLOT_CROSS_RI = 3~%uint8 PSC_SLOT_OBLIQUE_LE = 4~%uint8 PSC_SLOT_OBLIQUE_RI = 5~%uint8 PSC_COMMON_SLOT_LE = 6~%uint8 PSC_COMMON_SLOT_RI = 7~%uint8 POC_SLOT_PARALLE_LE = 8~%uint8 POC_SLOT_PARALLE_RI = 9~%uint8 POC_SLOT_CROSS_LE = 10~%uint8 POC_SLOT_CROSS_RI = 11~%uint8 POC_COMMON_SLOT_LE = 12~%uint8 POC_COMMON_SLOT_RI = 13~%uint8 RESERVED_INFO1 = 14~%uint8 RESERVED_INFO2 = 15~%uint8 value~%~%================================================================================~%MSG: sensor_interface_msgs/BordertType~%uint8 HAT_USLOT_NON_CURB = 0~%uint8 HAT_USLOT_EXIST_CURB = 1~%uint8 UNKNOWN = 2~%uint8 RESERVED_INFO = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UltrasonicParkslotReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'uss_parkslot_result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UltrasonicParkslotReport>))
  "Converts a ROS message object to a list"
  (cl:list 'UltrasonicParkslotReport
    (cl:cons ':header (header msg))
    (cl:cons ':uss_parkslot_result (uss_parkslot_result msg))
))
