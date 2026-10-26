;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::ParkingQueryModeEnum)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'ParkingQueryModeEnum (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::PARKINGQUERYMODEENUM")
  (make-package "SYSTEM_MANAGER_MSGS::PARKINGQUERYMODEENUM"))

(in-package "ROS")
;;//! \htmlinclude ParkingQueryModeEnum.msg.html


(intern "*BY_RANGE*" (find-package "SYSTEM_MANAGER_MSGS::PARKINGQUERYMODEENUM"))
(shadow '*BY_RANGE* (find-package "SYSTEM_MANAGER_MSGS::PARKINGQUERYMODEENUM"))
(defconstant system_manager_msgs::ParkingQueryModeEnum::*BY_RANGE* 0)
(intern "*BY_LAST_USAGE*" (find-package "SYSTEM_MANAGER_MSGS::PARKINGQUERYMODEENUM"))
(shadow '*BY_LAST_USAGE* (find-package "SYSTEM_MANAGER_MSGS::PARKINGQUERYMODEENUM"))
(defconstant system_manager_msgs::ParkingQueryModeEnum::*BY_LAST_USAGE* 1)
(intern "*BY_LATEST_BUILD*" (find-package "SYSTEM_MANAGER_MSGS::PARKINGQUERYMODEENUM"))
(shadow '*BY_LATEST_BUILD* (find-package "SYSTEM_MANAGER_MSGS::PARKINGQUERYMODEENUM"))
(defconstant system_manager_msgs::ParkingQueryModeEnum::*BY_LATEST_BUILD* 2)
(intern "*BY_SPECIFIC_ID*" (find-package "SYSTEM_MANAGER_MSGS::PARKINGQUERYMODEENUM"))
(shadow '*BY_SPECIFIC_ID* (find-package "SYSTEM_MANAGER_MSGS::PARKINGQUERYMODEENUM"))
(defconstant system_manager_msgs::ParkingQueryModeEnum::*BY_SPECIFIC_ID* 3)

(defun system_manager_msgs::ParkingQueryModeEnum-to-symbol (const)
  (cond
        ((= const 0) 'system_manager_msgs::ParkingQueryModeEnum::*BY_RANGE*)
        ((= const 1) 'system_manager_msgs::ParkingQueryModeEnum::*BY_LAST_USAGE*)
        ((= const 2) 'system_manager_msgs::ParkingQueryModeEnum::*BY_LATEST_BUILD*)
        ((= const 3) 'system_manager_msgs::ParkingQueryModeEnum::*BY_SPECIFIC_ID*)
        (t nil)))

(defclass system_manager_msgs::ParkingQueryModeEnum
  :super ros::object
  :slots (_mode ))

(defmethod system_manager_msgs::ParkingQueryModeEnum
  (:init
   (&key
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _mode (round __mode))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; uint8 _mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _mode
       (write-byte _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get system_manager_msgs::ParkingQueryModeEnum :md5sum-) "c7009d576b7bd2aba6766ac4b00f28f7")
(setf (get system_manager_msgs::ParkingQueryModeEnum :datatype-) "system_manager_msgs/ParkingQueryModeEnum")
(setf (get system_manager_msgs::ParkingQueryModeEnum :definition-)
      "uint8 BY_RANGE = 0
uint8 BY_LAST_USAGE = 1
uint8 BY_LATEST_BUILD = 2
uint8 BY_SPECIFIC_ID = 3
uint8 mode

")



(provide :system_manager_msgs/ParkingQueryModeEnum "c7009d576b7bd2aba6766ac4b00f28f7")


