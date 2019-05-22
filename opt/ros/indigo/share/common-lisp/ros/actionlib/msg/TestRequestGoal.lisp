; Auto-generated. Do not edit!


(cl:in-package actionlib-msg)


;//! \htmlinclude TestRequestGoal.msg.html

(cl:defclass <TestRequestGoal> (roslisp-msg-protocol:ros-message)
  ((terminate_status
    :reader terminate_status
    :initarg :terminate_status
    :type cl:integer
    :initform 0)
   (ignore_cancel
    :reader ignore_cancel
    :initarg :ignore_cancel
    :type cl:boolean
    :initform cl:nil)
   (result_text
    :reader result_text
    :initarg :result_text
    :type cl:string
    :initform "")
   (the_result
    :reader the_result
    :initarg :the_result
    :type cl:integer
    :initform 0)
   (is_simple_client
    :reader is_simple_client
    :initarg :is_simple_client
    :type cl:boolean
    :initform cl:nil)
   (delay_accept
    :reader delay_accept
    :initarg :delay_accept
    :type cl:real
    :initform 0)
   (delay_terminate
    :reader delay_terminate
    :initarg :delay_terminate
    :type cl:real
    :initform 0)
   (pause_status
    :reader pause_status
    :initarg :pause_status
    :type cl:real
    :initform 0))
)

