use nodb;

SHOW ENGINES;

CREATE TABLE `savings` (
	`id` INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`balance` INTEGER(13) NOT NULL DEFAULT 0,
    `customer_id` INTEGER(13) NOT NULL DEFAULT 0
) ENGINE=InnoDB COMMENT="some table example used for tnx updates.";

INSERT INTO `checking` VALUES (null, 400, 10233276);
INSERT INTO `savings` VALUES (null, 800, 10233276);

START TRANSACTION;

UPDATE checking SET balance = balance - 100 WHERE customer_id = 10233276;
UPDATE savings SET balance = balance + 100  WHERE customer_id = 10233276;

COMMIT;

truncate `checking`;
select * from `checking`;

truncate `savings`;
select * from `savings`;