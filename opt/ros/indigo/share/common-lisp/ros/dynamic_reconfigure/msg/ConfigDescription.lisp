; Auto-generated. Do not edit!


(cl:in-package dynamic_reconfigure-msg)


;//! \htmlinclude ConfigDescription.msg.html

(cl:defclass <ConfigDescription> (roslisp-msg-protocol:ros-message)
  ((groups
    :reader groups
    :initarg :groups
    :type (cl:vector dynamic_reconfigure-msg:Group)
   :initform (cl:make-array 0 :element-type 'dynamic_reconfigure-msg:Group :initial-element (cl:make-instance 'dynamic_reconfigure-msg:Group)))
   (max
    :reader max
    :initarg :max
    :type dynamic_reconfigure-msg:Config
    :initform (cl:make-instance 'dynamic_reconfigure-msg:Config))
   (min
    :reader min
    :initarg :min
    :type dynamic_reconfigure-msg:Config
    :initform (cl:make-instance 'dynamic_reconfigure-msg:Config))
   (dflt
    :reader dflt
    :initarg :dflt
    :type dynamic_reconfigure-msg:Config
    :initform (cl:make-instance 'dynamic_reconfigure-msg:Config)))
)

(cl:defclass ConfigDescription (<ConfigDescription>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConfigDescription>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConfigDescription)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dynamic_reconfigure-msg:<ConfigDescription> is deprecated: use dynamic_reconfigure-msg:ConfigDescription instead.")))

(cl:ensure-generic-function 'groups-val :lambda-list '(m))
(cl:defmethod groups-val ((m <ConfigDescription>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamic_reconfigure-msg:groups-val is deprecated.  Use dynamic_reconfigure-msg:groups instead.")
  (groups m))

(cl:ensure-generic-function 'max-val :lambda-list '(m))
(cl:defmethod max-val ((m <ConfigDescription>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamic_reconfigure-msg:max-val is deprecated.  Use dynamic_reconfigure-msg:max instead.")
  (max m))

(cl:ensure-generic-function 'min-val :lambda-list '(m))
(cl:defmethod min-val ((m <ConfigDescription>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamic_reconfigure-msg:min-val is deprecated.  Use dynamic_reconfigure-msg:min instead.")
  (min m))

(cl:ensure-generic-function 'dflt-val :lambda-list '(m))
(cl:defmethod dflt-val ((m <ConfigDescription>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamic_reconfigure-msg:dflt-val is deprecated.  Use dynamic_reconfigure-msg:dflt instead.")
  (dflt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConfigDescription>) ostream)
  "Serializes a message object of type '<ConfigDescription>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'groups))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'groups))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'max) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'min) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dflt) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConfigDescription>) istream)
  "Deserializes a message object of type '<ConfigDescription>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'groups) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'groups)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dynamic_reconfigure-msg:Group))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'max) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'min) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dflt) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConfigDescription>)))
  "Returns string type for a message object of type '<ConfigDescription>"
  "dynamic_reconfigure/ConfigDescription")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConfigDescription)))
  "Returns string type for a message object of type 'ConfigDescription"
  "dynamic_reconfigure/ConfigDescription")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConfigDescription>)))
  "Returns md5sum for a message object of type '<ConfigDescription>"
  "757ce9d44ba8ddd801bb30bc456f946f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConfigDescription)))
  "Returns md5sum for a message object of type 'ConfigDescription"
  "757ce9d44ba8ddd801bb30bc456f946f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConfigDescription>)))
  "Returns full string definition for message of type '<ConfigDescription>"
  (cl:format cl:nil "Group[] groups~%Config max~%Config min~%Config dflt~%~%================================================================================~%MSG: dynamic_reconfigure/Group~%string name~%string type~%ParamDescription[] parameters~%int32 parent ~%int32 id~%~%================================================================================~%MSG: dynamic_reconfigure/ParamDescription~%string name~%string type~%uint32 level~%string description~%string edit_method~%~%================================================================================~%MSG: dynamic_reconfigure/Config~%BoolParameter[] bools~%IntParameter[] ints~%StrParameter[] strs~%DoubleParameter[] doubles~%GroupState[] groups~%~%================================================================================~%MSG: dynamic_reconfigure/BoolParameter~%string name~%bool value~%~%================================================================================~%MSG: dynamic_reconfigure/IntParameter~%string name~%int32 value~%~%================================================================================~%MSG: dynamic_reconfigure/StrParameter~%string name~%string value~%~%================================================================================~%MSG: dynamic_reconfigure/DoubleParameter~%string name~%float64 value~%~%================================================================================~%MSG: dynamic_reconfigure/GroupState~%string name~%bool state~%int32 id~%int32 parent~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConfigDescription)))
  "Returns full string definition for message of type 'ConfigDescription"
  (cl:format cl:nil "Group[] groups~%Config max~%Config min~%Config dflt~%~%================================================================================~%MSG: dynamic_reconfigure/Group~%string name~%string type~%ParamDescription[] parameters~%int32 parent ~%int32 id~%~%================================================================================~%MSG: dynamic_reconfigure/ParamDescription~%string name~%string type~%uint32 level~%string description~%string edit_method~%~%================================================================================~%MSG: dynamic_reconfigure/Config~%BoolParameter[] bools~%IntParameter[] ints~%StrParameter[] strs~%DoubleParameter[] doubles~%GroupState[] groups~%~%================================================================================~%MSG: dynamic_reconfigure/BoolParameter~%string name~%bool value~%~%================================================================================~%MSG: dynamic_reconfigure/IntParameter~%string name~%int32 value~%~%================================================================================~%MSG: dynamic_reconfigure/StrParameter~%string name~%string value~%~%================================================================================~%MSG: dynamic_reconfigure/DoubleParameter~%string name~%float64 value~%~%================================================================================~%MSG: dynamic_reconfigure/GroupState~%string name~%bool state~%int32 id~%int32 parent~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConfigDescription>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'groups) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'max))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'min))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dflt))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConfigDescription>))
  "Converts a ROS message object to a list"
  (cl:list 'ConfigDescription
    (cl:cons ':groups (groups msg))
    (cl:cons ':max (max msg))
    (cl:cons ':min (min msg))
    (cl:cons ':dflt (dflt msg))
))