(cl:defclass TestRequestGoal (<TestRequestGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestRequestGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestRequestGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name actionlib-msg:<TestRequestGoal> is deprecated: use actionlib-msg:TestRequestGoal instead.")))

(cl:ensure-generic-function 'terminate_status-val :lambda-list '(m))
(cl:defmethod terminate_status-val ((m <TestRequestGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib-msg:terminate_status-val is deprecated.  Use actionlib-msg:terminate_status instead.")
  (terminate_status m))

(cl:ensure-generic-function 'ignore_cancel-val :lambda-list '(m))
(cl:defmethod ignore_cancel-val ((m <TestRequestGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib-msg:ignore_cancel-val is deprecated.  Use actionlib-msg:ignore_cancel instead.")
  (ignore_cancel m))

(cl:ensure-generic-function 'result_text-val :lambda-list '(m))
(cl:defmethod result_text-val ((m <TestRequestGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib-msg:result_text-val is deprecated.  Use actionlib-msg:result_text instead.")
  (result_text m))

(cl:ensure-generic-function 'the_result-val :lambda-list '(m))
(cl:defmethod the_result-val ((m <TestRequestGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib-msg:the_result-val is deprecated.  Use actionlib-msg:the_result instead.")
  (the_result m))

(cl:ensure-generic-function 'is_simple_client-val :lambda-list '(m))
(cl:defmethod is_simple_client-val ((m <TestRequestGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib-msg:is_simple_client-val is deprecated.  Use actionlib-msg:is_simple_client instead.")
  (is_simple_client m))

(cl:ensure-generic-function 'delay_accept-val :lambda-list '(m))
(cl:defmethod delay_accept-val ((m <TestRequestGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib-msg:delay_accept-val is deprecated.  Use actionlib-msg:delay_accept instead.")
  (delay_accept m))

(cl:ensure-generic-function 'delay_terminate-val :lambda-list '(m))
(cl:defmethod delay_terminate-val ((m <TestRequestGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib-msg:delay_terminate-val is deprecated.  Use actionlib-msg:delay_terminate instead.")
  (delay_terminate m))

(cl:ensure-generic-function 'pause_status-val :lambda-list '(m))
(cl:defmethod pause_status-val ((m <TestRequestGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib-msg:pause_status-val is deprecated.  Use actionlib-msg:pause_status instead.")
  (pause_status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TestRequestGoal>)))
    "Constants for message type '<TestRequestGoal>"
  '((:TERMINATE_SUCCESS . 0)
    (:TERMINATE_ABORTED . 1)
    (:TERMINATE_REJECTED . 2)
    (:TERMINATE_LOSE . 3)
    (:TERMINATE_DROP . 4)
    (:TERMINATE_EXCEPTION . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TestRequestGoal)))
    "Constants for message type 'TestRequestGoal"
  '((:TERMINATE_SUCCESS . 0)
    (:TERMINATE_ABORTED . 1)
    (:TERMINATE_REJECTED . 2)
    (:TERMINATE_LOSE . 3)
    (:TERMINATE_DROP . 4)
    (:TERMINATE_EXCEPTION . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestRequestGoal>) ostream)
  "Serializes a message object of type '<TestRequestGoal>"
  (cl:let* ((signed (cl:slot-value msg 'terminate_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ignore_cancel) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result_text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result_text))
  (cl:let* ((signed (cl:slot-value msg 'the_result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_simple_client) 1 0)) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'delay_accept)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'delay_accept) (cl:floor (cl:slot-value msg 'delay_accept)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'delay_terminate)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'delay_terminate) (cl:floor (cl:slot-value msg 'delay_terminate)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'pause_status)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'pause_status) (cl:floor (cl:slot-value msg 'pause_status)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestRequestGoal>) istream)
  "Deserializes a message object of type '<TestRequestGoal>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'terminate_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'ignore_cancel) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result_text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result_text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'the_result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'is_simple_client) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'delay_accept) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'delay_terminate) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pause_status) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestRequestGoal>)))
  "Returns string type for a message object of type '<TestRequestGoal>"
  "actionlib/TestRequestGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestRequestGoal)))
  "Returns string type for a message object of type 'TestRequestGoal"
  "actionlib/TestRequestGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestRequestGoal>)))
  "Returns md5sum for a message object of type '<TestRequestGoal>"
  "db5d00ba98302d6c6dd3737e9a03ceea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestRequestGoal)))
  "Returns md5sum for a message object of type 'TestRequestGoal"
  "db5d00ba98302d6c6dd3737e9a03ceea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestRequestGoal>)))
  "Returns full string definition for message of type '<TestRequestGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%int32 TERMINATE_SUCCESS = 0~%int32 TERMINATE_ABORTED = 1~%int32 TERMINATE_REJECTED = 2~%int32 TERMINATE_LOSE = 3~%int32 TERMINATE_DROP = 4~%int32 TERMINATE_EXCEPTION = 5~%int32 terminate_status~%bool ignore_cancel  # If true, ignores requests to cancel~%string result_text~%int32 the_result    # Desired value for the_result in the Result~%bool is_simple_client~%duration delay_accept  # Delays accepting the goal by this amount of time~%duration delay_terminate  # Delays terminating for this amount of time~%duration pause_status  # Pauses the status messages for this amount of time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestRequestGoal)))
  "Returns full string definition for message of type 'TestRequestGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%int32 TERMINATE_SUCCESS = 0~%int32 TERMINATE_ABORTED = 1~%int32 TERMINATE_REJECTED = 2~%int32 TERMINATE_LOSE = 3~%int32 TERMINATE_DROP = 4~%int32 TERMINATE_EXCEPTION = 5~%int32 terminate_status~%bool ignore_cancel  # If true, ignores requests to cancel~%string result_text~%int32 the_result    # Desired value for the_result in the Result~%bool is_simple_client~%duration delay_accept  # Delays accepting the goal by this amount of time~%duration delay_terminate  # Delays terminating for this amount of time~%duration pause_status  # Pauses the status messages for this amount of time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestRequestGoal>))
  (cl:+ 0
     4
     1
     4 (cl:length (cl:slot-value msg 'result_text))
     4
     1
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestRequestGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'TestRequestGoal
    (cl:cons ':terminate_status (terminate_status msg))
    (cl:cons ':ignore_cancel (ignore_cancel msg))
    (cl:cons ':result_text (result_text msg))
    (cl:cons ':the_result (the_result msg))
    (cl:cons ':is_simple_client (is_simple_client msg))
    (cl:cons ':delay_accept (delay_accept msg))
    (cl:cons ':delay_terminate (delay_terminate msg))
    (cl:cons ':pause_status (pause_status msg))
))
