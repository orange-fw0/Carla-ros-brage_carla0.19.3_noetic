;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::ControlCommandExtra)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'ControlCommandExtra (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::CONTROLCOMMANDEXTRA")
  (make-package "ENDPOINT_MSGS::CONTROLCOMMANDEXTRA"))

(in-package "ROS")
;;//! \htmlinclude ControlCommandExtra.msg.html


(intern "*VERSION*" (find-package "ENDPOINT_MSGS::CONTROLCOMMANDEXTRA"))
(shadow '*VERSION* (find-package "ENDPOINT_MSGS::CONTROLCOMMANDEXTRA"))
(defconstant endpoint_msgs::ControlCommandExtra::*VERSION* 1)
(intern "*JSON*" (find-package "ENDPOINT_MSGS::CONTROLCOMMANDEXTRA"))
(shadow '*JSON* (find-package "ENDPOINT_MSGS::CONTROLCOMMANDEXTRA"))
(defconstant endpoint_msgs::ControlCommandExtra::*JSON* 2)

(defun endpoint_msgs::ControlCommandExtra-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::ControlCommandExtra::*VERSION*)
        ((= const 2) 'endpoint_msgs::ControlCommandExtra::*JSON*)
        (t nil)))

(defclass endpoint_msgs::ControlCommandExtra
  :super ros::object
  :slots (_available _version _json ))

(defmethod endpoint_msgs::ControlCommandExtra
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

(setf (get endpoint_msgs::ControlCommandExtra :md5sum-) "b91373d8e7a0b760646b0ed5575ac94e")
(setf (get endpoint_msgs::ControlCommandExtra :datatype-) "endpoint_msgs/ControlCommandExtra")
(setf (get endpoint_msgs::ControlCommandExtra :definition-)
      "uint8 VERSION = 1
uint8 JSON = 2
uint8 available
string version
string json

")



(provide :endpoint_msgs/ControlCommandExtra "b91373d8e7a0b760646b0ed5575ac94e")


