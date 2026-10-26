;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::SceneRecognitionType)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'SceneRecognitionType (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::SCENERECOGNITIONTYPE")
  (make-package "LANDMARK_MSGS::SCENERECOGNITIONTYPE"))

(in-package "ROS")
;;//! \htmlinclude SceneRecognitionType.msg.html


(intern "*SCENE_RECOGNITION_TYPE_UKNOWN*" (find-package "LANDMARK_MSGS::SCENERECOGNITIONTYPE"))
(shadow '*SCENE_RECOGNITION_TYPE_UKNOWN* (find-package "LANDMARK_MSGS::SCENERECOGNITIONTYPE"))
(defconstant landmark_msgs::SceneRecognitionType::*SCENE_RECOGNITION_TYPE_UKNOWN* 0)
(intern "*SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD*" (find-package "LANDMARK_MSGS::SCENERECOGNITIONTYPE"))
(shadow '*SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD* (find-package "LANDMARK_MSGS::SCENERECOGNITIONTYPE"))
(defconstant landmark_msgs::SceneRecognitionType::*SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD* 1)
(intern "*SCENE_RECOGNITION_TYPE_HIGHWAY_RAMP*" (find-package "LANDMARK_MSGS::SCENERECOGNITIONTYPE"))
(shadow '*SCENE_RECOGNITION_TYPE_HIGHWAY_RAMP* (find-package "LANDMARK_MSGS::SCENERECOGNITIONTYPE"))
(defconstant landmark_msgs::SceneRecognitionType::*SCENE_RECOGNITION_TYPE_HIGHWAY_RAMP* 2)
(intern "*SCENE_RECOGNITION_TYPE_HIGHWAY_UNKNOWN*" (find-package "LANDMARK_MSGS::SCENERECOGNITIONTYPE"))
(shadow '*SCENE_RECOGNITION_TYPE_HIGHWAY_UNKNOWN* (find-package "LANDMARK_MSGS::SCENERECOGNITIONTYPE"))
(defconstant landmark_msgs::SceneRecognitionType::*SCENE_RECOGNITION_TYPE_HIGHWAY_UNKNOWN* 3)
(intern "*SCENE_RECOGNITION_TYPE_URBAN_UNDER_HIGHWAY_BRIDGE*" (find-package "LANDMARK_MSGS::SCENERECOGNITIONTYPE"))
(shadow '*SCENE_RECOGNITION_TYPE_URBAN_UNDER_HIGHWAY_BRIDGE* (find-package "LANDMARK_MSGS::SCENERECOGNITIONTYPE"))
(defconstant landmark_msgs::SceneRecognitionType::*SCENE_RECOGNITION_TYPE_URBAN_UNDER_HIGHWAY_BRIDGE* 4)
(intern "*SCENE_RECOGNITION_TYPE_URBAN_TUNNEL*" (find-package "LANDMARK_MSGS::SCENERECOGNITIONTYPE"))
(shadow '*SCENE_RECOGNITION_TYPE_URBAN_TUNNEL* (find-package "LANDMARK_MSGS::SCENERECOGNITIONTYPE"))
(defconstant landmark_msgs::SceneRecognitionType::*SCENE_RECOGNITION_TYPE_URBAN_TUNNEL* 5)
(intern "*SCENE_RECOGNITION_TYPE_URBAN_COMMON_SIDE_ROAD*" (find-package "LANDMARK_MSGS::SCENERECOGNITIONTYPE"))
(shadow '*SCENE_RECOGNITION_TYPE_URBAN_COMMON_SIDE_ROAD* (find-package "LANDMARK_MSGS::SCENERECOGNITIONTYPE"))
(defconstant landmark_msgs::SceneRecognitionType::*SCENE_RECOGNITION_TYPE_URBAN_COMMON_SIDE_ROAD* 6)
(intern "*SCENE_RECOGNITION_TYPE_URBAN_OTHER*" (find-package "LANDMARK_MSGS::SCENERECOGNITIONTYPE"))
(shadow '*SCENE_RECOGNITION_TYPE_URBAN_OTHER* (find-package "LANDMARK_MSGS::SCENERECOGNITIONTYPE"))
(defconstant landmark_msgs::SceneRecognitionType::*SCENE_RECOGNITION_TYPE_URBAN_OTHER* 7)
(intern "*SCENE_RECOGNITION_TYPE_UNSTRUCTURED_TOLL_GATE*" (find-package "LANDMARK_MSGS::SCENERECOGNITIONTYPE"))
(shadow '*SCENE_RECOGNITION_TYPE_UNSTRUCTURED_TOLL_GATE* (find-package "LANDMARK_MSGS::SCENERECOGNITIONTYPE"))
(defconstant landmark_msgs::SceneRecognitionType::*SCENE_RECOGNITION_TYPE_UNSTRUCTURED_TOLL_GATE* 8)
(intern "*SCENE_RECOGNITION_TYPE_UNSTRUCTURED_INDOOR_PARKING_LOT*" (find-package "LANDMARK_MSGS::SCENERECOGNITIONTYPE"))
(shadow '*SCENE_RECOGNITION_TYPE_UNSTRUCTURED_INDOOR_PARKING_LOT* (find-package "LANDMARK_MSGS::SCENERECOGNITIONTYPE"))
(defconstant landmark_msgs::SceneRecognitionType::*SCENE_RECOGNITION_TYPE_UNSTRUCTURED_INDOOR_PARKING_LOT* 9)
(intern "*SCENE_RECOGNITION_TYPE_UNSTRUCTURED_GAS_STATION*" (find-package "LANDMARK_MSGS::SCENERECOGNITIONTYPE"))
(shadow '*SCENE_RECOGNITION_TYPE_UNSTRUCTURED_GAS_STATION* (find-package "LANDMARK_MSGS::SCENERECOGNITIONTYPE"))
(defconstant landmark_msgs::SceneRecognitionType::*SCENE_RECOGNITION_TYPE_UNSTRUCTURED_GAS_STATION* 10)
(intern "*SCENE_RECOGNITION_TYPE_UNSTRUCTURED_OTHER*" (find-package "LANDMARK_MSGS::SCENERECOGNITIONTYPE"))
(shadow '*SCENE_RECOGNITION_TYPE_UNSTRUCTURED_OTHER* (find-package "LANDMARK_MSGS::SCENERECOGNITIONTYPE"))
(defconstant landmark_msgs::SceneRecognitionType::*SCENE_RECOGNITION_TYPE_UNSTRUCTURED_OTHER* 11)
(intern "*SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD_ON_GROUND*" (find-package "LANDMARK_MSGS::SCENERECOGNITIONTYPE"))
(shadow '*SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD_ON_GROUND* (find-package "LANDMARK_MSGS::SCENERECOGNITIONTYPE"))
(defconstant landmark_msgs::SceneRecognitionType::*SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD_ON_GROUND* 12)
(intern "*SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD_NOT_GROUND*" (find-package "LANDMARK_MSGS::SCENERECOGNITIONTYPE"))
(shadow '*SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD_NOT_GROUND* (find-package "LANDMARK_MSGS::SCENERECOGNITIONTYPE"))
(defconstant landmark_msgs::SceneRecognitionType::*SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD_NOT_GROUND* 13)
(intern "*SCENE_RECOGNITION_TYPE_URBAN_ROAD_UNDER_BRIDGE*" (find-package "LANDMARK_MSGS::SCENERECOGNITIONTYPE"))
(shadow '*SCENE_RECOGNITION_TYPE_URBAN_ROAD_UNDER_BRIDGE* (find-package "LANDMARK_MSGS::SCENERECOGNITIONTYPE"))
(defconstant landmark_msgs::SceneRecognitionType::*SCENE_RECOGNITION_TYPE_URBAN_ROAD_UNDER_BRIDGE* 14)
(intern "*SCENE_RECOGNITION_TYPE_HIGHWAY_ROAD_UNDER_BRIDGE*" (find-package "LANDMARK_MSGS::SCENERECOGNITIONTYPE"))
(shadow '*SCENE_RECOGNITION_TYPE_HIGHWAY_ROAD_UNDER_BRIDGE* (find-package "LANDMARK_MSGS::SCENERECOGNITIONTYPE"))
(defconstant landmark_msgs::SceneRecognitionType::*SCENE_RECOGNITION_TYPE_HIGHWAY_ROAD_UNDER_BRIDGE* 15)
(intern "*SCENE_RECOGNITION_TYPE_UNSTRUCTURED_INTERNAL_ROAD*" (find-package "LANDMARK_MSGS::SCENERECOGNITIONTYPE"))
(shadow '*SCENE_RECOGNITION_TYPE_UNSTRUCTURED_INTERNAL_ROAD* (find-package "LANDMARK_MSGS::SCENERECOGNITIONTYPE"))
(defconstant landmark_msgs::SceneRecognitionType::*SCENE_RECOGNITION_TYPE_UNSTRUCTURED_INTERNAL_ROAD* 16)
(intern "*SCENE_RECOGNITION_TYPE_UNSTRUCTURED_COUNTRY_ROAD*" (find-package "LANDMARK_MSGS::SCENERECOGNITIONTYPE"))
(shadow '*SCENE_RECOGNITION_TYPE_UNSTRUCTURED_COUNTRY_ROAD* (find-package "LANDMARK_MSGS::SCENERECOGNITIONTYPE"))
(defconstant landmark_msgs::SceneRecognitionType::*SCENE_RECOGNITION_TYPE_UNSTRUCTURED_COUNTRY_ROAD* 17)
(intern "*SCENE_RECOGNITION_TYPE_UP_DOWN_SLOPE*" (find-package "LANDMARK_MSGS::SCENERECOGNITIONTYPE"))
(shadow '*SCENE_RECOGNITION_TYPE_UP_DOWN_SLOPE* (find-package "LANDMARK_MSGS::SCENERECOGNITIONTYPE"))
(defconstant landmark_msgs::SceneRecognitionType::*SCENE_RECOGNITION_TYPE_UP_DOWN_SLOPE* 18)

(defun landmark_msgs::SceneRecognitionType-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::SceneRecognitionType::*SCENE_RECOGNITION_TYPE_UKNOWN*)
        ((= const 1) 'landmark_msgs::SceneRecognitionType::*SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD*)
        ((= const 2) 'landmark_msgs::SceneRecognitionType::*SCENE_RECOGNITION_TYPE_HIGHWAY_RAMP*)
        ((= const 3) 'landmark_msgs::SceneRecognitionType::*SCENE_RECOGNITION_TYPE_HIGHWAY_UNKNOWN*)
        ((= const 4) 'landmark_msgs::SceneRecognitionType::*SCENE_RECOGNITION_TYPE_URBAN_UNDER_HIGHWAY_BRIDGE*)
        ((= const 5) 'landmark_msgs::SceneRecognitionType::*SCENE_RECOGNITION_TYPE_URBAN_TUNNEL*)
        ((= const 6) 'landmark_msgs::SceneRecognitionType::*SCENE_RECOGNITION_TYPE_URBAN_COMMON_SIDE_ROAD*)
        ((= const 7) 'landmark_msgs::SceneRecognitionType::*SCENE_RECOGNITION_TYPE_URBAN_OTHER*)
        ((= const 8) 'landmark_msgs::SceneRecognitionType::*SCENE_RECOGNITION_TYPE_UNSTRUCTURED_TOLL_GATE*)
        ((= const 9) 'landmark_msgs::SceneRecognitionType::*SCENE_RECOGNITION_TYPE_UNSTRUCTURED_INDOOR_PARKING_LOT*)
        ((= const 10) 'landmark_msgs::SceneRecognitionType::*SCENE_RECOGNITION_TYPE_UNSTRUCTURED_GAS_STATION*)
        ((= const 11) 'landmark_msgs::SceneRecognitionType::*SCENE_RECOGNITION_TYPE_UNSTRUCTURED_OTHER*)
        ((= const 12) 'landmark_msgs::SceneRecognitionType::*SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD_ON_GROUND*)
        ((= const 13) 'landmark_msgs::SceneRecognitionType::*SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD_NOT_GROUND*)
        ((= const 14) 'landmark_msgs::SceneRecognitionType::*SCENE_RECOGNITION_TYPE_URBAN_ROAD_UNDER_BRIDGE*)
        ((= const 15) 'landmark_msgs::SceneRecognitionType::*SCENE_RECOGNITION_TYPE_HIGHWAY_ROAD_UNDER_BRIDGE*)
        ((= const 16) 'landmark_msgs::SceneRecognitionType::*SCENE_RECOGNITION_TYPE_UNSTRUCTURED_INTERNAL_ROAD*)
        ((= const 17) 'landmark_msgs::SceneRecognitionType::*SCENE_RECOGNITION_TYPE_UNSTRUCTURED_COUNTRY_ROAD*)
        ((= const 18) 'landmark_msgs::SceneRecognitionType::*SCENE_RECOGNITION_TYPE_UP_DOWN_SLOPE*)
        (t nil)))

(defclass landmark_msgs::SceneRecognitionType
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::SceneRecognitionType
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

(setf (get landmark_msgs::SceneRecognitionType :md5sum-) "1294aa3ce27fa345bd746c320d4d55e4")
(setf (get landmark_msgs::SceneRecognitionType :datatype-) "landmark_msgs/SceneRecognitionType")
(setf (get landmark_msgs::SceneRecognitionType :definition-)
      "uint8 SCENE_RECOGNITION_TYPE_UKNOWN = 0
uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD = 1
uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_RAMP = 2
uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_UNKNOWN = 3
uint8 SCENE_RECOGNITION_TYPE_URBAN_UNDER_HIGHWAY_BRIDGE = 4
uint8 SCENE_RECOGNITION_TYPE_URBAN_TUNNEL = 5
uint8 SCENE_RECOGNITION_TYPE_URBAN_COMMON_SIDE_ROAD = 6
uint8 SCENE_RECOGNITION_TYPE_URBAN_OTHER = 7
uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_TOLL_GATE = 8
uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_INDOOR_PARKING_LOT = 9
uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_GAS_STATION = 10
uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_OTHER = 11
uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD_ON_GROUND = 12
uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD_NOT_GROUND = 13
uint8 SCENE_RECOGNITION_TYPE_URBAN_ROAD_UNDER_BRIDGE = 14
uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_ROAD_UNDER_BRIDGE = 15
uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_INTERNAL_ROAD = 16
uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_COUNTRY_ROAD = 17
uint8 SCENE_RECOGNITION_TYPE_UP_DOWN_SLOPE = 18
uint8 value

")



(provide :landmark_msgs/SceneRecognitionType "1294aa3ce27fa345bd746c320d4d55e4")


