;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::ReplanInfo)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'ReplanInfo (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::REPLANINFO")
  (make-package "PLANNING_MSGS::REPLANINFO"))

(in-package "ROS")
;;//! \htmlinclude ReplanInfo.msg.html


(defclass planning_msgs::ReplanInfo
  :super ros::object
  :slots (_lat_replan _lon_replan ))

(defmethod planning_msgs::ReplanInfo
  (:init
   (&key
    ((:lat_replan __lat_replan) nil)
    ((:lon_replan __lon_replan) nil)
    )
   (send-super :init)
   (setq _lat_replan __lat_replan)
   (setq _lon_replan __lon_replan)
   self)
  (:lat_replan
   (&optional (__lat_replan :null))
   (if (not (eq __lat_replan :null)) (setq _lat_replan __lat_replan)) _lat_replan)
  (:lon_replan
   (&optional (__lon_replan :null))
   (if (not (eq __lon_replan :null)) (setq _lon_replan __lon_replan)) _lon_replan)
  (:serialization-length
   ()
   (+
    ;; bool _lat_replan
    1
    ;; bool _lon_replan
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _lat_replan
       (if _lat_replan (write-byte -1 s) (write-byte 0 s))
     ;; bool _lon_replan
       (if _lon_replan (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _lat_replan
     (setq _lat_replan (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _lon_replan
     (setq _lon_replan (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get planning_msgs::ReplanInfo :md5sum-) "46928ab455f29add02698da45eda1bbd")
(setf (get planning_msgs::ReplanInfo :datatype-) "planning_msgs/ReplanInfo")
(setf (get planning_msgs::ReplanInfo :definition-)
      "bool lat_replan
bool lon_replan

")



(provide :planning_msgs/ReplanInfo "46928ab455f29add02698da45eda1bbd")


