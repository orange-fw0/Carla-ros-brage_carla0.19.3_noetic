;; Auto-generated. Do not edit!


(when (boundp 'oms_msgs::OMSHandDetResult)
  (if (not (find-package "OMS_MSGS"))
    (make-package "OMS_MSGS"))
  (shadow 'OMSHandDetResult (find-package "OMS_MSGS")))
(unless (find-package "OMS_MSGS::OMSHANDDETRESULT")
  (make-package "OMS_MSGS::OMSHANDDETRESULT"))

(in-package "ROS")
;;//! \htmlinclude OMSHandDetResult.msg.html


(intern "*UNAVAILABLE*" (find-package "OMS_MSGS::OMSHANDDETRESULT"))
(shadow '*UNAVAILABLE* (find-package "OMS_MSGS::OMSHANDDETRESULT"))
(defconstant oms_msgs::OMSHandDetResult::*UNAVAILABLE* 0)
(intern "*AVAILABLE*" (find-package "OMS_MSGS::OMSHANDDETRESULT"))
(shadow '*AVAILABLE* (find-package "OMS_MSGS::OMSHANDDETRESULT"))
(defconstant oms_msgs::OMSHandDetResult::*AVAILABLE* 1)
(intern "*UNCERTAIN*" (find-package "OMS_MSGS::OMSHANDDETRESULT"))
(shadow '*UNCERTAIN* (find-package "OMS_MSGS::OMSHANDDETRESULT"))
(defconstant oms_msgs::OMSHandDetResult::*UNCERTAIN* 2)

(defun oms_msgs::OMSHandDetResult-to-symbol (const)
  (cond
        ((= const 0) 'oms_msgs::OMSHandDetResult::*UNAVAILABLE*)
        ((= const 1) 'oms_msgs::OMSHandDetResult::*AVAILABLE*)
        ((= const 2) 'oms_msgs::OMSHandDetResult::*UNCERTAIN*)
        (t nil)))

(defclass oms_msgs::OMSHandDetResult
  :super ros::object
  :slots (_value _hand_rect _hand_keypoints ))

(defmethod oms_msgs::OMSHandDetResult
  (:init
   (&key
    ((:value __value) 0)
    ((:hand_rect __hand_rect) (instance oms_msgs::OMSRect2f :init))
    ((:hand_keypoints __hand_keypoints) ())
    )
   (send-super :init)
   (setq _value (round __value))
   (setq _hand_rect __hand_rect)
   (setq _hand_keypoints __hand_keypoints)
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:hand_rect
   (&rest __hand_rect)
   (if (keywordp (car __hand_rect))
       (send* _hand_rect __hand_rect)
     (progn
       (if __hand_rect (setq _hand_rect (car __hand_rect)))
       _hand_rect)))
  (:hand_keypoints
   (&rest __hand_keypoints)
   (if (keywordp (car __hand_keypoints))
       (send* _hand_keypoints __hand_keypoints)
     (progn
       (if __hand_keypoints (setq _hand_keypoints (car __hand_keypoints)))
       _hand_keypoints)))
  (:serialization-length
   ()
   (+
    ;; uint8 _value
    1
    ;; oms_msgs/OMSRect2f _hand_rect
    (send _hand_rect :serialization-length)
    ;; oms_msgs/OMSPoint2f[] _hand_keypoints
    (apply #'+ (send-all _hand_keypoints :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _value
       (write-byte _value s)
     ;; oms_msgs/OMSRect2f _hand_rect
       (send _hand_rect :serialize s)
     ;; oms_msgs/OMSPoint2f[] _hand_keypoints
     (write-long (length _hand_keypoints) s)
     (dolist (elem _hand_keypoints)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; oms_msgs/OMSRect2f _hand_rect
     (send _hand_rect :deserialize buf ptr-) (incf ptr- (send _hand_rect :serialization-length))
   ;; oms_msgs/OMSPoint2f[] _hand_keypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _hand_keypoints (let (r) (dotimes (i n) (push (instance oms_msgs::OMSPoint2f :init) r)) r))
     (dolist (elem- _hand_keypoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get oms_msgs::OMSHandDetResult :md5sum-) "0d5382ebb4618a129bd15ef86384e6d2")
(setf (get oms_msgs::OMSHandDetResult :datatype-) "oms_msgs/OMSHandDetResult")
(setf (get oms_msgs::OMSHandDetResult :definition-)
      "uint8 UNAVAILABLE = 0
uint8 AVAILABLE = 1
uint8 UNCERTAIN = 2
uint8 value
oms_msgs/OMSRect2f hand_rect
oms_msgs/OMSPoint2f[] hand_keypoints

================================================================================
MSG: oms_msgs/OMSRect2f
float32 left
float32 top
float32 right
float32 bottom
float32 score

================================================================================
MSG: oms_msgs/OMSPoint2f
float32 x
float32 y
float32 score

")



(provide :oms_msgs/OMSHandDetResult "0d5382ebb4618a129bd15ef86384e6d2")


