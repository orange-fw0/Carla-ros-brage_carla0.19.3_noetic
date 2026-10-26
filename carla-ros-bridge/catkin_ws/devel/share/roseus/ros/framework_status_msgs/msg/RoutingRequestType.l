;; Auto-generated. Do not edit!


(when (boundp 'framework_status_msgs::RoutingRequestType)
  (if (not (find-package "FRAMEWORK_STATUS_MSGS"))
    (make-package "FRAMEWORK_STATUS_MSGS"))
  (shadow 'RoutingRequestType (find-package "FRAMEWORK_STATUS_MSGS")))
(unless (find-package "FRAMEWORK_STATUS_MSGS::ROUTINGREQUESTTYPE")
  (make-package "FRAMEWORK_STATUS_MSGS::ROUTINGREQUESTTYPE"))

(in-package "ROS")
;;//! \htmlinclude RoutingRequestType.msg.html


(intern "*ROUTE_ENDS*" (find-package "FRAMEWORK_STATUS_MSGS::ROUTINGREQUESTTYPE"))
(shadow '*ROUTE_ENDS* (find-package "FRAMEWORK_STATUS_MSGS::ROUTINGREQUESTTYPE"))
(defconstant framework_status_msgs::RoutingRequestType::*ROUTE_ENDS* 0)
(intern "*JSON_FILE*" (find-package "FRAMEWORK_STATUS_MSGS::ROUTINGREQUESTTYPE"))
(shadow '*JSON_FILE* (find-package "FRAMEWORK_STATUS_MSGS::ROUTINGREQUESTTYPE"))
(defconstant framework_status_msgs::RoutingRequestType::*JSON_FILE* 1)

(defun framework_status_msgs::RoutingRequestType-to-symbol (const)
  (cond
        ((= const 0) 'framework_status_msgs::RoutingRequestType::*ROUTE_ENDS*)
        ((= const 1) 'framework_status_msgs::RoutingRequestType::*JSON_FILE*)
        (t nil)))

(defclass framework_status_msgs::RoutingRequestType
  :super ros::object
  :slots (_value ))

(defmethod framework_status_msgs::RoutingRequestType
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

(setf (get framework_status_msgs::RoutingRequestType :md5sum-) "707ea02662e865f186e59577078d9322")
(setf (get framework_status_msgs::RoutingRequestType :datatype-) "framework_status_msgs/RoutingRequestType")
(setf (get framework_status_msgs::RoutingRequestType :definition-)
      "uint8 ROUTE_ENDS = 0
uint8 JSON_FILE = 1
uint8 value

")



(provide :framework_status_msgs/RoutingRequestType "707ea02662e865f186e59577078d9322")


