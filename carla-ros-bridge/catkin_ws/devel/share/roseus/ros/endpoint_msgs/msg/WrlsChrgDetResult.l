;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::WrlsChrgDetResult)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'WrlsChrgDetResult (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::WRLSCHRGDETRESULT")
  (make-package "ENDPOINT_MSGS::WRLSCHRGDETRESULT"))

(in-package "ROS")
;;//! \htmlinclude WrlsChrgDetResult.msg.html


(intern "*WIRELESS_CHARGER_DETECED_RESULT_DEFAULT*" (find-package "ENDPOINT_MSGS::WRLSCHRGDETRESULT"))
(shadow '*WIRELESS_CHARGER_DETECED_RESULT_DEFAULT* (find-package "ENDPOINT_MSGS::WRLSCHRGDETRESULT"))
(defconstant endpoint_msgs::WrlsChrgDetResult::*WIRELESS_CHARGER_DETECED_RESULT_DEFAULT* 0)
(intern "*WIRELESS_CHARGER_DETECED_RESULT_OK*" (find-package "ENDPOINT_MSGS::WRLSCHRGDETRESULT"))
(shadow '*WIRELESS_CHARGER_DETECED_RESULT_OK* (find-package "ENDPOINT_MSGS::WRLSCHRGDETRESULT"))
(defconstant endpoint_msgs::WrlsChrgDetResult::*WIRELESS_CHARGER_DETECED_RESULT_OK* 1)
(intern "*WIRELESS_CHARGER_DETECED_RESULT_OFFSET_X_NOT_OK*" (find-package "ENDPOINT_MSGS::WRLSCHRGDETRESULT"))
(shadow '*WIRELESS_CHARGER_DETECED_RESULT_OFFSET_X_NOT_OK* (find-package "ENDPOINT_MSGS::WRLSCHRGDETRESULT"))
(defconstant endpoint_msgs::WrlsChrgDetResult::*WIRELESS_CHARGER_DETECED_RESULT_OFFSET_X_NOT_OK* 2)
(intern "*WIRELESS_CHARGER_DETECED_RESULT_OFFSET_Y_NOT_OK*" (find-package "ENDPOINT_MSGS::WRLSCHRGDETRESULT"))
(shadow '*WIRELESS_CHARGER_DETECED_RESULT_OFFSET_Y_NOT_OK* (find-package "ENDPOINT_MSGS::WRLSCHRGDETRESULT"))
(defconstant endpoint_msgs::WrlsChrgDetResult::*WIRELESS_CHARGER_DETECED_RESULT_OFFSET_Y_NOT_OK* 3)
(intern "*WIRELESS_CHARGER_DETECED_RESULT_OFFSET_XY_NOT_OK*" (find-package "ENDPOINT_MSGS::WRLSCHRGDETRESULT"))
(shadow '*WIRELESS_CHARGER_DETECED_RESULT_OFFSET_XY_NOT_OK* (find-package "ENDPOINT_MSGS::WRLSCHRGDETRESULT"))
(defconstant endpoint_msgs::WrlsChrgDetResult::*WIRELESS_CHARGER_DETECED_RESULT_OFFSET_XY_NOT_OK* 4)
(intern "*WIRELESS_CHARGER_DETECED_RESULT_METAL*" (find-package "ENDPOINT_MSGS::WRLSCHRGDETRESULT"))
(shadow '*WIRELESS_CHARGER_DETECED_RESULT_METAL* (find-package "ENDPOINT_MSGS::WRLSCHRGDETRESULT"))
(defconstant endpoint_msgs::WrlsChrgDetResult::*WIRELESS_CHARGER_DETECED_RESULT_METAL* 5)
(intern "*WIRELESS_CHARGER_DETECED_RESULT_LIVING*" (find-package "ENDPOINT_MSGS::WRLSCHRGDETRESULT"))
(shadow '*WIRELESS_CHARGER_DETECED_RESULT_LIVING* (find-package "ENDPOINT_MSGS::WRLSCHRGDETRESULT"))
(defconstant endpoint_msgs::WrlsChrgDetResult::*WIRELESS_CHARGER_DETECED_RESULT_LIVING* 6)
(intern "*WIRELESS_CHARGER_DETECED_RESULT_METAL_OFFSET_NOT_OK*" (find-package "ENDPOINT_MSGS::WRLSCHRGDETRESULT"))
(shadow '*WIRELESS_CHARGER_DETECED_RESULT_METAL_OFFSET_NOT_OK* (find-package "ENDPOINT_MSGS::WRLSCHRGDETRESULT"))
(defconstant endpoint_msgs::WrlsChrgDetResult::*WIRELESS_CHARGER_DETECED_RESULT_METAL_OFFSET_NOT_OK* 7)
(intern "*WIRELESS_CHARGER_DETECED_RESULT_NETA_LIVING*" (find-package "ENDPOINT_MSGS::WRLSCHRGDETRESULT"))
(shadow '*WIRELESS_CHARGER_DETECED_RESULT_NETA_LIVING* (find-package "ENDPOINT_MSGS::WRLSCHRGDETRESULT"))
(defconstant endpoint_msgs::WrlsChrgDetResult::*WIRELESS_CHARGER_DETECED_RESULT_NETA_LIVING* 8)

(defun endpoint_msgs::WrlsChrgDetResult-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::WrlsChrgDetResult::*WIRELESS_CHARGER_DETECED_RESULT_DEFAULT*)
        ((= const 1) 'endpoint_msgs::WrlsChrgDetResult::*WIRELESS_CHARGER_DETECED_RESULT_OK*)
        ((= const 2) 'endpoint_msgs::WrlsChrgDetResult::*WIRELESS_CHARGER_DETECED_RESULT_OFFSET_X_NOT_OK*)
        ((= const 3) 'endpoint_msgs::WrlsChrgDetResult::*WIRELESS_CHARGER_DETECED_RESULT_OFFSET_Y_NOT_OK*)
        ((= const 4) 'endpoint_msgs::WrlsChrgDetResult::*WIRELESS_CHARGER_DETECED_RESULT_OFFSET_XY_NOT_OK*)
        ((= const 5) 'endpoint_msgs::WrlsChrgDetResult::*WIRELESS_CHARGER_DETECED_RESULT_METAL*)
        ((= const 6) 'endpoint_msgs::WrlsChrgDetResult::*WIRELESS_CHARGER_DETECED_RESULT_LIVING*)
        ((= const 7) 'endpoint_msgs::WrlsChrgDetResult::*WIRELESS_CHARGER_DETECED_RESULT_METAL_OFFSET_NOT_OK*)
        ((= const 8) 'endpoint_msgs::WrlsChrgDetResult::*WIRELESS_CHARGER_DETECED_RESULT_NETA_LIVING*)
        (t nil)))

(defclass endpoint_msgs::WrlsChrgDetResult
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::WrlsChrgDetResult
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

(setf (get endpoint_msgs::WrlsChrgDetResult :md5sum-) "d46664860429aa7df0e64f40ff5f26c4")
(setf (get endpoint_msgs::WrlsChrgDetResult :datatype-) "endpoint_msgs/WrlsChrgDetResult")
(setf (get endpoint_msgs::WrlsChrgDetResult :definition-)
      "uint8 WIRELESS_CHARGER_DETECED_RESULT_DEFAULT = 0
uint8 WIRELESS_CHARGER_DETECED_RESULT_OK = 1
uint8 WIRELESS_CHARGER_DETECED_RESULT_OFFSET_X_NOT_OK = 2
uint8 WIRELESS_CHARGER_DETECED_RESULT_OFFSET_Y_NOT_OK = 3
uint8 WIRELESS_CHARGER_DETECED_RESULT_OFFSET_XY_NOT_OK = 4
uint8 WIRELESS_CHARGER_DETECED_RESULT_METAL = 5
uint8 WIRELESS_CHARGER_DETECED_RESULT_LIVING = 6
uint8 WIRELESS_CHARGER_DETECED_RESULT_METAL_OFFSET_NOT_OK = 7
uint8 WIRELESS_CHARGER_DETECED_RESULT_NETA_LIVING = 8
uint8 value

")



(provide :endpoint_msgs/WrlsChrgDetResult "d46664860429aa7df0e64f40ff5f26c4")


