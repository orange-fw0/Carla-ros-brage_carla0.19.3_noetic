;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSFaceQualityScoreResult)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSFaceQualityScoreResult (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSFACEQUALITYSCORERESULT")
  (make-package "DMS_MSGS::DMSFACEQUALITYSCORERESULT"))

(in-package "ROS")
;;//! \htmlinclude DMSFaceQualityScoreResult.msg.html


(defclass dms_msgs::DMSFaceQualityScoreResult
  :super ros::object
  :slots (_light_forehead_prob _light_eye_prob _light_nose_prob _light_mouth_prob _faceshade_forehead_prob _faceshade_eye_prob _faceshade_nose_prob _faceshade_mouth_prob _eye_left_prob _eye_right_prob _iris_left_prob _iris_right_prob _infrared_block_prob _yaw_region _pitch_region ))

(defmethod dms_msgs::DMSFaceQualityScoreResult
  (:init
   (&key
    ((:light_forehead_prob __light_forehead_prob) 0.0)
    ((:light_eye_prob __light_eye_prob) 0.0)
    ((:light_nose_prob __light_nose_prob) 0.0)
    ((:light_mouth_prob __light_mouth_prob) 0.0)
    ((:faceshade_forehead_prob __faceshade_forehead_prob) 0.0)
    ((:faceshade_eye_prob __faceshade_eye_prob) 0.0)
    ((:faceshade_nose_prob __faceshade_nose_prob) 0.0)
    ((:faceshade_mouth_prob __faceshade_mouth_prob) 0.0)
    ((:eye_left_prob __eye_left_prob) 0.0)
    ((:eye_right_prob __eye_right_prob) 0.0)
    ((:iris_left_prob __iris_left_prob) 0.0)
    ((:iris_right_prob __iris_right_prob) 0.0)
    ((:infrared_block_prob __infrared_block_prob) 0.0)
    ((:yaw_region __yaw_region) 0)
    ((:pitch_region __pitch_region) 0)
    )
   (send-super :init)
   (setq _light_forehead_prob (float __light_forehead_prob))
   (setq _light_eye_prob (float __light_eye_prob))
   (setq _light_nose_prob (float __light_nose_prob))
   (setq _light_mouth_prob (float __light_mouth_prob))
   (setq _faceshade_forehead_prob (float __faceshade_forehead_prob))
   (setq _faceshade_eye_prob (float __faceshade_eye_prob))
   (setq _faceshade_nose_prob (float __faceshade_nose_prob))
   (setq _faceshade_mouth_prob (float __faceshade_mouth_prob))
   (setq _eye_left_prob (float __eye_left_prob))
   (setq _eye_right_prob (float __eye_right_prob))
   (setq _iris_left_prob (float __iris_left_prob))
   (setq _iris_right_prob (float __iris_right_prob))
   (setq _infrared_block_prob (float __infrared_block_prob))
   (setq _yaw_region (round __yaw_region))
   (setq _pitch_region (round __pitch_region))
   self)
  (:light_forehead_prob
   (&optional __light_forehead_prob)
   (if __light_forehead_prob (setq _light_forehead_prob __light_forehead_prob)) _light_forehead_prob)
  (:light_eye_prob
   (&optional __light_eye_prob)
   (if __light_eye_prob (setq _light_eye_prob __light_eye_prob)) _light_eye_prob)
  (:light_nose_prob
   (&optional __light_nose_prob)
   (if __light_nose_prob (setq _light_nose_prob __light_nose_prob)) _light_nose_prob)
  (:light_mouth_prob
   (&optional __light_mouth_prob)
   (if __light_mouth_prob (setq _light_mouth_prob __light_mouth_prob)) _light_mouth_prob)
  (:faceshade_forehead_prob
   (&optional __faceshade_forehead_prob)
   (if __faceshade_forehead_prob (setq _faceshade_forehead_prob __faceshade_forehead_prob)) _faceshade_forehead_prob)
  (:faceshade_eye_prob
   (&optional __faceshade_eye_prob)
   (if __faceshade_eye_prob (setq _faceshade_eye_prob __faceshade_eye_prob)) _faceshade_eye_prob)
  (:faceshade_nose_prob
   (&optional __faceshade_nose_prob)
   (if __faceshade_nose_prob (setq _faceshade_nose_prob __faceshade_nose_prob)) _faceshade_nose_prob)
  (:faceshade_mouth_prob
   (&optional __faceshade_mouth_prob)
   (if __faceshade_mouth_prob (setq _faceshade_mouth_prob __faceshade_mouth_prob)) _faceshade_mouth_prob)
  (:eye_left_prob
   (&optional __eye_left_prob)
   (if __eye_left_prob (setq _eye_left_prob __eye_left_prob)) _eye_left_prob)
  (:eye_right_prob
   (&optional __eye_right_prob)
   (if __eye_right_prob (setq _eye_right_prob __eye_right_prob)) _eye_right_prob)
  (:iris_left_prob
   (&optional __iris_left_prob)
   (if __iris_left_prob (setq _iris_left_prob __iris_left_prob)) _iris_left_prob)
  (:iris_right_prob
   (&optional __iris_right_prob)
   (if __iris_right_prob (setq _iris_right_prob __iris_right_prob)) _iris_right_prob)
  (:infrared_block_prob
   (&optional __infrared_block_prob)
   (if __infrared_block_prob (setq _infrared_block_prob __infrared_block_prob)) _infrared_block_prob)
  (:yaw_region
   (&optional __yaw_region)
   (if __yaw_region (setq _yaw_region __yaw_region)) _yaw_region)
  (:pitch_region
   (&optional __pitch_region)
   (if __pitch_region (setq _pitch_region __pitch_region)) _pitch_region)
  (:serialization-length
   ()
   (+
    ;; float32 _light_forehead_prob
    4
    ;; float32 _light_eye_prob
    4
    ;; float32 _light_nose_prob
    4
    ;; float32 _light_mouth_prob
    4
    ;; float32 _faceshade_forehead_prob
    4
    ;; float32 _faceshade_eye_prob
    4
    ;; float32 _faceshade_nose_prob
    4
    ;; float32 _faceshade_mouth_prob
    4
    ;; float32 _eye_left_prob
    4
    ;; float32 _eye_right_prob
    4
    ;; float32 _iris_left_prob
    4
    ;; float32 _iris_right_prob
    4
    ;; float32 _infrared_block_prob
    4
    ;; int32 _yaw_region
    4
    ;; int32 _pitch_region
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _light_forehead_prob
       (sys::poke _light_forehead_prob (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _light_eye_prob
       (sys::poke _light_eye_prob (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _light_nose_prob
       (sys::poke _light_nose_prob (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _light_mouth_prob
       (sys::poke _light_mouth_prob (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _faceshade_forehead_prob
       (sys::poke _faceshade_forehead_prob (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _faceshade_eye_prob
       (sys::poke _faceshade_eye_prob (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _faceshade_nose_prob
       (sys::poke _faceshade_nose_prob (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _faceshade_mouth_prob
       (sys::poke _faceshade_mouth_prob (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _eye_left_prob
       (sys::poke _eye_left_prob (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _eye_right_prob
       (sys::poke _eye_right_prob (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _iris_left_prob
       (sys::poke _iris_left_prob (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _iris_right_prob
       (sys::poke _iris_right_prob (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _infrared_block_prob
       (sys::poke _infrared_block_prob (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _yaw_region
       (write-long _yaw_region s)
     ;; int32 _pitch_region
       (write-long _pitch_region s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _light_forehead_prob
     (setq _light_forehead_prob (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _light_eye_prob
     (setq _light_eye_prob (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _light_nose_prob
     (setq _light_nose_prob (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _light_mouth_prob
     (setq _light_mouth_prob (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _faceshade_forehead_prob
     (setq _faceshade_forehead_prob (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _faceshade_eye_prob
     (setq _faceshade_eye_prob (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _faceshade_nose_prob
     (setq _faceshade_nose_prob (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _faceshade_mouth_prob
     (setq _faceshade_mouth_prob (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _eye_left_prob
     (setq _eye_left_prob (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _eye_right_prob
     (setq _eye_right_prob (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _iris_left_prob
     (setq _iris_left_prob (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _iris_right_prob
     (setq _iris_right_prob (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _infrared_block_prob
     (setq _infrared_block_prob (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _yaw_region
     (setq _yaw_region (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _pitch_region
     (setq _pitch_region (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dms_msgs::DMSFaceQualityScoreResult :md5sum-) "7b9b4dbac63c0d367df4b6851a103a01")
(setf (get dms_msgs::DMSFaceQualityScoreResult :datatype-) "dms_msgs/DMSFaceQualityScoreResult")
(setf (get dms_msgs::DMSFaceQualityScoreResult :definition-)
      "float32 light_forehead_prob
float32 light_eye_prob
float32 light_nose_prob
float32 light_mouth_prob
float32 faceshade_forehead_prob
float32 faceshade_eye_prob
float32 faceshade_nose_prob
float32 faceshade_mouth_prob
float32 eye_left_prob
float32 eye_right_prob
float32 iris_left_prob
float32 iris_right_prob
float32 infrared_block_prob
int32 yaw_region
int32 pitch_region

")



(provide :dms_msgs/DMSFaceQualityScoreResult "7b9b4dbac63c0d367df4b6851a103a01")


