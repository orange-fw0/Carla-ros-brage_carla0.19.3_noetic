;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSFeatureResult)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSFeatureResult (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSFEATURERESULT")
  (make-package "DMS_MSGS::DMSFEATURERESULT"))

(in-package "ROS")
;;//! \htmlinclude DMSFeatureResult.msg.html


(intern "*UN_AVAILABLE*" (find-package "DMS_MSGS::DMSFEATURERESULT"))
(shadow '*UN_AVAILABLE* (find-package "DMS_MSGS::DMSFEATURERESULT"))
(defconstant dms_msgs::DMSFeatureResult::*UN_AVAILABLE* 0)
(intern "*AVAILABLE*" (find-package "DMS_MSGS::DMSFEATURERESULT"))
(shadow '*AVAILABLE* (find-package "DMS_MSGS::DMSFEATURERESULT"))
(defconstant dms_msgs::DMSFeatureResult::*AVAILABLE* 1)

(defun dms_msgs::DMSFeatureResult-to-symbol (const)
  (cond
        ((= const 0) 'dms_msgs::DMSFeatureResult::*UN_AVAILABLE*)
        ((= const 1) 'dms_msgs::DMSFeatureResult::*AVAILABLE*)
        (t nil)))

(defclass dms_msgs::DMSFeatureResult
  :super ros::object
  :slots (_available _feature ))

(defmethod dms_msgs::DMSFeatureResult
  (:init
   (&key
    ((:available __available) 0)
    ((:feature __feature) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _feature __feature)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:feature
   (&optional __feature)
   (if __feature (setq _feature __feature)) _feature)
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; float32[] _feature
    (* 4    (length _feature)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; float32[] _feature
     (write-long (length _feature) s)
     (dotimes (i (length _feature))
       (sys::poke (elt _feature i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32[] _feature
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _feature (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _feature i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get dms_msgs::DMSFeatureResult :md5sum-) "57fa17a97bcfa4edf2a070940b46da66")
(setf (get dms_msgs::DMSFeatureResult :datatype-) "dms_msgs/DMSFeatureResult")
(setf (get dms_msgs::DMSFeatureResult :definition-)
      "uint8 UN_AVAILABLE = 0
uint8 AVAILABLE = 1
uint8 available
float32[] feature

")



(provide :dms_msgs/DMSFeatureResult "57fa17a97bcfa4edf2a070940b46da66")


