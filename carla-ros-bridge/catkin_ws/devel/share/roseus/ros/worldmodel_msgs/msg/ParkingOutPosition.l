;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::ParkingOutPosition)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'ParkingOutPosition (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::PARKINGOUTPOSITION")
  (make-package "WORLDMODEL_MSGS::PARKINGOUTPOSITION"))

(in-package "ROS")
;;//! \htmlinclude ParkingOutPosition.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(defclass worldmodel_msgs::ParkingOutPosition
  :super ros::object
  :slots (_source_parking_lot_id _source_parking_lot_position _target_position _target_heading_yaw ))

(defmethod worldmodel_msgs::ParkingOutPosition
  (:init
   (&key
    ((:source_parking_lot_id __source_parking_lot_id) 0)
    ((:source_parking_lot_position __source_parking_lot_position) (instance perception_interface_msgs::Polygon3f :init))
    ((:target_position __target_position) (instance perception_interface_msgs::Point3f :init))
    ((:target_heading_yaw __target_heading_yaw) 0.0)
    )
   (send-super :init)
   (setq _source_parking_lot_id (round __source_parking_lot_id))
   (setq _source_parking_lot_position __source_parking_lot_position)
   (setq _target_position __target_position)
   (setq _target_heading_yaw (float __target_heading_yaw))
   self)
  (:source_parking_lot_id
   (&optional __source_parking_lot_id)
   (if __source_parking_lot_id (setq _source_parking_lot_id __source_parking_lot_id)) _source_parking_lot_id)
  (:source_parking_lot_position
   (&rest __source_parking_lot_position)
   (if (keywordp (car __source_parking_lot_position))
       (send* _source_parking_lot_position __source_parking_lot_position)
     (progn
       (if __source_parking_lot_position (setq _source_parking_lot_position (car __source_parking_lot_position)))
       _source_parking_lot_position)))
  (:target_position
   (&rest __target_position)
   (if (keywordp (car __target_position))
       (send* _target_position __target_position)
     (progn
       (if __target_position (setq _target_position (car __target_position)))
       _target_position)))
  (:target_heading_yaw
   (&optional __target_heading_yaw)
   (if __target_heading_yaw (setq _target_heading_yaw __target_heading_yaw)) _target_heading_yaw)
  (:serialization-length
   ()
   (+
    ;; uint16 _source_parking_lot_id
    2
    ;; perception_interface_msgs/Polygon3f _source_parking_lot_position
    (send _source_parking_lot_position :serialization-length)
    ;; perception_interface_msgs/Point3f _target_position
    (send _target_position :serialization-length)
    ;; float64 _target_heading_yaw
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _source_parking_lot_id
       (write-word _source_parking_lot_id s)
     ;; perception_interface_msgs/Polygon3f _source_parking_lot_position
       (send _source_parking_lot_position :serialize s)
     ;; perception_interface_msgs/Point3f _target_position
       (send _target_position :serialize s)
     ;; float64 _target_heading_yaw
       (sys::poke _target_heading_yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _source_parking_lot_id
     (setq _source_parking_lot_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; perception_interface_msgs/Polygon3f _source_parking_lot_position
     (send _source_parking_lot_position :deserialize buf ptr-) (incf ptr- (send _source_parking_lot_position :serialization-length))
   ;; perception_interface_msgs/Point3f _target_position
     (send _target_position :deserialize buf ptr-) (incf ptr- (send _target_position :serialization-length))
   ;; float64 _target_heading_yaw
     (setq _target_heading_yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get worldmodel_msgs::ParkingOutPosition :md5sum-) "b814692f7a170f06545586a256496d60")
(setf (get worldmodel_msgs::ParkingOutPosition :datatype-) "worldmodel_msgs/ParkingOutPosition")
(setf (get worldmodel_msgs::ParkingOutPosition :definition-)
      "uint16 source_parking_lot_id
perception_interface_msgs/Polygon3f source_parking_lot_position
perception_interface_msgs/Point3f target_position
float64 target_heading_yaw

================================================================================
MSG: perception_interface_msgs/Polygon3f
perception_interface_msgs/Point3f[] points

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

")



(provide :worldmodel_msgs/ParkingOutPosition "b814692f7a170f06545586a256496d60")


