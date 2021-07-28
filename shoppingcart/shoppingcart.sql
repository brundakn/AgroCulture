CREATE TABLE IF NOT EXISTS `products` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` varchar(200) NOT NULL,
	`desc` text NOT NULL,
	`price` decimal(7,2) NOT NULL,
	`ppq` decimal(7,2) NOT NULL DEFAULT '0.00',
	`quantity` int(11) NOT NULL,
	`img` longblob NOT NULL,
	`date_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `products` (`id`, `name`, `desc`, `price`, `ppq`, `quantity`, `img`, `date_added`) VALUES
(1, 'Bajra', '<p>Millet.</p>', '50.00', '4500.00', 10, 'bajra.jpg', '2021-07-13 17:55:22'),
(2, 'Rice', '<p>Cereal.</p>', '55.00', '5000.00', 34, 'rice.jpg', '2021-07-13 18:52:49'),
(3, 'Wheat', '<pCereal.</p>', '35.00', '3250.00', 23, 'wheat.jpg', '2021-07-13 18:47:56'),
(4, 'Sapota', '<p>Fruit.</p>', '130.00', '12000.00', 7, 'sapota.jpg', '2021-07-13 17:42:04'),
(5, 'Apple', '<p>Fruit.</p>', '130.00', '12000.00', 7, 'apple.jpg', '2021-07-13 17:42:04');