CREATE TABLE `order_details` (
  `order_details_id` INT NOT NULL,
  `order_id` INT NULL,
  `pizza_id` VARCHAR(50) NULL,
  `quantity` INT NULL,
  PRIMARY KEY (`order_details_id`),
  CONSTRAINT `fk_order_details_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders`(`order_id`),
  CONSTRAINT `fk_order_details_pizza_id` FOREIGN KEY (`pizza_id`) REFERENCES `pizzas`(`pizza_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `orders` (
  `order_id` INT NOT NULL,
  `date` DATE NULL,
  `time` TIME NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `pizza_types` (
  `pizza_type_id` VARCHAR(50) NOT NULL,
  `name` VARCHAR(50) NULL,
  `category` VARCHAR(50) NULL,
  `ingredients` VARCHAR(100) NULL,
  PRIMARY KEY (`pizza_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `pizzas` (
  `pizza_id` VARCHAR(50) NOT NULL,
  `pizza_type_id` VARCHAR(50) NULL,
  `size` VARCHAR(50) NULL,
  `price` DECIMAL(10,2) NULL,
  PRIMARY KEY (`pizza_id`),
  CONSTRAINT `fk_pizzas_pizza_type_id` FOREIGN KEY (`pizza_type_id`) REFERENCES `pizza_types`(`pizza_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;