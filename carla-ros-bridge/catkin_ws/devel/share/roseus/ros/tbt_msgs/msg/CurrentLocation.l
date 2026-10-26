;; Auto-generated. Do not edit!


(when (boundp 'tbt_msgs::CurrentLocation)
  (if (not (find-package "TBT_MSGS"))
    (make-package "TBT_MSGS"))
  (shadow 'CurrentLocation (find-package "TBT_MSGS")))
(unless (find-package "TBT_MSGS::CURRENTLOCATION")
  (make-package "TBT_MSGS::CURRENTLOCATION"))

(in-package "ROS")
;;//! \htmlinclude CurrentLocation.msg.html


(defclass tbt_msgs::CurrentLocation
  :super ros::object
  :slots (_latitude _longitude _invalid ))

(defmethod tbt_msgs::CurrentLocation
  (:init
   (&key
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:invalid __invalid) 0)
    )
   (send-super :init)
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _invalid (round __invalid))
   self)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:invalid
   (&optional __invalid)
   (if __invalid (setq _invalid __invalid)) _invalid)
  (:serialization-length
   ()
   (+
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; uint8 _invalid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _invalid
       (write-byte _invalid s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _invalid
     (setq _invalid (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get tbt_msgs::CurrentLocation :md5sum-) "bc4264e85ff3a1169d8bc0e937218e24")
(setf (get tbt_msgs::CurrentLocation :datatype-) "tbt_msgs/CurrentLocation")
(setf (get tbt_msgs::CurrentLocation :definition-)
      "float64 latitude
float64 longitude
uint8 invalid

")



(provide :tbt_msgs/CurrentLocation "bc4264e85ff3a1169d8bc0e937218e24")


