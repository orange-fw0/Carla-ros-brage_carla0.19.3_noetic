;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::ParkingResponseErrorEnum)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'ParkingResponseErrorEnum (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::PARKINGRESPONSEERRORENUM")
  (make-package "SYSTEM_MANAGER_MSGS::PARKINGRESPONSEERRORENUM"))

(in-package "ROS")
;;//! \htmlinclude ParkingResponseErrorEnum.msg.html


(intern "*SUCCESS*" (find-package "SYSTEM_MANAGER_MSGS::PARKINGRESPONSEERRORENUM"))
(shadow '*SUCCESS* (find-package "SYSTEM_MANAGER_MSGS::PARKINGRESPONSEERRORENUM"))
(defconstant system_manager_msgs::ParkingResponseErrorEnum::*SUCCESS* 0)
(intern "*SEARCH_RESULT_EMPTY*" (find-package "SYSTEM_MANAGER_MSGS::PARKINGRESPONSEERRORENUM"))
(shadow '*SEARCH_RESULT_EMPTY* (find-package "SYSTEM_MANAGER_MSGS::PARKINGRESPONSEERRORENUM"))
(defconstant system_manager_msgs::ParkingResponseErrorEnum::*SEARCH_RESULT_EMPTY* 1)
(intern "*LOAD_LPNP_FAILED*" (find-package "SYSTEM_MANAGER_MSGS::PARKINGRESPONSEERRORENUM"))
(shadow '*LOAD_LPNP_FAILED* (find-package "SYSTEM_MANAGER_MSGS::PARKINGRESPONSEERRORENUM"))
(defconstant system_manager_msgs::ParkingResponseErrorEnum::*LOAD_LPNP_FAILED* 2)
(intern "*LOAD_PNP_FAILED*" (find-package "SYSTEM_MANAGER_MSGS::PARKINGRESPONSEERRORENUM"))
(shadow '*LOAD_PNP_FAILED* (find-package "SYSTEM_MANAGER_MSGS::PARKINGRESPONSEERRORENUM"))
(defconstant system_manager_msgs::ParkingResponseErrorEnum::*LOAD_PNP_FAILED* 3)
(intern "*DELETE_FAILED*" (find-package "SYSTEM_MANAGER_MSGS::PARKINGRESPONSEERRORENUM"))
(shadow '*DELETE_FAILED* (find-package "SYSTEM_MANAGER_MSGS::PARKINGRESPONSEERRORENUM"))
(defconstant system_manager_msgs::ParkingResponseErrorEnum::*DELETE_FAILED* 4)
(intern "*RENAME_FAILED*" (find-package "SYSTEM_MANAGER_MSGS::PARKINGRESPONSEERRORENUM"))
(shadow '*RENAME_FAILED* (find-package "SYSTEM_MANAGER_MSGS::PARKINGRESPONSEERRORENUM"))
(defconstant system_manager_msgs::ParkingResponseErrorEnum::*RENAME_FAILED* 5)

(defun system_manager_msgs::ParkingResponseErrorEnum-to-symbol (const)
  (cond
        ((= const 0) 'system_manager_msgs::ParkingResponseErrorEnum::*SUCCESS*)
        ((= const 1) 'system_manager_msgs::ParkingResponseErrorEnum::*SEARCH_RESULT_EMPTY*)
        ((= const 2) 'system_manager_msgs::ParkingResponseErrorEnum::*LOAD_LPNP_FAILED*)
        ((= const 3) 'system_manager_msgs::ParkingResponseErrorEnum::*LOAD_PNP_FAILED*)
        ((= const 4) 'system_manager_msgs::ParkingResponseErrorEnum::*DELETE_FAILED*)
        ((= const 5) 'system_manager_msgs::ParkingResponseErrorEnum::*RENAME_FAILED*)
        (t nil)))

(defclass system_manager_msgs::ParkingResponseErrorEnum
  :super ros::object
  :slots (_value ))

(defmethod system_manager_msgs::ParkingResponseErrorEnum
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

(setf (get system_manager_msgs::ParkingResponseErrorEnum :md5sum-) "5b2bc1328a5fc36948e9bd00e3fda119")
(setf (get system_manager_msgs::ParkingResponseErrorEnum :datatype-) "system_manager_msgs/ParkingResponseErrorEnum")
(setf (get system_manager_msgs::ParkingResponseErrorEnum :definition-)
      "uint8 SUCCESS = 0
uint8 SEARCH_RESULT_EMPTY = 1
uint8 LOAD_LPNP_FAILED = 2
uint8 LOAD_PNP_FAILED = 3
uint8 DELETE_FAILED = 4
uint8 RENAME_FAILED = 5
uint8 value

")



(provide :system_manager_msgs/ParkingResponseErrorEnum "5b2bc1328a5fc36948e9bd00e3fda119")


