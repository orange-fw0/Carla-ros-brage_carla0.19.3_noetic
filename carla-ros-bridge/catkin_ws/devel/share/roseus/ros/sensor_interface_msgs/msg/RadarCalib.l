;; Auto-generated. Do not edit!


(when (boundp 'sensor_interface_msgs::RadarCalib)
  (if (not (find-package "SENSOR_INTERFACE_MSGS"))
    (make-package "SENSOR_INTERFACE_MSGS"))
  (shadow 'RadarCalib (find-package "SENSOR_INTERFACE_MSGS")))
(unless (find-package "SENSOR_INTERFACE_MSGS::RADARCALIB")
  (make-package "SENSOR_INTERFACE_MSGS::RADARCALIB"))

(in-package "ROS")
;;//! \htmlinclude RadarCalib.msg.html


(defclass sensor_interface_msgs::RadarCalib
  :super ros::object
  :slots (_state _radar_id _r_s2b _t_s2b ))

(defmethod sensor_interface_msgs::RadarCalib
  (:init
   (&key
    ((:state __state) 0)
    ((:radar_id __radar_id) 0)
    ((:r_s2b __r_s2b) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:t_s2b __t_s2b) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _state (round __state))
   (setq _radar_id (round __radar_id))
   (setq _r_s2b __r_s2b)
   (setq _t_s2b __t_s2b)
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:radar_id
   (&optional __radar_id)
   (if __radar_id (setq _radar_id __radar_id)) _radar_id)
  (:r_s2b
   (&optional __r_s2b)
   (if __r_s2b (setq _r_s2b __r_s2b)) _r_s2b)
  (:t_s2b
   (&optional __t_s2b)
   (if __t_s2b (setq _t_s2b __t_s2b)) _t_s2b)
  (:serialization-length
   ()
   (+
    ;; int8 _state
    1
    ;; uint8 _radar_id
    1
    ;; float64[] _r_s2b
    (* 8    (length _r_s2b)) 4
    ;; float64[] _t_s2b
    (* 8    (length _t_s2b)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _state
       (write-byte _state s)
     ;; uint8 _radar_id
       (write-byte _radar_id s)
     ;; float64[] _r_s2b
     (write-long (length _r_s2b) s)
     (dotimes (i (length _r_s2b))
       (sys::poke (elt _r_s2b i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _t_s2b
     (write-long (length _t_s2b) s)
     (dotimes (i (length _t_s2b))
       (sys::poke (elt _t_s2b i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _state 127) (setq _state (- _state 256)))
   ;; uint8 _radar_id
     (setq _radar_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64[] _r_s2b
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _r_s2b (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _r_s2b i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _t_s2b
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _t_s2b (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _t_s2b i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get sensor_interface_msgs::RadarCalib :md5sum-) "0d00cb5e5b04fb8e831eddff0ebefbba")
(setf (get sensor_interface_msgs::RadarCalib :datatype-) "sensor_interface_msgs/RadarCalib")
(setf (get sensor_interface_msgs::RadarCalib :definition-)
      "int8 state
uint8 radar_id
float64[] r_s2b
float64[] t_s2b

")



(provide :sensor_interface_msgs/RadarCalib "0d00cb5e5b04fb8e831eddff0ebefbba")


