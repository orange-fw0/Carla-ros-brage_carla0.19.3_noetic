;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::SentryHornLevel)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'SentryHornLevel (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::SENTRYHORNLEVEL")
  (make-package "ENDPOINT_MSGS::SENTRYHORNLEVEL"))

(in-package "ROS")
;;//! \htmlinclude SentryHornLevel.msg.html


(intern "*HORNREQ_NONE*" (find-package "ENDPOINT_MSGS::SENTRYHORNLEVEL"))
(shadow '*HORNREQ_NONE* (find-package "ENDPOINT_MSGS::SENTRYHORNLEVEL"))
(defconstant endpoint_msgs::SentryHornLevel::*HORNREQ_NONE* 0)
(intern "*HORNREQ_LEVEL1*" (find-package "ENDPOINT_MSGS::SENTRYHORNLEVEL"))
(shadow '*HORNREQ_LEVEL1* (find-package "ENDPOINT_MSGS::SENTRYHORNLEVEL"))
(defconstant endpoint_msgs::SentryHornLevel::*HORNREQ_LEVEL1* 1)
(intern "*HORNREQ_LEVEL2*" (find-package "ENDPOINT_MSGS::SENTRYHORNLEVEL"))
(shadow '*HORNREQ_LEVEL2* (find-package "ENDPOINT_MSGS::SENTRYHORNLEVEL"))
(defconstant endpoint_msgs::SentryHornLevel::*HORNREQ_LEVEL2* 2)

(defun endpoint_msgs::SentryHornLevel-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::SentryHornLevel::*HornReq_NONE*)
        ((= const 1) 'endpoint_msgs::SentryHornLevel::*HornReq_LEVEL1*)
        ((= const 2) 'endpoint_msgs::SentryHornLevel::*HornReq_LEVEL2*)
        (t nil)))

(defclass endpoint_msgs::SentryHornLevel
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::SentryHornLevel
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

(setf (get endpoint_msgs::SentryHornLevel :md5sum-) "98aba9709653dc2a5e735c65fb2c194e")
(setf (get endpoint_msgs::SentryHornLevel :datatype-) "endpoint_msgs/SentryHornLevel")
(setf (get endpoint_msgs::SentryHornLevel :definition-)
      "uint8 HornReq_NONE = 0
uint8 HornReq_LEVEL1 = 1
uint8 HornReq_LEVEL2 = 2
uint8 value

")



(provide :endpoint_msgs/SentryHornLevel "98aba9709653dc2a5e735c65fb2c194e")


