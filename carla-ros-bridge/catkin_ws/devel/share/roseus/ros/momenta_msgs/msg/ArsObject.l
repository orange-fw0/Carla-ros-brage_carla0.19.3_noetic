;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::ArsObject)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'ArsObject (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::ARSOBJECT")
  (make-package "MOMENTA_MSGS::ARSOBJECT"))

(in-package "ROS")
;;//! \htmlinclude ArsObject.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass momenta_msgs::ArsObject
  :super ros::object
  :slots (_detection_id _position _velocity _dyn_prop _rcs _dislong_rms _dislat_rms _verllong_rms _verllat_rms _arellong_rms _arellat_rms _orientation_rms _meas_state _probofexist _are_long _obj_class _are_lat _orientation_angle _length _width ))

(defmethod momenta_msgs::ArsObject
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
    ((:orientation_rms __orientation_rms) 0)
    ((:meas_state __meas_state) 0)
    ((:probofexist __probofexist) 0)
    ((:are_long __are_long) 0.0)
    ((:obj_class __obj_class) 0)
    ((:are_lat __are_lat) 0.0)
    ((:orientation_angle __orientation_angle) 0.0)
    ((:length __length) 0.0)
    ((:width __width) 0.0)
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
   (setq _orientation_rms (round __orientation_rms))
   (setq _meas_state (round __meas_state))
   (setq _probofexist (round __probofexist))
   (setq _are_long (float __are_long))
   (setq _obj_class (round __obj_class))
   (setq _are_lat (float __are_lat))
   (setq _orientation_angle (float __orientation_angle))
   (setq _length (float __length))
   (setq _width (float __width))
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
  (:orientation_rms
   (&optional __orientation_rms)
   (if __orientation_rms (setq _orientation_rms __orientation_rms)) _orientation_rms)
  (:meas_state
   (&optional __meas_state)
   (if __meas_state (setq _meas_state __meas_state)) _meas_state)
  (:probofexist
   (&optional __probofexist)
   (if __probofexist (setq _probofexist __probofexist)) _probofexist)
  (:are_long
   (&optional __are_long)
   (if __are_long (setq _are_long __are_long)) _are_long)
  (:obj_class
   (&optional __obj_class)
   (if __obj_class (setq _obj_class __obj_class)) _obj_class)
  (:are_lat
   (&optional __are_lat)
   (if __are_lat (setq _are_lat __are_lat)) _are_lat)
  (:orientation_angle
   (&optional __orientation_angle)
   (if __orientation_angle (setq _orientation_angle __orientation_angle)) _orientation_angle)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
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
    ;; uint8 _orientation_rms
    1
    ;; uint8 _meas_state
    1
    ;; uint8 _probofexist
    1
    ;; float32 _are_long
    4
    ;; uint8 _obj_class
    1
    ;; float32 _are_lat
    4
    ;; float32 _orientation_angle
    4
    ;; float32 _length
    4
    ;; float32 _width
    4
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
     ;; uint8 _orientation_rms
       (write-byte _orientation_rms s)
     ;; uint8 _meas_state
       (write-byte _meas_state s)
     ;; uint8 _probofexist
       (write-byte _probofexist s)
     ;; float32 _are_long
       (sys::poke _are_long (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _obj_class
       (write-byte _obj_class s)
     ;; float32 _are_lat
       (sys::poke _are_lat (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _orientation_angle
       (sys::poke _orientation_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _length
       (sys::poke _length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; uint8 _orientation_rms
     (setq _orientation_rms (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _meas_state
     (setq _meas_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _probofexist
     (setq _probofexist (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _are_long
     (setq _are_long (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _obj_class
     (setq _obj_class (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _are_lat
     (setq _are_lat (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _orientation_angle
     (setq _orientation_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _length
     (setq _length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get momenta_msgs::ArsObject :md5sum-) "64d99256889fd984c50365eb36bd8884")
(setf (get momenta_msgs::ArsObject :datatype-) "momenta_msgs/ArsObject")
(setf (get momenta_msgs::ArsObject :definition-)
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
uint8 orientation_rms
uint8 meas_state
uint8 probofexist
float32 are_long
uint8 obj_class
float32 are_lat
float32 orientation_angle
float32 length
float32 width

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



(provide :momenta_msgs/ArsObject "64d99256889fd984c50365eb36bd8884")


