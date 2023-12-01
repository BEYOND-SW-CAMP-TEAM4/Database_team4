회원가입
- insert into customer(user_id, name, password, tel, address, age, gender) values('jang4952', 'jangjunhyeok', 'Passw0rd', '010-3748-5573', '서울특별시 관악구 관천로 1287길 35', 25, 'M');

회원 가입 시 알람 서비스 이용자들에게만 이벤트성 광고 송신
-- alarm 값이 Y로 들어오면 알람 서비스에 동의 한것이므로 이벤트성 광고 송신
- insert into customer(user_id, name, password, tel, address, age, gender, alarm) values('jang4952', 'jangjunhyeok', 'Passw0rd', '010-3748-5573', '서울특별시 관악구 관천로 1287길 35', 25, 'M', 'Y');
- select user_id, name from customer where alarm = 'Y';

배민 쿠폰 리스트에 쿠폰 등록(보류)
- insert into coupon_list(coupon_name, price, expire_date) values('크리스마스 기념 할인쿠폰', '3000', '2023-12-31 23:59:59');

배민 쿠폰 리스트에서 사용자가 쿠폰발급(보류)

소비자 상품 주문(포인트, 쿠폰 사용X)	
- insert into customer(order_number, user_id, user_address, order_item_id_fk, total_amount, actual payment_amount, distance, deliveryfee, order_time)
values('jang4952', 'jangjunhyeok', 'Passw0rd', '010-3748-5573', '서울특별시 관악구 관천로 1287길 35', 25, 'M', 'Y');



소비자 상품 주문(포인트만 사용, 쿠폰 사용X)		
- 

소비자 상품 주문(쿠폰만 사용, 포인트 사용 X)
- 


-- enum, address 에러 나는 상황

-- orders 테이블
CREATE TABLE IF NOT EXISTS `orders` (
  `orders_id_pk` int(11) NOT NULL,
  `order_number` int(11) NOT NULL,
  `user_id_fk` varchar(50) NOT NULL,
  `user_address_fk` varchar(50) NOT NULL,
  `order_item_id_fk` varchar(50) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `coupon_fk` int(11) DEFAULT 0,
  `point_fk` int(11) DEFAULT 0,
  `actual payment_amount` int(11) NOT NULL,
  `distance` int(11) NOT NULL,
  `deliveryfee` int(11) NOT NULL,
  `order_time` datetime NOT NULL,
  PRIMARY KEY (`orders_id_pk`) USING BTREE
)

CREATE TABLE `coupon_list` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`coupon_name` VARCHAR(255) NOT NULL DEFAULT '0' COLLATE 'utf8mb4_general_ci',
	`price` INT(11) NOT NULL DEFAULT '0',
	`expire_date` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
	PRIMARY KEY (`id`) USING BTREE
)

	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`user_id` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_general_ci',
	`name` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_general_ci',
	`password` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_general_ci',
	`tel` CHAR(11) NOT NULL COLLATE 'utf8mb4_general_ci',
	`address` VARCHAR(255) NOT NULL DEFAULT '0' COLLATE 'utf8mb4_general_ci',
	`age` INT(11) NULL DEFAULT NULL,
	`gender` ENUM('M','W') NOT NULL COLLATE 'utf8mb4_general_ci',
	`point` BIGINT(20) NULL DEFAULT NULL,
	`alarm` CHAR(1) NULL DEFAULT 'Y' COLLATE 'utf8mb4_general_ci',
	`signin_date` DATETIME NULL DEFAULT NULL,
	`coupon` V
				
배민 쿠폰 리스트에 쿠폰 등록				
배민 쿠폰 리스트에서 사용자가 쿠폰발급
=== 쿠폰은 컬럼 확정 안나서 테스트케이스 나중에 작성

소비자 상품 주문(포인트, 쿠폰 사용X)				
소비자 상품 주문(포인트만 사용, 쿠폰 사용X)				
소비자 상품 주문(쿠폰만 사용, 포인트 사용 X)