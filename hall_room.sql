CREATE TABLE `hall_room` (
  `room_no` varchar(6) NOT NULL,
  `monthly_rent_rate` float NOT NULL,
  `place_no` varchar(16) NOT NULL,
  `hall_no` varchar(2) NOT NULL
   `updated_by` VARCHAR(10) NOT NULL DEFAULT 'admin',
  `updated` DATE NOT NULL,
) 
