;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::VehicleVPBInfo)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'VehicleVPBInfo (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEVPBINFO")
  (make-package "PERCEPTION_INTERFACE_MSGS::VEHICLEVPBINFO"))

(in-package "ROS")
;;//! \htmlinclude VehicleVPBInfo.msg.html


(defclass perception_interface_msgs::VehicleVPBInfo
  :super ros::object
  :slots (_vpb_point_num _vpb_bv_x _vpb_bv_y _vpb_bv_z ))

(defmethod perception_interface_msgs::VehicleVPBInfo
  (:init
   (&key
    ((:vpb_point_num __vpb_point_num) 0)
    ((:vpb_bv_x __vpb_bv_x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:vpb_bv_y __vpb_bv_y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:vpb_bv_z __vpb_bv_z) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _vpb_point_num (round __vpb_point_num))
   (setq _vpb_bv_x __vpb_bv_x)
   (setq _vpb_bv_y __vpb_bv_y)
   (setq _vpb_bv_z __vpb_bv_z)
   self)
  (:vpb_point_num
   (&optional __vpb_point_num)
   (if __vpb_point_num (setq _vpb_point_num __vpb_point_num)) _vpb_point_num)
  (:vpb_bv_x
   (&optional __vpb_bv_x)
   (if __vpb_bv_x (setq _vpb_bv_x __vpb_bv_x)) _vpb_bv_x)
  (:vpb_bv_y
   (&optional __vpb_bv_y)
   (if __vpb_bv_y (setq _vpb_bv_y __vpb_bv_y)) _vpb_bv_y)
  (:vpb_bv_z
   (&optional __vpb_bv_z)
   (if __vpb_bv_z (setq _vpb_bv_z __vpb_bv_z)) _vpb_bv_z)
  (:serialization-length
   ()
   (+
    ;; uint8 _vpb_point_num
    1
    ;; float32[] _vpb_bv_x
    (* 4    (length _vpb_bv_x)) 4
    ;; float32[] _vpb_bv_y
    (* 4    (length _vpb_bv_y)) 4
    ;; float32[] _vpb_bv_z
    (* 4    (length _vpb_bv_z)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _vpb_point_num
       (write-byte _vpb_point_num s)
     ;; float32[] _vpb_bv_x
     (write-long (length _vpb_bv_x) s)
     (dotimes (i (length _vpb_bv_x))
       (sys::poke (elt _vpb_bv_x i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _vpb_bv_y
     (write-long (length _vpb_bv_y) s)
     (dotimes (i (length _vpb_bv_y))
       (sys::poke (elt _vpb_bv_y i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _vpb_bv_z
     (write-long (length _vpb_bv_z) s)
     (dotimes (i (length _vpb_bv_z))
       (sys::poke (elt _vpb_bv_z i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _vpb_point_num
     (setq _vpb_point_num (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32[] _vpb_bv_x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vpb_bv_x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _vpb_bv_x i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _vpb_bv_y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vpb_bv_y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _vpb_bv_y i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _vpb_bv_z
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vpb_bv_z (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _vpb_bv_z i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get perception_interface_msgs::VehicleVPBInfo :md5sum-) "89a7e56a1af901c508a46725ee5a3d0e")
(setf (get perception_interface_msgs::VehicleVPBInfo :datatype-) "perception_interface_msgs/VehicleVPBInfo")
(setf (get perception_interface_msgs::VehicleVPBInfo :definition-)
      "uint8 vpb_point_num
float32[] vpb_bv_x
float32[] vpb_bv_y
float32[] vpb_bv_z

")



(provide :perception_interface_msgs/VehicleVPBInfo "89a7e56a1af901c508a46725ee5a3d0e")


