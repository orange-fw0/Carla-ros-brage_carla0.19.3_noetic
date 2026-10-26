;; Auto-generated. Do not edit!


(when (boundp 'can_bridge_msgs::CanMessage)
  (if (not (find-package "CAN_BRIDGE_MSGS"))
    (make-package "CAN_BRIDGE_MSGS"))
  (shadow 'CanMessage (find-package "CAN_BRIDGE_MSGS")))
(unless (find-package "CAN_BRIDGE_MSGS::CANMESSAGE")
  (make-package "CAN_BRIDGE_MSGS::CANMESSAGE"))

(in-package "ROS")
;;//! \htmlinclude CanMessage.msg.html


(defclass can_bridge_msgs::CanMessage
  :super ros::object
  :slots (_can_id _ts_offset _is_convert _channel _len _data ))

(defmethod can_bridge_msgs::CanMessage
  (:init
   (&key
    ((:can_id __can_id) 0)
    ((:ts_offset __ts_offset) 0)
    ((:is_convert __is_convert) 0)
    ((:channel __channel) 0)
    ((:len __len) 0)
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _can_id (round __can_id))
   (setq _ts_offset (round __ts_offset))
   (setq _is_convert (round __is_convert))
   (setq _channel (round __channel))
   (setq _len (round __len))
   (setq _data __data)
   self)
  (:can_id
   (&optional __can_id)
   (if __can_id (setq _can_id __can_id)) _can_id)
  (:ts_offset
   (&optional __ts_offset)
   (if __ts_offset (setq _ts_offset __ts_offset)) _ts_offset)
  (:is_convert
   (&optional __is_convert)
   (if __is_convert (setq _is_convert __is_convert)) _is_convert)
  (:channel
   (&optional __channel)
   (if __channel (setq _channel __channel)) _channel)
  (:len
   (&optional __len)
   (if __len (setq _len __len)) _len)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; uint32 _can_id
    4
    ;; int32 _ts_offset
    4
    ;; uint8 _is_convert
    1
    ;; uint8 _channel
    1
    ;; uint8 _len
    1
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _can_id
       (write-long _can_id s)
     ;; int32 _ts_offset
       (write-long _ts_offset s)
     ;; uint8 _is_convert
       (write-byte _is_convert s)
     ;; uint8 _channel
       (write-byte _channel s)
     ;; uint8 _len
       (write-byte _len s)
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _can_id
     (setq _can_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _ts_offset
     (setq _ts_offset (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _is_convert
     (setq _is_convert (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _channel
     (setq _channel (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _len
     (setq _len (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get can_bridge_msgs::CanMessage :md5sum-) "d1d55429697437cd2ea6a1e7d63dad9f")
(setf (get can_bridge_msgs::CanMessage :datatype-) "can_bridge_msgs/CanMessage")
(setf (get can_bridge_msgs::CanMessage :definition-)
      "uint32 can_id
int32 ts_offset
uint8 is_convert
uint8 channel
uint8 len
uint8[] data

")



(provide :can_bridge_msgs/CanMessage "d1d55429697437cd2ea6a1e7d63dad9f")


