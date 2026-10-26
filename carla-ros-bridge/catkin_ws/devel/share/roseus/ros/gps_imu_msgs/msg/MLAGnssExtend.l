;; Auto-generated. Do not edit!


(when (boundp 'gps_imu_msgs::MLAGnssExtend)
  (if (not (find-package "GPS_IMU_MSGS"))
    (make-package "GPS_IMU_MSGS"))
  (shadow 'MLAGnssExtend (find-package "GPS_IMU_MSGS")))
(unless (find-package "GPS_IMU_MSGS::MLAGNSSEXTEND")
  (make-package "GPS_IMU_MSGS::MLAGNSSEXTEND"))

(in-package "ROS")
;;//! \htmlinclude MLAGnssExtend.msg.html


(defclass gps_imu_msgs::MLAGnssExtend
  :super ros::object
  :slots (_sv_num _sv_id _sv_elv _sv_az _sv_cno _std_pe _std_pn _std_pu _std_ve _std_vn _std_vu _dual_antenna_azimuth _pdop _vdop _fix_type _alt_msl ))

(defmethod gps_imu_msgs::MLAGnssExtend
  (:init
   (&key
    ((:sv_num __sv_num) 0)
    ((:sv_id __sv_id) (make-array 0 :initial-element 0 :element-type :integer))
    ((:sv_elv __sv_elv) (make-array 0 :initial-element 0 :element-type :integer))
    ((:sv_az __sv_az) (make-array 0 :initial-element 0 :element-type :integer))
    ((:sv_cno __sv_cno) (make-array 0 :initial-element 0 :element-type :integer))
    ((:std_pe __std_pe) 0.0)
    ((:std_pn __std_pn) 0.0)
    ((:std_pu __std_pu) 0.0)
    ((:std_ve __std_ve) 0.0)
    ((:std_vn __std_vn) 0.0)
    ((:std_vu __std_vu) 0.0)
    ((:dual_antenna_azimuth __dual_antenna_azimuth) 0.0)
    ((:pdop __pdop) 0.0)
    ((:vdop __vdop) 0.0)
    ((:fix_type __fix_type) 0)
    ((:alt_msl __alt_msl) 0.0)
    )
   (send-super :init)
   (setq _sv_num (round __sv_num))
   (setq _sv_id __sv_id)
   (setq _sv_elv __sv_elv)
   (setq _sv_az __sv_az)
   (setq _sv_cno __sv_cno)
   (setq _std_pe (float __std_pe))
   (setq _std_pn (float __std_pn))
   (setq _std_pu (float __std_pu))
   (setq _std_ve (float __std_ve))
   (setq _std_vn (float __std_vn))
   (setq _std_vu (float __std_vu))
   (setq _dual_antenna_azimuth (float __dual_antenna_azimuth))
   (setq _pdop (float __pdop))
   (setq _vdop (float __vdop))
   (setq _fix_type (round __fix_type))
   (setq _alt_msl (float __alt_msl))
   self)
  (:sv_num
   (&optional __sv_num)
   (if __sv_num (setq _sv_num __sv_num)) _sv_num)
  (:sv_id
   (&optional __sv_id)
   (if __sv_id (setq _sv_id __sv_id)) _sv_id)
  (:sv_elv
   (&optional __sv_elv)
   (if __sv_elv (setq _sv_elv __sv_elv)) _sv_elv)
  (:sv_az
   (&optional __sv_az)
   (if __sv_az (setq _sv_az __sv_az)) _sv_az)
  (:sv_cno
   (&optional __sv_cno)
   (if __sv_cno (setq _sv_cno __sv_cno)) _sv_cno)
  (:std_pe
   (&optional __std_pe)
   (if __std_pe (setq _std_pe __std_pe)) _std_pe)
  (:std_pn
   (&optional __std_pn)
   (if __std_pn (setq _std_pn __std_pn)) _std_pn)
  (:std_pu
   (&optional __std_pu)
   (if __std_pu (setq _std_pu __std_pu)) _std_pu)
  (:std_ve
   (&optional __std_ve)
   (if __std_ve (setq _std_ve __std_ve)) _std_ve)
  (:std_vn
   (&optional __std_vn)
   (if __std_vn (setq _std_vn __std_vn)) _std_vn)
  (:std_vu
   (&optional __std_vu)
   (if __std_vu (setq _std_vu __std_vu)) _std_vu)
  (:dual_antenna_azimuth
   (&optional __dual_antenna_azimuth)
   (if __dual_antenna_azimuth (setq _dual_antenna_azimuth __dual_antenna_azimuth)) _dual_antenna_azimuth)
  (:pdop
   (&optional __pdop)
   (if __pdop (setq _pdop __pdop)) _pdop)
  (:vdop
   (&optional __vdop)
   (if __vdop (setq _vdop __vdop)) _vdop)
  (:fix_type
   (&optional __fix_type)
   (if __fix_type (setq _fix_type __fix_type)) _fix_type)
  (:alt_msl
   (&optional __alt_msl)
   (if __alt_msl (setq _alt_msl __alt_msl)) _alt_msl)
  (:serialization-length
   ()
   (+
    ;; int16 _sv_num
    2
    ;; int16[] _sv_id
    (* 2    (length _sv_id)) 4
    ;; int16[] _sv_elv
    (* 2    (length _sv_elv)) 4
    ;; int16[] _sv_az
    (* 2    (length _sv_az)) 4
    ;; int16[] _sv_cno
    (* 2    (length _sv_cno)) 4
    ;; float64 _std_pe
    8
    ;; float64 _std_pn
    8
    ;; float64 _std_pu
    8
    ;; float64 _std_ve
    8
    ;; float64 _std_vn
    8
    ;; float64 _std_vu
    8
    ;; float64 _dual_antenna_azimuth
    8
    ;; float64 _pdop
    8
    ;; float64 _vdop
    8
    ;; int8 _fix_type
    1
    ;; float64 _alt_msl
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _sv_num
       (write-word _sv_num s)
     ;; int16[] _sv_id
     (write-long (length _sv_id) s)
     (dotimes (i (length _sv_id))
       (write-word (elt _sv_id i) s)
       )
     ;; int16[] _sv_elv
     (write-long (length _sv_elv) s)
     (dotimes (i (length _sv_elv))
       (write-word (elt _sv_elv i) s)
       )
     ;; int16[] _sv_az
     (write-long (length _sv_az) s)
     (dotimes (i (length _sv_az))
       (write-word (elt _sv_az i) s)
       )
     ;; int16[] _sv_cno
     (write-long (length _sv_cno) s)
     (dotimes (i (length _sv_cno))
       (write-word (elt _sv_cno i) s)
       )
     ;; float64 _std_pe
       (sys::poke _std_pe (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _std_pn
       (sys::poke _std_pn (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _std_pu
       (sys::poke _std_pu (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _std_ve
       (sys::poke _std_ve (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _std_vn
       (sys::poke _std_vn (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _std_vu
       (sys::poke _std_vu (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dual_antenna_azimuth
       (sys::poke _dual_antenna_azimuth (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pdop
       (sys::poke _pdop (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vdop
       (sys::poke _vdop (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int8 _fix_type
       (write-byte _fix_type s)
     ;; float64 _alt_msl
       (sys::poke _alt_msl (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _sv_num
     (setq _sv_num (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16[] _sv_id
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sv_id (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _sv_id i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; int16[] _sv_elv
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sv_elv (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _sv_elv i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; int16[] _sv_az
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sv_az (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _sv_az i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; int16[] _sv_cno
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sv_cno (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _sv_cno i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; float64 _std_pe
     (setq _std_pe (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _std_pn
     (setq _std_pn (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _std_pu
     (setq _std_pu (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _std_ve
     (setq _std_ve (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _std_vn
     (setq _std_vn (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _std_vu
     (setq _std_vu (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dual_antenna_azimuth
     (setq _dual_antenna_azimuth (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pdop
     (setq _pdop (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vdop
     (setq _vdop (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int8 _fix_type
     (setq _fix_type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _fix_type 127) (setq _fix_type (- _fix_type 256)))
   ;; float64 _alt_msl
     (setq _alt_msl (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get gps_imu_msgs::MLAGnssExtend :md5sum-) "bf3d6e1b97ab50708c383964edf41b83")
(setf (get gps_imu_msgs::MLAGnssExtend :datatype-) "gps_imu_msgs/MLAGnssExtend")
(setf (get gps_imu_msgs::MLAGnssExtend :definition-)
      "int16 sv_num
int16[] sv_id
int16[] sv_elv
int16[] sv_az
int16[] sv_cno
float64 std_pe
float64 std_pn
float64 std_pu
float64 std_ve
float64 std_vn
float64 std_vu
float64 dual_antenna_azimuth
float64 pdop
float64 vdop
int8 fix_type
float64 alt_msl

")



(provide :gps_imu_msgs/MLAGnssExtend "bf3d6e1b97ab50708c383964edf41b83")


