;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::NoLaneChangeZone)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'NoLaneChangeZone (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::NOLANECHANGEZONE")
  (make-package "LANDMARK_MSGS::NOLANECHANGEZONE"))

(in-package "ROS")
;;//! \htmlinclude NoLaneChangeZone.msg.html


(intern "*UNKNOWN*" (find-package "LANDMARK_MSGS::NOLANECHANGEZONE"))
(shadow '*UNKNOWN* (find-package "LANDMARK_MSGS::NOLANECHANGEZONE"))
(defconstant landmark_msgs::NoLaneChangeZone::*UNKNOWN* 1)
(intern "*SOLID_LINE*" (find-package "LANDMARK_MSGS::NOLANECHANGEZONE"))
(shadow '*SOLID_LINE* (find-package "LANDMARK_MSGS::NOLANECHANGEZONE"))
(defconstant landmark_msgs::NoLaneChangeZone::*SOLID_LINE* 2)
(intern "*BUS_LANE*" (find-package "LANDMARK_MSGS::NOLANECHANGEZONE"))
(shadow '*BUS_LANE* (find-package "LANDMARK_MSGS::NOLANECHANGEZONE"))
(defconstant landmark_msgs::NoLaneChangeZone::*BUS_LANE* 3)
(intern "*OTHERS*" (find-package "LANDMARK_MSGS::NOLANECHANGEZONE"))
(shadow '*OTHERS* (find-package "LANDMARK_MSGS::NOLANECHANGEZONE"))
(defconstant landmark_msgs::NoLaneChangeZone::*OTHERS* 99)

(defun landmark_msgs::NoLaneChangeZone-to-symbol (const)
  (cond
        ((= const 1) 'landmark_msgs::NoLaneChangeZone::*UNKNOWN*)
        ((= const 2) 'landmark_msgs::NoLaneChangeZone::*SOLID_LINE*)
        ((= const 3) 'landmark_msgs::NoLaneChangeZone::*BUS_LANE*)
        ((= const 99) 'landmark_msgs::NoLaneChangeZone::*OTHERS*)
        (t nil)))

(defclass landmark_msgs::NoLaneChangeZone
  :super ros::object
  :slots (_type _start_offset _end_offset ))

(defmethod landmark_msgs::NoLaneChangeZone
  (:init
   (&key
    ((:type __type) 0)
    ((:start_offset __start_offset) 0.0)
    ((:end_offset __end_offset) 0.0)
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _start_offset (float __start_offset))
   (setq _end_offset (float __end_offset))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:start_offset
   (&optional __start_offset)
   (if __start_offset (setq _start_offset __start_offset)) _start_offset)
  (:end_offset
   (&optional __end_offset)
   (if __end_offset (setq _end_offset __end_offset)) _end_offset)
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ;; float32 _start_offset
    4
    ;; float32 _end_offset
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;; float32 _start_offset
       (sys::poke _start_offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _end_offset
       (sys::poke _end_offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _start_offset
     (setq _start_offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _end_offset
     (setq _end_offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get landmark_msgs::NoLaneChangeZone :md5sum-) "5c98538705c714cdca4883a9b81065a7")
(setf (get landmark_msgs::NoLaneChangeZone :datatype-) "landmark_msgs/NoLaneChangeZone")
(setf (get landmark_msgs::NoLaneChangeZone :definition-)
      "uint8 UNKNOWN = 1
uint8 SOLID_LINE = 2
uint8 BUS_LANE = 3
uint8 OTHERS = 99
uint8 type
float32 start_offset
float32 end_offset

")



(provide :landmark_msgs/NoLaneChangeZone "5c98538705c714cdca4883a9b81065a7")


