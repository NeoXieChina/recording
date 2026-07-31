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
  String get search => 'Pesquisar';

  @override
  String get settings => 'Configurações';

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
  String custom_days(Object days) {
    return 'Personalizado ($days dias)';
  }

  @override
  String alert_days_range(Object min, Object max) {
    return 'Intervalo de dias de aviso: $min-$max dias';
  }

  @override
  String get enter_days => 'Por favor, insira o número de dias para o lembrete';

  @override
  String get days => 'Dias';

  @override
  String enter_valid_days(Object min, Object max) {
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
      'Após ativar, solicitará permissão para o calendário';

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
      'É necessário permissão de calendário para adicionar um evento de teste';

  @override
  String get test_notification_sent => 'Notificação de teste enviada';

  @override
  String test_notification_failed(Object error) {
    return 'Falha ao enviar notificação de teste: $error';
  }

  @override
  String get notification_permission_required =>
      'É necessário permissão de notificações para ativar lembretes locais';

  @override
  String operation_failed(Object error) {
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
  String backup_failed(Object error) {
    return 'Falha ao fazer backup: $error';
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
      'Você tem certeza de que deseja apagar todos os dados existentes e restaurar o backup? Esta operação não pode ser desfeita!';

  @override
  String get confirm_restore_button => 'Confirmar restauração';

  @override
  String restore_success(Object count) {
    return 'Recuperação bem-sucedida, um total de $count itens';
  }

  @override
  String restore_failed(Object error) {
    return 'Falha na restauração: $error';
  }

  @override
  String get select_backup_file => 'Selecionar arquivo de backup';

  @override
  String get restore_backup => 'Restaurar backup';

  @override
  String selected_file(Object filename) {
    return 'Arquivo selecionado: $filename';
  }

  @override
  String get export_success => 'Exportação de dados bem-sucedida';

  @override
  String export_failed(Object error) {
    return 'Falha ao exportar: $error';
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
  String import_success(Object count) {
    return 'Importação de dados bem-sucedida, um total de $count itens importados';
  }

  @override
  String import_failed(Object error) {
    return 'Falha ao importar: $error';
  }

  @override
  String get select_file => 'Selecionar arquivo';
}
