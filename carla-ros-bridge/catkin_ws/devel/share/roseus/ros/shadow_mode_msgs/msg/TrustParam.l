;; Auto-generated. Do not edit!


(when (boundp 'shadow_mode_msgs::TrustParam)
  (if (not (find-package "SHADOW_MODE_MSGS"))
    (make-package "SHADOW_MODE_MSGS"))
  (shadow 'TrustParam (find-package "SHADOW_MODE_MSGS")))
(unless (find-package "SHADOW_MODE_MSGS::TRUSTPARAM")
  (make-package "SHADOW_MODE_MSGS::TRUSTPARAM"))

(in-package "ROS")
;;//! \htmlinclude TrustParam.msg.html


(intern "*NONE*" (find-package "SHADOW_MODE_MSGS::TRUSTPARAM"))
(shadow '*NONE* (find-package "SHADOW_MODE_MSGS::TRUSTPARAM"))
(defconstant shadow_mode_msgs::TrustParam::*NONE* 0)
(intern "*BEFORE*" (find-package "SHADOW_MODE_MSGS::TRUSTPARAM"))
(shadow '*BEFORE* (find-package "SHADOW_MODE_MSGS::TRUSTPARAM"))
(defconstant shadow_mode_msgs::TrustParam::*BEFORE* 1)
(intern "*AFTER*" (find-package "SHADOW_MODE_MSGS::TRUSTPARAM"))
(shadow '*AFTER* (find-package "SHADOW_MODE_MSGS::TRUSTPARAM"))
(defconstant shadow_mode_msgs::TrustParam::*AFTER* 2)

(defun shadow_mode_msgs::TrustParam-to-symbol (const)
  (cond
        ((= const 0) 'shadow_mode_msgs::TrustParam::*NONE*)
        ((= const 1) 'shadow_mode_msgs::TrustParam::*BEFORE*)
        ((= const 2) 'shadow_mode_msgs::TrustParam::*AFTER*)
        (t nil)))

(defclass shadow_mode_msgs::TrustParam
  :super ros::object
  :slots (_trust_value ))

(defmethod shadow_mode_msgs::TrustParam
  (:init
   (&key
    ((:trust_value __trust_value) 0)
    )
   (send-super :init)
   (setq _trust_value (round __trust_value))
   self)
  (:trust_value
   (&optional __trust_value)
   (if __trust_value (setq _trust_value __trust_value)) _trust_value)
  (:serialization-length
   ()
   (+
    ;; uint8 _trust_value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _trust_value
       (write-byte _trust_value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _trust_value
     (setq _trust_value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get shadow_mode_msgs::TrustParam :md5sum-) "a1edeb9fd6ed1d68d4a45e9e6425ce6e")
(setf (get shadow_mode_msgs::TrustParam :datatype-) "shadow_mode_msgs/TrustParam")
(setf (get shadow_mode_msgs::TrustParam :definition-)
      "uint8 NONE = 0
uint8 BEFORE = 1
uint8 AFTER = 2
uint8 trust_value

")



(provide :shadow_mode_msgs/TrustParam "a1edeb9fd6ed1d68d4a45e9e6425ce6e")


