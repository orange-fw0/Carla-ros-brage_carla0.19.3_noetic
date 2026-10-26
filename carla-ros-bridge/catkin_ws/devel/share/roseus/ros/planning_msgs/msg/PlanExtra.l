;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::PlanExtra)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'PlanExtra (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::PLANEXTRA")
  (make-package "PLANNING_MSGS::PLANEXTRA"))

(in-package "ROS")
;;//! \htmlinclude PlanExtra.msg.html


(intern "*VERSION*" (find-package "PLANNING_MSGS::PLANEXTRA"))
(shadow '*VERSION* (find-package "PLANNING_MSGS::PLANEXTRA"))
(defconstant planning_msgs::PlanExtra::*VERSION* 1)
(intern "*JSON*" (find-package "PLANNING_MSGS::PLANEXTRA"))
(shadow '*JSON* (find-package "PLANNING_MSGS::PLANEXTRA"))
(defconstant planning_msgs::PlanExtra::*JSON* 2)

(defun planning_msgs::PlanExtra-to-symbol (const)
  (cond
        ((= const 1) 'planning_msgs::PlanExtra::*VERSION*)
        ((= const 2) 'planning_msgs::PlanExtra::*JSON*)
        (t nil)))

(defclass planning_msgs::PlanExtra
  :super ros::object
  :slots (_available _version _json ))

(defmethod planning_msgs::PlanExtra
  (:init
   (&key
    ((:available __available) 0)
    ((:version __version) "")
    ((:json __json) "")
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _version (string __version))
   (setq _json (string __json))
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:version
   (&optional __version)
   (if __version (setq _version __version)) _version)
  (:json
   (&optional __json)
   (if __json (setq _json __json)) _json)
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; string _version
    4 (length _version)
    ;; string _json
    4 (length _json)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; string _version
       (write-long (length _version) s) (princ _version s)
     ;; string _json
       (write-long (length _json) s) (princ _json s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _version
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _version (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _json
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _json (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get planning_msgs::PlanExtra :md5sum-) "b91373d8e7a0b760646b0ed5575ac94e")
(setf (get planning_msgs::PlanExtra :datatype-) "planning_msgs/PlanExtra")
(setf (get planning_msgs::PlanExtra :definition-)
      "uint8 VERSION = 1
uint8 JSON = 2
uint8 available
string version
string json

")



(provide :planning_msgs/PlanExtra "b91373d8e7a0b760646b0ed5575ac94e")


