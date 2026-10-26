;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::ButtonEvent)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'ButtonEvent (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::BUTTONEVENT")
  (make-package "ENDPOINT_MSGS::BUTTONEVENT"))

(in-package "ROS")
;;//! \htmlinclude ButtonEvent.msg.html


(intern "*BUTTON1*" (find-package "ENDPOINT_MSGS::BUTTONEVENT"))
(shadow '*BUTTON1* (find-package "ENDPOINT_MSGS::BUTTONEVENT"))
(defconstant endpoint_msgs::ButtonEvent::*BUTTON1* 0)
(intern "*BUTTON2*" (find-package "ENDPOINT_MSGS::BUTTONEVENT"))
(shadow '*BUTTON2* (find-package "ENDPOINT_MSGS::BUTTONEVENT"))
(defconstant endpoint_msgs::ButtonEvent::*BUTTON2* 1)
(intern "*BUTTON3*" (find-package "ENDPOINT_MSGS::BUTTONEVENT"))
(shadow '*BUTTON3* (find-package "ENDPOINT_MSGS::BUTTONEVENT"))
(defconstant endpoint_msgs::ButtonEvent::*BUTTON3* 2)
(intern "*BUTTON4*" (find-package "ENDPOINT_MSGS::BUTTONEVENT"))
(shadow '*BUTTON4* (find-package "ENDPOINT_MSGS::BUTTONEVENT"))
(defconstant endpoint_msgs::ButtonEvent::*BUTTON4* 3)
(intern "*BUTTON5*" (find-package "ENDPOINT_MSGS::BUTTONEVENT"))
(shadow '*BUTTON5* (find-package "ENDPOINT_MSGS::BUTTONEVENT"))
(defconstant endpoint_msgs::ButtonEvent::*BUTTON5* 4)
(intern "*BUTTON6*" (find-package "ENDPOINT_MSGS::BUTTONEVENT"))
(shadow '*BUTTON6* (find-package "ENDPOINT_MSGS::BUTTONEVENT"))
(defconstant endpoint_msgs::ButtonEvent::*BUTTON6* 5)
(intern "*BUTTON7*" (find-package "ENDPOINT_MSGS::BUTTONEVENT"))
(shadow '*BUTTON7* (find-package "ENDPOINT_MSGS::BUTTONEVENT"))
(defconstant endpoint_msgs::ButtonEvent::*BUTTON7* 6)
(intern "*BUTTON8*" (find-package "ENDPOINT_MSGS::BUTTONEVENT"))
(shadow '*BUTTON8* (find-package "ENDPOINT_MSGS::BUTTONEVENT"))
(defconstant endpoint_msgs::ButtonEvent::*BUTTON8* 7)
(intern "*BUTTON9*" (find-package "ENDPOINT_MSGS::BUTTONEVENT"))
(shadow '*BUTTON9* (find-package "ENDPOINT_MSGS::BUTTONEVENT"))
(defconstant endpoint_msgs::ButtonEvent::*BUTTON9* 8)
(intern "*BUTTON10*" (find-package "ENDPOINT_MSGS::BUTTONEVENT"))
(shadow '*BUTTON10* (find-package "ENDPOINT_MSGS::BUTTONEVENT"))
(defconstant endpoint_msgs::ButtonEvent::*BUTTON10* 9)
(intern "*BUTTON11*" (find-package "ENDPOINT_MSGS::BUTTONEVENT"))
(shadow '*BUTTON11* (find-package "ENDPOINT_MSGS::BUTTONEVENT"))
(defconstant endpoint_msgs::ButtonEvent::*BUTTON11* 10)
(intern "*BUTTON12*" (find-package "ENDPOINT_MSGS::BUTTONEVENT"))
(shadow '*BUTTON12* (find-package "ENDPOINT_MSGS::BUTTONEVENT"))
(defconstant endpoint_msgs::ButtonEvent::*BUTTON12* 11)
(intern "*BUTTON13*" (find-package "ENDPOINT_MSGS::BUTTONEVENT"))
(shadow '*BUTTON13* (find-package "ENDPOINT_MSGS::BUTTONEVENT"))
(defconstant endpoint_msgs::ButtonEvent::*BUTTON13* 12)
(intern "*BUTTON14*" (find-package "ENDPOINT_MSGS::BUTTONEVENT"))
(shadow '*BUTTON14* (find-package "ENDPOINT_MSGS::BUTTONEVENT"))
(defconstant endpoint_msgs::ButtonEvent::*BUTTON14* 13)
(intern "*BUTTON15*" (find-package "ENDPOINT_MSGS::BUTTONEVENT"))
(shadow '*BUTTON15* (find-package "ENDPOINT_MSGS::BUTTONEVENT"))
(defconstant endpoint_msgs::ButtonEvent::*BUTTON15* 14)
(intern "*BUTTON16*" (find-package "ENDPOINT_MSGS::BUTTONEVENT"))
(shadow '*BUTTON16* (find-package "ENDPOINT_MSGS::BUTTONEVENT"))
(defconstant endpoint_msgs::ButtonEvent::*BUTTON16* 15)
(intern "*BUTTON17*" (find-package "ENDPOINT_MSGS::BUTTONEVENT"))
(shadow '*BUTTON17* (find-package "ENDPOINT_MSGS::BUTTONEVENT"))
(defconstant endpoint_msgs::ButtonEvent::*BUTTON17* 16)
(intern "*BUTTON18*" (find-package "ENDPOINT_MSGS::BUTTONEVENT"))
(shadow '*BUTTON18* (find-package "ENDPOINT_MSGS::BUTTONEVENT"))
(defconstant endpoint_msgs::ButtonEvent::*BUTTON18* 17)
(intern "*BUTTON19*" (find-package "ENDPOINT_MSGS::BUTTONEVENT"))
(shadow '*BUTTON19* (find-package "ENDPOINT_MSGS::BUTTONEVENT"))
(defconstant endpoint_msgs::ButtonEvent::*BUTTON19* 18)
(intern "*BUTTON20*" (find-package "ENDPOINT_MSGS::BUTTONEVENT"))
(shadow '*BUTTON20* (find-package "ENDPOINT_MSGS::BUTTONEVENT"))
(defconstant endpoint_msgs::ButtonEvent::*BUTTON20* 19)

(defun endpoint_msgs::ButtonEvent-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::ButtonEvent::*BUTTON1*)
        ((= const 1) 'endpoint_msgs::ButtonEvent::*BUTTON2*)
        ((= const 2) 'endpoint_msgs::ButtonEvent::*BUTTON3*)
        ((= const 3) 'endpoint_msgs::ButtonEvent::*BUTTON4*)
        ((= const 4) 'endpoint_msgs::ButtonEvent::*BUTTON5*)
        ((= const 5) 'endpoint_msgs::ButtonEvent::*BUTTON6*)
        ((= const 6) 'endpoint_msgs::ButtonEvent::*BUTTON7*)
        ((= const 7) 'endpoint_msgs::ButtonEvent::*BUTTON8*)
        ((= const 8) 'endpoint_msgs::ButtonEvent::*BUTTON9*)
        ((= const 9) 'endpoint_msgs::ButtonEvent::*BUTTON10*)
        ((= const 10) 'endpoint_msgs::ButtonEvent::*BUTTON11*)
        ((= const 11) 'endpoint_msgs::ButtonEvent::*BUTTON12*)
        ((= const 12) 'endpoint_msgs::ButtonEvent::*BUTTON13*)
        ((= const 13) 'endpoint_msgs::ButtonEvent::*BUTTON14*)
        ((= const 14) 'endpoint_msgs::ButtonEvent::*BUTTON15*)
        ((= const 15) 'endpoint_msgs::ButtonEvent::*BUTTON16*)
        ((= const 16) 'endpoint_msgs::ButtonEvent::*BUTTON17*)
        ((= const 17) 'endpoint_msgs::ButtonEvent::*BUTTON18*)
        ((= const 18) 'endpoint_msgs::ButtonEvent::*BUTTON19*)
        ((= const 19) 'endpoint_msgs::ButtonEvent::*BUTTON20*)
        (t nil)))

(defclass endpoint_msgs::ButtonEvent
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::ButtonEvent
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

(setf (get endpoint_msgs::ButtonEvent :md5sum-) "01c4b9d758885b8ed39729214ca2ab7b")
(setf (get endpoint_msgs::ButtonEvent :datatype-) "endpoint_msgs/ButtonEvent")
(setf (get endpoint_msgs::ButtonEvent :definition-)
      "uint8 BUTTON1 = 0
uint8 BUTTON2 = 1
uint8 BUTTON3 = 2
uint8 BUTTON4 = 3
uint8 BUTTON5 = 4
uint8 BUTTON6 = 5
uint8 BUTTON7 = 6
uint8 BUTTON8 = 7
uint8 BUTTON9 = 8
uint8 BUTTON10 = 9
uint8 BUTTON11 = 10
uint8 BUTTON12 = 11
uint8 BUTTON13 = 12
uint8 BUTTON14 = 13
uint8 BUTTON15 = 14
uint8 BUTTON16 = 15
uint8 BUTTON17 = 16
uint8 BUTTON18 = 17
uint8 BUTTON19 = 18
uint8 BUTTON20 = 19
uint8 value

")



(provide :endpoint_msgs/ButtonEvent "01c4b9d758885b8ed39729214ca2ab7b")


