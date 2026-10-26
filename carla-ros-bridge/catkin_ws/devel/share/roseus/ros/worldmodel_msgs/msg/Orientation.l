;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::Orientation)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'Orientation (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::ORIENTATION")
  (make-package "WORLDMODEL_MSGS::ORIENTATION"))

(in-package "ROS")
;;//! \htmlinclude Orientation.msg.html


(intern "*UNKNOWN*" (find-package "WORLDMODEL_MSGS::ORIENTATION"))
(shadow '*UNKNOWN* (find-package "WORLDMODEL_MSGS::ORIENTATION"))
(defconstant worldmodel_msgs::Orientation::*UNKNOWN* 0)
(intern "*LEFT*" (find-package "WORLDMODEL_MSGS::ORIENTATION"))
(shadow '*LEFT* (find-package "WORLDMODEL_MSGS::ORIENTATION"))
(defconstant worldmodel_msgs::Orientation::*LEFT* 1)
(intern "*RIGHT*" (find-package "WORLDMODEL_MSGS::ORIENTATION"))
(shadow '*RIGHT* (find-package "WORLDMODEL_MSGS::ORIENTATION"))
(defconstant worldmodel_msgs::Orientation::*RIGHT* 2)
(intern "*INTERSECT*" (find-package "WORLDMODEL_MSGS::ORIENTATION"))
(shadow '*INTERSECT* (find-package "WORLDMODEL_MSGS::ORIENTATION"))
(defconstant worldmodel_msgs::Orientation::*INTERSECT* 3)
(intern "*IGNORED*" (find-package "WORLDMODEL_MSGS::ORIENTATION"))
(shadow '*IGNORED* (find-package "WORLDMODEL_MSGS::ORIENTATION"))
(defconstant worldmodel_msgs::Orientation::*IGNORED* 4)

(defun worldmodel_msgs::Orientation-to-symbol (const)
  (cond
        ((= const 0) 'worldmodel_msgs::Orientation::*UNKNOWN*)
        ((= const 1) 'worldmodel_msgs::Orientation::*LEFT*)
        ((= const 2) 'worldmodel_msgs::Orientation::*RIGHT*)
        ((= const 3) 'worldmodel_msgs::Orientation::*INTERSECT*)
        ((= const 4) 'worldmodel_msgs::Orientation::*IGNORED*)
        (t nil)))

(defclass worldmodel_msgs::Orientation
  :super ros::object
  :slots (_value ))

(defmethod worldmodel_msgs::Orientation
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

(setf (get worldmodel_msgs::Orientation :md5sum-) "85dfd6d51fcc0ed33de9ae7c0a784970")
(setf (get worldmodel_msgs::Orientation :datatype-) "worldmodel_msgs/Orientation")
(setf (get worldmodel_msgs::Orientation :definition-)
      "uint8 UNKNOWN = 0
uint8 LEFT = 1
uint8 RIGHT = 2
uint8 INTERSECT = 3
uint8 IGNORED = 4
uint8 value

")



(provide :worldmodel_msgs/Orientation "85dfd6d51fcc0ed33de9ae7c0a784970")


