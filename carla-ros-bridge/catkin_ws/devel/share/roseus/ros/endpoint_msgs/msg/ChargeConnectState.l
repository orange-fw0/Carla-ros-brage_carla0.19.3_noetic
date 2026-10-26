;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::ChargeConnectState)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'ChargeConnectState (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::CHARGECONNECTSTATE")
  (make-package "ENDPOINT_MSGS::CHARGECONNECTSTATE"))

(in-package "ROS")
;;//! \htmlinclude ChargeConnectState.msg.html


(intern "*NONE*" (find-package "ENDPOINT_MSGS::CHARGECONNECTSTATE"))
(shadow '*NONE* (find-package "ENDPOINT_MSGS::CHARGECONNECTSTATE"))
(defconstant endpoint_msgs::ChargeConnectState::*NONE* 0)
(intern "*NOT_CONNECTED*" (find-package "ENDPOINT_MSGS::CHARGECONNECTSTATE"))
(shadow '*NOT_CONNECTED* (find-package "ENDPOINT_MSGS::CHARGECONNECTSTATE"))
(defconstant endpoint_msgs::ChargeConnectState::*NOT_CONNECTED* 1)
(intern "*CONNECTED*" (find-package "ENDPOINT_MSGS::CHARGECONNECTSTATE"))
(shadow '*CONNECTED* (find-package "ENDPOINT_MSGS::CHARGECONNECTSTATE"))
(defconstant endpoint_msgs::ChargeConnectState::*CONNECTED* 2)
(intern "*RESERVED*" (find-package "ENDPOINT_MSGS::CHARGECONNECTSTATE"))
(shadow '*RESERVED* (find-package "ENDPOINT_MSGS::CHARGECONNECTSTATE"))
(defconstant endpoint_msgs::ChargeConnectState::*RESERVED* 3)

(defun endpoint_msgs::ChargeConnectState-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::ChargeConnectState::*NONE*)
        ((= const 1) 'endpoint_msgs::ChargeConnectState::*NOT_CONNECTED*)
        ((= const 2) 'endpoint_msgs::ChargeConnectState::*CONNECTED*)
        ((= const 3) 'endpoint_msgs::ChargeConnectState::*RESERVED*)
        (t nil)))

(defclass endpoint_msgs::ChargeConnectState
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::ChargeConnectState
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

(setf (get endpoint_msgs::ChargeConnectState :md5sum-) "e495821264c310cb623e8776120869a7")
(setf (get endpoint_msgs::ChargeConnectState :datatype-) "endpoint_msgs/ChargeConnectState")
(setf (get endpoint_msgs::ChargeConnectState :definition-)
      "uint8 NONE = 0
uint8 NOT_CONNECTED = 1
uint8 CONNECTED = 2
uint8 RESERVED = 3
uint8 value

")



(provide :endpoint_msgs/ChargeConnectState "e495821264c310cb623e8776120869a7")


