; Auto-generated. Do not edit!


(cl:in-package dynamic_reconfigure-msg)


;//! \htmlinclude IntParameter.msg.html

(cl:defclass <IntParameter> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass IntParameter (<IntParameter>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IntParameter>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IntParameter)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dynamic_reconfigure-msg:<IntParameter> is deprecated: use dynamic_reconfigure-msg:IntParameter instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <IntParameter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamic_reconfigure-msg:name-val is deprecated.  Use dynamic_reconfigure-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <IntParameter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamic_reconfigure-msg:value-val is deprecated.  Use dynamic_reconfigure-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IntParameter>) ostream)
  "Serializes a message object of type '<IntParameter>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IntParameter>) istream)
  "Deserializes a message object of type '<IntParameter>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IntParameter>)))
  "Returns string type for a message object of type '<IntParameter>"
  "dynamic_reconfigure/IntParameter")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IntParameter)))
  "Returns string type for a message object of type 'IntParameter"
  "dynamic_reconfigure/IntParameter")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IntParameter>)))
  "Returns md5sum for a message object of type '<IntParameter>"
  "65fedc7a0cbfb8db035e46194a350bf1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IntParameter)))
  "Returns md5sum for a message object of type 'IntParameter"
  "65fedc7a0cbfb8db035e46194a350bf1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IntParameter>)))
  "Returns full string definition for message of type '<IntParameter>"
  (cl:format cl:nil "string name~%int32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IntParameter)))
  "Returns full string definition for message of type 'IntParameter"
  (cl:format cl:nil "string name~%int32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IntParameter>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IntParameter>))
  "Converts a ROS message object to a list"
  (cl:list 'IntParameter
    (cl:cons ':name (name msg))
    (cl:cons ':value (value msg))
))
