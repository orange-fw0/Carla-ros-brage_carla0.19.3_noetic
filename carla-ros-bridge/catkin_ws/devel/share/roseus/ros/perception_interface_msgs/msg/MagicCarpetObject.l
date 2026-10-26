;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::MagicCarpetObject)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'MagicCarpetObject (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::MAGICCARPETOBJECT")
  (make-package "PERCEPTION_INTERFACE_MSGS::MAGICCARPETOBJECT"))

(in-package "ROS")
;;//! \htmlinclude MagicCarpetObject.msg.html


(intern "*UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::MAGICCARPETOBJECT"))
(shadow '*UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::MAGICCARPETOBJECT"))
(defconstant perception_interface_msgs::MagicCarpetObject::*UNKNOWN* 0)
(intern "*MANHOLE*" (find-package "PERCEPTION_INTERFACE_MSGS::MAGICCARPETOBJECT"))
(shadow '*MANHOLE* (find-package "PERCEPTION_INTERFACE_MSGS::MAGICCARPETOBJECT"))
(defconstant perception_interface_msgs::MagicCarpetObject::*MANHOLE* 1)
(intern "*SPEED_BUMP*" (find-package "PERCEPTION_INTERFACE_MSGS::MAGICCARPETOBJECT"))
(shadow '*SPEED_BUMP* (find-package "PERCEPTION_INTERFACE_MSGS::MAGICCARPETOBJECT"))
(defconstant perception_interface_msgs::MagicCarpetObject::*SPEED_BUMP* 2)
(intern "*ROAD_CRACK*" (find-package "PERCEPTION_INTERFACE_MSGS::MAGICCARPETOBJECT"))
(shadow '*ROAD_CRACK* (find-package "PERCEPTION_INTERFACE_MSGS::MAGICCARPETOBJECT"))
(defconstant perception_interface_msgs::MagicCarpetObject::*ROAD_CRACK* 3)
(intern "*BROKEN_ROAD*" (find-package "PERCEPTION_INTERFACE_MSGS::MAGICCARPETOBJECT"))
(shadow '*BROKEN_ROAD* (find-package "PERCEPTION_INTERFACE_MSGS::MAGICCARPETOBJECT"))
(defconstant perception_interface_msgs::MagicCarpetObject::*BROKEN_ROAD* 4)
(intern "*ROAD_CURB*" (find-package "PERCEPTION_INTERFACE_MSGS::MAGICCARPETOBJECT"))
(shadow '*ROAD_CURB* (find-package "PERCEPTION_INTERFACE_MSGS::MAGICCARPETOBJECT"))
(defconstant perception_interface_msgs::MagicCarpetObject::*ROAD_CURB* 5)
(intern "*RESERVED_6*" (find-package "PERCEPTION_INTERFACE_MSGS::MAGICCARPETOBJECT"))
(shadow '*RESERVED_6* (find-package "PERCEPTION_INTERFACE_MSGS::MAGICCARPETOBJECT"))
(defconstant perception_interface_msgs::MagicCarpetObject::*RESERVED_6* 6)
(intern "*RESERVED_7*" (find-package "PERCEPTION_INTERFACE_MSGS::MAGICCARPETOBJECT"))
(shadow '*RESERVED_7* (find-package "PERCEPTION_INTERFACE_MSGS::MAGICCARPETOBJECT"))
(defconstant perception_interface_msgs::MagicCarpetObject::*RESERVED_7* 7)
(intern "*RESERVED_8*" (find-package "PERCEPTION_INTERFACE_MSGS::MAGICCARPETOBJECT"))
(shadow '*RESERVED_8* (find-package "PERCEPTION_INTERFACE_MSGS::MAGICCARPETOBJECT"))
(defconstant perception_interface_msgs::MagicCarpetObject::*RESERVED_8* 8)
(intern "*RESERVED_9*" (find-package "PERCEPTION_INTERFACE_MSGS::MAGICCARPETOBJECT"))
(shadow '*RESERVED_9* (find-package "PERCEPTION_INTERFACE_MSGS::MAGICCARPETOBJECT"))
(defconstant perception_interface_msgs::MagicCarpetObject::*RESERVED_9* 9)
(intern "*RESERVED_10*" (find-package "PERCEPTION_INTERFACE_MSGS::MAGICCARPETOBJECT"))
(shadow '*RESERVED_10* (find-package "PERCEPTION_INTERFACE_MSGS::MAGICCARPETOBJECT"))
(defconstant perception_interface_msgs::MagicCarpetObject::*RESERVED_10* 10)

(defun perception_interface_msgs::MagicCarpetObject-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::MagicCarpetObject::*UNKNOWN*)
        ((= const 1) 'perception_interface_msgs::MagicCarpetObject::*MANHOLE*)
        ((= const 2) 'perception_interface_msgs::MagicCarpetObject::*SPEED_BUMP*)
        ((= const 3) 'perception_interface_msgs::MagicCarpetObject::*ROAD_CRACK*)
        ((= const 4) 'perception_interface_msgs::MagicCarpetObject::*BROKEN_ROAD*)
        ((= const 5) 'perception_interface_msgs::MagicCarpetObject::*ROAD_CURB*)
        ((= const 6) 'perception_interface_msgs::MagicCarpetObject::*RESERVED_6*)
        ((= const 7) 'perception_interface_msgs::MagicCarpetObject::*RESERVED_7*)
        ((= const 8) 'perception_interface_msgs::MagicCarpetObject::*RESERVED_8*)
        ((= const 9) 'perception_interface_msgs::MagicCarpetObject::*RESERVED_9*)
        ((= const 10) 'perception_interface_msgs::MagicCarpetObject::*RESERVED_10*)
        (t nil)))

(defclass perception_interface_msgs::MagicCarpetObject
  :super ros::object
  :slots (_type _elevation_cm _longitude_distance_m ))

(defmethod perception_interface_msgs::MagicCarpetObject
  (:init
   (&key
    ((:type __type) 0)
    ((:elevation_cm __elevation_cm) 0.0)
    ((:longitude_distance_m __longitude_distance_m) 0.0)
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _elevation_cm (float __elevation_cm))
   (setq _longitude_distance_m (float __longitude_distance_m))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:elevation_cm
   (&optional __elevation_cm)
   (if __elevation_cm (setq _elevation_cm __elevation_cm)) _elevation_cm)
  (:longitude_distance_m
   (&optional __longitude_distance_m)
   (if __longitude_distance_m (setq _longitude_distance_m __longitude_distance_m)) _longitude_distance_m)
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ;; float32 _elevation_cm
    4
    ;; float32 _longitude_distance_m
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;; float32 _elevation_cm
       (sys::poke _elevation_cm (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _longitude_distance_m
       (sys::poke _longitude_distance_m (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _elevation_cm
     (setq _elevation_cm (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _longitude_distance_m
     (setq _longitude_distance_m (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get perception_interface_msgs::MagicCarpetObject :md5sum-) "03e17ae2dcc8c18245253ec598d35969")
(setf (get perception_interface_msgs::MagicCarpetObject :datatype-) "perception_interface_msgs/MagicCarpetObject")
(setf (get perception_interface_msgs::MagicCarpetObject :definition-)
      "uint8 UNKNOWN = 0
uint8 MANHOLE = 1
uint8 SPEED_BUMP = 2
uint8 ROAD_CRACK = 3
uint8 BROKEN_ROAD = 4
uint8 ROAD_CURB = 5
uint8 RESERVED_6 = 6
uint8 RESERVED_7 = 7
uint8 RESERVED_8 = 8
uint8 RESERVED_9 = 9
uint8 RESERVED_10 = 10
uint8 type
float32 elevation_cm
float32 longitude_distance_m

")



(provide :perception_interface_msgs/MagicCarpetObject "03e17ae2dcc8c18245253ec598d35969")


