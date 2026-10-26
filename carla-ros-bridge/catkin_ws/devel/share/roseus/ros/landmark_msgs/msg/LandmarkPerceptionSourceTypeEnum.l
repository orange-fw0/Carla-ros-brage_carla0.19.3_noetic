;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::LandmarkPerceptionSourceTypeEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'LandmarkPerceptionSourceTypeEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONSOURCETYPEENUM")
  (make-package "LANDMARK_MSGS::LANDMARKPERCEPTIONSOURCETYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude LandmarkPerceptionSourceTypeEnum.msg.html


(intern "*LANDMARK_PERCEPTION_SOURCE_TYPE_UNKNOWN*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONSOURCETYPEENUM"))
(shadow '*LANDMARK_PERCEPTION_SOURCE_TYPE_UNKNOWN* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONSOURCETYPEENUM"))
(defconstant landmark_msgs::LandmarkPerceptionSourceTypeEnum::*LANDMARK_PERCEPTION_SOURCE_TYPE_UNKNOWN* 0)
(intern "*LANDMARK_PERCEPTION_SOURCE_TYPE_VISION*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONSOURCETYPEENUM"))
(shadow '*LANDMARK_PERCEPTION_SOURCE_TYPE_VISION* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONSOURCETYPEENUM"))
(defconstant landmark_msgs::LandmarkPerceptionSourceTypeEnum::*LANDMARK_PERCEPTION_SOURCE_TYPE_VISION* 1)
(intern "*LANDMARK_PERCEPTION_SOURCE_TYPE_HDMAP*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONSOURCETYPEENUM"))
(shadow '*LANDMARK_PERCEPTION_SOURCE_TYPE_HDMAP* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONSOURCETYPEENUM"))
(defconstant landmark_msgs::LandmarkPerceptionSourceTypeEnum::*LANDMARK_PERCEPTION_SOURCE_TYPE_HDMAP* 2)
(intern "*LANDMARK_PERCEPTION_SOURCE_TYPE_FUSION*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONSOURCETYPEENUM"))
(shadow '*LANDMARK_PERCEPTION_SOURCE_TYPE_FUSION* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONSOURCETYPEENUM"))
(defconstant landmark_msgs::LandmarkPerceptionSourceTypeEnum::*LANDMARK_PERCEPTION_SOURCE_TYPE_FUSION* 3)

(defun landmark_msgs::LandmarkPerceptionSourceTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::LandmarkPerceptionSourceTypeEnum::*LANDMARK_PERCEPTION_SOURCE_TYPE_UNKNOWN*)
        ((= const 1) 'landmark_msgs::LandmarkPerceptionSourceTypeEnum::*LANDMARK_PERCEPTION_SOURCE_TYPE_VISION*)
        ((= const 2) 'landmark_msgs::LandmarkPerceptionSourceTypeEnum::*LANDMARK_PERCEPTION_SOURCE_TYPE_HDMAP*)
        ((= const 3) 'landmark_msgs::LandmarkPerceptionSourceTypeEnum::*LANDMARK_PERCEPTION_SOURCE_TYPE_FUSION*)
        (t nil)))

(defclass landmark_msgs::LandmarkPerceptionSourceTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::LandmarkPerceptionSourceTypeEnum
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

(setf (get landmark_msgs::LandmarkPerceptionSourceTypeEnum :md5sum-) "fc85817f8c12a47b8385fd1de7432858")
(setf (get landmark_msgs::LandmarkPerceptionSourceTypeEnum :datatype-) "landmark_msgs/LandmarkPerceptionSourceTypeEnum")
(setf (get landmark_msgs::LandmarkPerceptionSourceTypeEnum :definition-)
      "uint8 LANDMARK_PERCEPTION_SOURCE_TYPE_UNKNOWN = 0
uint8 LANDMARK_PERCEPTION_SOURCE_TYPE_VISION = 1
uint8 LANDMARK_PERCEPTION_SOURCE_TYPE_HDMAP = 2
uint8 LANDMARK_PERCEPTION_SOURCE_TYPE_FUSION = 3
uint8 value

")



(provide :landmark_msgs/LandmarkPerceptionSourceTypeEnum "fc85817f8c12a47b8385fd1de7432858")


