;; Auto-generated. Do not edit!


(when (boundp 'v2x_msgs::V2xPerceptionObject)
  (if (not (find-package "V2X_MSGS"))
    (make-package "V2X_MSGS"))
  (shadow 'V2xPerceptionObject (find-package "V2X_MSGS")))
(unless (find-package "V2X_MSGS::V2XPERCEPTIONOBJECT")
  (make-package "V2X_MSGS::V2XPERCEPTIONOBJECT"))

(in-package "ROS")
;;//! \htmlinclude V2xPerceptionObject.msg.html


(defclass v2x_msgs::V2xPerceptionObject
  :super ros::object
  :slots (_type _longitude _latitude _elevation _speed _heading _width _length _height ))

(defmethod v2x_msgs::V2xPerceptionObject
  (:init
   (&key
    ((:type __type) (instance v2x_msgs::V2xPerceptionObjectType :init))
    ((:longitude __longitude) 0.0)
    ((:latitude __latitude) 0.0)
    ((:elevation __elevation) 0.0)
    ((:speed __speed) 0.0)
    ((:heading __heading) 0.0)
    ((:width __width) 0.0)
    ((:length __length) 0.0)
    ((:height __height) 0.0)
    )
   (send-super :init)
   (setq _type __type)
   (setq _longitude (float __longitude))
   (setq _latitude (float __latitude))
   (setq _elevation (float __elevation))
   (setq _speed (float __speed))
   (setq _heading (float __heading))
   (setq _width (float __width))
   (setq _length (float __length))
   (setq _height (float __height))
   self)
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:elevation
   (&optional __elevation)
   (if __elevation (setq _elevation __elevation)) _elevation)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:serialization-length
   ()
   (+
    ;; v2x_msgs/V2xPerceptionObjectType _type
    (send _type :serialization-length)
    ;; float64 _longitude
    8
    ;; float64 _latitude
    8
    ;; float64 _elevation
    8
    ;; float64 _speed
    8
    ;; float64 _heading
    8
    ;; float64 _width
    8
    ;; float64 _length
    8
    ;; float64 _height
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; v2x_msgs/V2xPerceptionObjectType _type
       (send _type :serialize s)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _elevation
       (sys::poke _elevation (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _width
       (sys::poke _width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _length
       (sys::poke _length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; v2x_msgs/V2xPerceptionObjectType _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _elevation
     (setq _elevation (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _heading
     (setq _heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _width
     (setq _width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _length
     (setq _length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get v2x_msgs::V2xPerceptionObject :md5sum-) "46fe900c9684fe0444cc1ba54cac8162")
(setf (get v2x_msgs::V2xPerceptionObject :datatype-) "v2x_msgs/V2xPerceptionObject")
(setf (get v2x_msgs::V2xPerceptionObject :definition-)
      "v2x_msgs/V2xPerceptionObjectType type
float64 longitude
float64 latitude
float64 elevation
float64 speed
float64 heading
float64 width
float64 length
float64 height

================================================================================
MSG: v2x_msgs/V2xPerceptionObjectType
uint32 UNKNOWN = 0
uint32 PEDESTRIAN = 1
uint32 NON_MOTOR = 2
uint32 MOTOR = 3
uint32 OTHER = 4
uint32 value

")



(provide :v2x_msgs/V2xPerceptionObject "46fe900c9684fe0444cc1ba54cac8162")


