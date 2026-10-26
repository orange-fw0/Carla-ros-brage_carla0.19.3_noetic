;; Auto-generated. Do not edit!


(when (boundp 'shadow_mode_msgs::ActionType)
  (if (not (find-package "SHADOW_MODE_MSGS"))
    (make-package "SHADOW_MODE_MSGS"))
  (shadow 'ActionType (find-package "SHADOW_MODE_MSGS")))
(unless (find-package "SHADOW_MODE_MSGS::ACTIONTYPE")
  (make-package "SHADOW_MODE_MSGS::ACTIONTYPE"))

(in-package "ROS")
;;//! \htmlinclude ActionType.msg.html


(intern "*DEFAULT*" (find-package "SHADOW_MODE_MSGS::ACTIONTYPE"))
(shadow '*DEFAULT* (find-package "SHADOW_MODE_MSGS::ACTIONTYPE"))
(defconstant shadow_mode_msgs::ActionType::*DEFAULT* 0)
(intern "*CFDI_ONLY_FOREVER_LOG*" (find-package "SHADOW_MODE_MSGS::ACTIONTYPE"))
(shadow '*CFDI_ONLY_FOREVER_LOG* (find-package "SHADOW_MODE_MSGS::ACTIONTYPE"))
(defconstant shadow_mode_msgs::ActionType::*CFDI_ONLY_FOREVER_LOG* 1)
(intern "*DFDI_ONLY_REPORT_EAP*" (find-package "SHADOW_MODE_MSGS::ACTIONTYPE"))
(shadow '*DFDI_ONLY_REPORT_EAP* (find-package "SHADOW_MODE_MSGS::ACTIONTYPE"))
(defconstant shadow_mode_msgs::ActionType::*DFDI_ONLY_REPORT_EAP* 128)

(defun shadow_mode_msgs::ActionType-to-symbol (const)
  (cond
        ((= const 0) 'shadow_mode_msgs::ActionType::*DEFAULT*)
        ((= const 1) 'shadow_mode_msgs::ActionType::*CFDI_ONLY_FOREVER_LOG*)
        ((= const 128) 'shadow_mode_msgs::ActionType::*DFDI_ONLY_REPORT_EAP*)
        (t nil)))

(defclass shadow_mode_msgs::ActionType
  :super ros::object
  :slots (_action_value ))

(defmethod shadow_mode_msgs::ActionType
  (:init
   (&key
    ((:action_value __action_value) 0)
    )
   (send-super :init)
   (setq _action_value (round __action_value))
   self)
  (:action_value
   (&optional __action_value)
   (if __action_value (setq _action_value __action_value)) _action_value)
  (:serialization-length
   ()
   (+
    ;; uint8 _action_value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _action_value
       (write-byte _action_value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _action_value
     (setq _action_value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get shadow_mode_msgs::ActionType :md5sum-) "3e8595611de8fc3d084334bc12d4b332")
(setf (get shadow_mode_msgs::ActionType :datatype-) "shadow_mode_msgs/ActionType")
(setf (get shadow_mode_msgs::ActionType :definition-)
      "uint8 DEFAULT = 0
uint8 CFDI_ONLY_FOREVER_LOG = 1
uint8 DFDI_ONLY_REPORT_EAP = 128
uint8 action_value

")



(provide :shadow_mode_msgs/ActionType "3e8595611de8fc3d084334bc12d4b332")


