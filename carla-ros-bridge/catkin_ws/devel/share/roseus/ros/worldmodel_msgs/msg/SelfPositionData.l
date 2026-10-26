;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::SelfPositionData)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'SelfPositionData (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::SELFPOSITIONDATA")
  (make-package "WORLDMODEL_MSGS::SELFPOSITIONDATA"))

(in-package "ROS")
;;//! \htmlinclude SelfPositionData.msg.html


(defclass worldmodel_msgs::SelfPositionData
  :super ros::object
  :slots (_in_map_area _in_intersection _on_ramp _current_parking_slot_id ))

(defmethod worldmodel_msgs::SelfPositionData
  (:init
   (&key
    ((:in_map_area __in_map_area) nil)
    ((:in_intersection __in_intersection) nil)
    ((:on_ramp __on_ramp) nil)
    ((:current_parking_slot_id __current_parking_slot_id) 0)
    )
   (send-super :init)
   (setq _in_map_area __in_map_area)
   (setq _in_intersection __in_intersection)
   (setq _on_ramp __on_ramp)
   (setq _current_parking_slot_id (round __current_parking_slot_id))
   self)
  (:in_map_area
   (&optional (__in_map_area :null))
   (if (not (eq __in_map_area :null)) (setq _in_map_area __in_map_area)) _in_map_area)
  (:in_intersection
   (&optional (__in_intersection :null))
   (if (not (eq __in_intersection :null)) (setq _in_intersection __in_intersection)) _in_intersection)
  (:on_ramp
   (&optional (__on_ramp :null))
   (if (not (eq __on_ramp :null)) (setq _on_ramp __on_ramp)) _on_ramp)
  (:current_parking_slot_id
   (&optional __current_parking_slot_id)
   (if __current_parking_slot_id (setq _current_parking_slot_id __current_parking_slot_id)) _current_parking_slot_id)
  (:serialization-length
   ()
   (+
    ;; bool _in_map_area
    1
    ;; bool _in_intersection
    1
    ;; bool _on_ramp
    1
    ;; int32 _current_parking_slot_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _in_map_area
       (if _in_map_area (write-byte -1 s) (write-byte 0 s))
     ;; bool _in_intersection
       (if _in_intersection (write-byte -1 s) (write-byte 0 s))
     ;; bool _on_ramp
       (if _on_ramp (write-byte -1 s) (write-byte 0 s))
     ;; int32 _current_parking_slot_id
       (write-long _current_parking_slot_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _in_map_area
     (setq _in_map_area (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _in_intersection
     (setq _in_intersection (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _on_ramp
     (setq _on_ramp (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _current_parking_slot_id
     (setq _current_parking_slot_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get worldmodel_msgs::SelfPositionData :md5sum-) "2ec8531ae295755dd5b30c71eca0c224")
(setf (get worldmodel_msgs::SelfPositionData :datatype-) "worldmodel_msgs/SelfPositionData")
(setf (get worldmodel_msgs::SelfPositionData :definition-)
      "bool in_map_area
bool in_intersection
bool on_ramp
int32 current_parking_slot_id

")



(provide :worldmodel_msgs/SelfPositionData "2ec8531ae295755dd5b30c71eca0c224")


