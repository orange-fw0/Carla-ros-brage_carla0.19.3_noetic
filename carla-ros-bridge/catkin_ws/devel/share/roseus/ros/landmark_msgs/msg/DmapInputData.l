;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::DmapInputData)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'DmapInputData (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::DMAPINPUTDATA")
  (make-package "LANDMARK_MSGS::DMAPINPUTDATA"))

(in-package "ROS")
;;//! \htmlinclude DmapInputData.msg.html


(defclass landmark_msgs::DmapInputData
  :super ros::object
  :slots (_input_name _shape _data ))

(defmethod landmark_msgs::DmapInputData
  (:init
   (&key
    ((:input_name __input_name) "")
    ((:shape __shape) (make-array 0 :initial-element 0 :element-type :integer))
    ((:data __data) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _input_name (string __input_name))
   (setq _shape __shape)
   (setq _data __data)
   self)
  (:input_name
   (&optional __input_name)
   (if __input_name (setq _input_name __input_name)) _input_name)
  (:shape
   (&optional __shape)
   (if __shape (setq _shape __shape)) _shape)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _input_name
    4 (length _input_name)
    ;; int32[] _shape
    (* 4    (length _shape)) 4
    ;; float32[] _data
    (* 4    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _input_name
       (write-long (length _input_name) s) (princ _input_name s)
     ;; int32[] _shape
     (write-long (length _shape) s)
     (dotimes (i (length _shape))
       (write-long (elt _shape i) s)
       )
     ;; float32[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (sys::poke (elt _data i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _input_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _input_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32[] _shape
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _shape (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _shape i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float32[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get landmark_msgs::DmapInputData :md5sum-) "ec23371b1ad51297867d75972342a97e")
(setf (get landmark_msgs::DmapInputData :datatype-) "landmark_msgs/DmapInputData")
(setf (get landmark_msgs::DmapInputData :definition-)
      "string input_name
int32[] shape
float32[] data

")



(provide :landmark_msgs/DmapInputData "ec23371b1ad51297867d75972342a97e")


