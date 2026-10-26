;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::RoadMarkLabelMap)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'RoadMarkLabelMap (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::ROADMARKLABELMAP")
  (make-package "PERCEPTION_INTERFACE_MSGS::ROADMARKLABELMAP"))

(in-package "ROS")
;;//! \htmlinclude RoadMarkLabelMap.msg.html


(defclass perception_interface_msgs::RoadMarkLabelMap
  :super ros::object
  :slots (_height _width _channels _data ))

(defmethod perception_interface_msgs::RoadMarkLabelMap
  (:init
   (&key
    ((:height __height) 0)
    ((:width __width) 0)
    ((:channels __channels) 0)
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _height (round __height))
   (setq _width (round __width))
   (setq _channels (round __channels))
   (setq _data __data)
   self)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:channels
   (&optional __channels)
   (if __channels (setq _channels __channels)) _channels)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; uint32 _height
    4
    ;; uint32 _width
    4
    ;; uint32 _channels
    4
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _height
       (write-long _height s)
     ;; uint32 _width
       (write-long _width s)
     ;; uint32 _channels
       (write-long _channels s)
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _channels
     (setq _channels (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get perception_interface_msgs::RoadMarkLabelMap :md5sum-) "47088c7ac7958b1ee3d92fd531f07e0b")
(setf (get perception_interface_msgs::RoadMarkLabelMap :datatype-) "perception_interface_msgs/RoadMarkLabelMap")
(setf (get perception_interface_msgs::RoadMarkLabelMap :definition-)
      "uint32 height
uint32 width
uint32 channels
uint8[] data

")



(provide :perception_interface_msgs/RoadMarkLabelMap "47088c7ac7958b1ee3d92fd531f07e0b")


