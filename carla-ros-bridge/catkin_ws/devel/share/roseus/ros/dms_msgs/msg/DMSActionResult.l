;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSActionResult)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSActionResult (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSACTIONRESULT")
  (make-package "DMS_MSGS::DMSACTIONRESULT"))

(in-package "ROS")
;;//! \htmlinclude DMSActionResult.msg.html


(intern "*UN_AVAILABLE*" (find-package "DMS_MSGS::DMSACTIONRESULT"))
(shadow '*UN_AVAILABLE* (find-package "DMS_MSGS::DMSACTIONRESULT"))
(defconstant dms_msgs::DMSActionResult::*UN_AVAILABLE* 0)
(intern "*AVAILABLE*" (find-package "DMS_MSGS::DMSACTIONRESULT"))
(shadow '*AVAILABLE* (find-package "DMS_MSGS::DMSACTIONRESULT"))
(defconstant dms_msgs::DMSActionResult::*AVAILABLE* 1)

(defun dms_msgs::DMSActionResult-to-symbol (const)
  (cond
        ((= const 0) 'dms_msgs::DMSActionResult::*UN_AVAILABLE*)
        ((= const 1) 'dms_msgs::DMSActionResult::*AVAILABLE*)
        (t nil)))

(defclass dms_msgs::DMSActionResult
  :super ros::object
  :slots (_available _actions ))

(defmethod dms_msgs::DMSActionResult
  (:init
   (&key
    ((:available __available) 0)
    ((:actions __actions) ())
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _actions __actions)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:actions
   (&rest __actions)
   (if (keywordp (car __actions))
       (send* _actions __actions)
     (progn
       (if __actions (setq _actions (car __actions)))
       _actions)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; dms_msgs/DMSFaceAction[] _actions
    (apply #'+ (send-all _actions :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; dms_msgs/DMSFaceAction[] _actions
     (write-long (length _actions) s)
     (dolist (elem _actions)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; dms_msgs/DMSFaceAction[] _actions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _actions (let (r) (dotimes (i n) (push (instance dms_msgs::DMSFaceAction :init) r)) r))
     (dolist (elem- _actions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get dms_msgs::DMSActionResult :md5sum-) "b5f789c741a3116750d3ff8b46e01f7e")
(setf (get dms_msgs::DMSActionResult :datatype-) "dms_msgs/DMSActionResult")
(setf (get dms_msgs::DMSActionResult :definition-)
      "uint8 UN_AVAILABLE = 0
uint8 AVAILABLE = 1
uint8 available
dms_msgs/DMSFaceAction[] actions

================================================================================
MSG: dms_msgs/DMSFaceAction
string name
float32 score

")



(provide :dms_msgs/DMSActionResult "b5f789c741a3116750d3ff8b46e01f7e")


