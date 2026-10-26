;; Auto-generated. Do not edit!


(when (boundp 'adasis_v2_msgs::ProfileShort)
  (if (not (find-package "ADASIS_V2_MSGS"))
    (make-package "ADASIS_V2_MSGS"))
  (shadow 'ProfileShort (find-package "ADASIS_V2_MSGS")))
(unless (find-package "ADASIS_V2_MSGS::PROFILESHORT")
  (make-package "ADASIS_V2_MSGS::PROFILESHORT"))

(in-package "ROS")
;;//! \htmlinclude ProfileShort.msg.html


(defclass adasis_v2_msgs::ProfileShort
  :super ros::object
  :slots (_cyclic_counter _is_retransmission _path_index _offset _is_update _profile_type _is_control_point _value_0 _distance_1 _value_1 _accuracy ))

(defmethod adasis_v2_msgs::ProfileShort
  (:init
   (&key
    ((:cyclic_counter __cyclic_counter) 0)
    ((:is_retransmission __is_retransmission) 0)
    ((:path_index __path_index) 0)
    ((:offset __offset) 0)
    ((:is_update __is_update) 0)
    ((:profile_type __profile_type) 0)
    ((:is_control_point __is_control_point) 0)
    ((:value_0 __value_0) 0)
    ((:distance_1 __distance_1) 0)
    ((:value_1 __value_1) 0)
    ((:accuracy __accuracy) 0)
    )
   (send-super :init)
   (setq _cyclic_counter (round __cyclic_counter))
   (setq _is_retransmission (round __is_retransmission))
   (setq _path_index (round __path_index))
   (setq _offset (round __offset))
   (setq _is_update (round __is_update))
   (setq _profile_type (round __profile_type))
   (setq _is_control_point (round __is_control_point))
   (setq _value_0 (round __value_0))
   (setq _distance_1 (round __distance_1))
   (setq _value_1 (round __value_1))
   (setq _accuracy (round __accuracy))
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
  (:value_0
   (&optional __value_0)
   (if __value_0 (setq _value_0 __value_0)) _value_0)
  (:distance_1
   (&optional __distance_1)
   (if __distance_1 (setq _distance_1 __distance_1)) _distance_1)
  (:value_1
   (&optional __value_1)
   (if __value_1 (setq _value_1 __value_1)) _value_1)
  (:accuracy
   (&optional __accuracy)
   (if __accuracy (setq _accuracy __accuracy)) _accuracy)
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
    ;; uint16 _value_0
    2
    ;; uint16 _distance_1
    2
    ;; uint16 _value_1
    2
    ;; uint8 _accuracy
    1
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
     ;; uint16 _value_0
       (write-word _value_0 s)
     ;; uint16 _distance_1
       (write-word _distance_1 s)
     ;; uint16 _value_1
       (write-word _value_1 s)
     ;; uint8 _accuracy
       (write-byte _accuracy s)
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
   ;; uint16 _value_0
     (setq _value_0 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _distance_1
     (setq _distance_1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _value_1
     (setq _value_1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _accuracy
     (setq _accuracy (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get adasis_v2_msgs::ProfileShort :md5sum-) "f584934032a4b5c391f83031d8a144af")
(setf (get adasis_v2_msgs::ProfileShort :datatype-) "adasis_v2_msgs/ProfileShort")
(setf (get adasis_v2_msgs::ProfileShort :definition-)
      "uint8 cyclic_counter
uint8 is_retransmission
uint8 path_index
uint16 offset
uint8 is_update
uint8 profile_type
uint8 is_control_point
uint16 value_0
uint16 distance_1
uint16 value_1
uint8 accuracy

")



(provide :adasis_v2_msgs/ProfileShort "f584934032a4b5c391f83031d8a144af")


