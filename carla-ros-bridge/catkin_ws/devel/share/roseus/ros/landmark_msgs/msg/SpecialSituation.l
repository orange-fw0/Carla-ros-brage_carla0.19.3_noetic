;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::SpecialSituation)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'SpecialSituation (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::SPECIALSITUATION")
  (make-package "LANDMARK_MSGS::SPECIALSITUATION"))

(in-package "ROS")
;;//! \htmlinclude SpecialSituation.msg.html


(intern "*UNKNOWN*" (find-package "LANDMARK_MSGS::SPECIALSITUATION"))
(shadow '*UNKNOWN* (find-package "LANDMARK_MSGS::SPECIALSITUATION"))
(defconstant landmark_msgs::SpecialSituation::*UNKNOWN* 0)
(intern "*TUNNEL_BEGIN*" (find-package "LANDMARK_MSGS::SPECIALSITUATION"))
(shadow '*TUNNEL_BEGIN* (find-package "LANDMARK_MSGS::SPECIALSITUATION"))
(defconstant landmark_msgs::SpecialSituation::*TUNNEL_BEGIN* 1)
(intern "*TUNNEL_END*" (find-package "LANDMARK_MSGS::SPECIALSITUATION"))
(shadow '*TUNNEL_END* (find-package "LANDMARK_MSGS::SPECIALSITUATION"))
(defconstant landmark_msgs::SpecialSituation::*TUNNEL_END* 2)
(intern "*BAD_WEATHER_EFFECTED_ZONE_BEGIN*" (find-package "LANDMARK_MSGS::SPECIALSITUATION"))
(shadow '*BAD_WEATHER_EFFECTED_ZONE_BEGIN* (find-package "LANDMARK_MSGS::SPECIALSITUATION"))
(defconstant landmark_msgs::SpecialSituation::*BAD_WEATHER_EFFECTED_ZONE_BEGIN* 3)
(intern "*BAD_WEATHER_EFFECTED_ZONE_END*" (find-package "LANDMARK_MSGS::SPECIALSITUATION"))
(shadow '*BAD_WEATHER_EFFECTED_ZONE_END* (find-package "LANDMARK_MSGS::SPECIALSITUATION"))
(defconstant landmark_msgs::SpecialSituation::*BAD_WEATHER_EFFECTED_ZONE_END* 4)

(defun landmark_msgs::SpecialSituation-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::SpecialSituation::*UNKNOWN*)
        ((= const 1) 'landmark_msgs::SpecialSituation::*TUNNEL_BEGIN*)
        ((= const 2) 'landmark_msgs::SpecialSituation::*TUNNEL_END*)
        ((= const 3) 'landmark_msgs::SpecialSituation::*BAD_WEATHER_EFFECTED_ZONE_BEGIN*)
        ((= const 4) 'landmark_msgs::SpecialSituation::*BAD_WEATHER_EFFECTED_ZONE_END*)
        (t nil)))

(defclass landmark_msgs::SpecialSituation
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::SpecialSituation
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
    ;; uint32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _value
       (write-long _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get landmark_msgs::SpecialSituation :md5sum-) "75f39bf8b1af7dc37486bbd9b97a1597")
(setf (get landmark_msgs::SpecialSituation :datatype-) "landmark_msgs/SpecialSituation")
(setf (get landmark_msgs::SpecialSituation :definition-)
      "uint32 UNKNOWN = 0
uint32 TUNNEL_BEGIN = 1
uint32 TUNNEL_END = 2
uint32 BAD_WEATHER_EFFECTED_ZONE_BEGIN = 3
uint32 BAD_WEATHER_EFFECTED_ZONE_END = 4
uint32 value

")



(provide :landmark_msgs/SpecialSituation "75f39bf8b1af7dc37486bbd9b97a1597")


