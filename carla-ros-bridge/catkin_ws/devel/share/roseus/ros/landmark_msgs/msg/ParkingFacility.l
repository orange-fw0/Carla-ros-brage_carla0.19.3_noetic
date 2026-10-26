;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::ParkingFacility)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'ParkingFacility (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::PARKINGFACILITY")
  (make-package "LANDMARK_MSGS::PARKINGFACILITY"))

(in-package "ROS")
;;//! \htmlinclude ParkingFacility.msg.html


(defclass landmark_msgs::ParkingFacility
  :super ros::object
  :slots (_available _track_id _type _floor ))

(defmethod landmark_msgs::ParkingFacility
  (:init
   (&key
    ((:available __available) 0)
    ((:track_id __track_id) (instance landmark_msgs::TrackId :init))
    ((:type __type) (instance landmark_msgs::ParkingFacilityTypeEnum :init))
    ((:floor __floor) 0)
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _track_id __track_id)
   (setq _type __type)
   (setq _floor (round __floor))
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:track_id
   (&rest __track_id)
   (if (keywordp (car __track_id))
       (send* _track_id __track_id)
     (progn
       (if __track_id (setq _track_id (car __track_id)))
       _track_id)))
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:floor
   (&optional __floor)
   (if __floor (setq _floor __floor)) _floor)
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; landmark_msgs/TrackId _track_id
    (send _track_id :serialization-length)
    ;; landmark_msgs/ParkingFacilityTypeEnum _type
    (send _type :serialization-length)
    ;; int8 _floor
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; landmark_msgs/TrackId _track_id
       (send _track_id :serialize s)
     ;; landmark_msgs/ParkingFacilityTypeEnum _type
       (send _type :serialize s)
     ;; int8 _floor
       (write-byte _floor s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; landmark_msgs/TrackId _track_id
     (send _track_id :deserialize buf ptr-) (incf ptr- (send _track_id :serialization-length))
   ;; landmark_msgs/ParkingFacilityTypeEnum _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; int8 _floor
     (setq _floor (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _floor 127) (setq _floor (- _floor 256)))
   ;;
   self)
  )

(setf (get landmark_msgs::ParkingFacility :md5sum-) "1a1c710636be80b653290a0c57e326d6")
(setf (get landmark_msgs::ParkingFacility :datatype-) "landmark_msgs/ParkingFacility")
(setf (get landmark_msgs::ParkingFacility :definition-)
      "uint8 available
landmark_msgs/TrackId track_id
landmark_msgs/ParkingFacilityTypeEnum type
int8 floor

================================================================================
MSG: landmark_msgs/TrackId
bool is_visible
uint8 count
uint32 id
uint32 linked_id
uint32 map_id
uint32 area_id

================================================================================
MSG: landmark_msgs/ParkingFacilityTypeEnum
uint8 PARKING_FACILITY_TYPE_UNKNOWN = 0
uint8 PARKING_FACILITY_TYPE_FLOOR = 1
uint8 value

")



(provide :landmark_msgs/ParkingFacility "1a1c710636be80b653290a0c57e326d6")


