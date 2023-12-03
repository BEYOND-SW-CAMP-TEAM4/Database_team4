회원가입
- insert into customer(user_id, name, password, tel, age, gender) values('jang4952', 'jangjunhyeok', 'Passw0rd', '010-3748-5573', 25, 'M');

회원 가입 시 알람 서비스 이용자들에게만 이벤트성 광고 송신
-- alarm 값이 Y로 들어오면 알람 서비스에 동의 한것이므로 이벤트성 광고 송신
- insert into customer(user_id, name, password, tel, age, gender, alarm) values('jang4952', 'jangjunhyeok', 'Passw0rd', '010-3748-5573', 25, 'M', 'Y');
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
				
배민 쿠폰 리스트에 쿠폰 등록				
배민 쿠폰 리스트에서 사용자가 쿠폰발급
=== 쿠폰은 컬럼 확정 안나서 테스트케이스 나중에 작성

소비자 상품 주문(포인트, 쿠폰 사용X)				
소비자 상품 주문(포인트만 사용, 쿠폰 사용X)				
소비자 상품 주문(쿠폰만 사용, 포인트 사용 X)