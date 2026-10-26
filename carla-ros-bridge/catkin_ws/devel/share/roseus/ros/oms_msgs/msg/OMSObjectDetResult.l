;; Auto-generated. Do not edit!


(when (boundp 'oms_msgs::OMSObjectDetResult)
  (if (not (find-package "OMS_MSGS"))
    (make-package "OMS_MSGS"))
  (shadow 'OMSObjectDetResult (find-package "OMS_MSGS")))
(unless (find-package "OMS_MSGS::OMSOBJECTDETRESULT")
  (make-package "OMS_MSGS::OMSOBJECTDETRESULT"))

(in-package "ROS")
;;//! \htmlinclude OMSObjectDetResult.msg.html


(intern "*UNAVAILABLE*" (find-package "OMS_MSGS::OMSOBJECTDETRESULT"))
(shadow '*UNAVAILABLE* (find-package "OMS_MSGS::OMSOBJECTDETRESULT"))
(defconstant oms_msgs::OMSObjectDetResult::*UNAVAILABLE* 0)
(intern "*AVAILABLE*" (find-package "OMS_MSGS::OMSOBJECTDETRESULT"))
(shadow '*AVAILABLE* (find-package "OMS_MSGS::OMSOBJECTDETRESULT"))
(defconstant oms_msgs::OMSObjectDetResult::*AVAILABLE* 1)
(intern "*UNCERTAIN*" (find-package "OMS_MSGS::OMSOBJECTDETRESULT"))
(shadow '*UNCERTAIN* (find-package "OMS_MSGS::OMSOBJECTDETRESULT"))
(defconstant oms_msgs::OMSObjectDetResult::*UNCERTAIN* 2)

(defun oms_msgs::OMSObjectDetResult-to-symbol (const)
  (cond
        ((= const 0) 'oms_msgs::OMSObjectDetResult::*UNAVAILABLE*)
        ((= const 1) 'oms_msgs::OMSObjectDetResult::*AVAILABLE*)
        ((= const 2) 'oms_msgs::OMSObjectDetResult::*UNCERTAIN*)
        (t nil)))

(defclass oms_msgs::OMSObjectDetResult
  :super ros::object
  :slots (_value _object_rect ))

(defmethod oms_msgs::OMSObjectDetResult
  (:init
   (&key
    ((:value __value) 0)
    ((:object_rect __object_rect) (instance oms_msgs::OMSRect2f :init))
    )
   (send-super :init)
   (setq _value (round __value))
   (setq _object_rect __object_rect)
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:object_rect
   (&rest __object_rect)
   (if (keywordp (car __object_rect))
       (send* _object_rect __object_rect)
     (progn
       (if __object_rect (setq _object_rect (car __object_rect)))
       _object_rect)))
  (:serialization-length
   ()
   (+
    ;; uint8 _value
    1
    ;; oms_msgs/OMSRect2f _object_rect
    (send _object_rect :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _value
       (write-byte _value s)
     ;; oms_msgs/OMSRect2f _object_rect
       (send _object_rect :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; oms_msgs/OMSRect2f _object_rect
     (send _object_rect :deserialize buf ptr-) (incf ptr- (send _object_rect :serialization-length))
   ;;
   self)
  )

(setf (get oms_msgs::OMSObjectDetResult :md5sum-) "834406bfe4388fd0961e17a62fc3d81f")
(setf (get oms_msgs::OMSObjectDetResult :datatype-) "oms_msgs/OMSObjectDetResult")
(setf (get oms_msgs::OMSObjectDetResult :definition-)
      "uint8 UNAVAILABLE = 0
uint8 AVAILABLE = 1
uint8 UNCERTAIN = 2
uint8 value
oms_msgs/OMSRect2f object_rect

================================================================================
MSG: oms_msgs/OMSRect2f
float32 left
float32 top
float32 right
float32 bottom
float32 score

")



(provide :oms_msgs/OMSObjectDetResult "834406bfe4388fd0961e17a62fc3d81f")


