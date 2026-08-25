// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get app_name => '보물 상자';

  @override
  String get cancel => '취소';

  @override
  String get confirm => '확인';

  @override
  String get save => '저장';

  @override
  String get delete => '삭제';

  @override
  String get edit => '편집';

  @override
  String get add => '추가';

  @override
  String get edit_item => '물품 편집';

  @override
  String get add_item => '아이템 추가';

  @override
  String get search => '검색';

  @override
  String get settings => '설정';

  @override
  String get language_settings => '언어 설정';

  @override
  String get language_settings_description => '앱 표시 언어 설정';

  @override
  String get system_default => '시스템 기본값';

  @override
  String get use_system_language => '시스템 언어 사용';

  @override
  String get language_change_hint => '언어 변경은 앱 재시작 후에 적용됩니다';

  @override
  String get back => '뒤로 가기';

  @override
  String get next => '다음 단계';

  @override
  String get done => '완료';

  @override
  String get loading => '로딩 중...';

  @override
  String get error => '오류';

  @override
  String get success => '성공';

  @override
  String get warning => '경고';

  @override
  String get info => '정보';

  @override
  String get select_alert_days => '알림 일수 선택';

  @override
  String get custom => '사용자 정의';

  @override
  String custom_days(int days) {
    return '사용자 정의 ($days일)';
  }

  @override
  String current_selection(int days) {
    return '현재 선택: $days일';
  }

  @override
  String alert_days_range(int min, int max) {
    return '알림일 범위: $min-$max일';
  }

  @override
  String get enter_days => '알림 일수를 입력하세요';

  @override
  String get days => '일수';

  @override
  String enter_valid_days(int min, int max) {
    return '$min-$max 사이의 숫자를 입력하세요';
  }

  @override
  String get alert_settings => '경보 설정';

  @override
  String get calendar_settings => '달력 설정';

  @override
  String get calendar_sync => '캘린더 동기화';

  @override
  String get calendar_sync_desc => '켜면 캘린더 권한을 요청합니다';

  @override
  String get add_test_calendar_event => '테스트 캘린더 이벤트 추가';

  @override
  String get enable_calendar_sync_first => '먼저 \'캘린더 동기화\' 스위치를 켜세요';

  @override
  String get app_alert_settings => '앱 알림 설정';

  @override
  String get local_alerts => '로컬 알림';

  @override
  String get local_alerts_desc => '켜면 앱 내 만료 알림 수신';

  @override
  String get send_test_notification => '테스트 알림 보내기';

  @override
  String get enable_local_alerts_first => '먼저 \'로컬 알림\' 스위치를 켜주세요';

  @override
  String get alert_days_settings => '알림 일수 설정';

  @override
  String get advance_alert_days => '사전 알림 일수';

  @override
  String get advance_alert_days_desc => '상품 만료일 또는 보증 만료일을 며칠 전에 알릴지 설정하기';

  @override
  String get calendar_permission_request => '캘린더 권한 요청';

  @override
  String get calendar_permission_desc =>
      '항목 알림을 동기화하려면 캘린더 권한이 필요합니다. 허용하시겠습니까?';

  @override
  String get allow => '허용하다';

  @override
  String get calendar_permission_granted => '캘린더 권한이 부여되었으며, 캘린더 동기화가 켜져 있습니다';

  @override
  String get calendar_permission_denied => '캘린더 권한이 거부되어 캘린더 동기화를 시작할 수 없습니다';

  @override
  String get calendar_permission_permanently_denied => '권한이 영구적으로 거부되었습니다';

  @override
  String get calendar_permission_permanently_denied_desc =>
      '캘린더 권한이 영구적으로 거부되었습니다. 시스템 설정에서 수동으로 권한을 켜십시오.';

  @override
  String get go_to_settings => '설정으로 가기';

  @override
  String get calendar_account_failed =>
      '캘린더 권한이 부여되었지만 캘린더 계정을 생성할 수 없습니다. 시스템 캘린더 설정을 확인하세요.';

  @override
  String get calendar_account_created => '캘린더 권한이 부여되었으며, 로컬 캘린더 계정이 생성되었습니다';

  @override
  String get calendar_account_creating =>
      '캘린더 계정이 성공적으로 생성되었지만, 시스템에서 적용되기까지 시간이 걸릴 수 있습니다.';

  @override
  String get test_calendar_event_added => '캘린더 이벤트 추가 성공 테스트';

  @override
  String get test_calendar_event_failed => '테스트 캘린더 이벤트 추가 실패, 캘린더 설정을 확인하세요';

  @override
  String get calendar_permission_required => '테스트 이벤트를 추가하려면 캘린더 권한이 필요합니다';

  @override
  String get test_notification_sent => '테스트 알림이 발송되었습니다';

  @override
  String test_notification_failed(String error) {
    return '테스트 알림 전송 실패: $error';
  }

  @override
  String get notification_permission_required => '로컬 알림을 활성화하려면 알림 권한이 필요합니다';

  @override
  String operation_failed(String error) {
    return '작업 실패: $error';
  }

  @override
  String get notification_channel_name => '물품 경고 알림';

  @override
  String get notification_channel_description => '물품 만료 또는 보관 기간 경고';

  @override
  String get item_category_food => '식품';

  @override
  String get item_category_daily_necessities => '일상용품';

  @override
  String get item_category_cosmetics => '화장품';

  @override
  String get item_category_medicine => '약품';

  @override
  String get item_category_electronics => '전자 제품';

  @override
  String get item_category_furniture => '가구';

  @override
  String get item_category_clothing => '의류';

  @override
  String get item_category_books => '책';

  @override
  String get item_category_other => '기타';

  @override
  String get purchase_channel_online_mall => '온라인 쇼핑몰';

  @override
  String get purchase_channel_physical_store => '실물 매장';

  @override
  String get purchase_channel_supermarket => '슈퍼마켓';

  @override
  String get purchase_channel_specialty_store => '전문 매장';

  @override
  String get purchase_channel_secondhand_market => '중고 시장';

  @override
  String get purchase_channel_other => '기타';

  @override
  String get default_category => '기타';

  @override
  String get default_purchase_channel => '온라인 쇼핑몰';

  @override
  String get item_category => '물품 분류';

  @override
  String get custom_category => '사용자 정의 분류';

  @override
  String get backup_data => '데이터 백업';

  @override
  String get backup_data_description => '모든 데이터(이미지 포함)를 ZIP 파일로 압축하여 백업';

  @override
  String get backup_all_data => '모든 데이터를 백업하다';

  @override
  String get backup_success => '백업 성공';

  @override
  String backup_failed(String error) {
    return '백업 실패: $error';
  }

  @override
  String get restore_data => '데이터 복구';

  @override
  String get restore_data_description => 'ZIP 백업 파일에서 모든 데이터 복원';

  @override
  String get export_data => '데이터 내보내기';

  @override
  String get export_data_description => 'CSV, TXT, SQL 형식으로 내보내기';

  @override
  String get import_data => '데이터 가져오기';

  @override
  String get import_data_description => 'CSV, TXT, SQL 파일에서 데이터 가져오기';

  @override
  String get alert_settings_description => '캘린더 알림 및 앱 푸시 알림 설정';

  @override
  String get about => '에 관하여';

  @override
  String get about_description => '앱 정보 및 버전';

  @override
  String get select_backup_file_first => '먼저 백업 파일을 선택해주세요';

  @override
  String get confirm_restore => '복원 확인';

  @override
  String get confirm_restore_message =>
      '백업 복원은 모든 기존 데이터를 삭제하고 백업 데이터로 교체합니다. 이 작업은 되돌릴 수 없습니다. 계속하시겠습니까?';

  @override
  String get confirm_again => '다시 확인';

  @override
  String get confirm_restore_warning =>
      '모든 기존 데이터를 지우고 백업을 복원하시겠습니까? 이 작업은 복구할 수 없습니다!';

  @override
  String get confirm_restore_button => '복원 확인';

  @override
  String restore_success(int count) {
    return '복구 성공, 총 $count개의 항목';
  }

  @override
  String restore_failed(String error) {
    return '복구 실패: $error';
  }

  @override
  String get select_backup_file => '백업 파일 선택';

  @override
  String get restore_backup => '백업 복원';

  @override
  String selected_file(String filename) {
    return '선택한 파일: $filename';
  }

  @override
  String get export_success => '데이터 내보내기 성공';

  @override
  String export_failed(String error) {
    return '내보내기 실패: $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => '중복 데이터 처리';

  @override
  String get duplicate_data_detected => '중복된 데이터가 감지되었습니다. 처리 방식을 선택하세요:';

  @override
  String get skip => '건너뛰기';

  @override
  String get overwrite => '덮다';

  @override
  String get skip_all => '모두 건너뛰기';

  @override
  String get overwrite_all => '전부 덮다';

  @override
  String get select_import_format_first => '먼저 가져올 형식을 선택해주세요';

  @override
  String get confirm_import => '가져오기 확인';

  @override
  String get confirm_import_message =>
      '데이터를 가져오면 기존 데이터가 덮어써지며, 이 작업은 취소할 수 없습니다. 계속하시겠습니까?';

  @override
  String import_success(int count) {
    return '데이터가 성공적으로 가져와졌습니다. 총 $count개의 아이템이 가져와졌습니다';
  }

  @override
  String import_failed(String error) {
    return '가져오기 실패: $error';
  }

  @override
  String get select_file => '파일 선택';

  @override
  String get no_data => '데이터 없음';

  @override
  String get no_data_description => '현재 데이터가 없습니다. 아래 버튼을 클릭하여 첫 번째 기록을 추가하세요!';

  @override
  String get load_failed => '로드 실패';

  @override
  String get load_failed_description => '데이터 로드 실패, 네트워크 연결을 확인한 후 다시 시도하세요';

  @override
  String get retry => '다시 시도';

  @override
  String get network_connection_failed => '네트워크 연결 실패';

  @override
  String get network_connection_failed_description =>
      '네트워크 연결을 확인한 후 다시 시도해 주세요';

  @override
  String get no_results => '결과를 찾을 수 없습니다';

  @override
  String get no_results_description => '다른 키워드로 검색해 보세요';

  @override
  String get clear_search => '검색 지우기';

  @override
  String get insufficient_permission => '권한 부족';

  @override
  String get insufficient_permission_description => '이 기능을 사용하려면 관련 권한이 필요합니다';

  @override
  String get request_permission => '권한 요청';

  @override
  String get app_info => '응용 정보';

  @override
  String get version => '버전';

  @override
  String get developer => '개발자';

  @override
  String get device_info => '장비 정보';

  @override
  String get device_model => '장비 모델';

  @override
  String get brand => '브랜드';

  @override
  String get device_name => '장치 이름';

  @override
  String get product => '제품';

  @override
  String get hardware => '하드웨어';

  @override
  String get android_version => 'Android 버전';

  @override
  String get sdk_version => 'SDK 버전';

  @override
  String get system_name => '시스템 이름';

  @override
  String get operating_system => '운영 체제';

  @override
  String get system_version => '시스템 버전';

  @override
  String get dart_version => 'Dart 버전';

  @override
  String get device_identifier => '장치 식별';

  @override
  String get computer_name => '컴퓨터 이름';

  @override
  String get build_number => '버전 번호';

  @override
  String error_getting_device_info(String error) {
    return '장치 정보를 가져올 수 없습니다: $error';
  }

  @override
  String get features => '기능 소개';

  @override
  String get app_description => '스마트 물품 관리 앱';

  @override
  String get app_description_detail =>
      '물품의 유통기한, 보증기간 등의 정보를 관리하도록 도와주고, 스마트 알림 기능을 제공합니다.';

  @override
  String get consumable => '소모품';

  @override
  String get durable => '내구재';

  @override
  String get sort => '정렬';

  @override
  String get name_asc => '이름 오름차순';

  @override
  String get name_desc => '이름 내림차순';

  @override
  String get date_asc => '날짜 오름차순';

  @override
  String get date_desc => '날짜 내림차순';

  @override
  String get price_asc => '단가 오름차순';

  @override
  String get price_desc => '단가 내림차순';

  @override
  String get quantity_asc => '수량 오름차순';

  @override
  String get quantity_desc => '수량 내림차순';

  @override
  String get total_price_asc => '총액 오름차순';

  @override
  String get total_price_desc => '총액 내림차순';

  @override
  String get clear_all_filters => '모든 필터 지우기';

  @override
  String get scan_barcode => '스캔하여 입고';

  @override
  String get search_items => '항목 검색...';

  @override
  String get no_items => '일시적으로 상품이 없습니다';

  @override
  String get no_items_description => '아래 버튼을 클릭하여 첫 번째 항목을 추가하세요';

  @override
  String get expired => '만료됨';

  @override
  String get expiring_soon => '곧 만료됨';

  @override
  String get warranty_expired => '보증이 만료되었습니다';

  @override
  String get warranty_expiring_soon => '보증이 곧 만료됩니다';

  @override
  String days_remaining(int count) {
    return '남은 $count일';
  }

  @override
  String expired_days_ago(int count) {
    return '$count일 지남';
  }

  @override
  String get delete_item => '물품 삭제';

  @override
  String delete_item_confirm(String name) {
    return '정말 \"$name\"을(를) 삭제하시겠습니까?';
  }

  @override
  String get item_deleted => '물품이 삭제되었습니다';

  @override
  String get failed_to_delete => '삭제 실패';

  @override
  String failed_to_delete_message(String error) {
    return '항목을 삭제할 수 없습니다: $error';
  }

  @override
  String get date_range_filter => '날짜 범위 필터';

  @override
  String get price_range_filter => '가격 범위 필터';

  @override
  String get my_items => '내 물건';

  @override
  String get click_fab_to_add_item => '오른쪽 아래 버튼을 클릭하여 아이템을 추가하세요';

  @override
  String get confirm_delete => '삭제 확인';

  @override
  String get filter_options => '필터 옵션';

  @override
  String get filter_by_type_category_location => '유형, 분류 및 장소별로 물품 필터링';

  @override
  String categories_count(int count) {
    return '$count 개 분류';
  }

  @override
  String get all_categories => '전체 분류';

  @override
  String get no_category_data => '분류되지 않은 데이터';

  @override
  String get storage_location => '저장 장소';

  @override
  String locations_count(int count) {
    return '$count 곳';
  }

  @override
  String get all_locations => '모든 장소';

  @override
  String get no_location_data => '일시적으로 위치 데이터가 없습니다';

  @override
  String get date_range => '날짜 범위';

  @override
  String get select_date_range => '날짜 범위 선택';

  @override
  String get price_range => '가격 범위';

  @override
  String get unit_price_range => '단가 범위';

  @override
  String get min_unit_price => '최저 단가';

  @override
  String get max_unit_price => '최고 단가';

  @override
  String get total_price_range => '총 가격 범위';

  @override
  String get min_total_price => '최저 총액';

  @override
  String get max_total_price => '최고 총액';

  @override
  String get clear_price_filter => '가격 필터 지우기';

  @override
  String get place_barcode_in_frame => '바코드를 프레임 안에 넣어 스캔하세요';

  @override
  String get item_already_exists => '상품이 이미 존재합니다';

  @override
  String barcode_with_value(String barcode) {
    return '바코드: $barcode';
  }

  @override
  String name_with_value(String name) {
    return '이름: $name';
  }

  @override
  String category_with_value(String category) {
    return '분류: $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return '현재 수량: $quantity$unit';
  }

  @override
  String get please_select_operation => '작업을 선택하세요:';

  @override
  String get outbound => '출고';

  @override
  String get inbound => '입고';

  @override
  String get inbound_quantity => '입고 수량';

  @override
  String get outbound_quantity => '출고 수량';

  @override
  String get quantity => '수량';

  @override
  String get enter_inbound_quantity => '입고 수량을 입력하세요';

  @override
  String get enter_outbound_quantity => '출고 수량을 입력하세요';

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return '정말 \"$name\"을(를) 삭제하시겠습니까? 이 작업은 취소할 수 없습니다.';
  }

  @override
  String get database_reset => '데이터베이스가 재설정되어 테이블 구조를 다시 생성합니다';

  @override
  String database_reset_error(String error) {
    return '데이터베이스를 재설정하는 중 오류 발생: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return '모의 데이터 초기화 실패: $error';
  }

  @override
  String get solution_steps => '해결 방안:';

  @override
  String get solution_step_1 => '1. 앱을 제거하고 다시 설치';

  @override
  String get solution_step_2 => '2. 또는 앱 데이터 삭제';

  @override
  String get solution_step_3 => '3. 또는 resetDatabaseOnStart를 true로 설정한 후 다시 실행';

  @override
  String notification_service_init_failed(String error) {
    return '알림 서비스 초기화 실패: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return '캘린더 계정 확인 실패: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return '캘린더 생성 실패: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return '캘린더 이벤트 추가 실패: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return '캘린더 이벤트 삭제 실패: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return '권한 설정 알림 메시지 실패: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return '$count개의 시뮬레이션 데이터가 성공적으로 초기화되었습니다';
  }

  @override
  String database_has_data(int count) {
    return '데이터베이스에는 이미 $count개의 데이터가 있으며, 모의 데이터 초기화를 건너뜁니다';
  }

  @override
  String get database_structure_mismatch =>
      '데이터베이스 구조가 일치하지 않을 수 있으므로, 앱 데이터를 삭제하거나 재설치하는 것이 좋습니다.';

  @override
  String get old_database_deleted => '기존 데이터베이스 파일이 삭제되었습니다';

  @override
  String get backup_data_empty => '백업 데이터가 비어 있습니다';

  @override
  String get backup_file_not_found => '백업 파일이 존재하지 않습니다';

  @override
  String file_not_utf8(String error) {
    return '파일 인코딩이 유효한 UTF-8 형식이 아닙니다. 파일이 UTF-8 인코딩으로 저장되었는지 확인하십시오. 오류 세부사항: $error';
  }

  @override
  String file_not_found(String filePath) {
    return '파일이 존재하지 않습니다: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return '파일이 비어 있습니다: $filePath';
  }

  @override
  String get file_content_empty => '파일 내용 디코딩 후 비어 있을 수 있으며, 인코딩이 맞지 않을 수 있습니다';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName는 비워둘 수 없습니다';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldName의 길이는 $minLength자 이상이어야 합니다';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName 길이는 $maxLength자를 초과할 수 없습니다';
  }

  @override
  String field_invalid_email(String fieldName) {
    return '유효한 $fieldName 주소를 입력하십시오';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName는 $numberType이어야 합니다';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName은(는) $min보다 작을 수 없습니다';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName은(는) $max보다 클 수 없습니다';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName는 반드시 양의 정수여야 합니다';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName는 0보다 커야 합니다';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName는 양수여야 합니다';
  }

  @override
  String field_invalid_date(String fieldName) {
    return '유효한 $fieldName를 입력하세요';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName는 과거 날짜일 수 없습니다';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName은(는) $minDate보다 빠를 수 없습니다';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName은(는) $maxDate보다 늦을 수 없습니다';
  }

  @override
  String field_invalid_value(String fieldName) {
    return '유효한 $fieldName를 입력하세요';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName 길이는 8자 이상이어야 합니다';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName에는 최소한 하나 이상의 대문자가 포함되어야 합니다';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName에는 최소한 하나의 소문자가 포함되어야 합니다';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName에는 적어도 하나의 숫자가 포함되어야 합니다';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName에는 최소한 하나의 특수 문자가 포함되어야 합니다';
  }

  @override
  String get passwords_not_match => '두 번 입력한 비밀번호가 일치하지 않습니다';

  @override
  String get item_name_cannot_be_empty => '상품 이름은 비워 둘 수 없습니다';

  @override
  String name_max_length(int maxLength) {
    return '이름은 $maxLength자를 초과할 수 없습니다';
  }

  @override
  String quantity_min(int minQuantity) {
    return '수량은 $minQuantity보다 작을 수 없습니다';
  }

  @override
  String quantity_max(int maxQuantity) {
    return '수량은 $maxQuantity을(를) 초과할 수 없습니다';
  }

  @override
  String get unit_price_not_negative => '단가는 음수가 될 수 없습니다';

  @override
  String unit_price_max(double maxUnitPrice) {
    return '단가는 $maxUnitPrice를 초과할 수 없습니다';
  }

  @override
  String get set_production_expiry_for_validity =>
      '제조일자와 유통기한을 설정하여 유효기간을 자동으로 계산해 주세요';

  @override
  String get set_purchase_warranty_for_validity =>
      '구매 날짜와 유통기한을 설정하여 보증 기간을 자동으로 계산해 주세요';

  @override
  String get calendar_account_creation_failed =>
      '캘린더 계정을 생성할 수 없습니다. 시스템 캘린더 설정을 확인하세요.';

  @override
  String get test_notification => '테스트 알림';

  @override
  String get test_notification_description => '이것은 로컬 알림 기능을 검증하기 위한 테스트 알림입니다';

  @override
  String get day_unit => '하늘';

  @override
  String days_with_value(int days) {
    return '$days일';
  }

  @override
  String get item_saved => '물품이 저장되었습니다';

  @override
  String get item_updated => '물품이 업데이트되었습니다';

  @override
  String get item_added => '물품이 이미 추가되었습니다';

  @override
  String get save_success => '저장 성공';

  @override
  String get update_success => '업데이트 성공';

  @override
  String get delete_success => '삭제 성공';

  @override
  String get save_failed => '저장 실패';

  @override
  String get update_failed => '업데이트 실패';

  @override
  String get delete_failed => '삭제 실패';

  @override
  String get test_calendar_event => '캘린더 이벤트 테스트';

  @override
  String get test_calendar_event_description =>
      '이것은 캘린더 기능을 검증하기 위한 테스트 이벤트입니다';

  @override
  String get in_app => '앱 내';

  @override
  String get enable_alert => '만료 알림 활성화';

  @override
  String get alert_method => '알림 방식';

  @override
  String get alert_method_in_app => '앱 내 전용';

  @override
  String get alert_method_calendar => '캘린더만';

  @override
  String get alert_method_both => '양쪽';

  @override
  String get alert_days_before => '사전 알림 일수';

  @override
  String get use_global_setting => '전역 설정 사용';

  @override
  String get barcode_label => '바코드';

  @override
  String get name_label => '이름';

  @override
  String get category_label => '분류';

  @override
  String get current_quantity => '현재 수량';

  @override
  String get select_operation => '작업을 선택하십시오';

  @override
  String get unit => '단위';

  @override
  String get custom_unit => '사용자 정의 단위';

  @override
  String get enter_unit => '단위를 입력하세요';

  @override
  String get custom_location => '사용자 정의 위치';

  @override
  String get enter_storage_location => '저장 위치를 입력하세요';

  @override
  String get scan => '스캔 코드';

  @override
  String get scan_to_stock => '스캔하여 입고';

  @override
  String get item_categories => '물품 분류';

  @override
  String get storage_locations => '저장 장소';

  @override
  String get place_barcode_in_frame_to_scan => '바코드를 프레임 안에 넣어 스캔하세요';

  @override
  String get barcode => '바코드';

  @override
  String get enter_barcode_or_scan => '바코드를 입력하거나 스캔하세요';

  @override
  String get basic_information => '기본 정보';

  @override
  String get item_name => '물품 이름';

  @override
  String get enter_item_name => '상품 이름을 입력하세요';

  @override
  String get enter_category_name => '분류 이름을 입력하세요';

  @override
  String item_increased(String itemName, String quantity, String unit) {
    return '$itemName $quantity$unit가 이미 추가되었습니다';
  }

  @override
  String item_decreased(String itemName, String quantity, String unit) {
    return '$itemName $quantity$unit가 이미 감소했습니다';
  }

  @override
  String get unsaved_changes => '저장되지 않은 변경 사항';

  @override
  String get unsaved_changes_message => '저장되지 않은 변경 사항이 있습니다. 작업을 선택하십시오:';

  @override
  String get discard => '포기하다';

  @override
  String get unit_piece => '개';

  @override
  String get unit_item => '건';

  @override
  String get unit_box => '상자';

  @override
  String get unit_package => '가방';

  @override
  String get unit_bottle => '병';

  @override
  String get unit_carton => '상자';

  @override
  String get unit_set => '세트';

  @override
  String get unit_kg => '킬로그램';

  @override
  String get unit_g => 'g';

  @override
  String get unit_l => 'L';

  @override
  String get unit_ml => '밀리리터';

  @override
  String get unit_m => 'm';

  @override
  String get unit_cm => '센티미터';

  @override
  String get quantity_label => '수량';

  @override
  String get unit_price_label => '단가';

  @override
  String get currency_label => '화폐';

  @override
  String get total_price_label => '총액:';

  @override
  String get storage_location_label => '저장 장소';

  @override
  String get item_properties => '물품 속성';

  @override
  String get expiry_date_label => '유효 기간';

  @override
  String get warranty_expiry_date_label => '보증 만료일';

  @override
  String get production_date_label => '생산 날짜';

  @override
  String get purchase_date_label => '구매 날짜';

  @override
  String auto_calculated_from(String dateType) {
    return '$dateType와 유통기한에 따라 자동으로 계산';
  }

  @override
  String get auto_calculated => '자동 계산';

  @override
  String get images_label => '사진';

  @override
  String get notes_label => '비고';

  @override
  String get add_notes_hint => '메모 정보 추가(선택사항)';

  @override
  String get year_label => '년';

  @override
  String get month_label => '달';

  @override
  String get day_label => '하늘';

  @override
  String selected_count(int count) {
    return '$count개 항목이 선택되었습니다';
  }

  @override
  String get select_all => '전체 선택';

  @override
  String get deselect_all => '전체 선택 취소';

  @override
  String get batch_change_location => '저장 위치 일괄 변경';

  @override
  String confirm_delete_selected(int count) {
    return '선택한 $count개 항목을 삭제하시겠습니까?';
  }

  @override
  String deleted_count_items(int count) {
    return '$count개의 항목이 삭제되었습니다';
  }

  @override
  String get no_storage_location_available => '저장 위치를 선택할 수 없습니다';

  @override
  String get batch_change_location_title => '저장 위치 일괄 변경';

  @override
  String moved_count_items_to_location(int count, String location) {
    return '$count개의 아이템이 $location로 이동되었습니다';
  }

  @override
  String get operation_type_create => '입력';

  @override
  String get operation_type_update => '편집';

  @override
  String get operation_type_delete => '삭제';

  @override
  String get operation_type_inbound => '입고';

  @override
  String get operation_type_outbound => '출고';

  @override
  String export_failed_message(String error) {
    return '내보내기 실패: $error';
  }

  @override
  String get clear_logs => '로그 지우기';

  @override
  String get confirm_clear_logs => '모든 작업 로그를 정말로 지우시겠습니까? 이 작업은 복구할 수 없습니다.';

  @override
  String get logs_cleared => '로그가 비워졌습니다';

  @override
  String get operation_logs_title => '작업 로그';

  @override
  String get export_logs => '로그 내보내기';

  @override
  String get clear_logs_tooltip => '로그 지우기';

  @override
  String get no_operation_logs => '일시적으로 작업 로그가 없습니다';

  @override
  String get log_item_label => '물품:';

  @override
  String get log_category_label => '분류:';

  @override
  String get log_type_label => '유형:';

  @override
  String get log_quantity_label => '수량：';

  @override
  String get log_unit_price_label => '단가:';

  @override
  String get log_total_price_label => '총액:';

  @override
  String get log_expiry_date_label => '유통기한:';

  @override
  String get log_warranty_date_label => '보증 기간:';

  @override
  String get log_purchase_date_label => '구매 날짜:';

  @override
  String get log_production_date_label => '제조일자：';

  @override
  String get log_shelf_life_label => '유통기한:';

  @override
  String get log_storage_location_label => '저장 위치:';

  @override
  String get log_barcode_label => '바코드:';

  @override
  String get log_notes_label => '비고:';

  @override
  String get log_alert_label => '경보:';

  @override
  String get log_alert_days_label => '예보 일수:';

  @override
  String get log_quantity_change_label => '수량 변화:';

  @override
  String get log_field_changes_label => '필드 수정:';

  @override
  String get log_not_set => '설정되지 않음';

  @override
  String get log_empty => '비어 있음';

  @override
  String get log_alert_enabled => '열다';

  @override
  String get log_alert_disabled => '닫기';

  @override
  String get operation_logs_menu => '작업 로그';

  @override
  String get operation_logs_description => '작업 기록 보기 및 복원';

  @override
  String operation_failed_message(String error) {
    return '작업 실패: $error';
  }

  @override
  String get no_date => '무일자';

  @override
  String get shelf_life_months_suffix => '개월';

  @override
  String get shelf_life_days_suffix => '하늘';

  @override
  String get alert_days_suffix => '하늘';

  @override
  String get unknown => '미지';

  @override
  String get developer_name => '레오';

  @override
  String get log_operation_date_label => '조작 날짜:';

  @override
  String get uncategorized => '분류되지 않음';

  @override
  String get no_location => '무장소';

  @override
  String get item_category_cannot_be_empty => '상품 분류는 비어 있을 수 없습니다';

  @override
  String get storage_location_cannot_be_empty => '저장 위치는 비울 수 없습니다';

  @override
  String get created_at_asc => '추가 시간 오름차순';

  @override
  String get created_at_desc => '추가 시간 내림차순';
}
