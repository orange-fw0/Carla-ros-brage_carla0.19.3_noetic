;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::ParkingSlotCenterPoint)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'ParkingSlotCenterPoint (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTCENTERPOINT")
  (make-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTCENTERPOINT"))

(in-package "ROS")
;;//! \htmlinclude ParkingSlotCenterPoint.msg.html


(defclass perception_interface_msgs::ParkingSlotCenterPoint
  :super ros::object
  :slots (_position _available_type _confidence _center_line_angle _charge_type _special_type _special_confidence ))

(defmethod perception_interface_msgs::ParkingSlotCenterPoint
  (:init
   (&key
    ((:position __position) (instance perception_interface_msgs::Point2f :init))
    ((:available_type __available_type) (instance perception_interface_msgs::ParkingSlotTypeEnum :init))
    ((:confidence __confidence) 0.0)
    ((:center_line_angle __center_line_angle) 0.0)
    ((:charge_type __charge_type) (instance perception_interface_msgs::ParkingSlotChargeTypeEnum :init))
    ((:special_type __special_type) (instance perception_interface_msgs::ParkingSlotSpecialTypeEnum :init))
    ((:special_confidence __special_confidence) 0.0)
    )
   (send-super :init)
   (setq _position __position)
   (setq _available_type __available_type)
   (setq _confidence (float __confidence))
   (setq _center_line_angle (float __center_line_angle))
   (setq _charge_type __charge_type)
   (setq _special_type __special_type)
   (setq _special_confidence (float __special_confidence))
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:available_type
   (&rest __available_type)
   (if (keywordp (car __available_type))
       (send* _available_type __available_type)
     (progn
       (if __available_type (setq _available_type (car __available_type)))
       _available_type)))
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:center_line_angle
   (&optional __center_line_angle)
   (if __center_line_angle (setq _center_line_angle __center_line_angle)) _center_line_angle)
  (:charge_type
   (&rest __charge_type)
   (if (keywordp (car __charge_type))
       (send* _charge_type __charge_type)
     (progn
       (if __charge_type (setq _charge_type (car __charge_type)))
       _charge_type)))
  (:special_type
   (&rest __special_type)
   (if (keywordp (car __special_type))
       (send* _special_type __special_type)
     (progn
       (if __special_type (setq _special_type (car __special_type)))
       _special_type)))
  (:special_confidence
   (&optional __special_confidence)
   (if __special_confidence (setq _special_confidence __special_confidence)) _special_confidence)
  (:serialization-length
   ()
   (+
    ;; perception_interface_msgs/Point2f _position
    (send _position :serialization-length)
    ;; perception_interface_msgs/ParkingSlotTypeEnum _available_type
    (send _available_type :serialization-length)
    ;; float32 _confidence
    4
    ;; float32 _center_line_angle
    4
    ;; perception_interface_msgs/ParkingSlotChargeTypeEnum _charge_type
    (send _charge_type :serialization-length)
    ;; perception_interface_msgs/ParkingSlotSpecialTypeEnum _special_type
    (send _special_type :serialization-length)
    ;; float32 _special_confidence
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; perception_interface_msgs/Point2f _position
       (send _position :serialize s)
     ;; perception_interface_msgs/ParkingSlotTypeEnum _available_type
       (send _available_type :serialize s)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _center_line_angle
       (sys::poke _center_line_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; perception_interface_msgs/ParkingSlotChargeTypeEnum _charge_type
       (send _charge_type :serialize s)
     ;; perception_interface_msgs/ParkingSlotSpecialTypeEnum _special_type
       (send _special_type :serialize s)
     ;; float32 _special_confidence
       (sys::poke _special_confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; perception_interface_msgs/Point2f _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; perception_interface_msgs/ParkingSlotTypeEnum _available_type
     (send _available_type :deserialize buf ptr-) (incf ptr- (send _available_type :serialization-length))
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _center_line_angle
     (setq _center_line_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; perception_interface_msgs/ParkingSlotChargeTypeEnum _charge_type
     (send _charge_type :deserialize buf ptr-) (incf ptr- (send _charge_type :serialization-length))
   ;; perception_interface_msgs/ParkingSlotSpecialTypeEnum _special_type
     (send _special_type :deserialize buf ptr-) (incf ptr- (send _special_type :serialization-length))
   ;; float32 _special_confidence
     (setq _special_confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get perception_interface_msgs::ParkingSlotCenterPoint :md5sum-) "8e47dee11eefcbac6dcb78dde2360eb5")
(setf (get perception_interface_msgs::ParkingSlotCenterPoint :datatype-) "perception_interface_msgs/ParkingSlotCenterPoint")
(setf (get perception_interface_msgs::ParkingSlotCenterPoint :definition-)
      "perception_interface_msgs/Point2f position
perception_interface_msgs/ParkingSlotTypeEnum available_type
float32 confidence
float32 center_line_angle
perception_interface_msgs/ParkingSlotChargeTypeEnum charge_type
perception_interface_msgs/ParkingSlotSpecialTypeEnum special_type
float32 special_confidence

================================================================================
MSG: perception_interface_msgs/Point2f
float32 x
float32 y

================================================================================
MSG: perception_interface_msgs/ParkingSlotTypeEnum
uint8 PARKING_SLOT_TYPE_UNKNOWN = 0
uint8 PARKING_SLOT_TYPE_AVAILABLE = 1
uint8 PARKING_SLOT_TYPE_OCCUPIED = 2
uint8 value

================================================================================
MSG: perception_interface_msgs/ParkingSlotChargeTypeEnum
uint8 PARKING_SLOT_CHARGE_TYPE_UNKNOWN = 0
uint8 PARKING_SLOT_CHARGE_TYPE_AVAILABLE = 1
uint8 PARKING_SLOT_CHARGE_TYPE_NOT_AVAILABLE = 2
uint8 value

================================================================================
MSG: perception_interface_msgs/ParkingSlotSpecialTypeEnum
uint8 PARKING_SLOT_SPECIAL_TYPE_UNKNOWN = 0
uint8 PARKING_SLOT_SPECIAL_TYPE_NORMAL = 1
uint8 PARKING_SLOT_SPECIAL_TYPE_CHARGE = 2
uint8 PARKING_SLOT_SPECIAL_TYPE_MECHANICAL = 3
uint8 PARKING_SLOT_SPECIAL_TYPE_FORBIDDEN = 4
uint8 value

")



(provide :perception_interface_msgs/ParkingSlotCenterPoint "8e47dee11eefcbac6dcb78dde2360eb5")


