;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::SuspensionHeight)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'SuspensionHeight (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::SUSPENSIONHEIGHT")
  (make-package "ENDPOINT_MSGS::SUSPENSIONHEIGHT"))

(in-package "ROS")
;;//! \htmlinclude SuspensionHeight.msg.html


(defclass endpoint_msgs::SuspensionHeight
  :super ros::object
  :slots (_front_left _front_right _rear_left _rear_right ))

(defmethod endpoint_msgs::SuspensionHeight
  (:init
   (&key
    ((:front_left __front_left) 0)
    ((:front_right __front_right) 0)
    ((:rear_left __rear_left) 0)
    ((:rear_right __rear_right) 0)
    )
   (send-super :init)
   (setq _front_left (round __front_left))
   (setq _front_right (round __front_right))
   (setq _rear_left (round __rear_left))
   (setq _rear_right (round __rear_right))
   self)
  (:front_left
   (&optional __front_left)
   (if __front_left (setq _front_left __front_left)) _front_left)
  (:front_right
   (&optional __front_right)
   (if __front_right (setq _front_right __front_right)) _front_right)
  (:rear_left
   (&optional __rear_left)
   (if __rear_left (setq _rear_left __rear_left)) _rear_left)
  (:rear_right
   (&optional __rear_right)
   (if __rear_right (setq _rear_right __rear_right)) _rear_right)
  (:serialization-length
   ()
   (+
    ;; int8 _front_left
    1
    ;; int8 _front_right
    1
    ;; int8 _rear_left
    1
    ;; int8 _rear_right
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _front_left
       (write-byte _front_left s)
     ;; int8 _front_right
       (write-byte _front_right s)
     ;; int8 _rear_left
       (write-byte _rear_left s)
     ;; int8 _rear_right
       (write-byte _rear_right s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _front_left
     (setq _front_left (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _front_left 127) (setq _front_left (- _front_left 256)))
   ;; int8 _front_right
     (setq _front_right (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _front_right 127) (setq _front_right (- _front_right 256)))
   ;; int8 _rear_left
     (setq _rear_left (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _rear_left 127) (setq _rear_left (- _rear_left 256)))
   ;; int8 _rear_right
     (setq _rear_right (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _rear_right 127) (setq _rear_right (- _rear_right 256)))
   ;;
   self)
  )

(setf (get endpoint_msgs::SuspensionHeight :md5sum-) "a391049fca247e3d60e3a900b93bbf54")
(setf (get endpoint_msgs::SuspensionHeight :datatype-) "endpoint_msgs/SuspensionHeight")
(setf (get endpoint_msgs::SuspensionHeight :definition-)
      "int8 front_left
int8 front_right
int8 rear_left
int8 rear_right

")



(provide :endpoint_msgs/SuspensionHeight "a391049fca247e3d60e3a900b93bbf54")


