;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::SuspensionHeightValid)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'SuspensionHeightValid (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::SUSPENSIONHEIGHTVALID")
  (make-package "ENDPOINT_MSGS::SUSPENSIONHEIGHTVALID"))

(in-package "ROS")
;;//! \htmlinclude SuspensionHeightValid.msg.html


(defclass endpoint_msgs::SuspensionHeightValid
  :super ros::object
  :slots (_front_left _front_right _rear_left _rear_right ))

(defmethod endpoint_msgs::SuspensionHeightValid
  (:init
   (&key
    ((:front_left __front_left) nil)
    ((:front_right __front_right) nil)
    ((:rear_left __rear_left) nil)
    ((:rear_right __rear_right) nil)
    )
   (send-super :init)
   (setq _front_left __front_left)
   (setq _front_right __front_right)
   (setq _rear_left __rear_left)
   (setq _rear_right __rear_right)
   self)
  (:front_left
   (&optional (__front_left :null))
   (if (not (eq __front_left :null)) (setq _front_left __front_left)) _front_left)
  (:front_right
   (&optional (__front_right :null))
   (if (not (eq __front_right :null)) (setq _front_right __front_right)) _front_right)
  (:rear_left
   (&optional (__rear_left :null))
   (if (not (eq __rear_left :null)) (setq _rear_left __rear_left)) _rear_left)
  (:rear_right
   (&optional (__rear_right :null))
   (if (not (eq __rear_right :null)) (setq _rear_right __rear_right)) _rear_right)
  (:serialization-length
   ()
   (+
    ;; bool _front_left
    1
    ;; bool _front_right
    1
    ;; bool _rear_left
    1
    ;; bool _rear_right
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _front_left
       (if _front_left (write-byte -1 s) (write-byte 0 s))
     ;; bool _front_right
       (if _front_right (write-byte -1 s) (write-byte 0 s))
     ;; bool _rear_left
       (if _rear_left (write-byte -1 s) (write-byte 0 s))
     ;; bool _rear_right
       (if _rear_right (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _front_left
     (setq _front_left (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _front_right
     (setq _front_right (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _rear_left
     (setq _rear_left (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _rear_right
     (setq _rear_right (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get endpoint_msgs::SuspensionHeightValid :md5sum-) "463c10ee21ee0ccee80e4d06b1d4c100")
(setf (get endpoint_msgs::SuspensionHeightValid :datatype-) "endpoint_msgs/SuspensionHeightValid")
(setf (get endpoint_msgs::SuspensionHeightValid :definition-)
      "bool front_left
bool front_right
bool rear_left
bool rear_right

")



(provide :endpoint_msgs/SuspensionHeightValid "463c10ee21ee0ccee80e4d06b1d4c100")


