CREATE TABLE `course` (
  `course_no` varchar(6) NOT NULL,
  `course_title` varchar(100) NOT NULL,
  `course_instructor` varchar(100) NOT NULL,
  `instructor_telno` varchar(11) NOT NULL,
  `instructor_email` varchar(11) NOT NULL,
  `room_no` varchar(3) NOT NULL,
  `dept_name` varchar(100) NOT NULL,
  `dept_telno` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
