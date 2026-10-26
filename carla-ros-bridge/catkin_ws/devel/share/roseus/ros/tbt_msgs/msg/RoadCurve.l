;; Auto-generated. Do not edit!


(when (boundp 'tbt_msgs::RoadCurve)
  (if (not (find-package "TBT_MSGS"))
    (make-package "TBT_MSGS"))
  (shadow 'RoadCurve (find-package "TBT_MSGS")))
(unless (find-package "TBT_MSGS::ROADCURVE")
  (make-package "TBT_MSGS::ROADCURVE"))

(in-package "ROS")
;;//! \htmlinclude RoadCurve.msg.html


(defclass tbt_msgs::RoadCurve
  :super ros::object
  :slots (_curvature_list _latitude_list _longitude_list ))

(defmethod tbt_msgs::RoadCurve
  (:init
   (&key
    ((:curvature_list __curvature_list) (make-array 0 :initial-element 0 :element-type :integer))
    ((:latitude_list __latitude_list) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:longitude_list __longitude_list) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _curvature_list __curvature_list)
   (setq _latitude_list __latitude_list)
   (setq _longitude_list __longitude_list)
   self)
  (:curvature_list
   (&optional __curvature_list)
   (if __curvature_list (setq _curvature_list __curvature_list)) _curvature_list)
  (:latitude_list
   (&optional __latitude_list)
   (if __latitude_list (setq _latitude_list __latitude_list)) _latitude_list)
  (:longitude_list
   (&optional __longitude_list)
   (if __longitude_list (setq _longitude_list __longitude_list)) _longitude_list)
  (:serialization-length
   ()
   (+
    ;; uint16[] _curvature_list
    (* 2    (length _curvature_list)) 4
    ;; float64[] _latitude_list
    (* 8    (length _latitude_list)) 4
    ;; float64[] _longitude_list
    (* 8    (length _longitude_list)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16[] _curvature_list
     (write-long (length _curvature_list) s)
     (dotimes (i (length _curvature_list))
       (write-word (elt _curvature_list i) s)
       )
     ;; float64[] _latitude_list
     (write-long (length _latitude_list) s)
     (dotimes (i (length _latitude_list))
       (sys::poke (elt _latitude_list i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _longitude_list
     (write-long (length _longitude_list) s)
     (dotimes (i (length _longitude_list))
       (sys::poke (elt _longitude_list i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16[] _curvature_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _curvature_list (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _curvature_list i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; float64[] _latitude_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _latitude_list (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _latitude_list i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _longitude_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _longitude_list (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _longitude_list i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get tbt_msgs::RoadCurve :md5sum-) "6a16b623a23f34ff3747d0613d402104")
(setf (get tbt_msgs::RoadCurve :datatype-) "tbt_msgs/RoadCurve")
(setf (get tbt_msgs::RoadCurve :definition-)
      "uint16[] curvature_list
float64[] latitude_list
float64[] longitude_list

")



(provide :tbt_msgs/RoadCurve "6a16b623a23f34ff3747d0613d402104")


