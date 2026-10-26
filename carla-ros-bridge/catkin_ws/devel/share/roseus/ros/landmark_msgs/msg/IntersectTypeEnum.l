;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::IntersectTypeEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'IntersectTypeEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::INTERSECTTYPEENUM")
  (make-package "LANDMARK_MSGS::INTERSECTTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude IntersectTypeEnum.msg.html


(intern "*UNKNOWN*" (find-package "LANDMARK_MSGS::INTERSECTTYPEENUM"))
(shadow '*UNKNOWN* (find-package "LANDMARK_MSGS::INTERSECTTYPEENUM"))
(defconstant landmark_msgs::IntersectTypeEnum::*UNKNOWN* 0)
(intern "*CROSS*" (find-package "LANDMARK_MSGS::INTERSECTTYPEENUM"))
(shadow '*CROSS* (find-package "LANDMARK_MSGS::INTERSECTTYPEENUM"))
(defconstant landmark_msgs::IntersectTypeEnum::*CROSS* 1)
(intern "*CLOSE*" (find-package "LANDMARK_MSGS::INTERSECTTYPEENUM"))
(shadow '*CLOSE* (find-package "LANDMARK_MSGS::INTERSECTTYPEENUM"))
(defconstant landmark_msgs::IntersectTypeEnum::*CLOSE* 2)

(defun landmark_msgs::IntersectTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::IntersectTypeEnum::*UNKNOWN*)
        ((= const 1) 'landmark_msgs::IntersectTypeEnum::*CROSS*)
        ((= const 2) 'landmark_msgs::IntersectTypeEnum::*CLOSE*)
        (t nil)))

(defclass landmark_msgs::IntersectTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::IntersectTypeEnum
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

(setf (get landmark_msgs::IntersectTypeEnum :md5sum-) "a2e01337dcdf4cf76bff5680ea88148c")
(setf (get landmark_msgs::IntersectTypeEnum :datatype-) "landmark_msgs/IntersectTypeEnum")
(setf (get landmark_msgs::IntersectTypeEnum :definition-)
      "uint8 UNKNOWN = 0
uint8 CROSS = 1
uint8 CLOSE = 2
uint8 value

")



(provide :landmark_msgs/IntersectTypeEnum "a2e01337dcdf4cf76bff5680ea88148c")


