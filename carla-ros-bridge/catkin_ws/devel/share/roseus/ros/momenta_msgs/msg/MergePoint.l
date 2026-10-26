;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::MergePoint)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'MergePoint (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::MERGEPOINT")
  (make-package "MOMENTA_MSGS::MERGEPOINT"))

(in-package "ROS")
;;//! \htmlinclude MergePoint.msg.html


(defclass momenta_msgs::MergePoint
  :super ros::object
  :slots (_distance _merge_type ))

(defmethod momenta_msgs::MergePoint
  (:init
   (&key
    ((:distance __distance) 0.0)
    ((:merge_type __merge_type) 0)
    )
   (send-super :init)
   (setq _distance (float __distance))
   (setq _merge_type (round __merge_type))
   self)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:merge_type
   (&optional __merge_type)
   (if __merge_type (setq _merge_type __merge_type)) _merge_type)
  (:serialization-length
   ()
   (+
    ;; float64 _distance
    8
    ;; uint8 _merge_type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _merge_type
       (write-byte _merge_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _merge_type
     (setq _merge_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get momenta_msgs::MergePoint :md5sum-) "e518a5cf8cea6798ae93996bb8f9b3dd")
(setf (get momenta_msgs::MergePoint :datatype-) "momenta_msgs/MergePoint")
(setf (get momenta_msgs::MergePoint :definition-)
      "float64 distance
uint8 merge_type

")



(provide :momenta_msgs/MergePoint "e518a5cf8cea6798ae93996bb8f9b3dd")


