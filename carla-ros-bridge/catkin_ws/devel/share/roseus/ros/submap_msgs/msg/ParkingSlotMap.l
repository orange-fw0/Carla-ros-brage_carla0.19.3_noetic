;; Auto-generated. Do not edit!


(when (boundp 'submap_msgs::ParkingSlotMap)
  (if (not (find-package "SUBMAP_MSGS"))
    (make-package "SUBMAP_MSGS"))
  (shadow 'ParkingSlotMap (find-package "SUBMAP_MSGS")))
(unless (find-package "SUBMAP_MSGS::PARKINGSLOTMAP")
  (make-package "SUBMAP_MSGS::PARKINGSLOTMAP"))

(in-package "ROS")
;;//! \htmlinclude ParkingSlotMap.msg.html


(defclass submap_msgs::ParkingSlotMap
  :super ros::object
  :slots (_slots ))

(defmethod submap_msgs::ParkingSlotMap
  (:init
   (&key
    ((:slots __slots) ())
    )
   (send-super :init)
   (setq _slots __slots)
   self)
  (:slots
   (&rest __slots)
   (if (keywordp (car __slots))
       (send* _slots __slots)
     (progn
       (if __slots (setq _slots (car __slots)))
       _slots)))
  (:serialization-length
   ()
   (+
    ;; submap_msgs/ParkingSlot[] _slots
    (apply #'+ (send-all _slots :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; submap_msgs/ParkingSlot[] _slots
     (write-long (length _slots) s)
     (dolist (elem _slots)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; submap_msgs/ParkingSlot[] _slots
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _slots (let (r) (dotimes (i n) (push (instance submap_msgs::ParkingSlot :init) r)) r))
     (dolist (elem- _slots)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get submap_msgs::ParkingSlotMap :md5sum-) "a99fcf7f804a09b074e1b0ef4d27a9fa")
(setf (get submap_msgs::ParkingSlotMap :datatype-) "submap_msgs/ParkingSlotMap")
(setf (get submap_msgs::ParkingSlotMap :definition-)
      "submap_msgs/ParkingSlot[] slots

================================================================================
MSG: submap_msgs/ParkingSlot
geometry_msgs/Point[] points
geometry_msgs/Point[] points_local
float64 timestamp
uint32 id
float32 score
float32 slide_distance

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :submap_msgs/ParkingSlotMap "a99fcf7f804a09b074e1b0ef4d27a9fa")


