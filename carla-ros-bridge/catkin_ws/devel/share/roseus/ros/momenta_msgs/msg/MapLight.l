;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::MapLight)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'MapLight (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::MAPLIGHT")
  (make-package "MOMENTA_MSGS::MAPLIGHT"))

(in-package "ROS")
;;//! \htmlinclude MapLight.msg.html


(defclass momenta_msgs::MapLight
  :super ros::object
  :slots (_dis2crossing _id ))

(defmethod momenta_msgs::MapLight
  (:init
   (&key
    ((:dis2crossing __dis2crossing) 0.0)
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _dis2crossing (float __dis2crossing))
   (setq _id (round __id))
   self)
  (:dis2crossing
   (&optional __dis2crossing)
   (if __dis2crossing (setq _dis2crossing __dis2crossing)) _dis2crossing)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; float32 _dis2crossing
    4
    ;; int32 _id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _dis2crossing
       (sys::poke _dis2crossing (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _id
       (write-long _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _dis2crossing
     (setq _dis2crossing (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get momenta_msgs::MapLight :md5sum-) "7f8c71a1b4aa955564522ea27bff2646")
(setf (get momenta_msgs::MapLight :datatype-) "momenta_msgs/MapLight")
(setf (get momenta_msgs::MapLight :definition-)
      "float32 dis2crossing
int32 id

")



(provide :momenta_msgs/MapLight "7f8c71a1b4aa955564522ea27bff2646")


