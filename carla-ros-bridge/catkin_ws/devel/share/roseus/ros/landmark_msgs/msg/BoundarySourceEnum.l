;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::BoundarySourceEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'BoundarySourceEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::BOUNDARYSOURCEENUM")
  (make-package "LANDMARK_MSGS::BOUNDARYSOURCEENUM"))

(in-package "ROS")
;;//! \htmlinclude BoundarySourceEnum.msg.html


(intern "*OTHER*" (find-package "LANDMARK_MSGS::BOUNDARYSOURCEENUM"))
(shadow '*OTHER* (find-package "LANDMARK_MSGS::BOUNDARYSOURCEENUM"))
(defconstant landmark_msgs::BoundarySourceEnum::*OTHER* 0)
(intern "*AUTO_MAPPING*" (find-package "LANDMARK_MSGS::BOUNDARYSOURCEENUM"))
(shadow '*AUTO_MAPPING* (find-package "LANDMARK_MSGS::BOUNDARYSOURCEENUM"))
(defconstant landmark_msgs::BoundarySourceEnum::*AUTO_MAPPING* 1)
(intern "*MANUAL_VALID*" (find-package "LANDMARK_MSGS::BOUNDARYSOURCEENUM"))
(shadow '*MANUAL_VALID* (find-package "LANDMARK_MSGS::BOUNDARYSOURCEENUM"))
(defconstant landmark_msgs::BoundarySourceEnum::*MANUAL_VALID* 2)
(intern "*MANUAL_GUESS*" (find-package "LANDMARK_MSGS::BOUNDARYSOURCEENUM"))
(shadow '*MANUAL_GUESS* (find-package "LANDMARK_MSGS::BOUNDARYSOURCEENUM"))
(defconstant landmark_msgs::BoundarySourceEnum::*MANUAL_GUESS* 3)
(intern "*INTERNAL*" (find-package "LANDMARK_MSGS::BOUNDARYSOURCEENUM"))
(shadow '*INTERNAL* (find-package "LANDMARK_MSGS::BOUNDARYSOURCEENUM"))
(defconstant landmark_msgs::BoundarySourceEnum::*INTERNAL* 4)
(intern "*EXTERNAL*" (find-package "LANDMARK_MSGS::BOUNDARYSOURCEENUM"))
(shadow '*EXTERNAL* (find-package "LANDMARK_MSGS::BOUNDARYSOURCEENUM"))
(defconstant landmark_msgs::BoundarySourceEnum::*EXTERNAL* 5)
(intern "*INTERNAL_SHARED*" (find-package "LANDMARK_MSGS::BOUNDARYSOURCEENUM"))
(shadow '*INTERNAL_SHARED* (find-package "LANDMARK_MSGS::BOUNDARYSOURCEENUM"))
(defconstant landmark_msgs::BoundarySourceEnum::*INTERNAL_SHARED* 6)
(intern "*NONE*" (find-package "LANDMARK_MSGS::BOUNDARYSOURCEENUM"))
(shadow '*NONE* (find-package "LANDMARK_MSGS::BOUNDARYSOURCEENUM"))
(defconstant landmark_msgs::BoundarySourceEnum::*NONE* 7)

(defun landmark_msgs::BoundarySourceEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::BoundarySourceEnum::*OTHER*)
        ((= const 1) 'landmark_msgs::BoundarySourceEnum::*AUTO_MAPPING*)
        ((= const 2) 'landmark_msgs::BoundarySourceEnum::*MANUAL_VALID*)
        ((= const 3) 'landmark_msgs::BoundarySourceEnum::*MANUAL_GUESS*)
        ((= const 4) 'landmark_msgs::BoundarySourceEnum::*INTERNAL*)
        ((= const 5) 'landmark_msgs::BoundarySourceEnum::*EXTERNAL*)
        ((= const 6) 'landmark_msgs::BoundarySourceEnum::*INTERNAL_SHARED*)
        ((= const 7) 'landmark_msgs::BoundarySourceEnum::*NONE*)
        (t nil)))

(defclass landmark_msgs::BoundarySourceEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::BoundarySourceEnum
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

(setf (get landmark_msgs::BoundarySourceEnum :md5sum-) "e7eae1cfc86301b9b9d79d2550ce15c3")
(setf (get landmark_msgs::BoundarySourceEnum :datatype-) "landmark_msgs/BoundarySourceEnum")
(setf (get landmark_msgs::BoundarySourceEnum :definition-)
      "uint8 OTHER = 0
uint8 AUTO_MAPPING = 1
uint8 MANUAL_VALID = 2
uint8 MANUAL_GUESS = 3
uint8 INTERNAL = 4
uint8 EXTERNAL = 5
uint8 INTERNAL_SHARED = 6
uint8 NONE = 7
uint8 value

")



(provide :landmark_msgs/BoundarySourceEnum "e7eae1cfc86301b9b9d79d2550ce15c3")


