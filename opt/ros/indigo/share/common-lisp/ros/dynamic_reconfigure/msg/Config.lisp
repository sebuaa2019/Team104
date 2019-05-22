; Auto-generated. Do not edit!


(cl:in-package dynamic_reconfigure-msg)


;//! \htmlinclude Config.msg.html

(cl:defclass <Config> (roslisp-msg-protocol:ros-message)
  ((bools
    :reader bools
    :initarg :bools
    :type (cl:vector dynamic_reconfigure-msg:BoolParameter)
   :initform (cl:make-array 0 :element-type 'dynamic_reconfigure-msg:BoolParameter :initial-element (cl:make-instance 'dynamic_reconfigure-msg:BoolParameter)))
   (ints
    :reader ints
    :initarg :ints
    :type (cl:vector dynamic_reconfigure-msg:IntParameter)
   :initform (cl:make-array 0 :element-type 'dynamic_reconfigure-msg:IntParameter :initial-element (cl:make-instance 'dynamic_reconfigure-msg:IntParameter)))
   (strs
    :reader strs
    :initarg :strs
    :type (cl:vector dynamic_reconfigure-msg:StrParameter)
   :initform (cl:make-array 0 :element-type 'dynamic_reconfigure-msg:StrParameter :initial-element (cl:make-instance 'dynamic_reconfigure-msg:StrParameter)))
   (doubles
    :reader doubles
    :initarg :doubles
    :type (cl:vector dynamic_reconfigure-msg:DoubleParameter)
   :initform (cl:make-array 0 :element-type 'dynamic_reconfigure-msg:DoubleParameter :initial-element (cl:make-instance 'dynamic_reconfigure-msg:DoubleParameter)))
   (groups
    :reader groups
    :initarg :groups
    :type (cl:vector dynamic_reconfigure-msg:GroupState)
   :initform (cl:make-array 0 :element-type 'dynamic_reconfigure-msg:GroupState :initial-element (cl:make-instance 'dynamic_reconfigure-msg:GroupState))))
)

(cl:defclass Config (<Config>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Config>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Config)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dynamic_reconfigure-msg:<Config> is deprecated: use dynamic_reconfigure-msg:Config instead.")))

(cl:ensure-generic-function 'bools-val :lambda-list '(m))
(cl:defmethod bools-val ((m <Config>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamic_reconfigure-msg:bools-val is deprecated.  Use dynamic_reconfigure-msg:bools instead.")
  (bools m))

(cl:ensure-generic-function 'ints-val :lambda-list '(m))
(cl:defmethod ints-val ((m <Config>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamic_reconfigure-msg:ints-val is deprecated.  Use dynamic_reconfigure-msg:ints instead.")
  (ints m))

(cl:ensure-generic-function 'strs-val :lambda-list '(m))
(cl:defmethod strs-val ((m <Config>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamic_reconfigure-msg:strs-val is deprecated.  Use dynamic_reconfigure-msg:strs instead.")
  (strs m))

(cl:ensure-generic-function 'doubles-val :lambda-list '(m))
(cl:defmethod doubles-val ((m <Config>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamic_reconfigure-msg:doubles-val is deprecated.  Use dynamic_reconfigure-msg:doubles instead.")
  (doubles m))

(cl:ensure-generic-function 'groups-val :lambda-list '(m))
(cl:defmethod groups-val ((m <Config>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamic_reconfigure-msg:groups-val is deprecated.  Use dynamic_reconfigure-msg:groups instead.")
  (groups m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Config>) ostream)
  "Serializes a message object of type '<Config>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'bools))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'bools))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'ints))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'strs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'strs))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'doubles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'doubles))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'groups))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'groups))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Config>) istream)
  "Deserializes a message object of type '<Config>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'bools) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'bools)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dynamic_reconfigure-msg:BoolParameter))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dynamic_reconfigure-msg:IntParameter))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'strs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'strs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dynamic_reconfigure-msg:StrParameter))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'doubles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'doubles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dynamic_reconfigure-msg:DoubleParameter))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'groups) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'groups)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dynamic_reconfigure-msg:GroupState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Config>)))
  "Returns string type for a message object of type '<Config>"
  "dynamic_reconfigure/Config")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Config)))
  "Returns string type for a message object of type 'Config"
  "dynamic_reconfigure/Config")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Config>)))
  "Returns md5sum for a message object of type '<Config>"
  "958f16a05573709014982821e6822580")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Config)))
  "Returns md5sum for a message object of type 'Config"
  "958f16a05573709014982821e6822580")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Config>)))
  "Returns full string definition for message of type '<Config>"
  (cl:format cl:nil "BoolParameter[] bools~%IntParameter[] ints~%StrParameter[] strs~%DoubleParameter[] doubles~%GroupState[] groups~%~%================================================================================~%MSG: dynamic_reconfigure/BoolParameter~%string name~%bool value~%~%================================================================================~%MSG: dynamic_reconfigure/IntParameter~%string name~%int32 value~%~%================================================================================~%MSG: dynamic_reconfigure/StrParameter~%string name~%string value~%~%================================================================================~%MSG: dynamic_reconfigure/DoubleParameter~%string name~%float64 value~%~%================================================================================~%MSG: dynamic_reconfigure/GroupState~%string name~%bool state~%int32 id~%int32 parent~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Config)))
  "Returns full string definition for message of type 'Config"
  (cl:format cl:nil "BoolParameter[] bools~%IntParameter[] ints~%StrParameter[] strs~%DoubleParameter[] doubles~%GroupState[] groups~%~%================================================================================~%MSG: dynamic_reconfigure/BoolParameter~%string name~%bool value~%~%================================================================================~%MSG: dynamic_reconfigure/IntParameter~%string name~%int32 value~%~%================================================================================~%MSG: dynamic_reconfigure/StrParameter~%string name~%string value~%~%================================================================================~%MSG: dynamic_reconfigure/DoubleParameter~%string name~%float64 value~%~%================================================================================~%MSG: dynamic_reconfigure/GroupState~%string name~%bool state~%int32 id~%int32 parent~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Config>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'bools) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'strs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'doubles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'groups) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Config>))
  "Converts a ROS message object to a list"
  (cl:list 'Config
    (cl:cons ':bools (bools msg))
    (cl:cons ':ints (ints msg))
    (cl:cons ':strs (strs msg))
    (cl:cons ':doubles (doubles msg))
    (cl:cons ':groups (groups msg))
))
