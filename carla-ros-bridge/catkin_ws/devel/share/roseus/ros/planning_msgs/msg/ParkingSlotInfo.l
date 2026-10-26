;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::ParkingSlotInfo)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'ParkingSlotInfo (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::PARKINGSLOTINFO")
  (make-package "PLANNING_MSGS::PARKINGSLOTINFO"))

(in-package "ROS")
;;//! \htmlinclude ParkingSlotInfo.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass planning_msgs::ParkingSlotInfo
  :super ros::object
  :slots (_optimized_corners _slot_type _has_wheel_stopper _ego_slot_iou _front_wheel_to_stopper _front_wheel_to_opening _front_wheel_to_bottom _rear_wheel_to_stopper _rear_wheel_to_opening _rear_wheel_to_bottom _reserved ))

(defmethod planning_msgs::ParkingSlotInfo
  (:init
   (&key
    ((:optimized_corners __optimized_corners) ())
    ((:slot_type __slot_type) (instance planning_msgs::ParkingSlotType :init))
    ((:has_wheel_stopper __has_wheel_stopper) nil)
    ((:ego_slot_iou __ego_slot_iou) 0.0)
    ((:front_wheel_to_stopper __front_wheel_to_stopper) 0.0)
    ((:front_wheel_to_opening __front_wheel_to_opening) 0.0)
    ((:front_wheel_to_bottom __front_wheel_to_bottom) 0.0)
    ((:rear_wheel_to_stopper __rear_wheel_to_stopper) 0.0)
    ((:rear_wheel_to_opening __rear_wheel_to_opening) 0.0)
    ((:rear_wheel_to_bottom __rear_wheel_to_bottom) 0.0)
    ((:reserved __reserved) "")
    )
   (send-super :init)
   (setq _optimized_corners __optimized_corners)
   (setq _slot_type __slot_type)
   (setq _has_wheel_stopper __has_wheel_stopper)
   (setq _ego_slot_iou (float __ego_slot_iou))
   (setq _front_wheel_to_stopper (float __front_wheel_to_stopper))
   (setq _front_wheel_to_opening (float __front_wheel_to_opening))
   (setq _front_wheel_to_bottom (float __front_wheel_to_bottom))
   (setq _rear_wheel_to_stopper (float __rear_wheel_to_stopper))
   (setq _rear_wheel_to_opening (float __rear_wheel_to_opening))
   (setq _rear_wheel_to_bottom (float __rear_wheel_to_bottom))
   (setq _reserved (string __reserved))
   self)
  (:optimized_corners
   (&rest __optimized_corners)
   (if (keywordp (car __optimized_corners))
       (send* _optimized_corners __optimized_corners)
     (progn
       (if __optimized_corners (setq _optimized_corners (car __optimized_corners)))
       _optimized_corners)))
  (:slot_type
   (&rest __slot_type)
   (if (keywordp (car __slot_type))
       (send* _slot_type __slot_type)
     (progn
       (if __slot_type (setq _slot_type (car __slot_type)))
       _slot_type)))
  (:has_wheel_stopper
   (&optional (__has_wheel_stopper :null))
   (if (not (eq __has_wheel_stopper :null)) (setq _has_wheel_stopper __has_wheel_stopper)) _has_wheel_stopper)
  (:ego_slot_iou
   (&optional __ego_slot_iou)
   (if __ego_slot_iou (setq _ego_slot_iou __ego_slot_iou)) _ego_slot_iou)
  (:front_wheel_to_stopper
   (&optional __front_wheel_to_stopper)
   (if __front_wheel_to_stopper (setq _front_wheel_to_stopper __front_wheel_to_stopper)) _front_wheel_to_stopper)
  (:front_wheel_to_opening
   (&optional __front_wheel_to_opening)
   (if __front_wheel_to_opening (setq _front_wheel_to_opening __front_wheel_to_opening)) _front_wheel_to_opening)
  (:front_wheel_to_bottom
   (&optional __front_wheel_to_bottom)
   (if __front_wheel_to_bottom (setq _front_wheel_to_bottom __front_wheel_to_bottom)) _front_wheel_to_bottom)
  (:rear_wheel_to_stopper
   (&optional __rear_wheel_to_stopper)
   (if __rear_wheel_to_stopper (setq _rear_wheel_to_stopper __rear_wheel_to_stopper)) _rear_wheel_to_stopper)
  (:rear_wheel_to_opening
   (&optional __rear_wheel_to_opening)
   (if __rear_wheel_to_opening (setq _rear_wheel_to_opening __rear_wheel_to_opening)) _rear_wheel_to_opening)
  (:rear_wheel_to_bottom
   (&optional __rear_wheel_to_bottom)
   (if __rear_wheel_to_bottom (setq _rear_wheel_to_bottom __rear_wheel_to_bottom)) _rear_wheel_to_bottom)
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point[] _optimized_corners
    (apply #'+ (send-all _optimized_corners :serialization-length)) 4
    ;; planning_msgs/ParkingSlotType _slot_type
    (send _slot_type :serialization-length)
    ;; bool _has_wheel_stopper
    1
    ;; float32 _ego_slot_iou
    4
    ;; float32 _front_wheel_to_stopper
    4
    ;; float32 _front_wheel_to_opening
    4
    ;; float32 _front_wheel_to_bottom
    4
    ;; float32 _rear_wheel_to_stopper
    4
    ;; float32 _rear_wheel_to_opening
    4
    ;; float32 _rear_wheel_to_bottom
    4
    ;; string _reserved
    4 (length _reserved)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point[] _optimized_corners
     (write-long (length _optimized_corners) s)
     (dolist (elem _optimized_corners)
       (send elem :serialize s)
       )
     ;; planning_msgs/ParkingSlotType _slot_type
       (send _slot_type :serialize s)
     ;; bool _has_wheel_stopper
       (if _has_wheel_stopper (write-byte -1 s) (write-byte 0 s))
     ;; float32 _ego_slot_iou
       (sys::poke _ego_slot_iou (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _front_wheel_to_stopper
       (sys::poke _front_wheel_to_stopper (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _front_wheel_to_opening
       (sys::poke _front_wheel_to_opening (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _front_wheel_to_bottom
       (sys::poke _front_wheel_to_bottom (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rear_wheel_to_stopper
       (sys::poke _rear_wheel_to_stopper (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rear_wheel_to_opening
       (sys::poke _rear_wheel_to_opening (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rear_wheel_to_bottom
       (sys::poke _rear_wheel_to_bottom (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _reserved
       (write-long (length _reserved) s) (princ _reserved s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point[] _optimized_corners
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _optimized_corners (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _optimized_corners)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; planning_msgs/ParkingSlotType _slot_type
     (send _slot_type :deserialize buf ptr-) (incf ptr- (send _slot_type :serialization-length))
   ;; bool _has_wheel_stopper
     (setq _has_wheel_stopper (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _ego_slot_iou
     (setq _ego_slot_iou (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _front_wheel_to_stopper
     (setq _front_wheel_to_stopper (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _front_wheel_to_opening
     (setq _front_wheel_to_opening (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _front_wheel_to_bottom
     (setq _front_wheel_to_bottom (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rear_wheel_to_stopper
     (setq _rear_wheel_to_stopper (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rear_wheel_to_opening
     (setq _rear_wheel_to_opening (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rear_wheel_to_bottom
     (setq _rear_wheel_to_bottom (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _reserved
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get planning_msgs::ParkingSlotInfo :md5sum-) "4c9d0efe24f139c6c2a32a8bbab872f5")
(setf (get planning_msgs::ParkingSlotInfo :datatype-) "planning_msgs/ParkingSlotInfo")
(setf (get planning_msgs::ParkingSlotInfo :definition-)
      "geometry_msgs/Point[] optimized_corners
planning_msgs/ParkingSlotType slot_type
bool has_wheel_stopper
float32 ego_slot_iou
float32 front_wheel_to_stopper
float32 front_wheel_to_opening
float32 front_wheel_to_bottom
float32 rear_wheel_to_stopper
float32 rear_wheel_to_opening
float32 rear_wheel_to_bottom
string reserved

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: planning_msgs/ParkingSlotType
uint8 UNKNOWN = 0
uint8 PERPENDICULAR = 1
uint8 PARALLEL = 2
uint8 OBLIQUE = 3
uint8 value

")



(provide :planning_msgs/ParkingSlotInfo "4c9d0efe24f139c6c2a32a8bbab872f5")


