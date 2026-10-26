;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::NaviInfoSource)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'NaviInfoSource (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::NAVIINFOSOURCE")
  (make-package "LANDMARK_MSGS::NAVIINFOSOURCE"))

(in-package "ROS")
;;//! \htmlinclude NaviInfoSource.msg.html


(intern "*UNKNOWN*" (find-package "LANDMARK_MSGS::NAVIINFOSOURCE"))
(shadow '*UNKNOWN* (find-package "LANDMARK_MSGS::NAVIINFOSOURCE"))
(defconstant landmark_msgs::NaviInfoSource::*UNKNOWN* 0)
(intern "*DEFAULT*" (find-package "LANDMARK_MSGS::NAVIINFOSOURCE"))
(shadow '*DEFAULT* (find-package "LANDMARK_MSGS::NAVIINFOSOURCE"))
(defconstant landmark_msgs::NaviInfoSource::*DEFAULT* 1)
(intern "*HDMAP*" (find-package "LANDMARK_MSGS::NAVIINFOSOURCE"))
(shadow '*HDMAP* (find-package "LANDMARK_MSGS::NAVIINFOSOURCE"))
(defconstant landmark_msgs::NaviInfoSource::*HDMAP* 2)
(intern "*LANDTOPO*" (find-package "LANDMARK_MSGS::NAVIINFOSOURCE"))
(shadow '*LANDTOPO* (find-package "LANDMARK_MSGS::NAVIINFOSOURCE"))
(defconstant landmark_msgs::NaviInfoSource::*LANDTOPO* 3)
(intern "*TBT*" (find-package "LANDMARK_MSGS::NAVIINFOSOURCE"))
(shadow '*TBT* (find-package "LANDMARK_MSGS::NAVIINFOSOURCE"))
(defconstant landmark_msgs::NaviInfoSource::*TBT* 4)

(defun landmark_msgs::NaviInfoSource-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::NaviInfoSource::*UNKNOWN*)
        ((= const 1) 'landmark_msgs::NaviInfoSource::*DEFAULT*)
        ((= const 2) 'landmark_msgs::NaviInfoSource::*HDMAP*)
        ((= const 3) 'landmark_msgs::NaviInfoSource::*LANDTOPO*)
        ((= const 4) 'landmark_msgs::NaviInfoSource::*TBT*)
        (t nil)))

(defclass landmark_msgs::NaviInfoSource
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::NaviInfoSource
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

(setf (get landmark_msgs::NaviInfoSource :md5sum-) "f5a78212b207ce59ebe4011678a06ed5")
(setf (get landmark_msgs::NaviInfoSource :datatype-) "landmark_msgs/NaviInfoSource")
(setf (get landmark_msgs::NaviInfoSource :definition-)
      "uint8 UNKNOWN = 0
uint8 DEFAULT = 1
uint8 HDMAP = 2
uint8 LANDTOPO = 3
uint8 TBT = 4
uint8 value

")



(provide :landmark_msgs/NaviInfoSource "f5a78212b207ce59ebe4011678a06ed5")


