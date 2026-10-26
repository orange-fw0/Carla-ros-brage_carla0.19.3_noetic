;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::LanePathDirection)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'LanePathDirection (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::LANEPATHDIRECTION")
  (make-package "LANDMARK_MSGS::LANEPATHDIRECTION"))

(in-package "ROS")
;;//! \htmlinclude LanePathDirection.msg.html


(intern "*UNKNOWN*" (find-package "LANDMARK_MSGS::LANEPATHDIRECTION"))
(shadow '*UNKNOWN* (find-package "LANDMARK_MSGS::LANEPATHDIRECTION"))
(defconstant landmark_msgs::LanePathDirection::*UNKNOWN* 0)
(intern "*CONTINUE*" (find-package "LANDMARK_MSGS::LANEPATHDIRECTION"))
(shadow '*CONTINUE* (find-package "LANDMARK_MSGS::LANEPATHDIRECTION"))
(defconstant landmark_msgs::LanePathDirection::*CONTINUE* 1)
(intern "*LEFT*" (find-package "LANDMARK_MSGS::LANEPATHDIRECTION"))
(shadow '*LEFT* (find-package "LANDMARK_MSGS::LANEPATHDIRECTION"))
(defconstant landmark_msgs::LanePathDirection::*LEFT* 2)
(intern "*RIGHT*" (find-package "LANDMARK_MSGS::LANEPATHDIRECTION"))
(shadow '*RIGHT* (find-package "LANDMARK_MSGS::LANEPATHDIRECTION"))
(defconstant landmark_msgs::LanePathDirection::*RIGHT* 3)

(defun landmark_msgs::LanePathDirection-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::LanePathDirection::*UNKNOWN*)
        ((= const 1) 'landmark_msgs::LanePathDirection::*CONTINUE*)
        ((= const 2) 'landmark_msgs::LanePathDirection::*LEFT*)
        ((= const 3) 'landmark_msgs::LanePathDirection::*RIGHT*)
        (t nil)))

(defclass landmark_msgs::LanePathDirection
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::LanePathDirection
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

(setf (get landmark_msgs::LanePathDirection :md5sum-) "7a4a9524d9874ae8fd1f5111ca2f00e9")
(setf (get landmark_msgs::LanePathDirection :datatype-) "landmark_msgs/LanePathDirection")
(setf (get landmark_msgs::LanePathDirection :definition-)
      "uint8 UNKNOWN = 0
uint8 CONTINUE = 1
uint8 LEFT = 2
uint8 RIGHT = 3
uint8 value

")



(provide :landmark_msgs/LanePathDirection "7a4a9524d9874ae8fd1f5111ca2f00e9")


