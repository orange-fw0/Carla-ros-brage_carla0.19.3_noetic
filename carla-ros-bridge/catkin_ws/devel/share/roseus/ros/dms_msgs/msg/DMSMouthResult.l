;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSMouthResult)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSMouthResult (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSMOUTHRESULT")
  (make-package "DMS_MSGS::DMSMOUTHRESULT"))

(in-package "ROS")
;;//! \htmlinclude DMSMouthResult.msg.html


(intern "*UN_AVAILABLE*" (find-package "DMS_MSGS::DMSMOUTHRESULT"))
(shadow '*UN_AVAILABLE* (find-package "DMS_MSGS::DMSMOUTHRESULT"))
(defconstant dms_msgs::DMSMouthResult::*UN_AVAILABLE* 0)
(intern "*AVAILABLE*" (find-package "DMS_MSGS::DMSMOUTHRESULT"))
(shadow '*AVAILABLE* (find-package "DMS_MSGS::DMSMOUTHRESULT"))
(defconstant dms_msgs::DMSMouthResult::*AVAILABLE* 1)

(defun dms_msgs::DMSMouthResult-to-symbol (const)
  (cond
        ((= const 0) 'dms_msgs::DMSMouthResult::*UN_AVAILABLE*)
        ((= const 1) 'dms_msgs::DMSMouthResult::*AVAILABLE*)
        (t nil)))

(defclass dms_msgs::DMSMouthResult
  :super ros::object
  :slots (_available _mouth_open_distance _mouth_open_width _mouth_open_distance_score _mouth_open_ratio ))

(defmethod dms_msgs::DMSMouthResult
  (:init
   (&key
    ((:available __available) 0)
    ((:mouth_open_distance __mouth_open_distance) 0.0)
    ((:mouth_open_width __mouth_open_width) 0.0)
    ((:mouth_open_distance_score __mouth_open_distance_score) 0.0)
    ((:mouth_open_ratio __mouth_open_ratio) 0.0)
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _mouth_open_distance (float __mouth_open_distance))
   (setq _mouth_open_width (float __mouth_open_width))
   (setq _mouth_open_distance_score (float __mouth_open_distance_score))
   (setq _mouth_open_ratio (float __mouth_open_ratio))
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:mouth_open_distance
   (&optional __mouth_open_distance)
   (if __mouth_open_distance (setq _mouth_open_distance __mouth_open_distance)) _mouth_open_distance)
  (:mouth_open_width
   (&optional __mouth_open_width)
   (if __mouth_open_width (setq _mouth_open_width __mouth_open_width)) _mouth_open_width)
  (:mouth_open_distance_score
   (&optional __mouth_open_distance_score)
   (if __mouth_open_distance_score (setq _mouth_open_distance_score __mouth_open_distance_score)) _mouth_open_distance_score)
  (:mouth_open_ratio
   (&optional __mouth_open_ratio)
   (if __mouth_open_ratio (setq _mouth_open_ratio __mouth_open_ratio)) _mouth_open_ratio)
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; float32 _mouth_open_distance
    4
    ;; float32 _mouth_open_width
    4
    ;; float32 _mouth_open_distance_score
    4
    ;; float32 _mouth_open_ratio
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; float32 _mouth_open_distance
       (sys::poke _mouth_open_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _mouth_open_width
       (sys::poke _mouth_open_width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _mouth_open_distance_score
       (sys::poke _mouth_open_distance_score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _mouth_open_ratio
       (sys::poke _mouth_open_ratio (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _mouth_open_distance
     (setq _mouth_open_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _mouth_open_width
     (setq _mouth_open_width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _mouth_open_distance_score
     (setq _mouth_open_distance_score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _mouth_open_ratio
     (setq _mouth_open_ratio (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dms_msgs::DMSMouthResult :md5sum-) "63059ad2cc2ec6901ea413cf28182c75")
(setf (get dms_msgs::DMSMouthResult :datatype-) "dms_msgs/DMSMouthResult")
(setf (get dms_msgs::DMSMouthResult :definition-)
      "uint8 UN_AVAILABLE = 0
uint8 AVAILABLE = 1
uint8 available
float32 mouth_open_distance
float32 mouth_open_width
float32 mouth_open_distance_score
float32 mouth_open_ratio

")



(provide :dms_msgs/DMSMouthResult "63059ad2cc2ec6901ea413cf28182c75")


