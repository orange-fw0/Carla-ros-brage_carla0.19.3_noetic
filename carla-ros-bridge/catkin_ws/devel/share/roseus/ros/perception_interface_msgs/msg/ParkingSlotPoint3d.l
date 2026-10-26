;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::ParkingSlotPoint3d)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'ParkingSlotPoint3d (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTPOINT3D")
  (make-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTPOINT3D"))

(in-package "ROS")
;;//! \htmlinclude ParkingSlotPoint3d.msg.html


(defclass perception_interface_msgs::ParkingSlotPoint3d
  :super ros::object
  :slots (_position _confidence _type ))

(defmethod perception_interface_msgs::ParkingSlotPoint3d
  (:init
   (&key
    ((:position __position) (instance perception_interface_msgs::Point3f :init))
    ((:confidence __confidence) 0.0)
    ((:type __type) (instance perception_interface_msgs::ParkingSlotPointTypeEnum :init))
    )
   (send-super :init)
   (setq _position __position)
   (setq _confidence (float __confidence))
   (setq _type __type)
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:serialization-length
   ()
   (+
    ;; perception_interface_msgs/Point3f _position
    (send _position :serialization-length)
    ;; float32 _confidence
    4
    ;; perception_interface_msgs/ParkingSlotPointTypeEnum _type
    (send _type :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; perception_interface_msgs/Point3f _position
       (send _position :serialize s)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; perception_interface_msgs/ParkingSlotPointTypeEnum _type
       (send _type :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; perception_interface_msgs/Point3f _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; perception_interface_msgs/ParkingSlotPointTypeEnum _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;;
   self)
  )

(setf (get perception_interface_msgs::ParkingSlotPoint3d :md5sum-) "fe19c303ecb74963763c24fdf3320429")
(setf (get perception_interface_msgs::ParkingSlotPoint3d :datatype-) "perception_interface_msgs/ParkingSlotPoint3d")
(setf (get perception_interface_msgs::ParkingSlotPoint3d :definition-)
      "perception_interface_msgs/Point3f position
float32 confidence
perception_interface_msgs/ParkingSlotPointTypeEnum type

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

================================================================================
MSG: perception_interface_msgs/ParkingSlotPointTypeEnum
uint8 PARKING_SLOT_POINT_TYPE_UNKNOWN = 0
uint8 PARKING_SLOT_POINT_TYPE_REAL = 1
uint8 PARKING_SLOT_POINT_TYPE_FAKE = 2
uint8 value

")



(provide :perception_interface_msgs/ParkingSlotPoint3d "fe19c303ecb74963763c24fdf3320429")


