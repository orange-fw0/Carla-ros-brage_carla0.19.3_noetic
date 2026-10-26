;; Auto-generated. Do not edit!


(when (boundp 'oms_msgs::OMSBodyDetResult)
  (if (not (find-package "OMS_MSGS"))
    (make-package "OMS_MSGS"))
  (shadow 'OMSBodyDetResult (find-package "OMS_MSGS")))
(unless (find-package "OMS_MSGS::OMSBODYDETRESULT")
  (make-package "OMS_MSGS::OMSBODYDETRESULT"))

(in-package "ROS")
;;//! \htmlinclude OMSBodyDetResult.msg.html


(intern "*UNAVAILABLE*" (find-package "OMS_MSGS::OMSBODYDETRESULT"))
(shadow '*UNAVAILABLE* (find-package "OMS_MSGS::OMSBODYDETRESULT"))
(defconstant oms_msgs::OMSBodyDetResult::*UNAVAILABLE* 0)
(intern "*AVAILABLE*" (find-package "OMS_MSGS::OMSBODYDETRESULT"))
(shadow '*AVAILABLE* (find-package "OMS_MSGS::OMSBODYDETRESULT"))
(defconstant oms_msgs::OMSBodyDetResult::*AVAILABLE* 1)
(intern "*UNCERTAIN*" (find-package "OMS_MSGS::OMSBODYDETRESULT"))
(shadow '*UNCERTAIN* (find-package "OMS_MSGS::OMSBODYDETRESULT"))
(defconstant oms_msgs::OMSBodyDetResult::*UNCERTAIN* 2)

(defun oms_msgs::OMSBodyDetResult-to-symbol (const)
  (cond
        ((= const 0) 'oms_msgs::OMSBodyDetResult::*UNAVAILABLE*)
        ((= const 1) 'oms_msgs::OMSBodyDetResult::*AVAILABLE*)
        ((= const 2) 'oms_msgs::OMSBodyDetResult::*UNCERTAIN*)
        (t nil)))

(defclass oms_msgs::OMSBodyDetResult
  :super ros::object
  :slots (_value _body_rect _body_keypoints ))

(defmethod oms_msgs::OMSBodyDetResult
  (:init
   (&key
    ((:value __value) 0)
    ((:body_rect __body_rect) (instance oms_msgs::OMSRect2f :init))
    ((:body_keypoints __body_keypoints) ())
    )
   (send-super :init)
   (setq _value (round __value))
   (setq _body_rect __body_rect)
   (setq _body_keypoints __body_keypoints)
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:body_rect
   (&rest __body_rect)
   (if (keywordp (car __body_rect))
       (send* _body_rect __body_rect)
     (progn
       (if __body_rect (setq _body_rect (car __body_rect)))
       _body_rect)))
  (:body_keypoints
   (&rest __body_keypoints)
   (if (keywordp (car __body_keypoints))
       (send* _body_keypoints __body_keypoints)
     (progn
       (if __body_keypoints (setq _body_keypoints (car __body_keypoints)))
       _body_keypoints)))
  (:serialization-length
   ()
   (+
    ;; uint8 _value
    1
    ;; oms_msgs/OMSRect2f _body_rect
    (send _body_rect :serialization-length)
    ;; oms_msgs/OMSPoint2f[] _body_keypoints
    (apply #'+ (send-all _body_keypoints :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _value
       (write-byte _value s)
     ;; oms_msgs/OMSRect2f _body_rect
       (send _body_rect :serialize s)
     ;; oms_msgs/OMSPoint2f[] _body_keypoints
     (write-long (length _body_keypoints) s)
     (dolist (elem _body_keypoints)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; oms_msgs/OMSRect2f _body_rect
     (send _body_rect :deserialize buf ptr-) (incf ptr- (send _body_rect :serialization-length))
   ;; oms_msgs/OMSPoint2f[] _body_keypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _body_keypoints (let (r) (dotimes (i n) (push (instance oms_msgs::OMSPoint2f :init) r)) r))
     (dolist (elem- _body_keypoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get oms_msgs::OMSBodyDetResult :md5sum-) "570d586291ac92487503233915f91243")
(setf (get oms_msgs::OMSBodyDetResult :datatype-) "oms_msgs/OMSBodyDetResult")
(setf (get oms_msgs::OMSBodyDetResult :definition-)
      "uint8 UNAVAILABLE = 0
uint8 AVAILABLE = 1
uint8 UNCERTAIN = 2
uint8 value
oms_msgs/OMSRect2f body_rect
oms_msgs/OMSPoint2f[] body_keypoints

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



(provide :oms_msgs/OMSBodyDetResult "570d586291ac92487503233915f91243")


