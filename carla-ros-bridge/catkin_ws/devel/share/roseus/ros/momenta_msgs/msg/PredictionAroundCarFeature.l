;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::PredictionAroundCarFeature)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'PredictionAroundCarFeature (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::PREDICTIONAROUNDCARFEATURE")
  (make-package "MOMENTA_MSGS::PREDICTIONAROUNDCARFEATURE"))

(in-package "ROS")
;;//! \htmlinclude PredictionAroundCarFeature.msg.html


(defclass momenta_msgs::PredictionAroundCarFeature
  :super ros::object
  :slots (_relative_s _relative_r _relative_v ))

(defmethod momenta_msgs::PredictionAroundCarFeature
  (:init
   (&key
    ((:relative_s __relative_s) 0.0)
    ((:relative_r __relative_r) 0.0)
    ((:relative_v __relative_v) 0.0)
    )
   (send-super :init)
   (setq _relative_s (float __relative_s))
   (setq _relative_r (float __relative_r))
   (setq _relative_v (float __relative_v))
   self)
  (:relative_s
   (&optional __relative_s)
   (if __relative_s (setq _relative_s __relative_s)) _relative_s)
  (:relative_r
   (&optional __relative_r)
   (if __relative_r (setq _relative_r __relative_r)) _relative_r)
  (:relative_v
   (&optional __relative_v)
   (if __relative_v (setq _relative_v __relative_v)) _relative_v)
  (:serialization-length
   ()
   (+
    ;; float32 _relative_s
    4
    ;; float32 _relative_r
    4
    ;; float32 _relative_v
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _relative_s
       (sys::poke _relative_s (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _relative_r
       (sys::poke _relative_r (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _relative_v
       (sys::poke _relative_v (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _relative_s
     (setq _relative_s (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _relative_r
     (setq _relative_r (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _relative_v
     (setq _relative_v (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get momenta_msgs::PredictionAroundCarFeature :md5sum-) "2769a394a3978c8fd6423b3f867021d7")
(setf (get momenta_msgs::PredictionAroundCarFeature :datatype-) "momenta_msgs/PredictionAroundCarFeature")
(setf (get momenta_msgs::PredictionAroundCarFeature :definition-)
      "float32 relative_s
float32 relative_r
float32 relative_v

")



(provide :momenta_msgs/PredictionAroundCarFeature "2769a394a3978c8fd6423b3f867021d7")


