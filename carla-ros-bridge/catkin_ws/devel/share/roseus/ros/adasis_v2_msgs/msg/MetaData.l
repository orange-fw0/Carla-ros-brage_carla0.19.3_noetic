;; Auto-generated. Do not edit!


(when (boundp 'adasis_v2_msgs::MetaData)
  (if (not (find-package "ADASIS_V2_MSGS"))
    (make-package "ADASIS_V2_MSGS"))
  (shadow 'MetaData (find-package "ADASIS_V2_MSGS")))
(unless (find-package "ADASIS_V2_MSGS::METADATA")
  (make-package "ADASIS_V2_MSGS::METADATA"))

(in-package "ROS")
;;//! \htmlinclude MetaData.msg.html


(defclass adasis_v2_msgs::MetaData
  :super ros::object
  :slots (_cyclic_counter _country_code _region_code _driving_side _speed_units _major_protocol_ver _minor_protocol_ver _minor_protocol_sub_ver _hardware_ver _map_provider _map_ver_year _map_ver_year_quarter _reserved ))

(defmethod adasis_v2_msgs::MetaData
  (:init
   (&key
    ((:cyclic_counter __cyclic_counter) 0)
    ((:country_code __country_code) 0)
    ((:region_code __region_code) 0)
    ((:driving_side __driving_side) 0)
    ((:speed_units __speed_units) 0)
    ((:major_protocol_ver __major_protocol_ver) 0)
    ((:minor_protocol_ver __minor_protocol_ver) 0)
    ((:minor_protocol_sub_ver __minor_protocol_sub_ver) 0)
    ((:hardware_ver __hardware_ver) 0)
    ((:map_provider __map_provider) 0)
    ((:map_ver_year __map_ver_year) 0)
    ((:map_ver_year_quarter __map_ver_year_quarter) 0)
    ((:reserved __reserved) 0)
    )
   (send-super :init)
   (setq _cyclic_counter (round __cyclic_counter))
   (setq _country_code (round __country_code))
   (setq _region_code (round __region_code))
   (setq _driving_side (round __driving_side))
   (setq _speed_units (round __speed_units))
   (setq _major_protocol_ver (round __major_protocol_ver))
   (setq _minor_protocol_ver (round __minor_protocol_ver))
   (setq _minor_protocol_sub_ver (round __minor_protocol_sub_ver))
   (setq _hardware_ver (round __hardware_ver))
   (setq _map_provider (round __map_provider))
   (setq _map_ver_year (round __map_ver_year))
   (setq _map_ver_year_quarter (round __map_ver_year_quarter))
   (setq _reserved (round __reserved))
   self)
  (:cyclic_counter
   (&optional __cyclic_counter)
   (if __cyclic_counter (setq _cyclic_counter __cyclic_counter)) _cyclic_counter)
  (:country_code
   (&optional __country_code)
   (if __country_code (setq _country_code __country_code)) _country_code)
  (:region_code
   (&optional __region_code)
   (if __region_code (setq _region_code __region_code)) _region_code)
  (:driving_side
   (&optional __driving_side)
   (if __driving_side (setq _driving_side __driving_side)) _driving_side)
  (:speed_units
   (&optional __speed_units)
   (if __speed_units (setq _speed_units __speed_units)) _speed_units)
  (:major_protocol_ver
   (&optional __major_protocol_ver)
   (if __major_protocol_ver (setq _major_protocol_ver __major_protocol_ver)) _major_protocol_ver)
  (:minor_protocol_ver
   (&optional __minor_protocol_ver)
   (if __minor_protocol_ver (setq _minor_protocol_ver __minor_protocol_ver)) _minor_protocol_ver)
  (:minor_protocol_sub_ver
   (&optional __minor_protocol_sub_ver)
   (if __minor_protocol_sub_ver (setq _minor_protocol_sub_ver __minor_protocol_sub_ver)) _minor_protocol_sub_ver)
  (:hardware_ver
   (&optional __hardware_ver)
   (if __hardware_ver (setq _hardware_ver __hardware_ver)) _hardware_ver)
  (:map_provider
   (&optional __map_provider)
   (if __map_provider (setq _map_provider __map_provider)) _map_provider)
  (:map_ver_year
   (&optional __map_ver_year)
   (if __map_ver_year (setq _map_ver_year __map_ver_year)) _map_ver_year)
  (:map_ver_year_quarter
   (&optional __map_ver_year_quarter)
   (if __map_ver_year_quarter (setq _map_ver_year_quarter __map_ver_year_quarter)) _map_ver_year_quarter)
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:serialization-length
   ()
   (+
    ;; uint8 _cyclic_counter
    1
    ;; uint16 _country_code
    2
    ;; uint16 _region_code
    2
    ;; uint8 _driving_side
    1
    ;; uint8 _speed_units
    1
    ;; uint8 _major_protocol_ver
    1
    ;; uint8 _minor_protocol_ver
    1
    ;; uint8 _minor_protocol_sub_ver
    1
    ;; uint16 _hardware_ver
    2
    ;; uint8 _map_provider
    1
    ;; uint8 _map_ver_year
    1
    ;; uint8 _map_ver_year_quarter
    1
    ;; uint8 _reserved
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _cyclic_counter
       (write-byte _cyclic_counter s)
     ;; uint16 _country_code
       (write-word _country_code s)
     ;; uint16 _region_code
       (write-word _region_code s)
     ;; uint8 _driving_side
       (write-byte _driving_side s)
     ;; uint8 _speed_units
       (write-byte _speed_units s)
     ;; uint8 _major_protocol_ver
       (write-byte _major_protocol_ver s)
     ;; uint8 _minor_protocol_ver
       (write-byte _minor_protocol_ver s)
     ;; uint8 _minor_protocol_sub_ver
       (write-byte _minor_protocol_sub_ver s)
     ;; uint16 _hardware_ver
       (write-word _hardware_ver s)
     ;; uint8 _map_provider
       (write-byte _map_provider s)
     ;; uint8 _map_ver_year
       (write-byte _map_ver_year s)
     ;; uint8 _map_ver_year_quarter
       (write-byte _map_ver_year_quarter s)
     ;; uint8 _reserved
       (write-byte _reserved s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _cyclic_counter
     (setq _cyclic_counter (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _country_code
     (setq _country_code (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _region_code
     (setq _region_code (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _driving_side
     (setq _driving_side (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _speed_units
     (setq _speed_units (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _major_protocol_ver
     (setq _major_protocol_ver (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _minor_protocol_ver
     (setq _minor_protocol_ver (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _minor_protocol_sub_ver
     (setq _minor_protocol_sub_ver (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _hardware_ver
     (setq _hardware_ver (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _map_provider
     (setq _map_provider (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _map_ver_year
     (setq _map_ver_year (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _map_ver_year_quarter
     (setq _map_ver_year_quarter (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _reserved
     (setq _reserved (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get adasis_v2_msgs::MetaData :md5sum-) "5556fd004a3f00d8656d992fea6c2650")
(setf (get adasis_v2_msgs::MetaData :datatype-) "adasis_v2_msgs/MetaData")
(setf (get adasis_v2_msgs::MetaData :definition-)
      "uint8 cyclic_counter
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



(provide :adasis_v2_msgs/MetaData "5556fd004a3f00d8656d992fea6c2650")


