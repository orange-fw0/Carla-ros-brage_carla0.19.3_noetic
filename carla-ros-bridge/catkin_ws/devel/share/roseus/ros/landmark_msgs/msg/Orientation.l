;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::Orientation)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'Orientation (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::ORIENTATION")
  (make-package "LANDMARK_MSGS::ORIENTATION"))

(in-package "ROS")
;;//! \htmlinclude Orientation.msg.html


(intern "*UNKNOWN*" (find-package "LANDMARK_MSGS::ORIENTATION"))
(shadow '*UNKNOWN* (find-package "LANDMARK_MSGS::ORIENTATION"))
(defconstant landmark_msgs::Orientation::*UNKNOWN* 0)
(intern "*LEFT*" (find-package "LANDMARK_MSGS::ORIENTATION"))
(shadow '*LEFT* (find-package "LANDMARK_MSGS::ORIENTATION"))
(defconstant landmark_msgs::Orientation::*LEFT* 1)
(intern "*RIGHT*" (find-package "LANDMARK_MSGS::ORIENTATION"))
(shadow '*RIGHT* (find-package "LANDMARK_MSGS::ORIENTATION"))
(defconstant landmark_msgs::Orientation::*RIGHT* 2)
(intern "*INTERSECT*" (find-package "LANDMARK_MSGS::ORIENTATION"))
(shadow '*INTERSECT* (find-package "LANDMARK_MSGS::ORIENTATION"))
(defconstant landmark_msgs::Orientation::*INTERSECT* 3)

(defun landmark_msgs::Orientation-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::Orientation::*UNKNOWN*)
        ((= const 1) 'landmark_msgs::Orientation::*LEFT*)
        ((= const 2) 'landmark_msgs::Orientation::*RIGHT*)
        ((= const 3) 'landmark_msgs::Orientation::*INTERSECT*)
        (t nil)))

(defclass landmark_msgs::Orientation
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::Orientation
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

(setf (get landmark_msgs::Orientation :md5sum-) "a5bffcba7d67bf6964c991144c11cb57")
(setf (get landmark_msgs::Orientation :datatype-) "landmark_msgs/Orientation")
(setf (get landmark_msgs::Orientation :definition-)
      "uint8 UNKNOWN = 0
uint8 LEFT = 1
uint8 RIGHT = 2
uint8 INTERSECT = 3
uint8 value

")



(provide :landmark_msgs/Orientation "a5bffcba7d67bf6964c991144c11cb57")


