;; Auto-generated. Do not edit!


(when (boundp 'tos_msgs::TOSScenarioEnum)
  (if (not (find-package "TOS_MSGS"))
    (make-package "TOS_MSGS"))
  (shadow 'TOSScenarioEnum (find-package "TOS_MSGS")))
(unless (find-package "TOS_MSGS::TOSSCENARIOENUM")
  (make-package "TOS_MSGS::TOSSCENARIOENUM"))

(in-package "ROS")
;;//! \htmlinclude TOSScenarioEnum.msg.html


(intern "*LANE_BORROW*" (find-package "TOS_MSGS::TOSSCENARIOENUM"))
(shadow '*LANE_BORROW* (find-package "TOS_MSGS::TOSSCENARIOENUM"))
(defconstant tos_msgs::TOSScenarioEnum::*LANE_BORROW* 0)
(intern "*TRAFFIC_LIGHT*" (find-package "TOS_MSGS::TOSSCENARIOENUM"))
(shadow '*TRAFFIC_LIGHT* (find-package "TOS_MSGS::TOSSCENARIOENUM"))
(defconstant tos_msgs::TOSScenarioEnum::*TRAFFIC_LIGHT* 1)

(defun tos_msgs::TOSScenarioEnum-to-symbol (const)
  (cond
        ((= const 0) 'tos_msgs::TOSScenarioEnum::*LANE_BORROW*)
        ((= const 1) 'tos_msgs::TOSScenarioEnum::*TRAFFIC_LIGHT*)
        (t nil)))

(defclass tos_msgs::TOSScenarioEnum
  :super ros::object
  :slots (_value ))

(defmethod tos_msgs::TOSScenarioEnum
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

(setf (get tos_msgs::TOSScenarioEnum :md5sum-) "e9f5f35820d7a06349098b3dab035842")
(setf (get tos_msgs::TOSScenarioEnum :datatype-) "tos_msgs/TOSScenarioEnum")
(setf (get tos_msgs::TOSScenarioEnum :definition-)
      "uint8 LANE_BORROW = 0
uint8 TRAFFIC_LIGHT = 1
uint8 value

")



(provide :tos_msgs/TOSScenarioEnum "e9f5f35820d7a06349098b3dab035842")


