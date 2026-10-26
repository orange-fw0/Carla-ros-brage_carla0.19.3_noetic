;; Auto-generated. Do not edit!


(when (boundp 'tbt_msgs::MainSideRoadStatusEnum)
  (if (not (find-package "TBT_MSGS"))
    (make-package "TBT_MSGS"))
  (shadow 'MainSideRoadStatusEnum (find-package "TBT_MSGS")))
(unless (find-package "TBT_MSGS::MAINSIDEROADSTATUSENUM")
  (make-package "TBT_MSGS::MAINSIDEROADSTATUSENUM"))

(in-package "ROS")
;;//! \htmlinclude MainSideRoadStatusEnum.msg.html


(intern "*DEFAULT*" (find-package "TBT_MSGS::MAINSIDEROADSTATUSENUM"))
(shadow '*DEFAULT* (find-package "TBT_MSGS::MAINSIDEROADSTATUSENUM"))
(defconstant tbt_msgs::MainSideRoadStatusEnum::*DEFAULT* 0)
(intern "*MAINROAD*" (find-package "TBT_MSGS::MAINSIDEROADSTATUSENUM"))
(shadow '*MAINROAD* (find-package "TBT_MSGS::MAINSIDEROADSTATUSENUM"))
(defconstant tbt_msgs::MainSideRoadStatusEnum::*MAINROAD* 1)
(intern "*SIDEROAD*" (find-package "TBT_MSGS::MAINSIDEROADSTATUSENUM"))
(shadow '*SIDEROAD* (find-package "TBT_MSGS::MAINSIDEROADSTATUSENUM"))
(defconstant tbt_msgs::MainSideRoadStatusEnum::*SIDEROAD* 2)

(defun tbt_msgs::MainSideRoadStatusEnum-to-symbol (const)
  (cond
        ((= const 0) 'tbt_msgs::MainSideRoadStatusEnum::*Default*)
        ((= const 1) 'tbt_msgs::MainSideRoadStatusEnum::*MainRoad*)
        ((= const 2) 'tbt_msgs::MainSideRoadStatusEnum::*SideRoad*)
        (t nil)))

(defclass tbt_msgs::MainSideRoadStatusEnum
  :super ros::object
  :slots (_value ))

(defmethod tbt_msgs::MainSideRoadStatusEnum
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

(setf (get tbt_msgs::MainSideRoadStatusEnum :md5sum-) "c81430e8192a2dbaf43715c0f6d0fed3")
(setf (get tbt_msgs::MainSideRoadStatusEnum :datatype-) "tbt_msgs/MainSideRoadStatusEnum")
(setf (get tbt_msgs::MainSideRoadStatusEnum :definition-)
      "uint8 Default = 0
uint8 MainRoad = 1
uint8 SideRoad = 2
uint8 value

")



(provide :tbt_msgs/MainSideRoadStatusEnum "c81430e8192a2dbaf43715c0f6d0fed3")


