;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::WrlsChrgWifiSts)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'WrlsChrgWifiSts (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::WRLSCHRGWIFISTS")
  (make-package "ENDPOINT_MSGS::WRLSCHRGWIFISTS"))

(in-package "ROS")
;;//! \htmlinclude WrlsChrgWifiSts.msg.html


(intern "*WIRELESS_CHARGER_WIFI_DEFAULT*" (find-package "ENDPOINT_MSGS::WRLSCHRGWIFISTS"))
(shadow '*WIRELESS_CHARGER_WIFI_DEFAULT* (find-package "ENDPOINT_MSGS::WRLSCHRGWIFISTS"))
(defconstant endpoint_msgs::WrlsChrgWifiSts::*WIRELESS_CHARGER_WIFI_DEFAULT* 0)
(intern "*WIRELESS_CHARGER_WIFI_ON*" (find-package "ENDPOINT_MSGS::WRLSCHRGWIFISTS"))
(shadow '*WIRELESS_CHARGER_WIFI_ON* (find-package "ENDPOINT_MSGS::WRLSCHRGWIFISTS"))
(defconstant endpoint_msgs::WrlsChrgWifiSts::*WIRELESS_CHARGER_WIFI_ON* 1)
(intern "*WIRELESS_CHARGER_WIFI_OFF*" (find-package "ENDPOINT_MSGS::WRLSCHRGWIFISTS"))
(shadow '*WIRELESS_CHARGER_WIFI_OFF* (find-package "ENDPOINT_MSGS::WRLSCHRGWIFISTS"))
(defconstant endpoint_msgs::WrlsChrgWifiSts::*WIRELESS_CHARGER_WIFI_OFF* 2)
(intern "*WIRELESS_CHARGER_WIFI_CONNECTED*" (find-package "ENDPOINT_MSGS::WRLSCHRGWIFISTS"))
(shadow '*WIRELESS_CHARGER_WIFI_CONNECTED* (find-package "ENDPOINT_MSGS::WRLSCHRGWIFISTS"))
(defconstant endpoint_msgs::WrlsChrgWifiSts::*WIRELESS_CHARGER_WIFI_CONNECTED* 3)
(intern "*WIRELESS_CHARGER_WIFI_FAILURE*" (find-package "ENDPOINT_MSGS::WRLSCHRGWIFISTS"))
(shadow '*WIRELESS_CHARGER_WIFI_FAILURE* (find-package "ENDPOINT_MSGS::WRLSCHRGWIFISTS"))
(defconstant endpoint_msgs::WrlsChrgWifiSts::*WIRELESS_CHARGER_WIFI_FAILURE* 4)

(defun endpoint_msgs::WrlsChrgWifiSts-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::WrlsChrgWifiSts::*WIRELESS_CHARGER_WIFI_DEFAULT*)
        ((= const 1) 'endpoint_msgs::WrlsChrgWifiSts::*WIRELESS_CHARGER_WIFI_ON*)
        ((= const 2) 'endpoint_msgs::WrlsChrgWifiSts::*WIRELESS_CHARGER_WIFI_OFF*)
        ((= const 3) 'endpoint_msgs::WrlsChrgWifiSts::*WIRELESS_CHARGER_WIFI_CONNECTED*)
        ((= const 4) 'endpoint_msgs::WrlsChrgWifiSts::*WIRELESS_CHARGER_WIFI_FAILURE*)
        (t nil)))

(defclass endpoint_msgs::WrlsChrgWifiSts
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::WrlsChrgWifiSts
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

(setf (get endpoint_msgs::WrlsChrgWifiSts :md5sum-) "83dd379851b40f377025ae9089e3cd36")
(setf (get endpoint_msgs::WrlsChrgWifiSts :datatype-) "endpoint_msgs/WrlsChrgWifiSts")
(setf (get endpoint_msgs::WrlsChrgWifiSts :definition-)
      "uint8 WIRELESS_CHARGER_WIFI_DEFAULT = 0
uint8 WIRELESS_CHARGER_WIFI_ON = 1
uint8 WIRELESS_CHARGER_WIFI_OFF = 2
uint8 WIRELESS_CHARGER_WIFI_CONNECTED = 3
uint8 WIRELESS_CHARGER_WIFI_FAILURE = 4
uint8 value

")



(provide :endpoint_msgs/WrlsChrgWifiSts "83dd379851b40f377025ae9089e3cd36")


