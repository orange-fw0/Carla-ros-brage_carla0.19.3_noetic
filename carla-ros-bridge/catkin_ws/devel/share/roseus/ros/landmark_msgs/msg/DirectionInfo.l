;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::DirectionInfo)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'DirectionInfo (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::DIRECTIONINFO")
  (make-package "LANDMARK_MSGS::DIRECTIONINFO"))

(in-package "ROS")
;;//! \htmlinclude DirectionInfo.msg.html


(defclass landmark_msgs::DirectionInfo
  :super ros::object
  :slots (_road_index _road_sum ))

(defmethod landmark_msgs::DirectionInfo
  (:init
   (&key
    ((:road_index __road_index) 0)
    ((:road_sum __road_sum) 0)
    )
   (send-super :init)
   (setq _road_index (round __road_index))
   (setq _road_sum (round __road_sum))
   self)
  (:road_index
   (&optional __road_index)
   (if __road_index (setq _road_index __road_index)) _road_index)
  (:road_sum
   (&optional __road_sum)
   (if __road_sum (setq _road_sum __road_sum)) _road_sum)
  (:serialization-length
   ()
   (+
    ;; int16 _road_index
    2
    ;; int16 _road_sum
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _road_index
       (write-word _road_index s)
     ;; int16 _road_sum
       (write-word _road_sum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _road_index
     (setq _road_index (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _road_sum
     (setq _road_sum (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get landmark_msgs::DirectionInfo :md5sum-) "f243d642bcb58d5cbd2b586352e3fcb1")
(setf (get landmark_msgs::DirectionInfo :datatype-) "landmark_msgs/DirectionInfo")
(setf (get landmark_msgs::DirectionInfo :definition-)
      "int16 road_index
int16 road_sum

")



(provide :landmark_msgs/DirectionInfo "f243d642bcb58d5cbd2b586352e3fcb1")


