; Auto-generated. Do not edit!


(cl:in-package control_msgs-msg)


;//! \htmlinclude SingleJointPositionGoal.msg.html

(cl:defclass <SingleJointPositionGoal> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type cl:float
    :initform 0.0)
   (min_duration
    :reader min_duration
    :initarg :min_duration
    :type cl:real
    :initform 0)
   (max_velocity
    :reader max_velocity
    :initarg :max_velocity
    :type cl:float
    :initform 0.0))
)

(cl:defclass SingleJointPositionGoal (<SingleJointPositionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SingleJointPositionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SingleJointPositionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name control_msgs-msg:<SingleJointPositionGoal> is deprecated: use control_msgs-msg:SingleJointPositionGoal instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <SingleJointPositionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:position-val is deprecated.  Use control_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'min_duration-val :lambda-list '(m))
(cl:defmethod min_duration-val ((m <SingleJointPositionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:min_duration-val is deprecated.  Use control_msgs-msg:min_duration instead.")
  (min_duration m))

(cl:ensure-generic-function 'max_velocity-val :lambda-list '(m))
(cl:defmethod max_velocity-val ((m <SingleJointPositionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:max_velocity-val is deprecated.  Use control_msgs-msg:max_velocity instead.")
  (max_velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SingleJointPositionGoal>) ostream)
  "Serializes a message object of type '<SingleJointPositionGoal>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'min_duration)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'min_duration) (cl:floor (cl:slot-value msg 'min_duration)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SingleJointPositionGoal>) istream)
  "Deserializes a message object of type '<SingleJointPositionGoal>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'min_duration) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_velocity) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SingleJointPositionGoal>)))
  "Returns string type for a message object of type '<SingleJointPositionGoal>"
  "control_msgs/SingleJointPositionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SingleJointPositionGoal)))
  "Returns string type for a message object of type 'SingleJointPositionGoal"
  "control_msgs/SingleJointPositionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SingleJointPositionGoal>)))
  "Returns md5sum for a message object of type '<SingleJointPositionGoal>"
  "fbaaa562a23a013fd5053e5f72cbb35c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SingleJointPositionGoal)))
  "Returns md5sum for a message object of type 'SingleJointPositionGoal"
  "fbaaa562a23a013fd5053e5f72cbb35c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SingleJointPositionGoal>)))
  "Returns full string definition for message of type '<SingleJointPositionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%float64 position~%duration min_duration~%float64 max_velocity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SingleJointPositionGoal)))
  "Returns full string definition for message of type 'SingleJointPositionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%float64 position~%duration min_duration~%float64 max_velocity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SingleJointPositionGoal>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SingleJointPositionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'SingleJointPositionGoal
    (cl:cons ':position (position msg))
    (cl:cons ':min_duration (min_duration msg))
    (cl:cons ':max_velocity (max_velocity msg))
))
