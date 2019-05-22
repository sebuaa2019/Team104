; Auto-generated. Do not edit!


(cl:in-package rosgraph_msgs-msg)


;//! \htmlinclude Clock.msg.html

(cl:defclass <Clock> (roslisp-msg-protocol:ros-message)
  ((clock
    :reader clock
    :initarg :clock
    :type cl:real
    :initform 0))
)

(cl:defclass Clock (<Clock>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Clock>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Clock)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosgraph_msgs-msg:<Clock> is deprecated: use rosgraph_msgs-msg:Clock instead.")))

(cl:ensure-generic-function 'clock-val :lambda-list '(m))
(cl:defmethod clock-val ((m <Clock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosgraph_msgs-msg:clock-val is deprecated.  Use rosgraph_msgs-msg:clock instead.")
  (clock m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Clock>) ostream)
  "Serializes a message object of type '<Clock>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'clock)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'clock) (cl:floor (cl:slot-value msg 'clock)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Clock>) istream)
  "Deserializes a message object of type '<Clock>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'clock) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Clock>)))
  "Returns string type for a message object of type '<Clock>"
  "rosgraph_msgs/Clock")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Clock)))
  "Returns string type for a message object of type 'Clock"
  "rosgraph_msgs/Clock")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Clock>)))
  "Returns md5sum for a message object of type '<Clock>"
  "a9c97c1d230cfc112e270351a944ee47")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Clock)))
  "Returns md5sum for a message object of type 'Clock"
  "a9c97c1d230cfc112e270351a944ee47")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Clock>)))
  "Returns full string definition for message of type '<Clock>"
  (cl:format cl:nil "# roslib/Clock is used for publishing simulated time in ROS. ~%# This message simply communicates the current time.~%# For more information, see http://www.ros.org/wiki/Clock~%time clock~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Clock)))
  "Returns full string definition for message of type 'Clock"
  (cl:format cl:nil "# roslib/Clock is used for publishing simulated time in ROS. ~%# This message simply communicates the current time.~%# For more information, see http://www.ros.org/wiki/Clock~%time clock~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Clock>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Clock>))
  "Converts a ROS message object to a list"
  (cl:list 'Clock
    (cl:cons ':clock (clock msg))
))
