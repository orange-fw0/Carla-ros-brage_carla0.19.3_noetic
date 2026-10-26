;; Auto-generated. Do not edit!


(when (boundp 'sensor_interface_msgs::UltrasonicParkSlotResult)
  (if (not (find-package "SENSOR_INTERFACE_MSGS"))
    (make-package "SENSOR_INTERFACE_MSGS"))
  (shadow 'UltrasonicParkSlotResult (find-package "SENSOR_INTERFACE_MSGS")))
(unless (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICPARKSLOTRESULT")
  (make-package "SENSOR_INTERFACE_MSGS::ULTRASONICPARKSLOTRESULT"))

(in-package "ROS")
;;//! \htmlinclude UltrasonicParkSlotResult.msg.html


(defclass sensor_interface_msgs::UltrasonicParkSlotResult
  :super ros::object
  :slots (_uss_park_slot_data ))

(defmethod sensor_interface_msgs::UltrasonicParkSlotResult
  (:init
   (&key
    ((:uss_park_slot_data __uss_park_slot_data) ())
    )
   (send-super :init)
   (setq _uss_park_slot_data __uss_park_slot_data)
   self)
  (:uss_park_slot_data
   (&rest __uss_park_slot_data)
   (if (keywordp (car __uss_park_slot_data))
       (send* _uss_park_slot_data __uss_park_slot_data)
     (progn
       (if __uss_park_slot_data (setq _uss_park_slot_data (car __uss_park_slot_data)))
       _uss_park_slot_data)))
  (:serialization-length
   ()
   (+
    ;; sensor_interface_msgs/UssParkSlotData[] _uss_park_slot_data
    (apply #'+ (send-all _uss_park_slot_data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_interface_msgs/UssParkSlotData[] _uss_park_slot_data
     (write-long (length _uss_park_slot_data) s)
     (dolist (elem _uss_park_slot_data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_interface_msgs/UssParkSlotData[] _uss_park_slot_data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _uss_park_slot_data (let (r) (dotimes (i n) (push (instance sensor_interface_msgs::UssParkSlotData :init) r)) r))
     (dolist (elem- _uss_park_slot_data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get sensor_interface_msgs::UltrasonicParkSlotResult :md5sum-) "e179d9ef03c41198026705c8f0db6bd2")
(setf (get sensor_interface_msgs::UltrasonicParkSlotResult :datatype-) "sensor_interface_msgs/UltrasonicParkSlotResult")
(setf (get sensor_interface_msgs::UltrasonicParkSlotResult :definition-)
      "sensor_interface_msgs/UssParkSlotData[] uss_park_slot_data

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



(provide :sensor_interface_msgs/UltrasonicParkSlotResult "e179d9ef03c41198026705c8f0db6bd2")


