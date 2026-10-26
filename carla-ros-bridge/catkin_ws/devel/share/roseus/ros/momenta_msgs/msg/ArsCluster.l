;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::ArsCluster)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'ArsCluster (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::ARSCLUSTER")
  (make-package "MOMENTA_MSGS::ARSCLUSTER"))

(in-package "ROS")
;;//! \htmlinclude ArsCluster.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass momenta_msgs::ArsCluster
  :super ros::object
  :slots (_detection_id _position _velocity _dyn_prop _rcs _dislong_rms _dislat_rms _verllong_rms _verllat_rms _arellong_rms _arellat_rms _pdh0 _ambigstate _invalidstate ))

(defmethod momenta_msgs::ArsCluster
  (:init
   (&key
    ((:detection_id __detection_id) 0)
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:velocity __velocity) (instance geometry_msgs::Vector3 :init))
    ((:dyn_prop __dyn_prop) 0)
    ((:rcs __rcs) 0.0)
    ((:dislong_rms __dislong_rms) 0)
    ((:dislat_rms __dislat_rms) 0)
    ((:verllong_rms __verllong_rms) 0)
    ((:verllat_rms __verllat_rms) 0)
    ((:arellong_rms __arellong_rms) 0)
    ((:arellat_rms __arellat_rms) 0)
    ((:pdh0 __pdh0) 0)
    ((:ambigstate __ambigstate) 0)
    ((:invalidstate __invalidstate) 0)
    )
   (send-super :init)
   (setq _detection_id (round __detection_id))
   (setq _position __position)
   (setq _velocity __velocity)
   (setq _dyn_prop (round __dyn_prop))
   (setq _rcs (float __rcs))
   (setq _dislong_rms (round __dislong_rms))
   (setq _dislat_rms (round __dislat_rms))
   (setq _verllong_rms (round __verllong_rms))
   (setq _verllat_rms (round __verllat_rms))
   (setq _arellong_rms (round __arellong_rms))
   (setq _arellat_rms (round __arellat_rms))
   (setq _pdh0 (round __pdh0))
   (setq _ambigstate (round __ambigstate))
   (setq _invalidstate (round __invalidstate))
   self)
  (:detection_id
   (&optional __detection_id)
   (if __detection_id (setq _detection_id __detection_id)) _detection_id)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:dyn_prop
   (&optional __dyn_prop)
   (if __dyn_prop (setq _dyn_prop __dyn_prop)) _dyn_prop)
  (:rcs
   (&optional __rcs)
   (if __rcs (setq _rcs __rcs)) _rcs)
  (:dislong_rms
   (&optional __dislong_rms)
   (if __dislong_rms (setq _dislong_rms __dislong_rms)) _dislong_rms)
  (:dislat_rms
   (&optional __dislat_rms)
   (if __dislat_rms (setq _dislat_rms __dislat_rms)) _dislat_rms)
  (:verllong_rms
   (&optional __verllong_rms)
   (if __verllong_rms (setq _verllong_rms __verllong_rms)) _verllong_rms)
  (:verllat_rms
   (&optional __verllat_rms)
   (if __verllat_rms (setq _verllat_rms __verllat_rms)) _verllat_rms)
  (:arellong_rms
   (&optional __arellong_rms)
   (if __arellong_rms (setq _arellong_rms __arellong_rms)) _arellong_rms)
  (:arellat_rms
   (&optional __arellat_rms)
   (if __arellat_rms (setq _arellat_rms __arellat_rms)) _arellat_rms)
  (:pdh0
   (&optional __pdh0)
   (if __pdh0 (setq _pdh0 __pdh0)) _pdh0)
  (:ambigstate
   (&optional __ambigstate)
   (if __ambigstate (setq _ambigstate __ambigstate)) _ambigstate)
  (:invalidstate
   (&optional __invalidstate)
   (if __invalidstate (setq _invalidstate __invalidstate)) _invalidstate)
  (:serialization-length
   ()
   (+
    ;; uint16 _detection_id
    2
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; geometry_msgs/Vector3 _velocity
    (send _velocity :serialization-length)
    ;; uint8 _dyn_prop
    1
    ;; float32 _rcs
    4
    ;; uint8 _dislong_rms
    1
    ;; uint8 _dislat_rms
    1
    ;; uint8 _verllong_rms
    1
    ;; uint8 _verllat_rms
    1
    ;; uint8 _arellong_rms
    1
    ;; uint8 _arellat_rms
    1
    ;; uint8 _pdh0
    1
    ;; uint8 _ambigstate
    1
    ;; uint8 _invalidstate
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _detection_id
       (write-word _detection_id s)
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; geometry_msgs/Vector3 _velocity
       (send _velocity :serialize s)
     ;; uint8 _dyn_prop
       (write-byte _dyn_prop s)
     ;; float32 _rcs
       (sys::poke _rcs (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _dislong_rms
       (write-byte _dislong_rms s)
     ;; uint8 _dislat_rms
       (write-byte _dislat_rms s)
     ;; uint8 _verllong_rms
       (write-byte _verllong_rms s)
     ;; uint8 _verllat_rms
       (write-byte _verllat_rms s)
     ;; uint8 _arellong_rms
       (write-byte _arellong_rms s)
     ;; uint8 _arellat_rms
       (write-byte _arellat_rms s)
     ;; uint8 _pdh0
       (write-byte _pdh0 s)
     ;; uint8 _ambigstate
       (write-byte _ambigstate s)
     ;; uint8 _invalidstate
       (write-byte _invalidstate s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _detection_id
     (setq _detection_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; geometry_msgs/Vector3 _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; uint8 _dyn_prop
     (setq _dyn_prop (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _rcs
     (setq _rcs (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _dislong_rms
     (setq _dislong_rms (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _dislat_rms
     (setq _dislat_rms (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _verllong_rms
     (setq _verllong_rms (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _verllat_rms
     (setq _verllat_rms (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _arellong_rms
     (setq _arellong_rms (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _arellat_rms
     (setq _arellat_rms (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _pdh0
     (setq _pdh0 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _ambigstate
     (setq _ambigstate (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _invalidstate
     (setq _invalidstate (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get momenta_msgs::ArsCluster :md5sum-) "116a250881e257c3186d20d0388e7b45")
(setf (get momenta_msgs::ArsCluster :datatype-) "momenta_msgs/ArsCluster")
(setf (get momenta_msgs::ArsCluster :definition-)
      "uint16 detection_id
geometry_msgs/Point position
geometry_msgs/Vector3 velocity
uint8 dyn_prop
float32 rcs
uint8 dislong_rms
uint8 dislat_rms
uint8 verllong_rms
uint8 verllat_rms
uint8 arellong_rms
uint8 arellat_rms
uint8 pdh0
uint8 ambigstate
uint8 invalidstate

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :momenta_msgs/ArsCluster "116a250881e257c3186d20d0388e7b45")


