;; Auto-generated. Do not edit!


(when (boundp 'adasis_v2_msgs::Segment)
  (if (not (find-package "ADASIS_V2_MSGS"))
    (make-package "ADASIS_V2_MSGS"))
  (shadow 'Segment (find-package "ADASIS_V2_MSGS")))
(unless (find-package "ADASIS_V2_MSGS::SEGMENT")
  (make-package "ADASIS_V2_MSGS::SEGMENT"))

(in-package "ROS")
;;//! \htmlinclude Segment.msg.html


(defclass adasis_v2_msgs::Segment
  :super ros::object
  :slots (_cyclic_counter _is_retransmission _path_index _offset _is_update _functional_road_class _form_of_way _effective_speed_limit _effective_speed_limit_type _lanes_num_of_driving_dir _lanes_num_of_opposite_dir _tunnel _bridge _divided_road _built_up_area _complex_intersection _relative_probability _part_of_calculated_route _reserved ))

(defmethod adasis_v2_msgs::Segment
  (:init
   (&key
    ((:cyclic_counter __cyclic_counter) 0)
    ((:is_retransmission __is_retransmission) 0)
    ((:path_index __path_index) 0)
    ((:offset __offset) 0)
    ((:is_update __is_update) 0)
    ((:functional_road_class __functional_road_class) 0)
    ((:form_of_way __form_of_way) 0)
    ((:effective_speed_limit __effective_speed_limit) 0)
    ((:effective_speed_limit_type __effective_speed_limit_type) 0)
    ((:lanes_num_of_driving_dir __lanes_num_of_driving_dir) 0)
    ((:lanes_num_of_opposite_dir __lanes_num_of_opposite_dir) 0)
    ((:tunnel __tunnel) 0)
    ((:bridge __bridge) 0)
    ((:divided_road __divided_road) 0)
    ((:built_up_area __built_up_area) 0)
    ((:complex_intersection __complex_intersection) 0)
    ((:relative_probability __relative_probability) 0)
    ((:part_of_calculated_route __part_of_calculated_route) 0)
    ((:reserved __reserved) 0)
    )
   (send-super :init)
   (setq _cyclic_counter (round __cyclic_counter))
   (setq _is_retransmission (round __is_retransmission))
   (setq _path_index (round __path_index))
   (setq _offset (round __offset))
   (setq _is_update (round __is_update))
   (setq _functional_road_class (round __functional_road_class))
   (setq _form_of_way (round __form_of_way))
   (setq _effective_speed_limit (round __effective_speed_limit))
   (setq _effective_speed_limit_type (round __effective_speed_limit_type))
   (setq _lanes_num_of_driving_dir (round __lanes_num_of_driving_dir))
   (setq _lanes_num_of_opposite_dir (round __lanes_num_of_opposite_dir))
   (setq _tunnel (round __tunnel))
   (setq _bridge (round __bridge))
   (setq _divided_road (round __divided_road))
   (setq _built_up_area (round __built_up_area))
   (setq _complex_intersection (round __complex_intersection))
   (setq _relative_probability (round __relative_probability))
   (setq _part_of_calculated_route (round __part_of_calculated_route))
   (setq _reserved (round __reserved))
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
  (:functional_road_class
   (&optional __functional_road_class)
   (if __functional_road_class (setq _functional_road_class __functional_road_class)) _functional_road_class)
  (:form_of_way
   (&optional __form_of_way)
   (if __form_of_way (setq _form_of_way __form_of_way)) _form_of_way)
  (:effective_speed_limit
   (&optional __effective_speed_limit)
   (if __effective_speed_limit (setq _effective_speed_limit __effective_speed_limit)) _effective_speed_limit)
  (:effective_speed_limit_type
   (&optional __effective_speed_limit_type)
   (if __effective_speed_limit_type (setq _effective_speed_limit_type __effective_speed_limit_type)) _effective_speed_limit_type)
  (:lanes_num_of_driving_dir
   (&optional __lanes_num_of_driving_dir)
   (if __lanes_num_of_driving_dir (setq _lanes_num_of_driving_dir __lanes_num_of_driving_dir)) _lanes_num_of_driving_dir)
  (:lanes_num_of_opposite_dir
   (&optional __lanes_num_of_opposite_dir)
   (if __lanes_num_of_opposite_dir (setq _lanes_num_of_opposite_dir __lanes_num_of_opposite_dir)) _lanes_num_of_opposite_dir)
  (:tunnel
   (&optional __tunnel)
   (if __tunnel (setq _tunnel __tunnel)) _tunnel)
  (:bridge
   (&optional __bridge)
   (if __bridge (setq _bridge __bridge)) _bridge)
  (:divided_road
   (&optional __divided_road)
   (if __divided_road (setq _divided_road __divided_road)) _divided_road)
  (:built_up_area
   (&optional __built_up_area)
   (if __built_up_area (setq _built_up_area __built_up_area)) _built_up_area)
  (:complex_intersection
   (&optional __complex_intersection)
   (if __complex_intersection (setq _complex_intersection __complex_intersection)) _complex_intersection)
  (:relative_probability
   (&optional __relative_probability)
   (if __relative_probability (setq _relative_probability __relative_probability)) _relative_probability)
  (:part_of_calculated_route
   (&optional __part_of_calculated_route)
   (if __part_of_calculated_route (setq _part_of_calculated_route __part_of_calculated_route)) _part_of_calculated_route)
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
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
    ;; uint8 _functional_road_class
    1
    ;; uint8 _form_of_way
    1
    ;; uint8 _effective_speed_limit
    1
    ;; uint8 _effective_speed_limit_type
    1
    ;; uint8 _lanes_num_of_driving_dir
    1
    ;; uint8 _lanes_num_of_opposite_dir
    1
    ;; uint8 _tunnel
    1
    ;; uint8 _bridge
    1
    ;; uint8 _divided_road
    1
    ;; uint8 _built_up_area
    1
    ;; uint8 _complex_intersection
    1
    ;; uint8 _relative_probability
    1
    ;; uint8 _part_of_calculated_route
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
     ;; uint8 _is_retransmission
       (write-byte _is_retransmission s)
     ;; uint8 _path_index
       (write-byte _path_index s)
     ;; uint16 _offset
       (write-word _offset s)
     ;; uint8 _is_update
       (write-byte _is_update s)
     ;; uint8 _functional_road_class
       (write-byte _functional_road_class s)
     ;; uint8 _form_of_way
       (write-byte _form_of_way s)
     ;; uint8 _effective_speed_limit
       (write-byte _effective_speed_limit s)
     ;; uint8 _effective_speed_limit_type
       (write-byte _effective_speed_limit_type s)
     ;; uint8 _lanes_num_of_driving_dir
       (write-byte _lanes_num_of_driving_dir s)
     ;; uint8 _lanes_num_of_opposite_dir
       (write-byte _lanes_num_of_opposite_dir s)
     ;; uint8 _tunnel
       (write-byte _tunnel s)
     ;; uint8 _bridge
       (write-byte _bridge s)
     ;; uint8 _divided_road
       (write-byte _divided_road s)
     ;; uint8 _built_up_area
       (write-byte _built_up_area s)
     ;; uint8 _complex_intersection
       (write-byte _complex_intersection s)
     ;; uint8 _relative_probability
       (write-byte _relative_probability s)
     ;; uint8 _part_of_calculated_route
       (write-byte _part_of_calculated_route s)
     ;; uint8 _reserved
       (write-byte _reserved s)
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
   ;; uint8 _functional_road_class
     (setq _functional_road_class (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _form_of_way
     (setq _form_of_way (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _effective_speed_limit
     (setq _effective_speed_limit (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _effective_speed_limit_type
     (setq _effective_speed_limit_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _lanes_num_of_driving_dir
     (setq _lanes_num_of_driving_dir (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _lanes_num_of_opposite_dir
     (setq _lanes_num_of_opposite_dir (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _tunnel
     (setq _tunnel (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _bridge
     (setq _bridge (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _divided_road
     (setq _divided_road (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _built_up_area
     (setq _built_up_area (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _complex_intersection
     (setq _complex_intersection (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _relative_probability
     (setq _relative_probability (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _part_of_calculated_route
     (setq _part_of_calculated_route (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _reserved
     (setq _reserved (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get adasis_v2_msgs::Segment :md5sum-) "721864ad7aba02e1ec6f73ff17a7fa8a")
(setf (get adasis_v2_msgs::Segment :datatype-) "adasis_v2_msgs/Segment")
(setf (get adasis_v2_msgs::Segment :definition-)
      "uint8 cyclic_counter
uint8 is_retransmission
uint8 path_index
uint16 offset
uint8 is_update
uint8 functional_road_class
uint8 form_of_way
uint8 effective_speed_limit
uint8 effective_speed_limit_type
uint8 lanes_num_of_driving_dir
uint8 lanes_num_of_opposite_dir
uint8 tunnel
uint8 bridge
uint8 divided_road
uint8 built_up_area
uint8 complex_intersection
uint8 relative_probability
uint8 part_of_calculated_route
uint8 reserved

")



(provide :adasis_v2_msgs/Segment "721864ad7aba02e1ec6f73ff17a7fa8a")


