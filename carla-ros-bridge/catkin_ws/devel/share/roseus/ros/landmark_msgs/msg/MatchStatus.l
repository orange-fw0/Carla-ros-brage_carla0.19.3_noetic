;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::MatchStatus)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'MatchStatus (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::MATCHSTATUS")
  (make-package "LANDMARK_MSGS::MATCHSTATUS"))

(in-package "ROS")
;;//! \htmlinclude MatchStatus.msg.html


(intern "*UNKNOWN*" (find-package "LANDMARK_MSGS::MATCHSTATUS"))
(shadow '*UNKNOWN* (find-package "LANDMARK_MSGS::MATCHSTATUS"))
(defconstant landmark_msgs::MatchStatus::*UNKNOWN* 0)
(intern "*ON_ROUTE*" (find-package "LANDMARK_MSGS::MATCHSTATUS"))
(shadow '*ON_ROUTE* (find-package "LANDMARK_MSGS::MATCHSTATUS"))
(defconstant landmark_msgs::MatchStatus::*ON_ROUTE* 1)
(intern "*OFF_ROUTE*" (find-package "LANDMARK_MSGS::MATCHSTATUS"))
(shadow '*OFF_ROUTE* (find-package "LANDMARK_MSGS::MATCHSTATUS"))
(defconstant landmark_msgs::MatchStatus::*OFF_ROUTE* 2)
(intern "*OFF_MAP*" (find-package "LANDMARK_MSGS::MATCHSTATUS"))
(shadow '*OFF_MAP* (find-package "LANDMARK_MSGS::MATCHSTATUS"))
(defconstant landmark_msgs::MatchStatus::*OFF_MAP* 3)

(defun landmark_msgs::MatchStatus-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::MatchStatus::*UNKNOWN*)
        ((= const 1) 'landmark_msgs::MatchStatus::*ON_ROUTE*)
        ((= const 2) 'landmark_msgs::MatchStatus::*OFF_ROUTE*)
        ((= const 3) 'landmark_msgs::MatchStatus::*OFF_MAP*)
        (t nil)))

(defclass landmark_msgs::MatchStatus
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::MatchStatus
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

(setf (get landmark_msgs::MatchStatus :md5sum-) "e5347a6ba6f5ed48df147d5cd4937703")
(setf (get landmark_msgs::MatchStatus :datatype-) "landmark_msgs/MatchStatus")
(setf (get landmark_msgs::MatchStatus :definition-)
      "uint8 UNKNOWN = 0
uint8 ON_ROUTE = 1
uint8 OFF_ROUTE = 2
uint8 OFF_MAP = 3
uint8 value

")



(provide :landmark_msgs/MatchStatus "e5347a6ba6f5ed48df147d5cd4937703")


