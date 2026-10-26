;; Auto-generated. Do not edit!


(when (boundp 'adasis_v2_msgs::Stub)
  (if (not (find-package "ADASIS_V2_MSGS"))
    (make-package "ADASIS_V2_MSGS"))
  (shadow 'Stub (find-package "ADASIS_V2_MSGS")))
(unless (find-package "ADASIS_V2_MSGS::STUB")
  (make-package "ADASIS_V2_MSGS::STUB"))

(in-package "ROS")
;;//! \htmlinclude Stub.msg.html


(defclass adasis_v2_msgs::Stub
  :super ros::object
  :slots (_cyclic_counter _is_retransmission _path_index _offset _is_update _sub_path_index _turn_angle _relative_probability _functional_road_class _form_of_way _lanes_num_of_driving_dir _lanes_num_of_opposite_dir _complex_intersection _right_of_way _part_of_calculated_route _is_last_stub_at_offset ))

(defmethod adasis_v2_msgs::Stub
  (:init
   (&key
    ((:cyclic_counter __cyclic_counter) 0)
    ((:is_retransmission __is_retransmission) 0)
    ((:path_index __path_index) 0)
    ((:offset __offset) 0)
    ((:is_update __is_update) 0)
    ((:sub_path_index __sub_path_index) 0)
    ((:turn_angle __turn_angle) 0)
    ((:relative_probability __relative_probability) 0)
    ((:functional_road_class __functional_road_class) 0)
    ((:form_of_way __form_of_way) 0)
    ((:lanes_num_of_driving_dir __lanes_num_of_driving_dir) 0)
    ((:lanes_num_of_opposite_dir __lanes_num_of_opposite_dir) 0)
    ((:complex_intersection __complex_intersection) 0)
    ((:right_of_way __right_of_way) 0)
    ((:part_of_calculated_route __part_of_calculated_route) 0)
    ((:is_last_stub_at_offset __is_last_stub_at_offset) 0)
    )
   (send-super :init)
   (setq _cyclic_counter (round __cyclic_counter))
   (setq _is_retransmission (round __is_retransmission))
   (setq _path_index (round __path_index))
   (setq _offset (round __offset))
   (setq _is_update (round __is_update))
   (setq _sub_path_index (round __sub_path_index))
   (setq _turn_angle (round __turn_angle))
   (setq _relative_probability (round __relative_probability))
   (setq _functional_road_class (round __functional_road_class))
   (setq _form_of_way (round __form_of_way))
   (setq _lanes_num_of_driving_dir (round __lanes_num_of_driving_dir))
   (setq _lanes_num_of_opposite_dir (round __lanes_num_of_opposite_dir))
   (setq _complex_intersection (round __complex_intersection))
   (setq _right_of_way (round __right_of_way))
   (setq _part_of_calculated_route (round __part_of_calculated_route))
   (setq _is_last_stub_at_offset (round __is_last_stub_at_offset))
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
  (:sub_path_index
   (&optional __sub_path_index)
   (if __sub_path_index (setq _sub_path_index __sub_path_index)) _sub_path_index)
  (:turn_angle
   (&optional __turn_angle)
   (if __turn_angle (setq _turn_angle __turn_angle)) _turn_angle)
  (:relative_probability
   (&optional __relative_probability)
   (if __relative_probability (setq _relative_probability __relative_probability)) _relative_probability)
  (:functional_road_class
   (&optional __functional_road_class)
   (if __functional_road_class (setq _functional_road_class __functional_road_class)) _functional_road_class)
  (:form_of_way
   (&optional __form_of_way)
   (if __form_of_way (setq _form_of_way __form_of_way)) _form_of_way)
  (:lanes_num_of_driving_dir
   (&optional __lanes_num_of_driving_dir)
   (if __lanes_num_of_driving_dir (setq _lanes_num_of_driving_dir __lanes_num_of_driving_dir)) _lanes_num_of_driving_dir)
  (:lanes_num_of_opposite_dir
   (&optional __lanes_num_of_opposite_dir)
   (if __lanes_num_of_opposite_dir (setq _lanes_num_of_opposite_dir __lanes_num_of_opposite_dir)) _lanes_num_of_opposite_dir)
  (:complex_intersection
   (&optional __complex_intersection)
   (if __complex_intersection (setq _complex_intersection __complex_intersection)) _complex_intersection)
  (:right_of_way
   (&optional __right_of_way)
   (if __right_of_way (setq _right_of_way __right_of_way)) _right_of_way)
  (:part_of_calculated_route
   (&optional __part_of_calculated_route)
   (if __part_of_calculated_route (setq _part_of_calculated_route __part_of_calculated_route)) _part_of_calculated_route)
  (:is_last_stub_at_offset
   (&optional __is_last_stub_at_offset)
   (if __is_last_stub_at_offset (setq _is_last_stub_at_offset __is_last_stub_at_offset)) _is_last_stub_at_offset)
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
    ;; uint8 _sub_path_index
    1
    ;; uint8 _turn_angle
    1
    ;; uint8 _relative_probability
    1
    ;; uint8 _functional_road_class
    1
    ;; uint8 _form_of_way
    1
    ;; uint8 _lanes_num_of_driving_dir
    1
    ;; uint8 _lanes_num_of_opposite_dir
    1
    ;; uint8 _complex_intersection
    1
    ;; uint8 _right_of_way
    1
    ;; uint8 _part_of_calculated_route
    1
    ;; uint8 _is_last_stub_at_offset
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
     ;; uint8 _sub_path_index
       (write-byte _sub_path_index s)
     ;; uint8 _turn_angle
       (write-byte _turn_angle s)
     ;; uint8 _relative_probability
       (write-byte _relative_probability s)
     ;; uint8 _functional_road_class
       (write-byte _functional_road_class s)
     ;; uint8 _form_of_way
       (write-byte _form_of_way s)
     ;; uint8 _lanes_num_of_driving_dir
       (write-byte _lanes_num_of_driving_dir s)
     ;; uint8 _lanes_num_of_opposite_dir
       (write-byte _lanes_num_of_opposite_dir s)
     ;; uint8 _complex_intersection
       (write-byte _complex_intersection s)
     ;; uint8 _right_of_way
       (write-byte _right_of_way s)
     ;; uint8 _part_of_calculated_route
       (write-byte _part_of_calculated_route s)
     ;; uint8 _is_last_stub_at_offset
       (write-byte _is_last_stub_at_offset s)
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
   ;; uint8 _sub_path_index
     (setq _sub_path_index (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _turn_angle
     (setq _turn_angle (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _relative_probability
     (setq _relative_probability (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _functional_road_class
     (setq _functional_road_class (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _form_of_way
     (setq _form_of_way (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _lanes_num_of_driving_dir
     (setq _lanes_num_of_driving_dir (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _lanes_num_of_opposite_dir
     (setq _lanes_num_of_opposite_dir (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _complex_intersection
     (setq _complex_intersection (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _right_of_way
     (setq _right_of_way (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _part_of_calculated_route
     (setq _part_of_calculated_route (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _is_last_stub_at_offset
     (setq _is_last_stub_at_offset (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get adasis_v2_msgs::Stub :md5sum-) "1af69f6c8366879d6dab4dd7cbe1a298")
(setf (get adasis_v2_msgs::Stub :datatype-) "adasis_v2_msgs/Stub")
(setf (get adasis_v2_msgs::Stub :definition-)
      "uint8 cyclic_counter
uint8 is_retransmission
uint8 path_index
uint16 offset
uint8 is_update
uint8 sub_path_index
uint8 turn_angle
uint8 relative_probability
uint8 functional_road_class
uint8 form_of_way
uint8 lanes_num_of_driving_dir
uint8 lanes_num_of_opposite_dir
uint8 complex_intersection
uint8 right_of_way
uint8 part_of_calculated_route
uint8 is_last_stub_at_offset

")



(provide :adasis_v2_msgs/Stub "1af69f6c8366879d6dab4dd7cbe1a298")


