;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::SBPRequestExtra)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'SBPRequestExtra (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::SBPREQUESTEXTRA")
  (make-package "PLANNING_MSGS::SBPREQUESTEXTRA"))

(in-package "ROS")
;;//! \htmlinclude SBPRequestExtra.msg.html


(intern "*JSON*" (find-package "PLANNING_MSGS::SBPREQUESTEXTRA"))
(shadow '*JSON* (find-package "PLANNING_MSGS::SBPREQUESTEXTRA"))
(defconstant planning_msgs::SBPRequestExtra::*JSON* 1)

(defun planning_msgs::SBPRequestExtra-to-symbol (const)
  (cond
        ((= const 1) 'planning_msgs::SBPRequestExtra::*JSON*)
        (t nil)))

(defclass planning_msgs::SBPRequestExtra
  :super ros::object
  :slots (_available _json ))

(defmethod planning_msgs::SBPRequestExtra
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

(setf (get planning_msgs::SBPRequestExtra :md5sum-) "9e548927e18008b822eac38074c080e5")
(setf (get planning_msgs::SBPRequestExtra :datatype-) "planning_msgs/SBPRequestExtra")
(setf (get planning_msgs::SBPRequestExtra :definition-)
      "uint8 JSON = 1
uint8 available
string json

")



(provide :planning_msgs/SBPRequestExtra "9e548927e18008b822eac38074c080e5")


