;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::RoadSurfaceTypeEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'RoadSurfaceTypeEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::ROADSURFACETYPEENUM")
  (make-package "LANDMARK_MSGS::ROADSURFACETYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude RoadSurfaceTypeEnum.msg.html


(intern "*ROAD_SURFACE_TYPE_DRIVABLE*" (find-package "LANDMARK_MSGS::ROADSURFACETYPEENUM"))
(shadow '*ROAD_SURFACE_TYPE_DRIVABLE* (find-package "LANDMARK_MSGS::ROADSURFACETYPEENUM"))
(defconstant landmark_msgs::RoadSurfaceTypeEnum::*ROAD_SURFACE_TYPE_DRIVABLE* 0)
(intern "*ROAD_SURFACE_TYPE_NONDRIVABLE*" (find-package "LANDMARK_MSGS::ROADSURFACETYPEENUM"))
(shadow '*ROAD_SURFACE_TYPE_NONDRIVABLE* (find-package "LANDMARK_MSGS::ROADSURFACETYPEENUM"))
(defconstant landmark_msgs::RoadSurfaceTypeEnum::*ROAD_SURFACE_TYPE_NONDRIVABLE* 1)

(defun landmark_msgs::RoadSurfaceTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::RoadSurfaceTypeEnum::*ROAD_SURFACE_TYPE_DRIVABLE*)
        ((= const 1) 'landmark_msgs::RoadSurfaceTypeEnum::*ROAD_SURFACE_TYPE_NONDRIVABLE*)
        (t nil)))

(defclass landmark_msgs::RoadSurfaceTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::RoadSurfaceTypeEnum
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; uint8 _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _value
       (write-byte _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get landmark_msgs::RoadSurfaceTypeEnum :md5sum-) "da5ee784d1b4960c45c0bf94bf15f834")
(setf (get landmark_msgs::RoadSurfaceTypeEnum :datatype-) "landmark_msgs/RoadSurfaceTypeEnum")
(setf (get landmark_msgs::RoadSurfaceTypeEnum :definition-)
      "uint8 ROAD_SURFACE_TYPE_DRIVABLE = 0
uint8 ROAD_SURFACE_TYPE_NONDRIVABLE = 1
uint8 value

")



(provide :landmark_msgs/RoadSurfaceTypeEnum "da5ee784d1b4960c45c0bf94bf15f834")


