;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::LaneMergingSplittingPointData)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'LaneMergingSplittingPointData (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::LANEMERGINGSPLITTINGPOINTDATA")
  (make-package "WORLDMODEL_MSGS::LANEMERGINGSPLITTINGPOINTDATA"))

(in-package "ROS")
;;//! \htmlinclude LaneMergingSplittingPointData.msg.html


(defclass worldmodel_msgs::LaneMergingSplittingPointData
  :super ros::object
  :slots (_distance _is_split _is_continue _orientation _length ))

(defmethod worldmodel_msgs::LaneMergingSplittingPointData
  (:init
   (&key
    ((:distance __distance) 0.0)
    ((:is_split __is_split) nil)
    ((:is_continue __is_continue) nil)
    ((:orientation __orientation) (instance worldmodel_msgs::Orientation :init))
    ((:length __length) 0.0)
    )
   (send-super :init)
   (setq _distance (float __distance))
   (setq _is_split __is_split)
   (setq _is_continue __is_continue)
   (setq _orientation __orientation)
   (setq _length (float __length))
   self)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:is_split
   (&optional (__is_split :null))
   (if (not (eq __is_split :null)) (setq _is_split __is_split)) _is_split)
  (:is_continue
   (&optional (__is_continue :null))
   (if (not (eq __is_continue :null)) (setq _is_continue __is_continue)) _is_continue)
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:serialization-length
   ()
   (+
    ;; float64 _distance
    8
    ;; bool _is_split
    1
    ;; bool _is_continue
    1
    ;; worldmodel_msgs/Orientation _orientation
    (send _orientation :serialization-length)
    ;; float64 _length
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _is_split
       (if _is_split (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_continue
       (if _is_continue (write-byte -1 s) (write-byte 0 s))
     ;; worldmodel_msgs/Orientation _orientation
       (send _orientation :serialize s)
     ;; float64 _length
       (sys::poke _length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _is_split
     (setq _is_split (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_continue
     (setq _is_continue (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; worldmodel_msgs/Orientation _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;; float64 _length
     (setq _length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get worldmodel_msgs::LaneMergingSplittingPointData :md5sum-) "c6ab8f133a0f27d68d0ff3515eec7e23")
(setf (get worldmodel_msgs::LaneMergingSplittingPointData :datatype-) "worldmodel_msgs/LaneMergingSplittingPointData")
(setf (get worldmodel_msgs::LaneMergingSplittingPointData :definition-)
      "float64 distance
bool is_split
bool is_continue
worldmodel_msgs/Orientation orientation
float64 length

================================================================================
MSG: worldmodel_msgs/Orientation
uint8 UNKNOWN = 0
uint8 LEFT = 1
uint8 RIGHT = 2
uint8 INTERSECT = 3
uint8 IGNORED = 4
uint8 value

")



(provide :worldmodel_msgs/LaneMergingSplittingPointData "c6ab8f133a0f27d68d0ff3515eec7e23")


