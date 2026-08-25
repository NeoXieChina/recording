// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get app_name => '物を収めるための心のひととき';

  @override
  String get cancel => 'キャンセル';

  @override
  String get confirm => '確認する';

  @override
  String get save => '保存';

  @override
  String get delete => '削除';

  @override
  String get edit => '編集';

  @override
  String get add => '追加';

  @override
  String get edit_item => 'アイテムを編集';

  @override
  String get add_item => 'アイテムを追加';

  @override
  String get search => '検索';

  @override
  String get settings => '設定';

  @override
  String get language_settings => '言語設定';

  @override
  String get language_settings_description => 'アプリの表示言語を設定する';

  @override
  String get system_default => 'システムデフォルト';

  @override
  String get use_system_language => 'システム言語を使用する';

  @override
  String get language_change_hint => '言語の変更はアプリの再起動後に反映されます';

  @override
  String get back => '戻る';

  @override
  String get next => '次のステップ';

  @override
  String get done => '完成';

  @override
  String get loading => '読み込み中...';

  @override
  String get error => 'エラー';

  @override
  String get success => '成功';

  @override
  String get warning => '警告';

  @override
  String get info => '情報';

  @override
  String get select_alert_days => 'リマインダー日数を選択';

  @override
  String get custom => 'カスタム';

  @override
  String custom_days(int days) {
    return 'カスタム（$days日）';
  }

  @override
  String current_selection(int days) {
    return '現在の選択：$days日';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'リマインド日数の範囲：$min-$max日';
  }

  @override
  String get enter_days => 'リマインダー日数を入力してください';

  @override
  String get days => '日数';

  @override
  String enter_valid_days(int min, int max) {
    return '$minから$maxまでの数字を入力してください';
  }

  @override
  String get alert_settings => '警告設定';

  @override
  String get calendar_settings => 'カレンダー設定';

  @override
  String get calendar_sync => 'カレンダー同期';

  @override
  String get calendar_sync_desc => 'オンにするとカレンダーのアクセス権を要求します';

  @override
  String get add_test_calendar_event => 'テストカレンダーイベントを追加する';

  @override
  String get enable_calendar_sync_first => 'まず「カレンダー同期」スイッチをオンにしてください';

  @override
  String get app_alert_settings => 'アプリ通知設定';

  @override
  String get local_alerts => 'ローカル通知';

  @override
  String get local_alerts_desc => 'オンにするとアプリ内の期限切れ通知を受け取ります';

  @override
  String get send_test_notification => 'テスト通知を送信する';

  @override
  String get enable_local_alerts_first => 'まず「ローカル通知」スイッチをオンにしてください';

  @override
  String get alert_days_settings => 'リマインダー日数の設定';

  @override
  String get advance_alert_days => '事前通知日数';

  @override
  String get advance_alert_days_desc => 'アイテムの期限切れや保証の満了を何日前に通知するかを設定する';

  @override
  String get calendar_permission_request => 'カレンダーの権限リクエスト';

  @override
  String get calendar_permission_desc =>
      'アイテムのリマインダーを同期するためにカレンダーへのアクセス権が必要です。許可しますか？';

  @override
  String get allow => '許可する';

  @override
  String get calendar_permission_granted => 'カレンダーの権限が付与され、カレンダーの同期が有効になっています';

  @override
  String get calendar_permission_denied =>
      'カレンダーの権限が拒否されているため、カレンダーの同期を開始できません';

  @override
  String get calendar_permission_permanently_denied => '権限が永久に拒否されました';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'カレンダーの権限が永久に拒否されました。システム設定で手動で権限を有効にしてください。';

  @override
  String get go_to_settings => '設定に行く';

  @override
  String get calendar_account_failed =>
      'カレンダーの権限は付与されていますが、カレンダーアカウントを作成できません。システムのカレンダー設定を確認してください';

  @override
  String get calendar_account_created => 'カレンダーの権限が付与され、ローカルカレンダーアカウントが作成されました';

  @override
  String get calendar_account_creating =>
      'カレンダーアカウントは作成されましたが、システムが反映されるまでに時間がかかる場合があります';

  @override
  String get test_calendar_event_added => 'カレンダーイベントの追加に成功しました';

  @override
  String get test_calendar_event_failed =>
      'テストカレンダーのイベントの追加に失敗しました。カレンダーの設定を確認してください';

  @override
  String get calendar_permission_required => 'テストイベントを追加するにはカレンダーの権限が必要です';

  @override
  String get test_notification_sent => 'テスト通知が送信されました';

  @override
  String test_notification_failed(String error) {
    return 'テスト通知の送信に失敗しました: $error';
  }

  @override
  String get notification_permission_required => 'ローカル通知を有効にするには通知の権限が必要です';

  @override
  String operation_failed(String error) {
    return '操作に失敗しました: $error';
  }

  @override
  String get notification_channel_name => '物品警告通知';

  @override
  String get notification_channel_description => '物品の期限切れや保証切れの通知';

  @override
  String get item_category_food => '食品';

  @override
  String get item_category_daily_necessities => '日用品';

  @override
  String get item_category_cosmetics => '化粧品';

  @override
  String get item_category_medicine => '薬品';

  @override
  String get item_category_electronics => '電子製品';

  @override
  String get item_category_furniture => '家具';

  @override
  String get item_category_clothing => '服装';

  @override
  String get item_category_books => '本';

  @override
  String get item_category_other => 'その他';

  @override
  String get purchase_channel_online_mall => 'オンラインストア';

  @override
  String get purchase_channel_physical_store => '実店舗';

  @override
  String get purchase_channel_supermarket => 'スーパーマーケット';

  @override
  String get purchase_channel_specialty_store => '専門店';

  @override
  String get purchase_channel_secondhand_market => '中古市場';

  @override
  String get purchase_channel_other => 'その他';

  @override
  String get default_category => 'その他';

  @override
  String get default_purchase_channel => 'オンラインストア';

  @override
  String get item_category => '物品の分類';

  @override
  String get custom_category => 'カスタム分類';

  @override
  String get backup_data => 'データをバックアップする';

  @override
  String get backup_data_description => 'すべてのデータ（画像を含む）をZIPファイルにまとめてバックアップする';

  @override
  String get backup_all_data => 'すべてのデータをバックアップする';

  @override
  String get backup_success => 'バックアップ成功';

  @override
  String backup_failed(String error) {
    return 'バックアップ失敗：$error';
  }

  @override
  String get restore_data => 'データを復元する';

  @override
  String get restore_data_description => 'ZIPバックアップファイルからすべてのデータを復元する';

  @override
  String get export_data => 'データをエクスポート';

  @override
  String get export_data_description => 'CSV、TXT、SQL形式でエクスポート';

  @override
  String get import_data => 'データをインポート';

  @override
  String get import_data_description => 'CSV、TXT、SQLファイルからデータをインポートする';

  @override
  String get alert_settings_description => 'カレンダーリマインダーとアプリ通知の設定';

  @override
  String get about => 'について';

  @override
  String get about_description => 'アプリ情報とバージョン';

  @override
  String get select_backup_file_first => 'まずバックアップファイルを選択してください';

  @override
  String get confirm_restore => '復元を確認';

  @override
  String get confirm_restore_message =>
      'バックアップを復元すると、すべての既存データが消去され、バックアップデータに置き換えられます。この操作は元に戻せません。続行してもよろしいですか？';

  @override
  String get confirm_again => '再確認する';

  @override
  String get confirm_restore_warning =>
      '本当にすべての既存のデータを消去してバックアップを復元しますか？この操作は元に戻せません！';

  @override
  String get confirm_restore_button => '復元を確定';

  @override
  String restore_success(int count) {
    return '復元に成功しました、合計$count件のアイテム';
  }

  @override
  String restore_failed(String error) {
    return '復元に失敗しました：$error';
  }

  @override
  String get select_backup_file => 'バックアップファイルを選択';

  @override
  String get restore_backup => 'バックアップを復元する';

  @override
  String selected_file(String filename) {
    return '選択されたファイル：$filename';
  }

  @override
  String get export_success => 'データのエクスポートに成功しました';

  @override
  String export_failed(String error) {
    return 'エクスポートに失敗しました：$error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => '重複データ処理';

  @override
  String get duplicate_data_detected => '重複データが検出されました。処理方法を選択してください：';

  @override
  String get skip => 'スキップ';

  @override
  String get overwrite => '覆う';

  @override
  String get skip_all => 'すべてスキップ';

  @override
  String get overwrite_all => 'すべてをカバーする';

  @override
  String get select_import_format_first => 'まずインポート形式を選択してください';

  @override
  String get confirm_import => 'インポートを確認';

  @override
  String get confirm_import_message =>
      'データをインポートすると既存のデータが上書きされ、この操作は元に戻せません。続行してもよろしいですか？';

  @override
  String import_success(int count) {
    return 'データのインポートに成功しました。合計で$count件のアイテムがインポートされました';
  }

  @override
  String import_failed(String error) {
    return 'インポートに失敗しました：$error';
  }

  @override
  String get select_file => 'ファイルを選択';

  @override
  String get no_data => 'データはありません';

  @override
  String get no_data_description => '現在データがありません。下のボタンをクリックして最初のレコードを追加しましょう！';

  @override
  String get load_failed => '読み込みに失敗しました';

  @override
  String get load_failed_description =>
      'データの読み込みに失敗しました。ネットワーク接続を確認してから再試行してください';

  @override
  String get retry => '再試行';

  @override
  String get network_connection_failed => 'ネットワーク接続に失敗しました';

  @override
  String get network_connection_failed_description =>
      'ネットワーク接続を確認してから、もう一度お試しください';

  @override
  String get no_results => '結果が見つかりませんでした';

  @override
  String get no_results_description => '他のキーワードで検索してみてください';

  @override
  String get clear_search => '検索をクリア';

  @override
  String get insufficient_permission => '権限が不足しています';

  @override
  String get insufficient_permission_description => 'この機能を使用するには、関連する権限が必要です';

  @override
  String get request_permission => 'アクセス権をリクエストする';

  @override
  String get app_info => 'アプリ情報';

  @override
  String get version => 'バージョン';

  @override
  String get developer => '開発者';

  @override
  String get device_info => 'デバイス情報';

  @override
  String get device_model => '機器のモデル';

  @override
  String get brand => 'ブランド';

  @override
  String get device_name => '機器名';

  @override
  String get product => '製品';

  @override
  String get hardware => 'ハードウェア';

  @override
  String get android_version => 'Androidバージョン';

  @override
  String get sdk_version => 'SDKバージョン';

  @override
  String get system_name => 'システム名';

  @override
  String get operating_system => 'オペレーティングシステム';

  @override
  String get system_version => 'システムバージョン';

  @override
  String get dart_version => 'Dartバージョン';

  @override
  String get device_identifier => 'デバイス識別';

  @override
  String get computer_name => 'コンピュータ名';

  @override
  String get build_number => 'バージョン番号';

  @override
  String error_getting_device_info(String error) {
    return 'デバイス情報を取得できません: $error';
  }

  @override
  String get features => '機能紹介';

  @override
  String get app_description => 'スマートアイテム管理アプリ';

  @override
  String get app_description_detail => 'アイテムの期限、保証期限などの情報を管理し、スマート通知機能を提供します。';

  @override
  String get consumable => '消耗品';

  @override
  String get durable => '耐久消費財';

  @override
  String get sort => '並べ替え';

  @override
  String get name_asc => '名前昇順';

  @override
  String get name_desc => '名前の降順';

  @override
  String get date_asc => '日付昇順';

  @override
  String get date_desc => '日付降順';

  @override
  String get price_asc => '単価昇順';

  @override
  String get price_desc => '単価の降順';

  @override
  String get quantity_asc => '数量昇順';

  @override
  String get quantity_desc => '数量の降順';

  @override
  String get total_price_asc => '総額昇順';

  @override
  String get total_price_desc => '総額の降順';

  @override
  String get clear_all_filters => 'すべてのフィルターをクリア';

  @override
  String get scan_barcode => 'コードをスキャンして入庫する';

  @override
  String get search_items => 'アイテムを検索...';

  @override
  String get no_items => 'アイテムがありません';

  @override
  String get no_items_description => '下のボタンをクリックして最初のアイテムを追加してください';

  @override
  String get expired => '期限切れ';

  @override
  String get expiring_soon => '間もなく期限切れ';

  @override
  String get warranty_expired => '保証期間が終了しました';

  @override
  String get warranty_expiring_soon => '保証期間がまもなく終了します';

  @override
  String days_remaining(int count) {
    return '残り$count日';
  }

  @override
  String expired_days_ago(int count) {
    return '$count日経過';
  }

  @override
  String get delete_item => 'アイテムを削除';

  @override
  String delete_item_confirm(String name) {
    return '「$name」を削除してもよろしいですか？';
  }

  @override
  String get item_deleted => 'アイテムが削除されました';

  @override
  String get failed_to_delete => '削除に失敗しました';

  @override
  String failed_to_delete_message(String error) {
    return 'アイテムを削除できません: $error';
  }

  @override
  String get date_range_filter => '日付範囲フィルター';

  @override
  String get price_range_filter => '価格範囲のフィルター';

  @override
  String get my_items => '私の物品';

  @override
  String get click_fab_to_add_item => '右下のボタンをクリックしてアイテムを追加する';

  @override
  String get confirm_delete => '削除を確認';

  @override
  String get filter_options => 'フィルターオプション';

  @override
  String get filter_by_type_category_location => '種類、カテゴリー、場所でアイテムを絞り込む';

  @override
  String categories_count(int count) {
    return '$count 件のカテゴリ';
  }

  @override
  String get all_categories => 'すべてのカテゴリー';

  @override
  String get no_category_data => '分類データがありません';

  @override
  String get storage_location => '保存場所';

  @override
  String locations_count(int count) {
    return '$count か所の場所';
  }

  @override
  String get all_locations => 'すべての地点';

  @override
  String get no_location_data => '地点データはまだありません';

  @override
  String get date_range => '日付範囲';

  @override
  String get select_date_range => '日付範囲を選択';

  @override
  String get price_range => '価格範囲';

  @override
  String get unit_price_range => '単価範囲';

  @override
  String get min_unit_price => '最低単価';

  @override
  String get max_unit_price => '最高単価';

  @override
  String get total_price_range => '総価格の範囲';

  @override
  String get min_total_price => '最低総額';

  @override
  String get max_total_price => '最高総額';

  @override
  String get clear_price_filter => '価格フィルターをクリア';

  @override
  String get place_barcode_in_frame => 'バーコードを枠内に入れてスキャンしてください';

  @override
  String get item_already_exists => '商品は既に存在します';

  @override
  String barcode_with_value(String barcode) {
    return 'バーコード：$barcode';
  }

  @override
  String name_with_value(String name) {
    return '名称：$name';
  }

  @override
  String category_with_value(String category) {
    return '分類：$category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return '現在の数量：$quantity$unit';
  }

  @override
  String get please_select_operation => '操作を選択してください：';

  @override
  String get outbound => '出庫';

  @override
  String get inbound => '入庫';

  @override
  String get inbound_quantity => '入庫数量';

  @override
  String get outbound_quantity => '出庫数量';

  @override
  String get quantity => '数量';

  @override
  String get enter_inbound_quantity => '入庫数量を入力してください';

  @override
  String get enter_outbound_quantity => '出庫数量を入力してください';

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return '「$name」を削除してもよろしいですか？この操作は取り消せません。';
  }

  @override
  String get database_reset => 'データベースはリセットされ、テーブル構造が再作成されます';

  @override
  String database_reset_error(String error) {
    return 'データベースのリセット中にエラーが発生しました: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'シミュレーションデータの初期化に失敗しました: $error';
  }

  @override
  String get solution_steps => '解決策：';

  @override
  String get solution_step_1 => '1. アプリをアンインストールして再インストールする';

  @override
  String get solution_step_2 => '2. またはアプリのデータを消去する';

  @override
  String get solution_step_3 =>
      '3. または resetDatabaseOnStart を true に設定した後、再実行する';

  @override
  String notification_service_init_failed(String error) {
    return 'リマインダーサービスの初期化に失敗しました: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'カレンダーアカウントの確認に失敗しました: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'カレンダーの作成に失敗しました: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'カレンダーイベントの追加に失敗しました: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'カレンダーイベントの削除に失敗しました: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return '権限設定のメッセージの表示に失敗しました: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return '$count 件のモックデータが正常に初期化されました';
  }

  @override
  String database_has_data(int count) {
    return 'データベースにはすでに $count 件のデータがあり、シミュレーションデータの初期化をスキップします';
  }

  @override
  String get database_structure_mismatch =>
      'データベースの構造が一致しない可能性があります。アプリのデータを消去するか、再インストールすることをお勧めします。';

  @override
  String get old_database_deleted => '古いデータベースファイルを削除しました';

  @override
  String get backup_data_empty => 'バックアップデータが空です';

  @override
  String get backup_file_not_found => 'バックアップファイルが存在しません';

  @override
  String file_not_utf8(String error) {
    return 'ファイルのエンコードは有効なUTF-8形式ではありません。ファイルがUTF-8エンコードで保存されていることを確認してください。エラーの詳細: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'ファイルが存在しません: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'ファイルが空です: $filePath';
  }

  @override
  String get file_content_empty => 'ファイルの内容をデコードした後、空です。エンコードが一致しない可能性があります';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldNameを空にすることはできません';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldNameの長さは$minLength文字未満にできません';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldNameの長さは$maxLength文字を超えることはできません';
  }

  @override
  String field_invalid_email(String fieldName) {
    return '有効な$fieldNameアドレスを入力してください';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldNameは$numberTypeでなければなりません';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldNameは$minより小さくしてはいけません';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldNameは$maxを超えることはできません';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldNameは正の整数でなければなりません';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldNameは0より大きくなければなりません';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldNameは正の数でなければなりません';
  }

  @override
  String field_invalid_date(String fieldName) {
    return '有効な$fieldNameを入力してください';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldNameは過去の日付にできません';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldNameは$minDateより前にすることはできません';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldNameは$maxDateを過ぎてはいけません';
  }

  @override
  String field_invalid_value(String fieldName) {
    return '有効な$fieldNameを入力してください';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldNameの長さは8文字以上でなければなりません';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldNameは少なくとも1つの大文字を含める必要があります';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldNameは少なくとも1つの小文字を含める必要があります';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldNameは少なくとも1つの数字を含める必要があります';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldNameは少なくとも1つの特殊文字を含める必要があります';
  }

  @override
  String get passwords_not_match => '2回入力したパスワードが一致しません';

  @override
  String get item_name_cannot_be_empty => '物品名を空にすることはできません';

  @override
  String name_max_length(int maxLength) {
    return '名称は$maxLength文字を超えてはいけません';
  }

  @override
  String quantity_min(int minQuantity) {
    return '数量は$minQuantity未満にできません';
  }

  @override
  String quantity_max(int maxQuantity) {
    return '数量は$maxQuantityを超えることはできません';
  }

  @override
  String get unit_price_not_negative => '単価は負の値にできません';

  @override
  String unit_price_max(double maxUnitPrice) {
    return '単価は$maxUnitPriceを超えてはいけません';
  }

  @override
  String get set_production_expiry_for_validity =>
      '製造日と賞味期限を設定して、有効期限を自動計算してください';

  @override
  String get set_purchase_warranty_for_validity =>
      '購入日と賞味期限を設定して、保証期間を自動計算してください';

  @override
  String get calendar_account_creation_failed =>
      'カレンダーアカウントを作成できません。システムのカレンダー設定を確認してください';

  @override
  String get test_notification => 'テスト通知';

  @override
  String get test_notification_description => 'これはローカル通知機能を確認するためのテスト通知です';

  @override
  String get day_unit => '天';

  @override
  String days_with_value(int days) {
    return '$days日';
  }

  @override
  String get item_saved => 'アイテムが保存されました';

  @override
  String get item_updated => 'アイテムが更新されました';

  @override
  String get item_added => 'アイテムが追加されました';

  @override
  String get save_success => '保存成功';

  @override
  String get update_success => '更新成功';

  @override
  String get delete_success => '削除に成功しました';

  @override
  String get save_failed => '保存に失敗しました';

  @override
  String get update_failed => '更新に失敗しました';

  @override
  String get delete_failed => '削除に失敗しました';

  @override
  String get test_calendar_event => 'カレンダーイベントをテストする';

  @override
  String get test_calendar_event_description => 'これはカレンダー機能を検証するためのテストイベントです';

  @override
  String get in_app => 'アプリ内';

  @override
  String get enable_alert => '期限到通知を有効にする';

  @override
  String get alert_method => 'リマインダーの方法';

  @override
  String get alert_method_in_app => 'アプリ内のみ';

  @override
  String get alert_method_calendar => 'カレンダーのみ';

  @override
  String get alert_method_both => '両方';

  @override
  String get alert_days_before => '事前通知日数';

  @override
  String get use_global_setting => 'グローバル設定を使用する';

  @override
  String get barcode_label => 'バーコード';

  @override
  String get name_label => '名称';

  @override
  String get category_label => '分類';

  @override
  String get current_quantity => '現在の数量';

  @override
  String get select_operation => '操作を選択してください';

  @override
  String get unit => '単位';

  @override
  String get custom_unit => 'カスタム単位';

  @override
  String get enter_unit => '単位を入力してください';

  @override
  String get custom_location => 'カスタム場所';

  @override
  String get enter_storage_location => '保存場所を入力してください';

  @override
  String get scan => 'コードをスキャン';

  @override
  String get scan_to_stock => 'コードをスキャンして入庫する';

  @override
  String get item_categories => '物品の分類';

  @override
  String get storage_locations => '保管場所';

  @override
  String get place_barcode_in_frame_to_scan => 'バーコードを枠内に入れてスキャンしてください';

  @override
  String get barcode => 'バーコード';

  @override
  String get enter_barcode_or_scan => 'バーコードを入力するか、スキャンしてください';

  @override
  String get basic_information => '基本情報';

  @override
  String get item_name => '品物の名前';

  @override
  String get enter_item_name => 'アイテム名を入力してください';

  @override
  String get enter_category_name => 'カテゴリ名を入力してください';

  @override
  String item_increased(String itemName, String quantity, String unit) {
    return '$itemName $quantity$unit が追加されました';
  }

  @override
  String item_decreased(String itemName, String quantity, String unit) {
    return '$itemName $quantity$unit が減りました';
  }

  @override
  String get unsaved_changes => '未保存の変更';

  @override
  String get unsaved_changes_message => '保存されていない変更があります。操作を選択してください：';

  @override
  String get discard => 'あきらめる';

  @override
  String get unit_piece => '個';

  @override
  String get unit_item => '件';

  @override
  String get unit_box => '箱';

  @override
  String get unit_package => '包';

  @override
  String get unit_bottle => '瓶';

  @override
  String get unit_carton => '箱';

  @override
  String get unit_set => 'スーツ';

  @override
  String get unit_kg => 'キログラム';

  @override
  String get unit_g => 'g';

  @override
  String get unit_l => 'L';

  @override
  String get unit_ml => 'ml';

  @override
  String get unit_m => 'm';

  @override
  String get unit_cm => 'センチメートル';

  @override
  String get quantity_label => '数量';

  @override
  String get unit_price_label => '単価';

  @override
  String get currency_label => '通貨';

  @override
  String get total_price_label => '総額：';

  @override
  String get storage_location_label => '保存場所';

  @override
  String get item_properties => 'アイテム属性';

  @override
  String get expiry_date_label => '有効期限';

  @override
  String get warranty_expiry_date_label => '保証期限';

  @override
  String get production_date_label => '製造日';

  @override
  String get purchase_date_label => '購入日';

  @override
  String auto_calculated_from(String dateType) {
    return '$dateTypeと賞味期限に基づいて自動計算';
  }

  @override
  String get auto_calculated => '自動計算';

  @override
  String get images_label => '画像';

  @override
  String get notes_label => '備考';

  @override
  String get add_notes_hint => '備考情報を追加（任意）';

  @override
  String get year_label => '年';

  @override
  String get month_label => '月';

  @override
  String get day_label => '天';

  @override
  String selected_count(int count) {
    return '$count 件が選択されました';
  }

  @override
  String get select_all => 'すべて選択';

  @override
  String get deselect_all => 'すべての選択を解除';

  @override
  String get batch_change_location => 'ストレージの場所を一括で変更する';

  @override
  String confirm_delete_selected(int count) {
    return '選択した $count 個のアイテムを削除してもよろしいですか？';
  }

  @override
  String deleted_count_items(int count) {
    return '$count 個のアイテムが削除されました';
  }

  @override
  String get no_storage_location_available => '利用可能な保存場所はありません';

  @override
  String get batch_change_location_title => 'ストレージの場所を一括で変更する';

  @override
  String moved_count_items_to_location(int count, String location) {
    return '$count 個のアイテムを $location に移動しました';
  }

  @override
  String get operation_type_create => '入力';

  @override
  String get operation_type_update => '編集';

  @override
  String get operation_type_delete => '削除';

  @override
  String get operation_type_inbound => '入庫';

  @override
  String get operation_type_outbound => '出庫';

  @override
  String export_failed_message(String error) {
    return 'エクスポートに失敗しました: $error';
  }

  @override
  String get clear_logs => 'ログをクリア';

  @override
  String get confirm_clear_logs => '本当にすべての操作ログを消去しますか？この操作は元に戻せません。';

  @override
  String get logs_cleared => 'ログはクリアされました';

  @override
  String get operation_logs_title => '操作ログ';

  @override
  String get export_logs => 'ログをエクスポート';

  @override
  String get clear_logs_tooltip => 'ログをクリア';

  @override
  String get no_operation_logs => '操作ログはありません';

  @override
  String get log_item_label => '品物：';

  @override
  String get log_category_label => '分類：';

  @override
  String get log_type_label => '種類：';

  @override
  String get log_quantity_label => '数量：';

  @override
  String get log_unit_price_label => '単価：';

  @override
  String get log_total_price_label => '総額：';

  @override
  String get log_expiry_date_label => '有効期限：';

  @override
  String get log_warranty_date_label => '保証期限：';

  @override
  String get log_purchase_date_label => '購入日：';

  @override
  String get log_production_date_label => '製造日：';

  @override
  String get log_shelf_life_label => '賞味期限：';

  @override
  String get log_storage_location_label => '保管場所：';

  @override
  String get log_barcode_label => 'バーコード：';

  @override
  String get log_notes_label => '備考：';

  @override
  String get log_alert_label => '警告：';

  @override
  String get log_alert_days_label => '警報日数：';

  @override
  String get log_quantity_change_label => '数量の変化：';

  @override
  String get log_field_changes_label => 'フィールドを変更：';

  @override
  String get log_not_set => '未設定';

  @override
  String get log_empty => '空';

  @override
  String get log_alert_enabled => '開く';

  @override
  String get log_alert_disabled => '閉じる';

  @override
  String get operation_logs_menu => '操作ログ';

  @override
  String get operation_logs_description => '操作記録を確認して復元する';

  @override
  String operation_failed_message(String error) {
    return '操作に失敗しました: $error';
  }

  @override
  String get no_date => '日付なし';

  @override
  String get shelf_life_months_suffix => 'か月';

  @override
  String get shelf_life_days_suffix => '天';

  @override
  String get alert_days_suffix => '天';

  @override
  String get unknown => '未知';

  @override
  String get developer_name => 'レオ';

  @override
  String get log_operation_date_label => '操作日：';

  @override
  String get uncategorized => '未分類';

  @override
  String get no_location => '無地点';

  @override
  String get item_category_cannot_be_empty => '物品の分類は空にできません';

  @override
  String get storage_location_cannot_be_empty => '保存場所を空にすることはできません';

  @override
  String get created_at_asc => '追加時間昇順';

  @override
  String get created_at_desc => '追加時間の降順';

  @override
  String get location_management => '倉庫管理';

  @override
  String get private_warehouses => 'プライベートリポジトリ';

  @override
  String get public_warehouses => '公共ライブラリ';

  @override
  String get is_public_warehouse => '公共ライブラリ';

  @override
  String get public_warehouse_desc => '公共倉庫に管理者はおらず、入庫出庫には操作担当者を記入する必要があります';

  @override
  String get manager => '管理者';

  @override
  String get not_set => '未設定';

  @override
  String get edit_location => 'ライブラリを編集';

  @override
  String get location_name => 'ライブラリ名';

  @override
  String get manager_name => '管理者名';

  @override
  String get enter_manager_name => '管理者の名前を入力してください';

  @override
  String get manager_name_required => '管理者の名前を空にすることはできません';

  @override
  String delete_location_confirm(String name) {
    return 'ライブラリ「$name」を削除してもよろしいですか？';
  }

  @override
  String get delete_location_has_items => 'この倉庫にはまだ物品があり、削除できません';

  @override
  String get default_manager => 'デフォルト管理者';

  @override
  String get default_manager_desc => '新しいプライベートリポジトリを作成する際のデフォルトの管理者';

  @override
  String get enter_default_manager => 'デフォルトの管理者名を入力してください';

  @override
  String get operator_name => '操作担当者の氏名';

  @override
  String get enter_operator_name => '操作する人の名前を入力してください';

  @override
  String get operator_name_required => '操作人の氏名は空にできません';

  @override
  String get no_manager => '管理者なし';

  @override
  String get log_operator_label => '操作担当者：';

  @override
  String get outbound_quantity_exceeds_current => '出庫数量は現在の在庫を超えることはできません';
}
