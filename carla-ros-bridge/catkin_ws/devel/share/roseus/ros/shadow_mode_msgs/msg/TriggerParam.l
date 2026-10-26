;; Auto-generated. Do not edit!


(when (boundp 'shadow_mode_msgs::TriggerParam)
  (if (not (find-package "SHADOW_MODE_MSGS"))
    (make-package "SHADOW_MODE_MSGS"))
  (shadow 'TriggerParam (find-package "SHADOW_MODE_MSGS")))
(unless (find-package "SHADOW_MODE_MSGS::TRIGGERPARAM")
  (make-package "SHADOW_MODE_MSGS::TRIGGERPARAM"))

(in-package "ROS")
;;//! \htmlinclude TriggerParam.msg.html


(intern "*EVENT*" (find-package "SHADOW_MODE_MSGS::TRIGGERPARAM"))
(shadow '*EVENT* (find-package "SHADOW_MODE_MSGS::TRIGGERPARAM"))
(defconstant shadow_mode_msgs::TriggerParam::*EVENT* 0)
(intern "*SINGLE_FRAME*" (find-package "SHADOW_MODE_MSGS::TRIGGERPARAM"))
(shadow '*SINGLE_FRAME* (find-package "SHADOW_MODE_MSGS::TRIGGERPARAM"))
(defconstant shadow_mode_msgs::TriggerParam::*SINGLE_FRAME* 1)
(intern "*RECORDING*" (find-package "SHADOW_MODE_MSGS::TRIGGERPARAM"))
(shadow '*RECORDING* (find-package "SHADOW_MODE_MSGS::TRIGGERPARAM"))
(defconstant shadow_mode_msgs::TriggerParam::*RECORDING* 2)

(defun shadow_mode_msgs::TriggerParam-to-symbol (const)
  (cond
        ((= const 0) 'shadow_mode_msgs::TriggerParam::*EVENT*)
        ((= const 1) 'shadow_mode_msgs::TriggerParam::*SINGLE_FRAME*)
        ((= const 2) 'shadow_mode_msgs::TriggerParam::*RECORDING*)
        (t nil)))

(defclass shadow_mode_msgs::TriggerParam
  :super ros::object
  :slots (_trigger_value ))

(defmethod shadow_mode_msgs::TriggerParam
  (:init
   (&key
    ((:trigger_value __trigger_value) 0)
    )
   (send-super :init)
   (setq _trigger_value (round __trigger_value))
   self)
  (:trigger_value
   (&optional __trigger_value)
   (if __trigger_value (setq _trigger_value __trigger_value)) _trigger_value)
  (:serialization-length
   ()
   (+
    ;; uint8 _trigger_value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _trigger_value
       (write-byte _trigger_value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _trigger_value
     (setq _trigger_value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get shadow_mode_msgs::TriggerParam :md5sum-) "2a4af8c99e536377aa2097c2cc718f29")
(setf (get shadow_mode_msgs::TriggerParam :datatype-) "shadow_mode_msgs/TriggerParam")
(setf (get shadow_mode_msgs::TriggerParam :definition-)
      "uint8 EVENT = 0
uint8 SINGLE_FRAME = 1
uint8 RECORDING = 2
uint8 trigger_value

")



(provide :shadow_mode_msgs/TriggerParam "2a4af8c99e536377aa2097c2cc718f29")


