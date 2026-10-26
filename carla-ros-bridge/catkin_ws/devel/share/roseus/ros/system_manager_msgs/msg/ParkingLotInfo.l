;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::ParkingLotInfo)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'ParkingLotInfo (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::PARKINGLOTINFO")
  (make-package "SYSTEM_MANAGER_MSGS::PARKINGLOTINFO"))

(in-package "ROS")
;;//! \htmlinclude ParkingLotInfo.msg.html
(if (not (find-package "MLA_LOCALIZATION_MSGS"))
  (ros::roseus-add-msgs "mla_localization_msgs"))


(defclass system_manager_msgs::ParkingLotInfo
  :super ros::object
  :slots (_dist _id _name _position _parking_space_id _parking_space_positions _trace_start_position _trace_end_position _type _render_data _address _trajectory_length _label _reversed ))

(defmethod system_manager_msgs::ParkingLotInfo
  (:init
   (&key
    ((:dist __dist) 0.0)
    ((:id __id) 0)
    ((:name __name) "")
    ((:position __position) (instance mla_localization_msgs::MLAPosGlobal :init))
    ((:parking_space_id __parking_space_id) 0)
    ((:parking_space_positions __parking_space_positions) ())
    ((:trace_start_position __trace_start_position) (instance mla_localization_msgs::MLAPosGlobal :init))
    ((:trace_end_position __trace_end_position) (instance mla_localization_msgs::MLAPosGlobal :init))
    ((:type __type) (instance system_manager_msgs::ParkingLotTypeEnum :init))
    ((:render_data __render_data) "")
    ((:address __address) "")
    ((:trajectory_length __trajectory_length) 0)
    ((:label __label) "")
    ((:reversed __reversed) "")
    )
   (send-super :init)
   (setq _dist (float __dist))
   (setq _id (round __id))
   (setq _name (string __name))
   (setq _position __position)
   (setq _parking_space_id (round __parking_space_id))
   (setq _parking_space_positions __parking_space_positions)
   (setq _trace_start_position __trace_start_position)
   (setq _trace_end_position __trace_end_position)
   (setq _type __type)
   (setq _render_data (string __render_data))
   (setq _address (string __address))
   (setq _trajectory_length (round __trajectory_length))
   (setq _label (string __label))
   (setq _reversed (string __reversed))
   self)
  (:dist
   (&optional __dist)
   (if __dist (setq _dist __dist)) _dist)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:parking_space_id
   (&optional __parking_space_id)
   (if __parking_space_id (setq _parking_space_id __parking_space_id)) _parking_space_id)
  (:parking_space_positions
   (&rest __parking_space_positions)
   (if (keywordp (car __parking_space_positions))
       (send* _parking_space_positions __parking_space_positions)
     (progn
       (if __parking_space_positions (setq _parking_space_positions (car __parking_space_positions)))
       _parking_space_positions)))
  (:trace_start_position
   (&rest __trace_start_position)
   (if (keywordp (car __trace_start_position))
       (send* _trace_start_position __trace_start_position)
     (progn
       (if __trace_start_position (setq _trace_start_position (car __trace_start_position)))
       _trace_start_position)))
  (:trace_end_position
   (&rest __trace_end_position)
   (if (keywordp (car __trace_end_position))
       (send* _trace_end_position __trace_end_position)
     (progn
       (if __trace_end_position (setq _trace_end_position (car __trace_end_position)))
       _trace_end_position)))
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:render_data
   (&optional __render_data)
   (if __render_data (setq _render_data __render_data)) _render_data)
  (:address
   (&optional __address)
   (if __address (setq _address __address)) _address)
  (:trajectory_length
   (&optional __trajectory_length)
   (if __trajectory_length (setq _trajectory_length __trajectory_length)) _trajectory_length)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:reversed
   (&optional __reversed)
   (if __reversed (setq _reversed __reversed)) _reversed)
  (:serialization-length
   ()
   (+
    ;; float32 _dist
    4
    ;; uint32 _id
    4
    ;; string _name
    4 (length _name)
    ;; mla_localization_msgs/MLAPosGlobal _position
    (send _position :serialization-length)
    ;; uint32 _parking_space_id
    4
    ;; mla_localization_msgs/MLAPosGlobal[] _parking_space_positions
    (apply #'+ (send-all _parking_space_positions :serialization-length)) 4
    ;; mla_localization_msgs/MLAPosGlobal _trace_start_position
    (send _trace_start_position :serialization-length)
    ;; mla_localization_msgs/MLAPosGlobal _trace_end_position
    (send _trace_end_position :serialization-length)
    ;; system_manager_msgs/ParkingLotTypeEnum _type
    (send _type :serialization-length)
    ;; string _render_data
    4 (length _render_data)
    ;; string _address
    4 (length _address)
    ;; uint32 _trajectory_length
    4
    ;; string _label
    4 (length _label)
    ;; string _reversed
    4 (length _reversed)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _dist
       (sys::poke _dist (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _id
       (write-long _id s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; mla_localization_msgs/MLAPosGlobal _position
       (send _position :serialize s)
     ;; uint32 _parking_space_id
       (write-long _parking_space_id s)
     ;; mla_localization_msgs/MLAPosGlobal[] _parking_space_positions
     (write-long (length _parking_space_positions) s)
     (dolist (elem _parking_space_positions)
       (send elem :serialize s)
       )
     ;; mla_localization_msgs/MLAPosGlobal _trace_start_position
       (send _trace_start_position :serialize s)
     ;; mla_localization_msgs/MLAPosGlobal _trace_end_position
       (send _trace_end_position :serialize s)
     ;; system_manager_msgs/ParkingLotTypeEnum _type
       (send _type :serialize s)
     ;; string _render_data
       (write-long (length _render_data) s) (princ _render_data s)
     ;; string _address
       (write-long (length _address) s) (princ _address s)
     ;; uint32 _trajectory_length
       (write-long _trajectory_length s)
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;; string _reversed
       (write-long (length _reversed) s) (princ _reversed s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _dist
     (setq _dist (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; mla_localization_msgs/MLAPosGlobal _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; uint32 _parking_space_id
     (setq _parking_space_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; mla_localization_msgs/MLAPosGlobal[] _parking_space_positions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _parking_space_positions (let (r) (dotimes (i n) (push (instance mla_localization_msgs::MLAPosGlobal :init) r)) r))
     (dolist (elem- _parking_space_positions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; mla_localization_msgs/MLAPosGlobal _trace_start_position
     (send _trace_start_position :deserialize buf ptr-) (incf ptr- (send _trace_start_position :serialization-length))
   ;; mla_localization_msgs/MLAPosGlobal _trace_end_position
     (send _trace_end_position :deserialize buf ptr-) (incf ptr- (send _trace_end_position :serialization-length))
   ;; system_manager_msgs/ParkingLotTypeEnum _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; string _render_data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _render_data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _address
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _address (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _trajectory_length
     (setq _trajectory_length (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _reversed
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reversed (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get system_manager_msgs::ParkingLotInfo :md5sum-) "3186515e4fbc521479112dbf39c899bf")
(setf (get system_manager_msgs::ParkingLotInfo :datatype-) "system_manager_msgs/ParkingLotInfo")
(setf (get system_manager_msgs::ParkingLotInfo :definition-)
      "float32 dist
uint32 id
string name
mla_localization_msgs/MLAPosGlobal position
uint32 parking_space_id
mla_localization_msgs/MLAPosGlobal[] parking_space_positions
mla_localization_msgs/MLAPosGlobal trace_start_position
mla_localization_msgs/MLAPosGlobal trace_end_position
system_manager_msgs/ParkingLotTypeEnum type
string render_data
string address
uint32 trajectory_length
string label
string reversed

================================================================================
MSG: mla_localization_msgs/MLAPosGlobal
float64 latitude
float64 longitude
float64 altitude

================================================================================
MSG: system_manager_msgs/ParkingLotTypeEnum
uint8 PNP = 0
uint8 LPNP = 1
uint8 BOTH = 2
uint8 type

")



(provide :system_manager_msgs/ParkingLotInfo "3186515e4fbc521479112dbf39c899bf")


