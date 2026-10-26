;; Auto-generated. Do not edit!


(when (boundp 'adasis_v2_msgs::ProfileLong)
  (if (not (find-package "ADASIS_V2_MSGS"))
    (make-package "ADASIS_V2_MSGS"))
  (shadow 'ProfileLong (find-package "ADASIS_V2_MSGS")))
(unless (find-package "ADASIS_V2_MSGS::PROFILELONG")
  (make-package "ADASIS_V2_MSGS::PROFILELONG"))

(in-package "ROS")
;;//! \htmlinclude ProfileLong.msg.html


(defclass adasis_v2_msgs::ProfileLong
  :super ros::object
  :slots (_cyclic_counter _is_retransmission _path_index _offset _is_update _profile_type _is_control_point _value ))

(defmethod adasis_v2_msgs::ProfileLong
  (:init
   (&key
    ((:cyclic_counter __cyclic_counter) 0)
    ((:is_retransmission __is_retransmission) 0)
    ((:path_index __path_index) 0)
    ((:offset __offset) 0)
    ((:is_update __is_update) 0)
    ((:profile_type __profile_type) 0)
    ((:is_control_point __is_control_point) 0)
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _cyclic_counter (round __cyclic_counter))
   (setq _is_retransmission (round __is_retransmission))
   (setq _path_index (round __path_index))
   (setq _offset (round __offset))
   (setq _is_update (round __is_update))
   (setq _profile_type (round __profile_type))
   (setq _is_control_point (round __is_control_point))
   (setq _value (round __value))
   self)
  (:cyclic_counter
   (&optional __cyclic_counter)
   (if __cyclic_counter (setq _cyclic_counter __cyclic_counter)) _cyclic_counter)
  (:is_retransmission
   (&optional __is_retransmission)
   (if __is_retransmission (setq _is_retransmission __is_retransmission)) _is_retransmission)
  (:path_index
   (&optional __path_index)
   (if __path_index (setq _path_index __path_index)) _path_index)
  (:offset
   (&optional __offset)
   (if __offset (setq _offset __offset)) _offset)
  (:is_update
   (&optional __is_update)
   (if __is_update (setq _is_update __is_update)) _is_update)
  (:profile_type
   (&optional __profile_type)
   (if __profile_type (setq _profile_type __profile_type)) _profile_type)
  (:is_control_point
   (&optional __is_control_point)
   (if __is_control_point (setq _is_control_point __is_control_point)) _is_control_point)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; uint8 _cyclic_counter
    1
    ;; uint8 _is_retransmission
    1
    ;; uint8 _path_index
    1
    ;; uint16 _offset
    2
    ;; uint8 _is_update
    1
    ;; uint8 _profile_type
    1
    ;; uint8 _is_control_point
    1
    ;; uint32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _cyclic_counter
       (write-byte _cyclic_counter s)
     ;; uint8 _is_retransmission
       (write-byte _is_retransmission s)
     ;; uint8 _path_index
       (write-byte _path_index s)
     ;; uint16 _offset
       (write-word _offset s)
     ;; uint8 _is_update
       (write-byte _is_update s)
     ;; uint8 _profile_type
       (write-byte _profile_type s)
     ;; uint8 _is_control_point
       (write-byte _is_control_point s)
     ;; uint32 _value
       (write-long _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _cyclic_counter
     (setq _cyclic_counter (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _is_retransmission
     (setq _is_retransmission (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _path_index
     (setq _path_index (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _offset
     (setq _offset (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _is_update
     (setq _is_update (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _profile_type
     (setq _profile_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _is_control_point
     (setq _is_control_point (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get adasis_v2_msgs::ProfileLong :md5sum-) "d4067eb11b6ef6403834b925b18e87ac")
(setf (get adasis_v2_msgs::ProfileLong :datatype-) "adasis_v2_msgs/ProfileLong")
(setf (get adasis_v2_msgs::ProfileLong :definition-)
      "uint8 cyclic_counter
uint8 is_retransmission
uint8 path_index
uint16 offset
uint8 is_update
uint8 profile_type
uint8 is_control_point
uint32 value

")



(provide :adasis_v2_msgs/ProfileLong "d4067eb11b6ef6403834b925b18e87ac")


