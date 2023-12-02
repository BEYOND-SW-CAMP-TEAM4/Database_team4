INSERT INTO store_info (name, manager, tel, addr_id, addr_details, covered_area)
VALUES ();

-- store_info에 지점 정보를 INSERT한다.
INSERT INTO store_info (name, manager, tel, addr_id, addr_details, covered_area)
VALUES ('강서화곡점', '홍길동', '02-111-2222', )

-- store_name에 20자 이상의 값이 입력되면 에러를 반환한다.
INSERT INTO store_info (name, manager, tel, addr_id, addr_details, covered_area)
VALUES ();
# store_name에 중복된 값이 입력되면 에러를 반환한다.

# store_manager에 20자 이상의 값이 입력되면 에러를 반환한다.

# tel에 20자 이상의 전화번호가 입력되면 에러를 반환한다.

# on update set null을 확인한다.

# on delete set null을 확인한다.