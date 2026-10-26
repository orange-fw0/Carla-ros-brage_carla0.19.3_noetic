;; Auto-generated. Do not edit!


(when (boundp 'adasis_v2_msgs::Position)
  (if (not (find-package "ADASIS_V2_MSGS"))
    (make-package "ADASIS_V2_MSGS"))
  (shadow 'Position (find-package "ADASIS_V2_MSGS")))
(unless (find-package "ADASIS_V2_MSGS::POSITION")
  (make-package "ADASIS_V2_MSGS::POSITION"))

(in-package "ROS")
;;//! \htmlinclude Position.msg.html


(defclass adasis_v2_msgs::Position
  :super ros::object
  :slots (_cyclic_counter _path_index _offset _position_index _position_age _position_probability _speed _relative_heading _position_confidence _current_lane _reserved ))

(defmethod adasis_v2_msgs::Position
  (:init
   (&key
    ((:cyclic_counter __cyclic_counter) 0)
    ((:path_index __path_index) 0)
    ((:offset __offset) 0)
    ((:position_index __position_index) 0)
    ((:position_age __position_age) 0)
    ((:position_probability __position_probability) 0)
    ((:speed __speed) 0)
    ((:relative_heading __relative_heading) 0)
    ((:position_confidence __position_confidence) 0)
    ((:current_lane __current_lane) 0)
    ((:reserved __reserved) 0)
    )
   (send-super :init)
   (setq _cyclic_counter (round __cyclic_counter))
   (setq _path_index (round __path_index))
   (setq _offset (round __offset))
   (setq _position_index (round __position_index))
   (setq _position_age (round __position_age))
   (setq _position_probability (round __position_probability))
   (setq _speed (round __speed))
   (setq _relative_heading (round __relative_heading))
   (setq _position_confidence (round __position_confidence))
   (setq _current_lane (round __current_lane))
   (setq _reserved (round __reserved))
   self)
  (:cyclic_counter
   (&optional __cyclic_counter)
   (if __cyclic_counter (setq _cyclic_counter __cyclic_counter)) _cyclic_counter)
  (:path_index
   (&optional __path_index)
   (if __path_index (setq _path_index __path_index)) _path_index)
  (:offset
   (&optional __offset)
   (if __offset (setq _offset __offset)) _offset)
  (:position_index
   (&optional __position_index)
   (if __position_index (setq _position_index __position_index)) _position_index)
  (:position_age
   (&optional __position_age)
   (if __position_age (setq _position_age __position_age)) _position_age)
  (:position_probability
   (&optional __position_probability)
   (if __position_probability (setq _position_probability __position_probability)) _position_probability)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:relative_heading
   (&optional __relative_heading)
   (if __relative_heading (setq _relative_heading __relative_heading)) _relative_heading)
  (:position_confidence
   (&optional __position_confidence)
   (if __position_confidence (setq _position_confidence __position_confidence)) _position_confidence)
  (:current_lane
   (&optional __current_lane)
   (if __current_lane (setq _current_lane __current_lane)) _current_lane)
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:serialization-length
   ()
   (+
    ;; uint8 _cyclic_counter
    1
    ;; uint8 _path_index
    1
    ;; uint16 _offset
    2
    ;; uint8 _position_index
    1
    ;; uint16 _position_age
    2
    ;; uint8 _position_probability
    1
    ;; uint16 _speed
    2
    ;; uint8 _relative_heading
    1
    ;; uint8 _position_confidence
    1
    ;; uint8 _current_lane
    1
    ;; uint8 _reserved
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _cyclic_counter
       (write-byte _cyclic_counter s)
     ;; uint8 _path_index
       (write-byte _path_index s)
     ;; uint16 _offset
       (write-word _offset s)
     ;; uint8 _position_index
       (write-byte _position_index s)
     ;; uint16 _position_age
       (write-word _position_age s)
     ;; uint8 _position_probability
       (write-byte _position_probability s)
     ;; uint16 _speed
       (write-word _speed s)
     ;; uint8 _relative_heading
       (write-byte _relative_heading s)
     ;; uint8 _position_confidence
       (write-byte _position_confidence s)
     ;; uint8 _current_lane
       (write-byte _current_lane s)
     ;; uint8 _reserved
       (write-byte _reserved s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _cyclic_counter
     (setq _cyclic_counter (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _path_index
     (setq _path_index (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _offset
     (setq _offset (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _position_index
     (setq _position_index (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _position_age
     (setq _position_age (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _position_probability
     (setq _position_probability (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _speed
     (setq _speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _relative_heading
     (setq _relative_heading (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _position_confidence
     (setq _position_confidence (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _current_lane
     (setq _current_lane (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _reserved
     (setq _reserved (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get adasis_v2_msgs::Position :md5sum-) "45cbf057ed09aa18faf9a7bac3745eae")
(setf (get adasis_v2_msgs::Position :datatype-) "adasis_v2_msgs/Position")
(setf (get adasis_v2_msgs::Position :definition-)
      "uint8 cyclic_counter
uint8 path_index
uint16 offset
uint8 position_index
uint16 position_age
uint8 position_probability
uint16 speed
uint8 relative_heading
uint8 position_confidence
uint8 current_lane
uint8 reserved

")



(provide :adasis_v2_msgs/Position "45cbf057ed09aa18faf9a7bac3745eae")


