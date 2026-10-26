;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::WlcStatus)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'WlcStatus (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::WLCSTATUS")
  (make-package "PLANNING_MSGS::WLCSTATUS"))

(in-package "ROS")
;;//! \htmlinclude WlcStatus.msg.html


(intern "*NO_WLC*" (find-package "PLANNING_MSGS::WLCSTATUS"))
(shadow '*NO_WLC* (find-package "PLANNING_MSGS::WLCSTATUS"))
(defconstant planning_msgs::WlcStatus::*NO_WLC* 0)
(intern "*APPROACHING*" (find-package "PLANNING_MSGS::WLCSTATUS"))
(shadow '*APPROACHING* (find-package "PLANNING_MSGS::WLCSTATUS"))
(defconstant planning_msgs::WlcStatus::*APPROACHING* 1)
(intern "*APPROACHED*" (find-package "PLANNING_MSGS::WLCSTATUS"))
(shadow '*APPROACHED* (find-package "PLANNING_MSGS::WLCSTATUS"))
(defconstant planning_msgs::WlcStatus::*APPROACHED* 2)

(defun planning_msgs::WlcStatus-to-symbol (const)
  (cond
        ((= const 0) 'planning_msgs::WlcStatus::*NO_WLC*)
        ((= const 1) 'planning_msgs::WlcStatus::*APPROACHING*)
        ((= const 2) 'planning_msgs::WlcStatus::*APPROACHED*)
        (t nil)))

(defclass planning_msgs::WlcStatus
  :super ros::object
  :slots (_value ))

(defmethod planning_msgs::WlcStatus
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

(setf (get planning_msgs::WlcStatus :md5sum-) "37840f29efd5c5608d22824d95635338")
(setf (get planning_msgs::WlcStatus :datatype-) "planning_msgs/WlcStatus")
(setf (get planning_msgs::WlcStatus :definition-)
      "uint32 NO_WLC = 0
uint32 APPROACHING = 1
uint32 APPROACHED = 2
uint32 value

")



(provide :planning_msgs/WlcStatus "37840f29efd5c5608d22824d95635338")


