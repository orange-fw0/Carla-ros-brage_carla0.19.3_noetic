;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::Mdf)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'Mdf (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::MDF")
  (make-package "MOMENTA_MSGS::MDF"))

(in-package "ROS")
;;//! \htmlinclude Mdf.msg.html


(defclass momenta_msgs::Mdf
  :super ros::object
  :slots (_id _idx _speed_limit _p1 _p2 _traffic_light ))

(defmethod momenta_msgs::Mdf
  (:init
   (&key
    ((:id __id) 0)
    ((:idx __idx) 0)
    ((:speed_limit __speed_limit) 0.0)
    ((:p1 __p1) 0)
    ((:p2 __p2) 0)
    ((:traffic_light __traffic_light) nil)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _idx (round __idx))
   (setq _speed_limit (float __speed_limit))
   (setq _p1 (round __p1))
   (setq _p2 (round __p2))
   (setq _traffic_light __traffic_light)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:idx
   (&optional __idx)
   (if __idx (setq _idx __idx)) _idx)
  (:speed_limit
   (&optional __speed_limit)
   (if __speed_limit (setq _speed_limit __speed_limit)) _speed_limit)
  (:p1
   (&optional __p1)
   (if __p1 (setq _p1 __p1)) _p1)
  (:p2
   (&optional __p2)
   (if __p2 (setq _p2 __p2)) _p2)
  (:traffic_light
   (&optional (__traffic_light :null))
   (if (not (eq __traffic_light :null)) (setq _traffic_light __traffic_light)) _traffic_light)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; int32 _idx
    4
    ;; float32 _speed_limit
    4
    ;; int32 _p1
    4
    ;; int32 _p2
    4
    ;; bool _traffic_light
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; int32 _idx
       (write-long _idx s)
     ;; float32 _speed_limit
       (sys::poke _speed_limit (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _p1
       (write-long _p1 s)
     ;; int32 _p2
       (write-long _p2 s)
     ;; bool _traffic_light
       (if _traffic_light (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _idx
     (setq _idx (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _speed_limit
     (setq _speed_limit (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _p1
     (setq _p1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _p2
     (setq _p2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _traffic_light
     (setq _traffic_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get momenta_msgs::Mdf :md5sum-) "b7bd4ea8d7dba1815b53b9cfb328a69b")
(setf (get momenta_msgs::Mdf :datatype-) "momenta_msgs/Mdf")
(setf (get momenta_msgs::Mdf :definition-)
      "int32 id
int32 idx
float32 speed_limit
int32 p1
int32 p2
bool traffic_light

")



(provide :momenta_msgs/Mdf "b7bd4ea8d7dba1815b53b9cfb328a69b")


