;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::TrackId)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'TrackId (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::TRACKID")
  (make-package "LANDMARK_MSGS::TRACKID"))

(in-package "ROS")
;;//! \htmlinclude TrackId.msg.html


(defclass landmark_msgs::TrackId
  :super ros::object
  :slots (_is_visible _count _id _linked_id _map_id _area_id ))

(defmethod landmark_msgs::TrackId
  (:init
   (&key
    ((:is_visible __is_visible) nil)
    ((:count __count) 0)
    ((:id __id) 0)
    ((:linked_id __linked_id) 0)
    ((:map_id __map_id) 0)
    ((:area_id __area_id) 0)
    )
   (send-super :init)
   (setq _is_visible __is_visible)
   (setq _count (round __count))
   (setq _id (round __id))
   (setq _linked_id (round __linked_id))
   (setq _map_id (round __map_id))
   (setq _area_id (round __area_id))
   self)
  (:is_visible
   (&optional (__is_visible :null))
   (if (not (eq __is_visible :null)) (setq _is_visible __is_visible)) _is_visible)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:linked_id
   (&optional __linked_id)
   (if __linked_id (setq _linked_id __linked_id)) _linked_id)
  (:map_id
   (&optional __map_id)
   (if __map_id (setq _map_id __map_id)) _map_id)
  (:area_id
   (&optional __area_id)
   (if __area_id (setq _area_id __area_id)) _area_id)
  (:serialization-length
   ()
   (+
    ;; bool _is_visible
    1
    ;; uint8 _count
    1
    ;; uint32 _id
    4
    ;; uint32 _linked_id
    4
    ;; uint32 _map_id
    4
    ;; uint32 _area_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _is_visible
       (if _is_visible (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _count
       (write-byte _count s)
     ;; uint32 _id
       (write-long _id s)
     ;; uint32 _linked_id
       (write-long _linked_id s)
     ;; uint32 _map_id
       (write-long _map_id s)
     ;; uint32 _area_id
       (write-long _area_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _is_visible
     (setq _is_visible (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _count
     (setq _count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _linked_id
     (setq _linked_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _map_id
     (setq _map_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _area_id
     (setq _area_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get landmark_msgs::TrackId :md5sum-) "7dbec9f3c427083a5195518c14fad578")
(setf (get landmark_msgs::TrackId :datatype-) "landmark_msgs/TrackId")
(setf (get landmark_msgs::TrackId :definition-)
      "bool is_visible
uint8 count
uint32 id
uint32 linked_id
uint32 map_id
uint32 area_id

")



(provide :landmark_msgs/TrackId "7dbec9f3c427083a5195518c14fad578")


