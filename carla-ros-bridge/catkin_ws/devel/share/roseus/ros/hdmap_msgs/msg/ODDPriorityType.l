;; Auto-generated. Do not edit!


(when (boundp 'hdmap_msgs::ODDPriorityType)
  (if (not (find-package "HDMAP_MSGS"))
    (make-package "HDMAP_MSGS"))
  (shadow 'ODDPriorityType (find-package "HDMAP_MSGS")))
(unless (find-package "HDMAP_MSGS::ODDPRIORITYTYPE")
  (make-package "HDMAP_MSGS::ODDPRIORITYTYPE"))

(in-package "ROS")
;;//! \htmlinclude ODDPriorityType.msg.html


(intern "*UNKNOWN*" (find-package "HDMAP_MSGS::ODDPRIORITYTYPE"))
(shadow '*UNKNOWN* (find-package "HDMAP_MSGS::ODDPRIORITYTYPE"))
(defconstant hdmap_msgs::ODDPriorityType::*UNKNOWN* 0)
(intern "*HDMAP_PRIORITY*" (find-package "HDMAP_MSGS::ODDPRIORITYTYPE"))
(shadow '*HDMAP_PRIORITY* (find-package "HDMAP_MSGS::ODDPRIORITYTYPE"))
(defconstant hdmap_msgs::ODDPriorityType::*HDMAP_PRIORITY* 1)
(intern "*NO_HDMAP_PRIORITY*" (find-package "HDMAP_MSGS::ODDPRIORITYTYPE"))
(shadow '*NO_HDMAP_PRIORITY* (find-package "HDMAP_MSGS::ODDPRIORITYTYPE"))
(defconstant hdmap_msgs::ODDPriorityType::*NO_HDMAP_PRIORITY* 2)

(defun hdmap_msgs::ODDPriorityType-to-symbol (const)
  (cond
        ((= const 0) 'hdmap_msgs::ODDPriorityType::*UNKNOWN*)
        ((= const 1) 'hdmap_msgs::ODDPriorityType::*HDMAP_PRIORITY*)
        ((= const 2) 'hdmap_msgs::ODDPriorityType::*NO_HDMAP_PRIORITY*)
        (t nil)))

(defclass hdmap_msgs::ODDPriorityType
  :super ros::object
  :slots (_priority ))

(defmethod hdmap_msgs::ODDPriorityType
  (:init
   (&key
    ((:priority __priority) 0)
    )
   (send-super :init)
   (setq _priority (round __priority))
   self)
  (:priority
   (&optional __priority)
   (if __priority (setq _priority __priority)) _priority)
  (:serialization-length
   ()
   (+
    ;; uint8 _priority
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _priority
       (write-byte _priority s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _priority
     (setq _priority (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get hdmap_msgs::ODDPriorityType :md5sum-) "dfd45b92a1de6f3374867ccaf1e52c8a")
(setf (get hdmap_msgs::ODDPriorityType :datatype-) "hdmap_msgs/ODDPriorityType")
(setf (get hdmap_msgs::ODDPriorityType :definition-)
      "uint8 UNKNOWN = 0
uint8 HDMAP_PRIORITY = 1
uint8 NO_HDMAP_PRIORITY = 2
uint8 priority

")



(provide :hdmap_msgs/ODDPriorityType "dfd45b92a1de6f3374867ccaf1e52c8a")


