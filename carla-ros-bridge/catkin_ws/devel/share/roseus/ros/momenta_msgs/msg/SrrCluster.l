;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::SrrCluster)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'SrrCluster (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::SRRCLUSTER")
  (make-package "MOMENTA_MSGS::SRRCLUSTER"))

(in-package "ROS")
;;//! \htmlinclude SrrCluster.msg.html


(defclass momenta_msgs::SrrCluster
  :super ros::object
  :slots (_detection_id _range _azimuth _vrel _dyn_prop _rcs ))

(defmethod momenta_msgs::SrrCluster
  (:init
   (&key
    ((:detection_id __detection_id) 0)
    ((:range __range) 0.0)
    ((:azimuth __azimuth) 0.0)
    ((:vrel __vrel) 0.0)
    ((:dyn_prop __dyn_prop) 0)
    ((:rcs __rcs) 0.0)
    )
   (send-super :init)
   (setq _detection_id (round __detection_id))
   (setq _range (float __range))
   (setq _azimuth (float __azimuth))
   (setq _vrel (float __vrel))
   (setq _dyn_prop (round __dyn_prop))
   (setq _rcs (float __rcs))
   self)
  (:detection_id
   (&optional __detection_id)
   (if __detection_id (setq _detection_id __detection_id)) _detection_id)
  (:range
   (&optional __range)
   (if __range (setq _range __range)) _range)
  (:azimuth
   (&optional __azimuth)
   (if __azimuth (setq _azimuth __azimuth)) _azimuth)
  (:vrel
   (&optional __vrel)
   (if __vrel (setq _vrel __vrel)) _vrel)
  (:dyn_prop
   (&optional __dyn_prop)
   (if __dyn_prop (setq _dyn_prop __dyn_prop)) _dyn_prop)
  (:rcs
   (&optional __rcs)
   (if __rcs (setq _rcs __rcs)) _rcs)
  (:serialization-length
   ()
   (+
    ;; uint16 _detection_id
    2
    ;; float32 _range
    4
    ;; float32 _azimuth
    4
    ;; float32 _vrel
    4
    ;; uint8 _dyn_prop
    1
    ;; float32 _rcs
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _detection_id
       (write-word _detection_id s)
     ;; float32 _range
       (sys::poke _range (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _azimuth
       (sys::poke _azimuth (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vrel
       (sys::poke _vrel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _dyn_prop
       (write-byte _dyn_prop s)
     ;; float32 _rcs
       (sys::poke _rcs (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _detection_id
     (setq _detection_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _range
     (setq _range (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _azimuth
     (setq _azimuth (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vrel
     (setq _vrel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _dyn_prop
     (setq _dyn_prop (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _rcs
     (setq _rcs (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get momenta_msgs::SrrCluster :md5sum-) "e8d02025d67bc80f65d08985ba70b84e")
(setf (get momenta_msgs::SrrCluster :datatype-) "momenta_msgs/SrrCluster")
(setf (get momenta_msgs::SrrCluster :definition-)
      "uint16 detection_id
float32 range
float32 azimuth
float32 vrel
uint8 dyn_prop
float32 rcs

")



(provide :momenta_msgs/SrrCluster "e8d02025d67bc80f65d08985ba70b84e")


