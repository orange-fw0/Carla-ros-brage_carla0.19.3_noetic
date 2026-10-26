;; Auto-generated. Do not edit!


(when (boundp 'sensor_interface_msgs::UltrasonicParkslotReport)
  (if (not (find-package "SENSOR_INTERFACE_MSGS"))
    (make-package "SENSOR_INTERFACE_MSGS"))
  (shadow 'UltrasonicParkslotReport (find-package "SENSOR_INTERFACE_MSGS")))
(unless (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICPARKSLOTREPORT")
  (make-package "SENSOR_INTERFACE_MSGS::ULTRASONICPARKSLOTREPORT"))

(in-package "ROS")
;;//! \htmlinclude UltrasonicParkslotReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sensor_interface_msgs::UltrasonicParkslotReport
  :super ros::object
  :slots (_header _uss_parkslot_result ))

(defmethod sensor_interface_msgs::UltrasonicParkslotReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:uss_parkslot_result __uss_parkslot_result) (instance sensor_interface_msgs::UltrasonicParkSlotResult :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _uss_parkslot_result __uss_parkslot_result)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:uss_parkslot_result
   (&rest __uss_parkslot_result)
   (if (keywordp (car __uss_parkslot_result))
       (send* _uss_parkslot_result __uss_parkslot_result)
     (progn
       (if __uss_parkslot_result (setq _uss_parkslot_result (car __uss_parkslot_result)))
       _uss_parkslot_result)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; sensor_interface_msgs/UltrasonicParkSlotResult _uss_parkslot_result
    (send _uss_parkslot_result :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; sensor_interface_msgs/UltrasonicParkSlotResult _uss_parkslot_result
       (send _uss_parkslot_result :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; sensor_interface_msgs/UltrasonicParkSlotResult _uss_parkslot_result
     (send _uss_parkslot_result :deserialize buf ptr-) (incf ptr- (send _uss_parkslot_result :serialization-length))
   ;;
   self)
  )

(setf (get sensor_interface_msgs::UltrasonicParkslotReport :md5sum-) "63489b9b41b44ca5cf5afaf5ae615160")
(setf (get sensor_interface_msgs::UltrasonicParkslotReport :datatype-) "sensor_interface_msgs/UltrasonicParkslotReport")
(setf (get sensor_interface_msgs::UltrasonicParkslotReport :definition-)
      "std_msgs/Header header
sensor_interface_msgs/UltrasonicParkSlotResult uss_parkslot_result

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
MSG: sensor_interface_msgs/UltrasonicParkSlotResult
sensor_interface_msgs/UssParkSlotData[] uss_park_slot_data

================================================================================
MSG: sensor_interface_msgs/UssParkSlotData
uint8 available
sensor_interface_msgs/UltrasonicResultMeta meta
uint32 parkslot_id
sensor_interface_msgs/UltrasonicPaingslotType parking_slot_type
sensor_interface_msgs/BordertType[] border_type_data
float32 veh_obj1_x
float32 veh_obj1_y
float32 veh_obj2_x
float32 veh_obj2_y
float32 veh_obj3_x
float32 veh_obj3_y
float32 veh_obj4_x
float32 veh_obj4_y
float32 parkslot_prob
string reserved_info

================================================================================
MSG: sensor_interface_msgs/UltrasonicResultMeta
uint64 timestamp_us
uint64 seq

================================================================================
MSG: sensor_interface_msgs/UltrasonicPaingslotType
uint8 PSC_SLOT_PARALLE_LE = 0
uint8 PSC_SLOT_PARALLE_RI = 1
uint8 PSC_SLOT_CROSS_LE = 2
uint8 PSC_SLOT_CROSS_RI = 3
uint8 PSC_SLOT_OBLIQUE_LE = 4
uint8 PSC_SLOT_OBLIQUE_RI = 5
uint8 PSC_COMMON_SLOT_LE = 6
uint8 PSC_COMMON_SLOT_RI = 7
uint8 POC_SLOT_PARALLE_LE = 8
uint8 POC_SLOT_PARALLE_RI = 9
uint8 POC_SLOT_CROSS_LE = 10
uint8 POC_SLOT_CROSS_RI = 11
uint8 POC_COMMON_SLOT_LE = 12
uint8 POC_COMMON_SLOT_RI = 13
uint8 RESERVED_INFO1 = 14
uint8 RESERVED_INFO2 = 15
uint8 value

================================================================================
MSG: sensor_interface_msgs/BordertType
uint8 HAT_USLOT_NON_CURB = 0
uint8 HAT_USLOT_EXIST_CURB = 1
uint8 UNKNOWN = 2
uint8 RESERVED_INFO = 3
uint8 value

")



(provide :sensor_interface_msgs/UltrasonicParkslotReport "63489b9b41b44ca5cf5afaf5ae615160")


