;; Auto-generated. Do not edit!


(when (boundp 'sensor_interface_msgs::UssParkSlotData)
  (if (not (find-package "SENSOR_INTERFACE_MSGS"))
    (make-package "SENSOR_INTERFACE_MSGS"))
  (shadow 'UssParkSlotData (find-package "SENSOR_INTERFACE_MSGS")))
(unless (find-package "SENSOR_INTERFACE_MSGS::USSPARKSLOTDATA")
  (make-package "SENSOR_INTERFACE_MSGS::USSPARKSLOTDATA"))

(in-package "ROS")
;;//! \htmlinclude UssParkSlotData.msg.html


(defclass sensor_interface_msgs::UssParkSlotData
  :super ros::object
  :slots (_available _meta _parkslot_id _parking_slot_type _border_type_data _veh_obj1_x _veh_obj1_y _veh_obj2_x _veh_obj2_y _veh_obj3_x _veh_obj3_y _veh_obj4_x _veh_obj4_y _parkslot_prob _reserved_info ))

(defmethod sensor_interface_msgs::UssParkSlotData
  (:init
   (&key
    ((:available __available) 0)
    ((:meta __meta) (instance sensor_interface_msgs::UltrasonicResultMeta :init))
    ((:parkslot_id __parkslot_id) 0)
    ((:parking_slot_type __parking_slot_type) (instance sensor_interface_msgs::UltrasonicPaingslotType :init))
    ((:border_type_data __border_type_data) ())
    ((:veh_obj1_x __veh_obj1_x) 0.0)
    ((:veh_obj1_y __veh_obj1_y) 0.0)
    ((:veh_obj2_x __veh_obj2_x) 0.0)
    ((:veh_obj2_y __veh_obj2_y) 0.0)
    ((:veh_obj3_x __veh_obj3_x) 0.0)
    ((:veh_obj3_y __veh_obj3_y) 0.0)
    ((:veh_obj4_x __veh_obj4_x) 0.0)
    ((:veh_obj4_y __veh_obj4_y) 0.0)
    ((:parkslot_prob __parkslot_prob) 0.0)
    ((:reserved_info __reserved_info) "")
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _meta __meta)
   (setq _parkslot_id (round __parkslot_id))
   (setq _parking_slot_type __parking_slot_type)
   (setq _border_type_data __border_type_data)
   (setq _veh_obj1_x (float __veh_obj1_x))
   (setq _veh_obj1_y (float __veh_obj1_y))
   (setq _veh_obj2_x (float __veh_obj2_x))
   (setq _veh_obj2_y (float __veh_obj2_y))
   (setq _veh_obj3_x (float __veh_obj3_x))
   (setq _veh_obj3_y (float __veh_obj3_y))
   (setq _veh_obj4_x (float __veh_obj4_x))
   (setq _veh_obj4_y (float __veh_obj4_y))
   (setq _parkslot_prob (float __parkslot_prob))
   (setq _reserved_info (string __reserved_info))
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:meta
   (&rest __meta)
   (if (keywordp (car __meta))
       (send* _meta __meta)
     (progn
       (if __meta (setq _meta (car __meta)))
       _meta)))
  (:parkslot_id
   (&optional __parkslot_id)
   (if __parkslot_id (setq _parkslot_id __parkslot_id)) _parkslot_id)
  (:parking_slot_type
   (&rest __parking_slot_type)
   (if (keywordp (car __parking_slot_type))
       (send* _parking_slot_type __parking_slot_type)
     (progn
       (if __parking_slot_type (setq _parking_slot_type (car __parking_slot_type)))
       _parking_slot_type)))
  (:border_type_data
   (&rest __border_type_data)
   (if (keywordp (car __border_type_data))
       (send* _border_type_data __border_type_data)
     (progn
       (if __border_type_data (setq _border_type_data (car __border_type_data)))
       _border_type_data)))
  (:veh_obj1_x
   (&optional __veh_obj1_x)
   (if __veh_obj1_x (setq _veh_obj1_x __veh_obj1_x)) _veh_obj1_x)
  (:veh_obj1_y
   (&optional __veh_obj1_y)
   (if __veh_obj1_y (setq _veh_obj1_y __veh_obj1_y)) _veh_obj1_y)
  (:veh_obj2_x
   (&optional __veh_obj2_x)
   (if __veh_obj2_x (setq _veh_obj2_x __veh_obj2_x)) _veh_obj2_x)
  (:veh_obj2_y
   (&optional __veh_obj2_y)
   (if __veh_obj2_y (setq _veh_obj2_y __veh_obj2_y)) _veh_obj2_y)
  (:veh_obj3_x
   (&optional __veh_obj3_x)
   (if __veh_obj3_x (setq _veh_obj3_x __veh_obj3_x)) _veh_obj3_x)
  (:veh_obj3_y
   (&optional __veh_obj3_y)
   (if __veh_obj3_y (setq _veh_obj3_y __veh_obj3_y)) _veh_obj3_y)
  (:veh_obj4_x
   (&optional __veh_obj4_x)
   (if __veh_obj4_x (setq _veh_obj4_x __veh_obj4_x)) _veh_obj4_x)
  (:veh_obj4_y
   (&optional __veh_obj4_y)
   (if __veh_obj4_y (setq _veh_obj4_y __veh_obj4_y)) _veh_obj4_y)
  (:parkslot_prob
   (&optional __parkslot_prob)
   (if __parkslot_prob (setq _parkslot_prob __parkslot_prob)) _parkslot_prob)
  (:reserved_info
   (&optional __reserved_info)
   (if __reserved_info (setq _reserved_info __reserved_info)) _reserved_info)
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; sensor_interface_msgs/UltrasonicResultMeta _meta
    (send _meta :serialization-length)
    ;; uint32 _parkslot_id
    4
    ;; sensor_interface_msgs/UltrasonicPaingslotType _parking_slot_type
    (send _parking_slot_type :serialization-length)
    ;; sensor_interface_msgs/BordertType[] _border_type_data
    (apply #'+ (send-all _border_type_data :serialization-length)) 4
    ;; float32 _veh_obj1_x
    4
    ;; float32 _veh_obj1_y
    4
    ;; float32 _veh_obj2_x
    4
    ;; float32 _veh_obj2_y
    4
    ;; float32 _veh_obj3_x
    4
    ;; float32 _veh_obj3_y
    4
    ;; float32 _veh_obj4_x
    4
    ;; float32 _veh_obj4_y
    4
    ;; float32 _parkslot_prob
    4
    ;; string _reserved_info
    4 (length _reserved_info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; sensor_interface_msgs/UltrasonicResultMeta _meta
       (send _meta :serialize s)
     ;; uint32 _parkslot_id
       (write-long _parkslot_id s)
     ;; sensor_interface_msgs/UltrasonicPaingslotType _parking_slot_type
       (send _parking_slot_type :serialize s)
     ;; sensor_interface_msgs/BordertType[] _border_type_data
     (write-long (length _border_type_data) s)
     (dolist (elem _border_type_data)
       (send elem :serialize s)
       )
     ;; float32 _veh_obj1_x
       (sys::poke _veh_obj1_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _veh_obj1_y
       (sys::poke _veh_obj1_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _veh_obj2_x
       (sys::poke _veh_obj2_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _veh_obj2_y
       (sys::poke _veh_obj2_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _veh_obj3_x
       (sys::poke _veh_obj3_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _veh_obj3_y
       (sys::poke _veh_obj3_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _veh_obj4_x
       (sys::poke _veh_obj4_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _veh_obj4_y
       (sys::poke _veh_obj4_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _parkslot_prob
       (sys::poke _parkslot_prob (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _reserved_info
       (write-long (length _reserved_info) s) (princ _reserved_info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; sensor_interface_msgs/UltrasonicResultMeta _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;; uint32 _parkslot_id
     (setq _parkslot_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; sensor_interface_msgs/UltrasonicPaingslotType _parking_slot_type
     (send _parking_slot_type :deserialize buf ptr-) (incf ptr- (send _parking_slot_type :serialization-length))
   ;; sensor_interface_msgs/BordertType[] _border_type_data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _border_type_data (let (r) (dotimes (i n) (push (instance sensor_interface_msgs::BordertType :init) r)) r))
     (dolist (elem- _border_type_data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32 _veh_obj1_x
     (setq _veh_obj1_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _veh_obj1_y
     (setq _veh_obj1_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _veh_obj2_x
     (setq _veh_obj2_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _veh_obj2_y
     (setq _veh_obj2_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _veh_obj3_x
     (setq _veh_obj3_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _veh_obj3_y
     (setq _veh_obj3_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _veh_obj4_x
     (setq _veh_obj4_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _veh_obj4_y
     (setq _veh_obj4_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _parkslot_prob
     (setq _parkslot_prob (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get sensor_interface_msgs::UssParkSlotData :md5sum-) "0b8a657208389ec0925a2e4f916d0058")
(setf (get sensor_interface_msgs::UssParkSlotData :datatype-) "sensor_interface_msgs/UssParkSlotData")
(setf (get sensor_interface_msgs::UssParkSlotData :definition-)
      "uint8 available
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



(provide :sensor_interface_msgs/UssParkSlotData "0b8a657208389ec0925a2e4f916d0058")


