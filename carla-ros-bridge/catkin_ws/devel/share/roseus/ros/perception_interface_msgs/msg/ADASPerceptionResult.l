;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::ADASPerceptionResult)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'ADASPerceptionResult (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::ADASPERCEPTIONRESULT")
  (make-package "PERCEPTION_INTERFACE_MSGS::ADASPERCEPTIONRESULT"))

(in-package "ROS")
;;//! \htmlinclude ADASPerceptionResult.msg.html


(defclass perception_interface_msgs::ADASPerceptionResult
  :super ros::object
  :slots (_ihc_highbeam_on _ihc_highbeam_score ))

(defmethod perception_interface_msgs::ADASPerceptionResult
  (:init
   (&key
    ((:ihc_highbeam_on __ihc_highbeam_on) 0)
    ((:ihc_highbeam_score __ihc_highbeam_score) 0.0)
    )
   (send-super :init)
   (setq _ihc_highbeam_on (round __ihc_highbeam_on))
   (setq _ihc_highbeam_score (float __ihc_highbeam_score))
   self)
  (:ihc_highbeam_on
   (&optional __ihc_highbeam_on)
   (if __ihc_highbeam_on (setq _ihc_highbeam_on __ihc_highbeam_on)) _ihc_highbeam_on)
  (:ihc_highbeam_score
   (&optional __ihc_highbeam_score)
   (if __ihc_highbeam_score (setq _ihc_highbeam_score __ihc_highbeam_score)) _ihc_highbeam_score)
  (:serialization-length
   ()
   (+
    ;; uint8 _ihc_highbeam_on
    1
    ;; float64 _ihc_highbeam_score
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _ihc_highbeam_on
       (write-byte _ihc_highbeam_on s)
     ;; float64 _ihc_highbeam_score
       (sys::poke _ihc_highbeam_score (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _ihc_highbeam_on
     (setq _ihc_highbeam_on (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _ihc_highbeam_score
     (setq _ihc_highbeam_score (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get perception_interface_msgs::ADASPerceptionResult :md5sum-) "4ea7c411056d18089ffdfaee098216c5")
(setf (get perception_interface_msgs::ADASPerceptionResult :datatype-) "perception_interface_msgs/ADASPerceptionResult")
(setf (get perception_interface_msgs::ADASPerceptionResult :definition-)
      "uint8 ihc_highbeam_on
float64 ihc_highbeam_score

")



(provide :perception_interface_msgs/ADASPerceptionResult "4ea7c411056d18089ffdfaee098216c5")


