;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::SBPResultExtra)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'SBPResultExtra (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::SBPRESULTEXTRA")
  (make-package "PLANNING_MSGS::SBPRESULTEXTRA"))

(in-package "ROS")
;;//! \htmlinclude SBPResultExtra.msg.html


(intern "*JSON*" (find-package "PLANNING_MSGS::SBPRESULTEXTRA"))
(shadow '*JSON* (find-package "PLANNING_MSGS::SBPRESULTEXTRA"))
(defconstant planning_msgs::SBPResultExtra::*JSON* 1)

(defun planning_msgs::SBPResultExtra-to-symbol (const)
  (cond
        ((= const 1) 'planning_msgs::SBPResultExtra::*JSON*)
        (t nil)))

(defclass planning_msgs::SBPResultExtra
  :super ros::object
  :slots (_available _json ))

(defmethod planning_msgs::SBPResultExtra
  (:init
   (&key
    ((:available __available) 0)
    ((:json __json) "")
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _json (string __json))
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:json
   (&optional __json)
   (if __json (setq _json __json)) _json)
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; string _json
    4 (length _json)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; string _json
       (write-long (length _json) s) (princ _json s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _json
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _json (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get planning_msgs::SBPResultExtra :md5sum-) "9e548927e18008b822eac38074c080e5")
(setf (get planning_msgs::SBPResultExtra :datatype-) "planning_msgs/SBPResultExtra")
(setf (get planning_msgs::SBPResultExtra :definition-)
      "uint8 JSON = 1
uint8 available
string json

")



(provide :planning_msgs/SBPResultExtra "9e548927e18008b822eac38074c080e5")


