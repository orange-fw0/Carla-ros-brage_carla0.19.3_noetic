;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::ParkingSlotVirtualPoint)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'ParkingSlotVirtualPoint (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTVIRTUALPOINT")
  (make-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTVIRTUALPOINT"))

(in-package "ROS")
;;//! \htmlinclude ParkingSlotVirtualPoint.msg.html


(defclass perception_interface_msgs::ParkingSlotVirtualPoint
  :super ros::object
  :slots (_point_index _local_point ))

(defmethod perception_interface_msgs::ParkingSlotVirtualPoint
  (:init
   (&key
    ((:point_index __point_index) 0)
    ((:local_point __local_point) (instance perception_interface_msgs::Point3f :init))
    )
   (send-super :init)
   (setq _point_index (round __point_index))
   (setq _local_point __local_point)
   self)
  (:point_index
   (&optional __point_index)
   (if __point_index (setq _point_index __point_index)) _point_index)
  (:local_point
   (&rest __local_point)
   (if (keywordp (car __local_point))
       (send* _local_point __local_point)
     (progn
       (if __local_point (setq _local_point (car __local_point)))
       _local_point)))
  (:serialization-length
   ()
   (+
    ;; uint8 _point_index
    1
    ;; perception_interface_msgs/Point3f _local_point
    (send _local_point :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _point_index
       (write-byte _point_index s)
     ;; perception_interface_msgs/Point3f _local_point
       (send _local_point :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _point_index
     (setq _point_index (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; perception_interface_msgs/Point3f _local_point
     (send _local_point :deserialize buf ptr-) (incf ptr- (send _local_point :serialization-length))
   ;;
   self)
  )

(setf (get perception_interface_msgs::ParkingSlotVirtualPoint :md5sum-) "eab90b5083be4391b0886004149f2676")
(setf (get perception_interface_msgs::ParkingSlotVirtualPoint :datatype-) "perception_interface_msgs/ParkingSlotVirtualPoint")
(setf (get perception_interface_msgs::ParkingSlotVirtualPoint :definition-)
      "uint8 point_index
perception_interface_msgs/Point3f local_point

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

")



(provide :perception_interface_msgs/ParkingSlotVirtualPoint "eab90b5083be4391b0886004149f2676")


