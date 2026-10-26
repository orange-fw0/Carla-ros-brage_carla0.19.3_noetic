;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::RefPathTypeEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'RefPathTypeEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::REFPATHTYPEENUM")
  (make-package "LANDMARK_MSGS::REFPATHTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude RefPathTypeEnum.msg.html


(intern "*REFPATH_TYPE_UNKNOWN*" (find-package "LANDMARK_MSGS::REFPATHTYPEENUM"))
(shadow '*REFPATH_TYPE_UNKNOWN* (find-package "LANDMARK_MSGS::REFPATHTYPEENUM"))
(defconstant landmark_msgs::RefPathTypeEnum::*REFPATH_TYPE_UNKNOWN* 0)
(intern "*REFPATH_TYPE_LATENT_QUERY*" (find-package "LANDMARK_MSGS::REFPATHTYPEENUM"))
(shadow '*REFPATH_TYPE_LATENT_QUERY* (find-package "LANDMARK_MSGS::REFPATHTYPEENUM"))
(defconstant landmark_msgs::RefPathTypeEnum::*REFPATH_TYPE_LATENT_QUERY* 1)
(intern "*REFPATH_TYPE_ANGULAR_QUERY*" (find-package "LANDMARK_MSGS::REFPATHTYPEENUM"))
(shadow '*REFPATH_TYPE_ANGULAR_QUERY* (find-package "LANDMARK_MSGS::REFPATHTYPEENUM"))
(defconstant landmark_msgs::RefPathTypeEnum::*REFPATH_TYPE_ANGULAR_QUERY* 2)
(intern "*REFPATH_TYPE_GOAL_CONDITIONED*" (find-package "LANDMARK_MSGS::REFPATHTYPEENUM"))
(shadow '*REFPATH_TYPE_GOAL_CONDITIONED* (find-package "LANDMARK_MSGS::REFPATHTYPEENUM"))
(defconstant landmark_msgs::RefPathTypeEnum::*REFPATH_TYPE_GOAL_CONDITIONED* 3)

(defun landmark_msgs::RefPathTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::RefPathTypeEnum::*REFPATH_TYPE_UNKNOWN*)
        ((= const 1) 'landmark_msgs::RefPathTypeEnum::*REFPATH_TYPE_LATENT_QUERY*)
        ((= const 2) 'landmark_msgs::RefPathTypeEnum::*REFPATH_TYPE_ANGULAR_QUERY*)
        ((= const 3) 'landmark_msgs::RefPathTypeEnum::*REFPATH_TYPE_GOAL_CONDITIONED*)
        (t nil)))

(defclass landmark_msgs::RefPathTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::RefPathTypeEnum
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

(setf (get landmark_msgs::RefPathTypeEnum :md5sum-) "7e68a73b726921287fbec8e4a60ed9ab")
(setf (get landmark_msgs::RefPathTypeEnum :datatype-) "landmark_msgs/RefPathTypeEnum")
(setf (get landmark_msgs::RefPathTypeEnum :definition-)
      "uint8 REFPATH_TYPE_UNKNOWN = 0
uint8 REFPATH_TYPE_LATENT_QUERY = 1
uint8 REFPATH_TYPE_ANGULAR_QUERY = 2
uint8 REFPATH_TYPE_GOAL_CONDITIONED = 3
uint8 value

")



(provide :landmark_msgs/RefPathTypeEnum "7e68a73b726921287fbec8e4a60ed9ab")


