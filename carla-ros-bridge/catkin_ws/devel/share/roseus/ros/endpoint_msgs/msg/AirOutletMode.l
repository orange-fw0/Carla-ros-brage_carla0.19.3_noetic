;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::AirOutletMode)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'AirOutletMode (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::AIROUTLETMODE")
  (make-package "ENDPOINT_MSGS::AIROUTLETMODE"))

(in-package "ROS")
;;//! \htmlinclude AirOutletMode.msg.html


(intern "*AIR_OUTLET_MODE_FACE*" (find-package "ENDPOINT_MSGS::AIROUTLETMODE"))
(shadow '*AIR_OUTLET_MODE_FACE* (find-package "ENDPOINT_MSGS::AIROUTLETMODE"))
(defconstant endpoint_msgs::AirOutletMode::*AIR_OUTLET_MODE_FACE* 0)
(intern "*AIR_OUTLET_MODE_FOOT*" (find-package "ENDPOINT_MSGS::AIROUTLETMODE"))
(shadow '*AIR_OUTLET_MODE_FOOT* (find-package "ENDPOINT_MSGS::AIROUTLETMODE"))
(defconstant endpoint_msgs::AirOutletMode::*AIR_OUTLET_MODE_FOOT* 1)
(intern "*AIR_OUTLET_MODE_BODY*" (find-package "ENDPOINT_MSGS::AIROUTLETMODE"))
(shadow '*AIR_OUTLET_MODE_BODY* (find-package "ENDPOINT_MSGS::AIROUTLETMODE"))
(defconstant endpoint_msgs::AirOutletMode::*AIR_OUTLET_MODE_BODY* 2)
(intern "*AIR_OUTLET_MODE_KNEE*" (find-package "ENDPOINT_MSGS::AIROUTLETMODE"))
(shadow '*AIR_OUTLET_MODE_KNEE* (find-package "ENDPOINT_MSGS::AIROUTLETMODE"))
(defconstant endpoint_msgs::AirOutletMode::*AIR_OUTLET_MODE_KNEE* 3)
(intern "*AIR_OUTLET_MODE_AUTO*" (find-package "ENDPOINT_MSGS::AIROUTLETMODE"))
(shadow '*AIR_OUTLET_MODE_AUTO* (find-package "ENDPOINT_MSGS::AIROUTLETMODE"))
(defconstant endpoint_msgs::AirOutletMode::*AIR_OUTLET_MODE_AUTO* 4)

(defun endpoint_msgs::AirOutletMode-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::AirOutletMode::*AIR_OUTLET_MODE_FACE*)
        ((= const 1) 'endpoint_msgs::AirOutletMode::*AIR_OUTLET_MODE_FOOT*)
        ((= const 2) 'endpoint_msgs::AirOutletMode::*AIR_OUTLET_MODE_BODY*)
        ((= const 3) 'endpoint_msgs::AirOutletMode::*AIR_OUTLET_MODE_KNEE*)
        ((= const 4) 'endpoint_msgs::AirOutletMode::*AIR_OUTLET_MODE_AUTO*)
        (t nil)))

(defclass endpoint_msgs::AirOutletMode
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::AirOutletMode
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

(setf (get endpoint_msgs::AirOutletMode :md5sum-) "b18906e71a21aac7a4a12ccba961194b")
(setf (get endpoint_msgs::AirOutletMode :datatype-) "endpoint_msgs/AirOutletMode")
(setf (get endpoint_msgs::AirOutletMode :definition-)
      "uint8 AIR_OUTLET_MODE_FACE = 0
uint8 AIR_OUTLET_MODE_FOOT = 1
uint8 AIR_OUTLET_MODE_BODY = 2
uint8 AIR_OUTLET_MODE_KNEE = 3
uint8 AIR_OUTLET_MODE_AUTO = 4
uint8 value

")



(provide :endpoint_msgs/AirOutletMode "b18906e71a21aac7a4a12ccba961194b")


