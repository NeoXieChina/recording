// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get app_name => 'Guardar objetos preciosos';

  @override
  String get cancel => 'Cancelar';

  @override
  String get confirm => 'Confirmar';

  @override
  String get save => 'Salvar';

  @override
  String get delete => 'Excluir';

  @override
  String get edit => 'Editar';

  @override
  String get add => 'Adicionar';

  @override
  String get edit_item => 'Editar item';

  @override
  String get add_item => 'Adicionar item';

  @override
  String get search => 'Pesquisar';

  @override
  String get settings => 'Configurações';

  @override
  String get language_settings => 'Configurações de idioma';

  @override
  String get language_settings_description =>
      'Configurar idioma de exibição do aplicativo';

  @override
  String get system_default => 'Padrão do sistema';

  @override
  String get use_system_language => 'Usar o idioma do sistema';

  @override
  String get language_change_hint =>
      'A alteração de idioma terá efeito após reiniciar o aplicativo';

  @override
  String get back => 'Voltar';

  @override
  String get next => 'Próximo passo';

  @override
  String get done => 'Concluído';

  @override
  String get loading => 'Carregando...';

  @override
  String get error => 'Erro';

  @override
  String get success => 'sucesso';

  @override
  String get warning => 'Aviso';

  @override
  String get info => 'Informação';

  @override
  String get select_alert_days => 'Selecionar o número de dias para lembrete';

  @override
  String get custom => 'Personalizado';

  @override
  String custom_days(int days) {
    return 'Personalizado ($days dias)';
  }

  @override
  String current_selection(int days) {
    return 'Seleção atual: $days dias';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'Intervalo de dias de aviso: $min-$max dias';
  }

  @override
  String get enter_days => 'Por favor, insira o número de dias para o lembrete';

  @override
  String get days => 'Dias';

  @override
  String enter_valid_days(int min, int max) {
    return 'Por favor, insira um número entre $min e $max';
  }

  @override
  String get alert_settings => 'Configuração de alerta';

  @override
  String get calendar_settings => 'Configurações do calendário';

  @override
  String get calendar_sync => 'Sincronização de calendário';

  @override
  String get calendar_sync_desc =>
      'Após ativar, solicitará permissão para acessar o calendário';

  @override
  String get add_test_calendar_event =>
      'Adicionar evento de calendário de teste';

  @override
  String get enable_calendar_sync_first =>
      'Por favor, ative primeiro a chave de \'sincronização do calendário\'';

  @override
  String get app_alert_settings => 'Configurações de notificação do aplicativo';

  @override
  String get local_alerts => 'Lembrete local';

  @override
  String get local_alerts_desc =>
      'Ativar para receber lembretes de expiração dentro do aplicativo';

  @override
  String get send_test_notification => 'Enviar notificação de teste';

  @override
  String get enable_local_alerts_first =>
      'Por favor, ative primeiro a chave de \'Lembretes locais\'';

  @override
  String get alert_days_settings => 'Configuração de dias de lembrete';

  @override
  String get advance_alert_days => 'Número de dias de aviso antecipado';

  @override
  String get advance_alert_days_desc =>
      'Definir quantos dias de antecedência alertar sobre a expiração de itens ou término da garantia';

  @override
  String get calendar_permission_request =>
      'Solicitação de permissão do calendário';

  @override
  String get calendar_permission_desc =>
      'É necessário acessar a permissão do calendário para sincronizar os lembretes de itens. Permitir?';

  @override
  String get allow => 'Permitir';

  @override
  String get calendar_permission_granted =>
      'Permissão do calendário concedida, sincronização do calendário ativada';

  @override
  String get calendar_permission_denied =>
      'Permissão do calendário negada, não é possível ativar a sincronização do calendário';

  @override
  String get calendar_permission_permanently_denied =>
      'Permissão permanentemente negada';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'Permissão do calendário foi permanentemente negada, por favor, ative a permissão manualmente nas configurações do sistema.';

  @override
  String get go_to_settings => 'Ir para configurações';

  @override
  String get calendar_account_failed =>
      'A permissão do calendário foi concedida, mas não é possível criar uma conta de calendário. Por favor, verifique as configurações do calendário do sistema';

  @override
  String get calendar_account_created =>
      'Permissão do calendário concedida, conta de calendário local criada';

  @override
  String get calendar_account_creating =>
      'Conta de calendário criada com sucesso, mas o sistema pode levar algum tempo para entrar em vigor';

  @override
  String get test_calendar_event_added =>
      'Teste de adição de evento ao calendário bem-sucedido';

  @override
  String get test_calendar_event_failed =>
      'Falha ao adicionar evento de teste no calendário, por favor verifique as configurações do calendário';

  @override
  String get calendar_permission_required =>
      'É necessário permissão do calendário para adicionar eventos de teste';

  @override
  String get test_notification_sent => 'Notificação de teste enviada';

  @override
  String test_notification_failed(String error) {
    return 'Falha ao enviar notificação de teste: $error';
  }

  @override
  String get notification_permission_required =>
      'É necessário permissão de notificações para ativar lembretes locais';

  @override
  String operation_failed(String error) {
    return 'Operação falhou: $error';
  }

  @override
  String get notification_channel_name => 'Notificação de alerta de itens';

  @override
  String get notification_channel_description =>
      'Aviso de vencimento ou expiração de itens';

  @override
  String get item_category_food => 'alimento';

  @override
  String get item_category_daily_necessities => 'Artigos de uso diário';

  @override
  String get item_category_cosmetics => 'Cosméticos';

  @override
  String get item_category_medicine => 'Medicamento';

  @override
  String get item_category_electronics => 'Produtos eletrônicos';

  @override
  String get item_category_furniture => 'móveis';

  @override
  String get item_category_clothing => 'Roupas';

  @override
  String get item_category_books => 'livros';

  @override
  String get item_category_other => 'Outros';

  @override
  String get purchase_channel_online_mall => 'Loja online';

  @override
  String get purchase_channel_physical_store => 'loja física';

  @override
  String get purchase_channel_supermarket => 'supermercado';

  @override
  String get purchase_channel_specialty_store => 'Loja exclusiva';

  @override
  String get purchase_channel_secondhand_market => 'Mercado de segunda mão';

  @override
  String get purchase_channel_other => 'Outros';

  @override
  String get default_category => 'Outros';

  @override
  String get default_purchase_channel => 'Loja online';

  @override
  String get item_category => 'Classificação de itens';

  @override
  String get custom_category => 'Classificação personalizada';

  @override
  String get backup_data => 'Fazer backup dos dados';

  @override
  String get backup_data_description =>
      'Compactar todos os dados (incluindo imagens) em um arquivo ZIP para backup';

  @override
  String get backup_all_data => 'Fazer backup de todos os dados';

  @override
  String get backup_success => 'Backup bem-sucedido';

  @override
  String backup_failed(String error) {
    return 'Falha no backup: $error';
  }

  @override
  String get restore_data => 'Recuperar dados';

  @override
  String get restore_data_description =>
      'Restaurar todos os dados a partir do arquivo de backup ZIP';

  @override
  String get export_data => 'Exportar dados';

  @override
  String get export_data_description => 'Exportar como CSV, TXT, SQL';

  @override
  String get import_data => 'Importar dados';

  @override
  String get import_data_description =>
      'Importar dados de arquivos CSV, TXT, SQL';

  @override
  String get alert_settings_description =>
      'Configurações de lembrete do calendário e de notificações do aplicativo';

  @override
  String get about => 'Sobre';

  @override
  String get about_description => 'Informações do aplicativo e versão';

  @override
  String get select_backup_file_first =>
      'Por favor, selecione primeiro o arquivo de backup';

  @override
  String get confirm_restore => 'Confirmar restauração';

  @override
  String get confirm_restore_message =>
      'Restaurar o backup apagará todos os dados existentes e os substituirá pelos dados do backup. Esta operação não pode ser desfeita. Tem certeza de que deseja continuar?';

  @override
  String get confirm_again => 'Confirmar novamente';

  @override
  String get confirm_restore_warning =>
      'Você tem certeza de que deseja apagar todos os dados existentes e restaurar o backup? Esta ação não pode ser desfeita!';

  @override
  String get confirm_restore_button => 'Confirmar restauração';

  @override
  String restore_success(int count) {
    return 'Restauração bem-sucedida, um total de $count itens';
  }

  @override
  String restore_failed(String error) {
    return 'Falha na restauração: $error';
  }

  @override
  String get select_backup_file => 'Selecionar arquivo de backup';

  @override
  String get restore_backup => 'Restaurar backup';

  @override
  String selected_file(String filename) {
    return 'Arquivo selecionado: $filename';
  }

  @override
  String get export_success => 'Exportação de dados bem-sucedida';

  @override
  String export_failed(String error) {
    return 'Falha na exportação: $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'Processamento de dados duplicados';

  @override
  String get duplicate_data_detected =>
      'Dados duplicados detectados, por favor escolha o método de processamento:';

  @override
  String get skip => 'Pular';

  @override
  String get overwrite => 'cobrir';

  @override
  String get skip_all => 'Pular tudo';

  @override
  String get overwrite_all => 'Cobertura total';

  @override
  String get select_import_format_first =>
      'Por favor, selecione o formato de importação primeiro';

  @override
  String get confirm_import => 'Confirmar importação';

  @override
  String get confirm_import_message =>
      'Importar dados substituirá os dados existentes, esta ação não pode ser desfeita. Tem certeza de que deseja continuar?';

  @override
  String import_success(int count) {
    return 'Importação de dados bem-sucedida, um total de $count itens importados';
  }

  @override
  String import_failed(String error) {
    return 'Falha na importação: $error';
  }

  @override
  String get select_file => 'Selecionar arquivo';

  @override
  String get no_data => 'Sem dados disponíveis';

  @override
  String get no_data_description =>
      'Atualmente não há dados, clique no botão abaixo para adicionar o primeiro registro!';

  @override
  String get load_failed => 'Falha ao carregar';

  @override
  String get load_failed_description =>
      'Falha ao carregar os dados, por favor verifique a conexão de rede e tente novamente';

  @override
  String get retry => 'Tentar novamente';

  @override
  String get network_connection_failed => 'Falha na conexão de rede';

  @override
  String get network_connection_failed_description =>
      'Por favor, verifique a conexão de rede e tente novamente';

  @override
  String get no_results => 'Nenhum resultado encontrado';

  @override
  String get no_results_description =>
      'Tente procurar usando outras palavras-chave';

  @override
  String get clear_search => 'Limpar pesquisa';

  @override
  String get insufficient_permission => 'Permissão insuficiente';

  @override
  String get insufficient_permission_description =>
      'É necessário ter as permissões relacionadas para usar esta função';

  @override
  String get request_permission => 'Solicitar permissão';

  @override
  String get app_info => 'Informações do aplicativo';

  @override
  String get version => 'versão';

  @override
  String get developer => 'Desenvolvedor';

  @override
  String get device_info => 'Informações do dispositivo';

  @override
  String get device_model => 'Modelo do dispositivo';

  @override
  String get brand => 'marca';

  @override
  String get device_name => 'Nome do dispositivo';

  @override
  String get product => 'Produto';

  @override
  String get hardware => 'hardware';

  @override
  String get android_version => 'Versão do Android';

  @override
  String get sdk_version => 'Versão do SDK';

  @override
  String get system_name => 'Nome do sistema';

  @override
  String get operating_system => 'Sistema operacional';

  @override
  String get system_version => 'Versão do sistema';

  @override
  String get dart_version => 'Versão do Dart';

  @override
  String get device_identifier => 'Identificação do dispositivo';

  @override
  String get computer_name => 'Nome do computador';

  @override
  String get build_number => 'Número da versão';

  @override
  String error_getting_device_info(String error) {
    return 'Não foi possível obter informações do dispositivo: $error';
  }

  @override
  String get features => 'Introdução às funções';

  @override
  String get app_description =>
      'Aplicativo de gerenciamento de itens inteligentes';

  @override
  String get app_description_detail =>
      'Ajuda você a gerenciar informações como datas de validade de itens, datas de garantia, etc., e fornece funções de lembrete inteligente.';

  @override
  String get consumable => 'Consumíveis';

  @override
  String get durable => 'Bens duráveis';

  @override
  String get sort => 'Classificar';

  @override
  String get name_asc => 'Nome em ordem crescente';

  @override
  String get name_desc => 'Nome em ordem decrescente';

  @override
  String get date_asc => 'Ordem crescente de data';

  @override
  String get date_desc => 'Data em ordem decrescente';

  @override
  String get price_asc => 'Preço unitário em ordem crescente';

  @override
  String get price_desc => 'Preço unitário em ordem decrescente';

  @override
  String get quantity_asc => 'Ordem crescente de quantidade';

  @override
  String get quantity_desc => 'Ordem decrescente por quantidade';

  @override
  String get total_price_asc => 'Preço total em ordem crescente';

  @override
  String get total_price_desc => 'Preço total em ordem decrescente';

  @override
  String get clear_all_filters => 'Limpar todos os filtros';

  @override
  String get scan_barcode => 'Digitalizar código para entrada no estoque';

  @override
  String get search_items => 'Procurar itens...';

  @override
  String get no_items => 'Nenhum item disponível';

  @override
  String get no_items_description =>
      'Clique no botão abaixo para adicionar o primeiro item';

  @override
  String get expired => 'Expirado';

  @override
  String get expiring_soon => 'Prestes a expirar';

  @override
  String get warranty_expired => 'A garantia expirou';

  @override
  String get warranty_expiring_soon => 'A garantia está prestes a expirar';

  @override
  String days_remaining(int count) {
    return 'Restam $count dias';
  }

  @override
  String expired_days_ago(int count) {
    return 'Expirado há $count dias';
  }

  @override
  String get delete_item => 'Excluir item';

  @override
  String delete_item_confirm(String name) {
    return 'Tem certeza de que deseja deletar \"$name\"?';
  }

  @override
  String get item_deleted => 'Item excluído';

  @override
  String get failed_to_delete => 'Falha ao excluir';

  @override
  String failed_to_delete_message(String error) {
    return 'Não é possível excluir o item: $error';
  }

  @override
  String get date_range_filter => 'Filtro de intervalo de datas';

  @override
  String get price_range_filter => 'Filtro de faixa de preço';

  @override
  String get my_items => 'Meus itens';

  @override
  String get click_fab_to_add_item =>
      'Clique no botão no canto inferior direito para adicionar itens';

  @override
  String get confirm_delete => 'Confirmar exclusão';

  @override
  String get filter_options => 'Opções de filtragem';

  @override
  String get filter_by_type_category_location =>
      'Filtrar itens por tipo, categoria e local';

  @override
  String categories_count(int count) {
    return '$count categorias';
  }

  @override
  String get all_categories => 'Todas as categorias';

  @override
  String get no_category_data => 'Sem dados de categoria';

  @override
  String get storage_location => 'Local de armazenamento';

  @override
  String locations_count(int count) {
    return '$count locais';
  }

  @override
  String get all_locations => 'Todos os lugares';

  @override
  String get no_location_data => 'Sem dados de localização';

  @override
  String get date_range => 'Intervalo de datas';

  @override
  String get select_date_range => 'Selecionar intervalo de datas';

  @override
  String get price_range => 'Faixa de preço';

  @override
  String get unit_price_range => 'Faixa de preço unitário';

  @override
  String get min_unit_price => 'Preço unitário mínimo';

  @override
  String get max_unit_price => 'Preço máximo unitário';

  @override
  String get total_price_range => 'Faixa de preço total';

  @override
  String get min_total_price => 'Preço total mínimo';

  @override
  String get max_total_price => 'Preço máximo total';

  @override
  String get clear_price_filter => 'Limpar filtro de preço';

  @override
  String get place_barcode_in_frame =>
      'Coloque o código de barras dentro do quadro para escanear';

  @override
  String get item_already_exists => 'O produto já existe';

  @override
  String barcode_with_value(String barcode) {
    return 'Código de barras: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'Nome: $name';
  }

  @override
  String category_with_value(String category) {
    return 'Categoria: $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'Quantidade atual: $quantity$unit';
  }

  @override
  String get please_select_operation => 'Por favor, selecione uma operação:';

  @override
  String get outbound => 'Saída de estoque';

  @override
  String get inbound => 'Entrada no estoque';

  @override
  String get inbound_quantity => 'Quantidade em estoque';

  @override
  String get outbound_quantity => 'Quantidade de saída de estoque';

  @override
  String get quantity => 'quantidade';

  @override
  String get enter_inbound_quantity =>
      'Por favor, insira a quantidade a ser armazenada';

  @override
  String get enter_outbound_quantity =>
      'Por favor, insira a quantidade a ser retirada do estoque';

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'Tem certeza de que deseja excluir \"$name\"? Esta ação não pode ser desfeita.';
  }

  @override
  String get database_reset =>
      'O banco de dados foi redefinido e a estrutura das tabelas será recriada';

  @override
  String database_reset_error(String error) {
    return 'Erro ao redefinir o banco de dados: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'Falha na inicialização dos dados simulados: $error';
  }

  @override
  String get solution_steps => 'Solução:';

  @override
  String get solution_step_1 => '1. Desinstale o aplicativo e reinstale';

  @override
  String get solution_step_2 => '2. Ou limpar os dados do aplicativo';

  @override
  String get solution_step_3 =>
      '3. Ou configure resetDatabaseOnStart como true e execute novamente';

  @override
  String notification_service_init_failed(String error) {
    return 'Falha na inicialização do serviço de lembrete: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'Falha ao verificar a conta do calendário: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'Falha ao criar o calendário: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'Falha ao adicionar evento ao calendário: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'Falha ao excluir evento do calendário: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'Falha ao definir a mensagem de aviso de permissão: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return '_${count}_ dados simulados inicializados com sucesso';
  }

  @override
  String database_has_data(int count) {
    return 'O banco de dados já possui $count registros, pulando a inicialização de dados simulados';
  }

  @override
  String get database_structure_mismatch =>
      'Pode ser que a estrutura do banco de dados não corresponda; recomenda-se limpar os dados do aplicativo ou reinstalá-lo';

  @override
  String get old_database_deleted =>
      'Arquivo de banco de dados antigo excluído';

  @override
  String get backup_data_empty => 'Os dados de backup estão vazios';

  @override
  String get backup_file_not_found => 'O arquivo de backup não existe';

  @override
  String file_not_utf8(String error) {
    return 'A codificação do arquivo não é um formato UTF-8 válido. Por favor, certifique-se de que o arquivo está salvo usando a codificação UTF-8. Detalhes do erro: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'Arquivo não existe: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'O arquivo está vazio: $filePath';
  }

  @override
  String get file_content_empty =>
      'O conteúdo do arquivo está vazio após a decodificação, pode ser que a codificação não corresponda';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName não pode estar vazio';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return 'O comprimento de $fieldName não pode ser inferior a $minLength caracteres';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName não pode exceder $maxLength caracteres';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'Por favor, insira um endereço de $fieldName válido';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName deve ser $numberType';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName não pode ser menor que $min';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName não pode ser maior que $max';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName deve ser um número inteiro positivo';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName deve ser maior que 0';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName deve ser um número positivo';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'Por favor, insira um $fieldName válido';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName não pode ser uma data passada';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName não pode ser anterior a $minDate';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName não pode ser posterior a $maxDate';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'Por favor, insira um $fieldName válido';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName não pode ter menos de 8 caracteres';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName deve conter pelo menos uma letra maiúscula';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName deve conter pelo menos uma letra minúscula';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName deve conter pelo menos um número';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName deve conter pelo menos um caractere especial';
  }

  @override
  String get passwords_not_match =>
      'As senhas inseridas duas vezes não coincidem';

  @override
  String get item_name_cannot_be_empty => 'O nome do item não pode estar vazio';

  @override
  String name_max_length(int maxLength) {
    return 'O nome não pode exceder $maxLength caracteres';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'A quantidade não pode ser menor que $minQuantity';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'A quantidade não pode exceder $maxQuantity';
  }

  @override
  String get unit_price_not_negative =>
      'O preço unitário não pode ser negativo';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'O preço unitário não pode exceder $maxUnitPrice';
  }

  @override
  String get set_production_expiry_for_validity =>
      'Por favor, configure a data de produção e o prazo de validade para calcular automaticamente a validade.';

  @override
  String get set_purchase_warranty_for_validity =>
      'Por favor, defina a data de compra e a validade para calcular automaticamente o período de garantia';

  @override
  String get calendar_account_creation_failed =>
      'Não é possível criar uma conta de calendário, verifique as configurações do calendário do sistema';

  @override
  String get test_notification => 'Notificação de teste';

  @override
  String get test_notification_description =>
      'Esta é uma notificação de teste, usada para verificar a função de lembrete local';

  @override
  String get day_unit => 'céu';

  @override
  String days_with_value(int days) {
    return '$days dias';
  }

  @override
  String get item_saved => 'Item salvo';

  @override
  String get item_updated => 'O item foi atualizado';

  @override
  String get item_added => 'Item adicionado';

  @override
  String get save_success => 'Salvo com sucesso';

  @override
  String get update_success => 'Atualização bem-sucedida';

  @override
  String get delete_success => 'Exclusão bem-sucedida';

  @override
  String get save_failed => 'Falha ao salvar';

  @override
  String get update_failed => 'Falha na atualização';

  @override
  String get delete_failed => 'Falha ao excluir';

  @override
  String get test_calendar_event => 'Testar evento de calendário';

  @override
  String get test_calendar_event_description =>
      'Este é um evento de teste, usado para verificar a funcionalidade do calendário';

  @override
  String get in_app => 'No aplicativo';

  @override
  String get enable_alert => 'Ativar lembrete de expiração';

  @override
  String get alert_method => 'Método de lembrete';

  @override
  String get alert_method_in_app => 'Apenas no aplicativo';

  @override
  String get alert_method_calendar => 'Somente calendário';

  @override
  String get alert_method_both => 'Ambos';

  @override
  String get alert_days_before => 'Número de dias de aviso antecipado';

  @override
  String get use_global_setting => 'Usar configurações globais';

  @override
  String get barcode_label => 'Código de barras';

  @override
  String get name_label => 'Nome';

  @override
  String get category_label => 'Categoria';

  @override
  String get current_quantity => 'Quantidade atual';

  @override
  String get select_operation => 'Por favor, selecione uma operação';

  @override
  String get unit => 'unidade';

  @override
  String get custom_unit => 'Unidade personalizada';

  @override
  String get enter_unit => 'Por favor, insira a unidade';

  @override
  String get custom_location => 'Local personalizado';

  @override
  String get enter_storage_location =>
      'Por favor, insira o local de armazenamento';

  @override
  String get scan => 'Escanear código';

  @override
  String get scan_to_stock => 'Digitalizar código para entrada no estoque';

  @override
  String get item_categories => 'Classificação de itens';

  @override
  String get storage_locations => 'Local de armazenamento';

  @override
  String get place_barcode_in_frame_to_scan =>
      'Coloque o código de barras dentro do quadro para escanear';

  @override
  String get barcode => 'Código de barras';

  @override
  String get enter_barcode_or_scan =>
      'Por favor, insira o código de barras ou escaneie o código';

  @override
  String get basic_information => 'Informações básicas';

  @override
  String get item_name => 'Nome do item';

  @override
  String get enter_item_name => 'Por favor, insira o nome do item';

  @override
  String get enter_category_name => 'Por favor, insira o nome da categoria';

  @override
  String item_increased(String itemName, String quantity, String unit) {
    return 'Foi adicionado $itemName $quantity$unit';
  }

  @override
  String item_decreased(String itemName, String quantity, String unit) {
    return 'Já foi reduzido $itemName $quantity$unit';
  }

  @override
  String get unsaved_changes => 'Alterações não salvas';

  @override
  String get unsaved_changes_message =>
      'Você tem alterações não salvas, por favor escolha uma ação:';

  @override
  String get discard => 'Desistir';

  @override
  String get unit_piece => 'un';

  @override
  String get unit_item => 'peça';

  @override
  String get unit_box => 'caixa';

  @override
  String get unit_package => 'pacote';

  @override
  String get unit_bottle => 'garrafa';

  @override
  String get unit_carton => 'caixa';

  @override
  String get unit_set => 'conjunto';

  @override
  String get unit_kg => 'kg';

  @override
  String get unit_g => 'g';

  @override
  String get unit_l => 'L';

  @override
  String get unit_ml => 'ml';

  @override
  String get unit_m => 'm';

  @override
  String get unit_cm => 'cm';

  @override
  String get quantity_label => 'quantidade';

  @override
  String get unit_price_label => 'Preço unitário';

  @override
  String get currency_label => 'Moeda';

  @override
  String get total_price_label => 'Preço total:';

  @override
  String get storage_location_label => 'Local de armazenamento';

  @override
  String get item_properties => 'Atributos do item';

  @override
  String get expiry_date_label => 'Período de validade';

  @override
  String get warranty_expiry_date_label => 'Data de validade da garantia';

  @override
  String get production_date_label => 'Data de produção';

  @override
  String get purchase_date_label => 'Data de compra';

  @override
  String auto_calculated_from(String dateType) {
    return 'Calculado automaticamente com base em $dateType e na data de validade';
  }

  @override
  String get auto_calculated => 'Cálculo automático';

  @override
  String get images_label => 'imagem';

  @override
  String get notes_label => 'Observação';

  @override
  String get add_notes_hint => 'Adicionar informações de observação (opcional)';

  @override
  String get year_label => 'ano';

  @override
  String get month_label => 'lua';

  @override
  String get day_label => 'céu';

  @override
  String selected_count(int count) {
    return 'Selecionado $count itens';
  }

  @override
  String get select_all => 'Selecionar tudo';

  @override
  String get deselect_all => 'Cancelar seleção de tudo';

  @override
  String get batch_change_location => 'Trocar locais de armazenamento em lote';

  @override
  String confirm_delete_selected(int count) {
    return 'Tem certeza de que deseja excluir os $count itens selecionados?';
  }

  @override
  String deleted_count_items(int count) {
    return 'Foram excluídos $count itens';
  }

  @override
  String get no_storage_location_available =>
      'Nenhum local de armazenamento disponível';

  @override
  String get batch_change_location_title =>
      'Trocar em massa os locais de armazenamento';

  @override
  String moved_count_items_to_location(int count, String location) {
    return 'Já foram transferidos $count itens para $location';
  }

  @override
  String get operation_type_create => 'Registrar';

  @override
  String get operation_type_update => 'Editar';

  @override
  String get operation_type_delete => 'Excluir';

  @override
  String get operation_type_inbound => 'Entrada no estoque';

  @override
  String get operation_type_outbound => 'Saída de estoque';

  @override
  String export_failed_message(String error) {
    return 'Falha na exportação: $error';
  }

  @override
  String get clear_logs => 'Limpar logs';

  @override
  String get confirm_clear_logs =>
      'Tem certeza de que deseja limpar todos os registros de operação? Esta ação não pode ser desfeita.';

  @override
  String get logs_cleared => 'O registro foi limpo';

  @override
  String get operation_logs_title => 'Registro de operações';

  @override
  String get export_logs => 'Exportar log';

  @override
  String get clear_logs_tooltip => 'Limpar logs';

  @override
  String get no_operation_logs => 'Sem registro de operações';

  @override
  String get log_item_label => 'Item:';

  @override
  String get log_category_label => 'Categoria:';

  @override
  String get log_type_label => 'Tipo:';

  @override
  String get log_quantity_label => 'Quantidade:';

  @override
  String get log_unit_price_label => 'Preço unitário:';

  @override
  String get log_total_price_label => 'Preço total:';

  @override
  String get log_expiry_date_label => 'Data de validade:';

  @override
  String get log_warranty_date_label => 'Data de garantia:';

  @override
  String get log_purchase_date_label => 'Data de compra:';

  @override
  String get log_production_date_label => 'Data de produção:';

  @override
  String get log_shelf_life_label => 'Prazo de validade:';

  @override
  String get log_storage_location_label => 'Local de armazenamento:';

  @override
  String get log_barcode_label => 'Código de barras:';

  @override
  String get log_notes_label => 'Observação:';

  @override
  String get log_alert_label => 'Alerta:';

  @override
  String get log_alert_days_label => 'Dias de alerta:';

  @override
  String get log_quantity_change_label => 'Variação de quantidade:';

  @override
  String get log_field_changes_label => 'Modificar campo:';

  @override
  String get log_not_set => 'Não configurado';

  @override
  String get log_empty => 'Vazio';

  @override
  String get log_alert_enabled => 'Ligar';

  @override
  String get log_alert_disabled => 'Fechar';

  @override
  String get operation_logs_menu => 'Registro de operações';

  @override
  String get operation_logs_description =>
      'Ver e recuperar registros de operações';

  @override
  String operation_failed_message(String error) {
    return 'Operação falhou: $error';
  }

  @override
  String get no_date => 'Sem data';

  @override
  String get shelf_life_months_suffix => 'meses';

  @override
  String get shelf_life_days_suffix => 'céu';

  @override
  String get alert_days_suffix => 'céu';

  @override
  String get unknown => 'Desconhecido';

  @override
  String get developer_name => 'Leão';

  @override
  String get log_operation_date_label => 'Data de operação:';

  @override
  String get uncategorized => 'Não classificado';

  @override
  String get no_location => 'Sem local';

  @override
  String get item_category_cannot_be_empty =>
      'A classificação do item não pode estar vazia';

  @override
  String get storage_location_cannot_be_empty =>
      'O local de armazenamento não pode estar vazio';

  @override
  String get created_at_asc => 'Adicionar horário em ordem crescente';

  @override
  String get created_at_desc => 'Adicionar ordem decrescente por tempo';

  @override
  String get location_management => 'Gestão de Estoque';

  @override
  String get private_warehouses => 'Repositório privado';

  @override
  String get public_warehouses => 'biblioteca pública';

  @override
  String get is_public_warehouse => 'biblioteca pública';

  @override
  String get public_warehouse_desc =>
      'O repositório público não tem administrador, é necessário preencher o operador ao retirar ou armazenar itens';

  @override
  String get manager => 'Administrador';

  @override
  String get not_set => 'Não configurado';

  @override
  String get edit_location => 'Editar biblioteca';

  @override
  String get location_name => 'Nome da biblioteca';

  @override
  String get manager_name => 'Nome do administrador';

  @override
  String get enter_manager_name => 'Por favor, insira o nome do administrador';

  @override
  String get manager_name_required =>
      'O nome do administrador não pode estar vazio';

  @override
  String delete_location_confirm(String name) {
    return 'Tem certeza de que deseja excluir a biblioteca \"$name\"?';
  }

  @override
  String get delete_location_has_items =>
      'Ainda há itens na biblioteca, não é possível excluí-la';

  @override
  String get default_manager => 'Administrador padrão';

  @override
  String get default_manager_desc =>
      'Administrador padrão ao criar um repositório privado';

  @override
  String get enter_default_manager =>
      'Por favor, insira o nome do administrador padrão';

  @override
  String get operator_name => 'Nome do operador';

  @override
  String get enter_operator_name => 'Por favor, insira o nome do operador';

  @override
  String get operator_name_required =>
      'O nome do operador não pode estar vazio';

  @override
  String get no_manager => 'Sem administrador';

  @override
  String get log_operator_label => 'Operador:';

  @override
  String get outbound_quantity_exceeds_current =>
      'A quantidade a ser retirada não pode exceder o estoque atual';
}
