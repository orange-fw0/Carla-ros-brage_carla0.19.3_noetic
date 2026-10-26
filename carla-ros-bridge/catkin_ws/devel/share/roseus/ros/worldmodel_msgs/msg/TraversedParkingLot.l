;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::TraversedParkingLot)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'TraversedParkingLot (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::TRAVERSEDPARKINGLOT")
  (make-package "WORLDMODEL_MSGS::TRAVERSEDPARKINGLOT"))

(in-package "ROS")
;;//! \htmlinclude TraversedParkingLot.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(defclass worldmodel_msgs::TraversedParkingLot
  :super ros::object
  :slots (_parking_lot_id _parking_lot_position _parking_lot_center _parking_lot_entrance_center _available_inner_width _available_outter_width _next_parking_lot_id _previous_parking_lot_id _left_extended_distance _right_extended_distance _score ))

(defmethod worldmodel_msgs::TraversedParkingLot
  (:init
   (&key
    ((:parking_lot_id __parking_lot_id) 0)
    ((:parking_lot_position __parking_lot_position) (instance perception_interface_msgs::Polygon3f :init))
    ((:parking_lot_center __parking_lot_center) (instance perception_interface_msgs::Point3f :init))
    ((:parking_lot_entrance_center __parking_lot_entrance_center) (instance perception_interface_msgs::Point3f :init))
    ((:available_inner_width __available_inner_width) 0.0)
    ((:available_outter_width __available_outter_width) 0.0)
    ((:next_parking_lot_id __next_parking_lot_id) 0)
    ((:previous_parking_lot_id __previous_parking_lot_id) 0)
    ((:left_extended_distance __left_extended_distance) 0.0)
    ((:right_extended_distance __right_extended_distance) 0.0)
    ((:score __score) 0.0)
    )
   (send-super :init)
   (setq _parking_lot_id (round __parking_lot_id))
   (setq _parking_lot_position __parking_lot_position)
   (setq _parking_lot_center __parking_lot_center)
   (setq _parking_lot_entrance_center __parking_lot_entrance_center)
   (setq _available_inner_width (float __available_inner_width))
   (setq _available_outter_width (float __available_outter_width))
   (setq _next_parking_lot_id (round __next_parking_lot_id))
   (setq _previous_parking_lot_id (round __previous_parking_lot_id))
   (setq _left_extended_distance (float __left_extended_distance))
   (setq _right_extended_distance (float __right_extended_distance))
   (setq _score (float __score))
   self)
  (:parking_lot_id
   (&optional __parking_lot_id)
   (if __parking_lot_id (setq _parking_lot_id __parking_lot_id)) _parking_lot_id)
  (:parking_lot_position
   (&rest __parking_lot_position)
   (if (keywordp (car __parking_lot_position))
       (send* _parking_lot_position __parking_lot_position)
     (progn
       (if __parking_lot_position (setq _parking_lot_position (car __parking_lot_position)))
       _parking_lot_position)))
  (:parking_lot_center
   (&rest __parking_lot_center)
   (if (keywordp (car __parking_lot_center))
       (send* _parking_lot_center __parking_lot_center)
     (progn
       (if __parking_lot_center (setq _parking_lot_center (car __parking_lot_center)))
       _parking_lot_center)))
  (:parking_lot_entrance_center
   (&rest __parking_lot_entrance_center)
   (if (keywordp (car __parking_lot_entrance_center))
       (send* _parking_lot_entrance_center __parking_lot_entrance_center)
     (progn
       (if __parking_lot_entrance_center (setq _parking_lot_entrance_center (car __parking_lot_entrance_center)))
       _parking_lot_entrance_center)))
  (:available_inner_width
   (&optional __available_inner_width)
   (if __available_inner_width (setq _available_inner_width __available_inner_width)) _available_inner_width)
  (:available_outter_width
   (&optional __available_outter_width)
   (if __available_outter_width (setq _available_outter_width __available_outter_width)) _available_outter_width)
  (:next_parking_lot_id
   (&optional __next_parking_lot_id)
   (if __next_parking_lot_id (setq _next_parking_lot_id __next_parking_lot_id)) _next_parking_lot_id)
  (:previous_parking_lot_id
   (&optional __previous_parking_lot_id)
   (if __previous_parking_lot_id (setq _previous_parking_lot_id __previous_parking_lot_id)) _previous_parking_lot_id)
  (:left_extended_distance
   (&optional __left_extended_distance)
   (if __left_extended_distance (setq _left_extended_distance __left_extended_distance)) _left_extended_distance)
  (:right_extended_distance
   (&optional __right_extended_distance)
   (if __right_extended_distance (setq _right_extended_distance __right_extended_distance)) _right_extended_distance)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:serialization-length
   ()
   (+
    ;; uint16 _parking_lot_id
    2
    ;; perception_interface_msgs/Polygon3f _parking_lot_position
    (send _parking_lot_position :serialization-length)
    ;; perception_interface_msgs/Point3f _parking_lot_center
    (send _parking_lot_center :serialization-length)
    ;; perception_interface_msgs/Point3f _parking_lot_entrance_center
    (send _parking_lot_entrance_center :serialization-length)
    ;; float64 _available_inner_width
    8
    ;; float64 _available_outter_width
    8
    ;; uint16 _next_parking_lot_id
    2
    ;; uint16 _previous_parking_lot_id
    2
    ;; float64 _left_extended_distance
    8
    ;; float64 _right_extended_distance
    8
    ;; float64 _score
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _parking_lot_id
       (write-word _parking_lot_id s)
     ;; perception_interface_msgs/Polygon3f _parking_lot_position
       (send _parking_lot_position :serialize s)
     ;; perception_interface_msgs/Point3f _parking_lot_center
       (send _parking_lot_center :serialize s)
     ;; perception_interface_msgs/Point3f _parking_lot_entrance_center
       (send _parking_lot_entrance_center :serialize s)
     ;; float64 _available_inner_width
       (sys::poke _available_inner_width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _available_outter_width
       (sys::poke _available_outter_width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint16 _next_parking_lot_id
       (write-word _next_parking_lot_id s)
     ;; uint16 _previous_parking_lot_id
       (write-word _previous_parking_lot_id s)
     ;; float64 _left_extended_distance
       (sys::poke _left_extended_distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _right_extended_distance
       (sys::poke _right_extended_distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _score
       (sys::poke _score (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _parking_lot_id
     (setq _parking_lot_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; perception_interface_msgs/Polygon3f _parking_lot_position
     (send _parking_lot_position :deserialize buf ptr-) (incf ptr- (send _parking_lot_position :serialization-length))
   ;; perception_interface_msgs/Point3f _parking_lot_center
     (send _parking_lot_center :deserialize buf ptr-) (incf ptr- (send _parking_lot_center :serialization-length))
   ;; perception_interface_msgs/Point3f _parking_lot_entrance_center
     (send _parking_lot_entrance_center :deserialize buf ptr-) (incf ptr- (send _parking_lot_entrance_center :serialization-length))
   ;; float64 _available_inner_width
     (setq _available_inner_width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _available_outter_width
     (setq _available_outter_width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint16 _next_parking_lot_id
     (setq _next_parking_lot_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _previous_parking_lot_id
     (setq _previous_parking_lot_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _left_extended_distance
     (setq _left_extended_distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _right_extended_distance
     (setq _right_extended_distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _score
     (setq _score (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get worldmodel_msgs::TraversedParkingLot :md5sum-) "99833757c467c39052e43667a23c3f17")
(setf (get worldmodel_msgs::TraversedParkingLot :datatype-) "worldmodel_msgs/TraversedParkingLot")
(setf (get worldmodel_msgs::TraversedParkingLot :definition-)
      "uint16 parking_lot_id
perception_interface_msgs/Polygon3f parking_lot_position
perception_interface_msgs/Point3f parking_lot_center
perception_interface_msgs/Point3f parking_lot_entrance_center
float64 available_inner_width
float64 available_outter_width
uint16 next_parking_lot_id
uint16 previous_parking_lot_id
float64 left_extended_distance
float64 right_extended_distance
float64 score

================================================================================
MSG: perception_interface_msgs/Polygon3f
perception_interface_msgs/Point3f[] points

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

")



(provide :worldmodel_msgs/TraversedParkingLot "99833757c467c39052e43667a23c3f17")


