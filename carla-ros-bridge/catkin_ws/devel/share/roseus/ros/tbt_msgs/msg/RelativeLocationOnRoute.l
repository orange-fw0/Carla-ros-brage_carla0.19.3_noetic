;; Auto-generated. Do not edit!


(when (boundp 'tbt_msgs::RelativeLocationOnRoute)
  (if (not (find-package "TBT_MSGS"))
    (make-package "TBT_MSGS"))
  (shadow 'RelativeLocationOnRoute (find-package "TBT_MSGS")))
(unless (find-package "TBT_MSGS::RELATIVELOCATIONONROUTE")
  (make-package "TBT_MSGS::RELATIVELOCATIONONROUTE"))

(in-package "ROS")
;;//! \htmlinclude RelativeLocationOnRoute.msg.html


(defclass tbt_msgs::RelativeLocationOnRoute
  :super ros::object
  :slots (_ori_cur_step_id _ori_cur_link_id_in_step _ori_link_offset _link_index _offset _valid ))

(defmethod tbt_msgs::RelativeLocationOnRoute
  (:init
   (&key
    ((:ori_cur_step_id __ori_cur_step_id) 0)
    ((:ori_cur_link_id_in_step __ori_cur_link_id_in_step) 0)
    ((:ori_link_offset __ori_link_offset) 0)
    ((:link_index __link_index) 0)
    ((:offset __offset) 0)
    ((:valid __valid) 0)
    )
   (send-super :init)
   (setq _ori_cur_step_id (round __ori_cur_step_id))
   (setq _ori_cur_link_id_in_step (round __ori_cur_link_id_in_step))
   (setq _ori_link_offset (round __ori_link_offset))
   (setq _link_index (round __link_index))
   (setq _offset (round __offset))
   (setq _valid (round __valid))
   self)
  (:ori_cur_step_id
   (&optional __ori_cur_step_id)
   (if __ori_cur_step_id (setq _ori_cur_step_id __ori_cur_step_id)) _ori_cur_step_id)
  (:ori_cur_link_id_in_step
   (&optional __ori_cur_link_id_in_step)
   (if __ori_cur_link_id_in_step (setq _ori_cur_link_id_in_step __ori_cur_link_id_in_step)) _ori_cur_link_id_in_step)
  (:ori_link_offset
   (&optional __ori_link_offset)
   (if __ori_link_offset (setq _ori_link_offset __ori_link_offset)) _ori_link_offset)
  (:link_index
   (&optional __link_index)
   (if __link_index (setq _link_index __link_index)) _link_index)
  (:offset
   (&optional __offset)
   (if __offset (setq _offset __offset)) _offset)
  (:valid
   (&optional __valid)
   (if __valid (setq _valid __valid)) _valid)
  (:serialization-length
   ()
   (+
    ;; uint32 _ori_cur_step_id
    4
    ;; uint32 _ori_cur_link_id_in_step
    4
    ;; uint32 _ori_link_offset
    4
    ;; uint32 _link_index
    4
    ;; uint32 _offset
    4
    ;; uint8 _valid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _ori_cur_step_id
       (write-long _ori_cur_step_id s)
     ;; uint32 _ori_cur_link_id_in_step
       (write-long _ori_cur_link_id_in_step s)
     ;; uint32 _ori_link_offset
       (write-long _ori_link_offset s)
     ;; uint32 _link_index
       (write-long _link_index s)
     ;; uint32 _offset
       (write-long _offset s)
     ;; uint8 _valid
       (write-byte _valid s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _ori_cur_step_id
     (setq _ori_cur_step_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _ori_cur_link_id_in_step
     (setq _ori_cur_link_id_in_step (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _ori_link_offset
     (setq _ori_link_offset (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _link_index
     (setq _link_index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _offset
     (setq _offset (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _valid
     (setq _valid (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get tbt_msgs::RelativeLocationOnRoute :md5sum-) "605e58d4b028301bebad62b632acdfa6")
(setf (get tbt_msgs::RelativeLocationOnRoute :datatype-) "tbt_msgs/RelativeLocationOnRoute")
(setf (get tbt_msgs::RelativeLocationOnRoute :definition-)
      "uint32 ori_cur_step_id
uint32 ori_cur_link_id_in_step
uint32 ori_link_offset
uint32 link_index
uint32 offset
uint8 valid

")



(provide :tbt_msgs/RelativeLocationOnRoute "605e58d4b028301bebad62b632acdfa6")


