// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline => 'O NOVO melhor app pra\nacompanhar anime e mangá';

  @override
  String get anilist => 'AniList';

  @override
  String get mal => 'MyAnimeList';

  @override
  String get simkl => 'Simkl';

  @override
  String get trakt => 'Trakt';

  @override
  String get kitsu => 'Kitsu';

  @override
  String get comick => 'Comick';

  @override
  String get mangaBaka => 'MangaBaka';

  @override
  String get mangaUpdates => 'MangaUpdates';

  @override
  String get discord => 'Discord';

  @override
  String get loadMore => 'Carregar mais';

  @override
  String get login => 'Entrar';

  @override
  String get continueAsGuest => 'Continuar como visitante';

  @override
  String get getStarted => 'Começar';

  @override
  String get loginWithToken => 'Entrar com token';

  @override
  String get pasteTokenHint => 'Cole seu token de acesso';

  @override
  String loginTo(String service) {
    return 'Entrar no $service';
  }

  @override
  String get settings => 'Configurações';

  @override
  String get account => 'Conta';

  @override
  String get about => 'Sobre';

  @override
  String get language => 'Idioma';

  @override
  String get animationSpeed => 'Animações';

  @override
  String get animationSpeedDesc =>
      'Velocidade das transições e dos efeitos de entrada no app';

  @override
  String get animationSpeedOff => 'Desligado';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Extensões',
      one: 'Extensão',
    );
    return '$_temp0';
  }

  @override
  String get unknownSource => 'Fonte desconhecida';

  @override
  String get install => 'Instalar';

  @override
  String get update => 'Atualizar';

  @override
  String get uninstall => 'Desinstalar';

  @override
  String get updateInstallCancelled =>
      'Instalação cancelada. Se o Android disse que a app entra em conflito com a instalada, a assinatura é diferente: desinstala primeiro a versão atual e depois instala a atualização';

  @override
  String updateInstallFailed(String error) {
    return 'A atualização falhou: $error';
  }

  @override
  String get appLock => 'Bloqueio da app';

  @override
  String get appLockDesc =>
      'Pede um código quando abres a app ou voltas a ela passado algum tempo';

  @override
  String get appLockBiometric => 'Desbloqueie com biometria';

  @override
  String get appLockBiometricDesc =>
      'Use sua impressão digital ou rosto em vez de digitar a senha';

  @override
  String get appLockBiometricReason => 'Desbloquear Dartotsu';

  @override
  String get appLockDelay => 'Bloquear quando ocioso';

  @override
  String get appLockDelayAlways => 'Sempre';

  @override
  String get appLockDelayNever => 'Nunca';

  @override
  String appLockDelayAfter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minutos',
      one: '1 minuto',
    );
    return 'Depois $_temp0';
  }

  @override
  String get appLockUseBiometric => 'Use biometria';

  @override
  String get appLockUnlock => 'Mete o teu código';

  @override
  String get appLockWrong => 'Código errado';

  @override
  String appLockWait(String seconds) {
    return 'Demasiadas tentativas, espera ${seconds}s';
  }

  @override
  String get appLockNew => 'Escolhe um código';

  @override
  String get appLockNewHint => '4 a 8 dígitos';

  @override
  String get appLockConfirm => 'Escreve-o outra vez';

  @override
  String get appLockMismatch => 'Os códigos não coincidem';

  @override
  String get appLockOn => 'Código definido';

  @override
  String get appLockRemoveTitle => 'Mete o teu código para desligar o bloqueio';

  @override
  String get installFailed => 'Falha ao instalar';

  @override
  String get updateFailed => 'Falha ao atualizar';

  @override
  String extensionUpdates(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count atualizações disponíveis',
      one: '1 atualização disponível',
    );
    return '$_temp0';
  }

  @override
  String get updateAll => 'Atualizar tudo';

  @override
  String extensionsUpdated(int done, int total) {
    return '$done de $total extensões atualizadas';
  }

  @override
  String get updateConflictTitle => 'Atualização não instalada';

  @override
  String updateConflictBody(String names) {
    return '$names não pôde ser instalado sobre a versão existente. Isso geralmente significa que a cópia instalada foi assinada de forma diferente. Desinstalá-lo e instalar a nova versão?';
  }

  @override
  String get updateConflictAction => 'Desinstalar e reinstalar';

  @override
  String get noSourceSettings => 'A fonte não tem configurações';

  @override
  String get addPluginRepository => 'Adicionar repositório de plugins';

  @override
  String get pluginIndexUrlHint => 'URL do índice de plugins';

  @override
  String get addRepository => 'Adicionar repositório';

  @override
  String get importRepositoryFile => 'Importar um arquivo';

  @override
  String get pluginRepoUpdated => 'Repositório de plugins atualizado';

  @override
  String get pluginRepoUpdateFailed =>
      'Falha ao atualizar o repositório de plugins';

  @override
  String get ok => 'OK';

  @override
  String get cancel => 'Cancelar';

  @override
  String get yes => 'Sim';

  @override
  String get no => 'Não';

  @override
  String get save => 'Salvar';

  @override
  String get reset => 'Redefinir';

  @override
  String get clear => 'Limpar';

  @override
  String get test => 'Testar';

  @override
  String get testing => 'Testando…';

  @override
  String get resolving => 'Resolvendo…';

  @override
  String get none => 'Nenhum';

  @override
  String get selectMediaService => 'Escolher serviço de mídia';

  @override
  String get manageServices => 'Serviços de mídia';

  @override
  String get manageServicesDesc =>
      'Reordene os serviços e escolha quais serão exibidos no seletor';

  @override
  String get manageServicesHint =>
      'Arraste para reordenar, desligue aqueles que você não usa';

  @override
  String get pickColor => 'Escolha uma cor';

  @override
  String get colorPickerCustom => 'Personalizado';

  @override
  String get colorPickerTransparent => 'Transparente';

  @override
  String get ltr => 'Da esquerda pra direita';

  @override
  String get searchSettings => 'Buscar configurações';

  @override
  String nothingMatches(String query) {
    return 'Nada encontrado pra \"$query\"';
  }

  @override
  String searchCategory(String category) {
    return 'Buscar em $category';
  }

  @override
  String get settingsAppearance => 'Aparência';

  @override
  String get settingsAppearanceDesc => 'Tema, cores, modo vidro';

  @override
  String get settingsGeneral => 'Geral';

  @override
  String get settingsGeneralDesc => 'Idioma e comportamento';

  @override
  String get settingsNetwork => 'Rede';

  @override
  String get settingsNetworkDesc => 'User agent, certificates, DNS and proxy';

  @override
  String get settingsAccountDesc => 'Serviço de acompanhamento e login';

  @override
  String get settingsUpdates => 'Atualizações';

  @override
  String get amoledBlack => 'Preto AMOLED';

  @override
  String get amoledBlackDesc => 'Superfícies totalmente pretas no modo escuro';

  @override
  String get glassMode => 'Modo vidro';

  @override
  String get glassModeDesc =>
      'Superfícies foscas sobre as capas da sua biblioteca';

  @override
  String get shelfFrame => 'Moldura em volta das seções';

  @override
  String get shelfFrameDesc =>
      'Mostra um cartão atrás de cada prateleira, ou deixa as linhas direto na página';

  @override
  String get settingsExtensionsDesc =>
      'Gerenciadores de fontes, repositórios e opções das extensões';

  @override
  String get settingsAddons => 'Complementos';

  @override
  String get customPath => 'Caminho de armazenamento personalizado';

  @override
  String get stories => 'Histórias';

  @override
  String get watchOrder => 'Assistir ordem';

  @override
  String get watchOrderOpenSite => 'Abra em chiaki.site';

  @override
  String get watchOrderUnavailable =>
      'Nenhuma ordem de exibição foi encontrada para este título';

  @override
  String get watchOrderOpenFailed => 'Não foi possível abrir esse título';

  @override
  String get watchOrderCurrent => 'Você está aqui';

  @override
  String get watchOrderCredit => 'Assista aos pedidos por chiaki.site';

  @override
  String get customPathDesc =>
      'Onde ficam os dados do app. Segure pra redefinir';

  @override
  String get selectDirectory => 'Selecionar pasta';

  @override
  String get differentCacheManager => 'Cache de imagens alternativo';

  @override
  String get differentCacheManagerDesc =>
      'Usa outro gerenciador de cache pras imagens';

  @override
  String get settingsSync => 'Configurações de sincronização';

  @override
  String get settingsSyncDesc =>
      'Mantenha suas configurações iguais em todos os dispositivos. Eles são armazenados em uma essência privada em sua conta GitHub';

  @override
  String get settingsSyncSwitch => 'Sincronizar na mudança';

  @override
  String get settingsSyncModeGithub => 'GitHub';

  @override
  String get settingsSyncSignIn => 'Faça login com GitHub';

  @override
  String get settingsSyncToken => 'Use um token de acesso pessoal';

  @override
  String get settingsSyncTokenDesc =>
      'Crie um em github.com/settings/tokens apenas com a permissão Gist';

  @override
  String get settingsSyncTokenField => 'Símbolo';

  @override
  String settingsSyncSignedIn(Object user) {
    return 'Conectado como $user';
  }

  @override
  String get settingsSyncSignOut => 'Sair';

  @override
  String get settingsSyncSignInFailed =>
      'Não foi possível fazer login no GitHub';

  @override
  String get dcSampleWatching => 'Assistindo';

  @override
  String get dcSampleReading => 'Lendo';

  @override
  String get dcSampleBrowsing => 'Navegando';

  @override
  String get dcSampleLive => 'Agora mesmo';

  @override
  String get dcLiveNothing =>
      'Nada está aparecendo agora. Abra um título, inicie um episódio ou capítulo e ele aparecerá aqui.';

  @override
  String get dcMemberList => 'Na lista de membros';

  @override
  String get dcSignOut => 'Sair';

  @override
  String get dcConnect => 'Conectar discórdia';

  @override
  String get dcConnectDesc =>
      'Abre a página de autorização do Discord e adiciona Dartotsu em Aplicativos Autorizados. Discord pede para atualizar sua presença. Apenas um token de atualização é salvo, não o token da sua conta.';

  @override
  String get dcConnectFailed => 'Não foi possível conectar o Discord';

  @override
  String get dcConnectedSnack => 'Discord conectado';

  @override
  String get dcDisconnect => 'Desconectar';

  @override
  String get dcDisconnectedSnack => 'Discord desconectado';

  @override
  String get dcUseToken => 'Use um token';

  @override
  String get dcRouteDesktop => 'Por meio do aplicativo Discord para desktop';

  @override
  String get dcRouteHeadless => 'Através da sua conta';

  @override
  String get dcRouteGateway => 'Através da sua conta, viva';

  @override
  String get dcRouteLinked => 'Aplicativo conectado';

  @override
  String get dcRouteNone => 'Não conectado';

  @override
  String get dcStatusNeedsToken =>
      'Precisa de um token Discord. Conectar o aplicativo não define seu status online.';

  @override
  String get dcAccountOnly => 'Precisa de uma conta conectada';

  @override
  String get dcStatusSection => 'Estado';

  @override
  String get dcControlStatus => 'Controlar meu status';

  @override
  String get dcControlStatusDesc =>
      'Mantém uma conexão ao vivo com o Discord enquanto o Rich Presence está ativado, para que o Dartotsu possa definir seu status.';

  @override
  String get dcStatusOnline => 'On-line';

  @override
  String get dcStatusIdle => 'Inativo';

  @override
  String get dcStatusDnd => 'Não perturbe';

  @override
  String get dcStatusInvisible => 'Invisível';

  @override
  String get dcCustomStatus => 'Status personalizado';

  @override
  String get dcCustomStatusHint => 'O que você está fazendo?';

  @override
  String get dcActivitySection => 'Atividade';

  @override
  String get dcShowWatching => 'Mostrar enquanto assiste';

  @override
  String get dcShowReading => 'Mostrar durante a leitura';

  @override
  String get dcListening => 'Ouvindo';

  @override
  String get dcCompeting => 'Competindo';

  @override
  String get dcActivityName => 'Nome da atividade';

  @override
  String get dcNameApp => 'Dartotsu';

  @override
  String get dcNameTitle => 'Título';

  @override
  String get dcNameCustom => 'Personalizado';

  @override
  String get dcCustomNameHint => 'Nome mostrado após “Assistindo”';

  @override
  String get dcStatusText => 'Texto de status';

  @override
  String get dcStatusTextDesc =>
      'O que a lista de membros mostra ao lado do seu nome';

  @override
  String get dcDisplayName => 'Nome';

  @override
  String get dcDisplayState => 'Estado';

  @override
  String get dcDisplayDetails => 'Detalhes';

  @override
  String get dcTextSection => 'Texto';

  @override
  String get dcDetails => 'Linha superior';

  @override
  String get dcState => 'Resultado final';

  @override
  String get dcTemplateHint => 'Vazio usa o padrão';

  @override
  String get dcVariables => 'Toque para inserir um valor';

  @override
  String get dcImagesSection => 'Imagens';

  @override
  String get dcLargeImage => 'Imagem grande';

  @override
  String get dcLargeAuto => 'Automático';

  @override
  String get dcLargeCover => 'Capa';

  @override
  String get dcLargeLogo => 'Logotipo';

  @override
  String get dcSmallImage => 'Imagem pequena';

  @override
  String get dcSmallAuto => 'Logotipo';

  @override
  String get dcSmallNone => 'Nenhum';

  @override
  String get dcTimerStyle => 'Estilo do temporizador';

  @override
  String get dcTimerAuto => 'Automático';

  @override
  String get dcTimerElapsed => 'Decorrido';

  @override
  String get dcTimerRemaining => 'Restante';

  @override
  String get dcButtonsSection => 'Botões';

  @override
  String get dcButtonMedia => 'Link para o título';

  @override
  String get dcButtonApp => 'Link para Dartotsu';

  @override
  String get dcButtonCustom => 'Botão personalizado';

  @override
  String get dcButtonLabel => 'Etiqueta';

  @override
  String get dcButtonUrl => 'Ligação';

  @override
  String get dcPrivacySection => 'Privacidade';

  @override
  String get dcPrivateText => 'Texto privado';

  @override
  String get dcPrivateHint => 'Algo privado';

  @override
  String get dcTokenWarning =>
      'O login usa o token da sua conta. As regras do Discord desencorajam isso, então use por sua própria conta e risco.';

  @override
  String get dcConnected => 'Conectado';

  @override
  String get dcConnection => 'Conexão';

  @override
  String get dcMethodDesktop => 'Aplicativo de desktop Discord';

  @override
  String get dcMethodDesktopDesc =>
      'Usado automaticamente quando nada mais está conectado. O Discord deve estar aberto neste computador.';

  @override
  String get dcMethodToken => 'Token de conta';

  @override
  String get dcInUse => 'Em uso';

  @override
  String get dcRecommended => 'Recomendado';

  @override
  String dcSignedInAs(String name) {
    return 'Conectado como $name';
  }

  @override
  String get settingsSyncOn => 'Ligado';

  @override
  String get settingsSyncCustom => 'Personalizado';

  @override
  String get settingsSyncChangedHeader => 'Configurações alteradas';

  @override
  String get settingsSyncNoneChanged =>
      'Você ainda não alterou nada disso, então não há nada para sincronizar.';

  @override
  String get settingsSyncChangedOnly =>
      'Somente as configurações que você alterou serão armazenadas. Todo o resto usa seu padrão em todos os dispositivos. O ícone da nuvem mostra o que já está no servidor.';

  @override
  String get settingsSyncOffCategory =>
      'Não sincronizando. Eles permanecem neste dispositivo e a cópia do servidor é deixada como está.';

  @override
  String get settingsSyncPartsNote =>
      'Por dispositivo. Desligado mantém o valor de cada dispositivo, portanto, um telefone e uma TV podem ser diferentes.';

  @override
  String get settingsSyncPartSubtitles => 'Tamanho e cores da legenda';

  @override
  String get settingsSyncPartSubtitlesDesc => 'Tamanho, peso, cores e posição';

  @override
  String get settingsSyncPartPictureColors => 'Cores da imagem';

  @override
  String get settingsSyncPartPictureColorsDesc =>
      'Brilho, contraste, saturação, gama, matiz e HDR';

  @override
  String get settingsSyncPartPalette => 'Cores do tema';

  @override
  String get settingsSyncPartPaletteDesc =>
      'Tema, cor de destaque e preto OLED';

  @override
  String get settingsSyncCatOther => 'Assistir, ler e serviços';

  @override
  String get settingsSyncTitles => 'Observe o progresso e os títulos';

  @override
  String settingsSyncTitlesCount(Object records, Object resume) {
    return '$records títulos e $resume resumem entradas no servidor';
  }

  @override
  String get settingsSyncTitlesNone => 'Nada carregado ainda';

  @override
  String get settingsSyncTitlesNote =>
      'Assista e leia as posições, a estante de currículos, suas listas locais, marcadores, destaques e opções por título. As correspondências e streams de origem permanecem em cada dispositivo porque dependem de suas extensões. Os títulos são carregados no máximo a cada 45 segundos.';

  @override
  String get settingsSyncConnect => 'Não conectado';

  @override
  String get settingsSyncConnectDesc =>
      'Faça login no GitHub para manter suas configurações iguais em todos os dispositivos.';

  @override
  String get settingsSyncFailedTitle => 'Falha na sincronização';

  @override
  String get settingsSyncPaused => 'Pausado';

  @override
  String get settingsSyncPausedDesc =>
      'Nada é carregado ou baixado enquanto esta opção estiver desativada.';

  @override
  String get settingsSyncUpToDate => 'Atualizado';

  @override
  String get settingsSyncRetry => 'Tentar novamente';

  @override
  String get settingsSyncAccount => 'Conta GitHub';

  @override
  String get settingsSyncAccountDesc =>
      'Seus dados vão para uma essência privada em sua própria conta.';

  @override
  String get settingsSyncWaiting => 'Esperando sua aprovação no GitHub';

  @override
  String get settingsSyncCopyCode => 'Toque no código para copiá-lo';

  @override
  String get settingsSyncCancel => 'Cancelar';

  @override
  String get settingsSyncStatSettings => 'Configurações';

  @override
  String get settingsSyncStatTitles => 'Títulos';

  @override
  String get settingsSyncStatShelf => 'Currículo';

  @override
  String settingsSyncUploaded(Object time, Object device) {
    return 'Carregado $time de $device';
  }

  @override
  String settingsSyncChanged(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count alterado',
      one: '1 mudou',
      zero: 'Nada mudou ainda',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncSecrets => 'Contas e senhas';

  @override
  String get settingsSyncSecretsDesc =>
      'Sincronize seus logins (AniList, MAL, Kitsu, Simkl, MangaBaka, MangaUpdates), chaves de API e bloqueio de aplicativos entre seus dispositivos. Eles são criptografados com uma senha que permanece em seus dispositivos, para que o GitHub nunca os veja.';

  @override
  String get settingsSyncSecretsOn =>
      'As contas são sincronizadas e criptografadas';

  @override
  String get settingsSyncSecretsOnDesc =>
      'Sair de um dispositivo não significa desconectar você dos outros.';

  @override
  String get settingsSyncSecretsBroken =>
      'A senha não corresponde mais à do servidor. Digite-o novamente para continuar sincronizando as contas.';

  @override
  String get settingsSyncPassphraseSet => 'Defina uma senha';

  @override
  String get settingsSyncPassphraseEnter => 'Digite sua senha';

  @override
  String get settingsSyncPassphraseField => 'Senha';

  @override
  String get settingsSyncPassphraseConfirm => 'Repita a senha';

  @override
  String get settingsSyncPassphraseNew =>
      'Escolha uma senha de pelo menos 6 caracteres. Ele não é armazenado em nenhum lugar além de seus dispositivos e não pode ser recuperado. Se você esquecer, exclua a cópia do servidor e comece novamente.';

  @override
  String get settingsSyncPassphraseExisting =>
      'Digite a senha que você escolheu no outro dispositivo. As contas neste dispositivo serão substituídas pelas contas sincronizadas.';

  @override
  String get settingsSyncPassphraseWrong => 'Senha errada';

  @override
  String get settingsSyncPassphraseMismatch => 'As senhas não correspondem';

  @override
  String get settingsSyncPassphraseShort => 'Use pelo menos 6 caracteres';

  @override
  String get settingsSyncSecretsStop => 'Pare de sincronizar contas';

  @override
  String get settingsSyncSecretsDelete => 'Excluir do GitHub';

  @override
  String get settingsSyncSecretsDeleteMessage =>
      'Isso remove o arquivo de contas criptografadas da sua essência. Outros dispositivos mantêm seus logins e podem definir uma nova senha.';

  @override
  String get settingsSyncWhat => 'O que sincronizar';

  @override
  String get settingsSyncServerEmpty => 'Nada carregado ainda';

  @override
  String get settingsSyncThisDevice => 'este dispositivo';

  @override
  String settingsSyncCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Configurações $count no servidor',
      one: '1 configuração no servidor',
      zero: 'Nada no servidor',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncNow => 'Sincronize agora';

  @override
  String get settingsSyncRunning => 'Sincronizando…';

  @override
  String get settingsSyncNever => 'Ainda não sincronizado';

  @override
  String settingsSyncLast(Object time) {
    return 'Última sincronização $time';
  }

  @override
  String get settingsSyncScope =>
      'Somente as configurações que funcionam da mesma forma em todos os lugares são sincronizadas. Contas, tokens, pastas, extensões, notificações, Discord, atualizações e tamanho da janela permanecem em cada dispositivo.';

  @override
  String get backupAndRestore => 'Backup e restauração';

  @override
  String get backupAndRestoreDesc => 'Salve ou carregue suas preferências';

  @override
  String get backup => 'Cópia de segurança';

  @override
  String get restore => 'Restaurar';

  @override
  String get loadExtensionsIcon => 'Carregar ícones das extensões';

  @override
  String get autoUpdateRuntimes =>
      'Atualizar tempos de execução de extensão automaticamente';

  @override
  String get autoUpdateRuntimesDesc =>
      'Baixe o novo Aniyomi, CloudStream e outras versões de tempo de execução em segundo plano. Desativado, um ícone de atualização aparece ao lado do gerenciador.';

  @override
  String get loadExtensionsIconDesc =>
      'Mostra os ícones das fontes nas listas de extensões';

  @override
  String get sectionStorage => 'Armazenamento';

  @override
  String get sectionManagers => 'Gerenciadores';

  @override
  String get sectionOptions => 'Opções';

  @override
  String get backupTabBackup => 'Fazer backup';

  @override
  String get backupTabRestore => 'Restaurar';

  @override
  String backupSummary(Object keys, Object categories) {
    return '$keys configurações em $categories categorias';
  }

  @override
  String backupLastBackup(Object time) {
    return 'Último backup $time';
  }

  @override
  String get backupNever => 'Nenhum backup ainda';

  @override
  String get backupSelectAll => 'Selecionar tudo';

  @override
  String get backupClearAll => 'Limpar';

  @override
  String backupKeys(Object count) {
    return '$count configurações';
  }

  @override
  String get backupPasswordRequired =>
      'Senha (obrigatória para dados da conta)';

  @override
  String get backupProtectedNeedsPassword =>
      'Defina uma senha para fazer backup dos dados da conta ou desmarque-a';

  @override
  String get backupProtectedSkipped =>
      'Este backup não tem senha, então os dados da conta foram ignorados';

  @override
  String get backupPassword => 'Senha (opcional)';

  @override
  String get backupPasswordHint => 'Deixe vazio pra usar a padrão';

  @override
  String get backupSensitive =>
      'Inclui tokens de login. Mantenha esse arquivo privado';

  @override
  String get backupCreate => 'Criar backup';

  @override
  String backupSaved(Object name) {
    return 'Backup salvo em $name';
  }

  @override
  String backupFailed(Object error) {
    return 'Falha no backup: $error';
  }

  @override
  String get backupPickFile => 'Escolha um arquivo de backup';

  @override
  String get backupPickFileDesc =>
      'Escolha um arquivo .json feito pelo Dartotsu';

  @override
  String get backupChooseAnother => 'Escolher outro arquivo';

  @override
  String get backupCreatedAt => 'Criado';

  @override
  String get backupAppVersion => 'Versão do app';

  @override
  String get backupDevice => 'Dispositivo';

  @override
  String get backupAccounts => 'Contas';

  @override
  String get backupSize => 'Tamanho';

  @override
  String get backupEncrypted => 'Protegido por senha';

  @override
  String get backupUnlock => 'Desbloquear';

  @override
  String get backupWrongPassword =>
      'Não consegui ler esse arquivo. Confira a senha';

  @override
  String get backupRestoreSelected => 'Restaurar selecionados';

  @override
  String backupRestoreConfirm(Object count) {
    return 'Restaurar $count configurações? Os valores existentes nessas categorias serão sobrescritos.';
  }

  @override
  String get backupRestored => 'Restaurado. Reinicie o app pra aplicar tudo';

  @override
  String backupRestoreFailed(Object error) {
    return 'Falha na restauração: $error';
  }

  @override
  String get backupSelectOne => 'Selecione pelo menos uma categoria';

  @override
  String get backupCatTheme => 'Aparência';

  @override
  String get backupCatThemeDesc =>
      'Tema, cores, vidro, fontes e estilo dos cartões';

  @override
  String get backupCatCommon => 'Geral';

  @override
  String get backupCatCommonDesc =>
      'Idioma, armazenamento, rede e opções das extensões';

  @override
  String get backupCatPlayer => 'Jogador';

  @override
  String get backupCatPlayerDesc => 'Preferências do player';

  @override
  String get backupCatReader => 'Leitor';

  @override
  String get backupCatReaderDesc => 'Preferências do leitor';

  @override
  String get backupCatProtected => 'Contas';

  @override
  String get backupCatProtectedDesc => 'Tokens de login e dados de sessão';

  @override
  String get backupCatOther => 'Serviços e feeds';

  @override
  String get backupCatOtherDesc =>
      'Layout dos feeds, listas e opções dos serviços';

  @override
  String get logFile => 'Arquivo de log';

  @override
  String get logFileDesc =>
      'Compartilhe o log do app ou copie o caminho no Linux';

  @override
  String get logDelete => 'Excluir arquivos de log';

  @override
  String get logDeleteDesc =>
      'Limpe os logs de aplicativos salvos para liberar espaço';

  @override
  String logDeleted(String size) {
    return 'Excluído $size dos registros';
  }

  @override
  String get missingSequel => 'Sequela perdida';

  @override
  String get rising => 'Ascendente';

  @override
  String get stacks => 'Pilhas';

  @override
  String get stacksAll => 'Todos';

  @override
  String get stacksFeatured => 'Destaque';

  @override
  String get stacksMine => 'Seu';

  @override
  String get stacksSaved => 'Salvo';

  @override
  String get stacksFollowing => 'Seguindo';

  @override
  String get stacksEmpty => 'Nenhuma pilha aqui ainda';

  @override
  String get stacksSignIn => 'Faça login no MangaBaka para ver suas pilhas';

  @override
  String get stacksScopeNeeded =>
      'Suas pilhas precisam de uma nova permissão. Faça login no MangaBaka novamente para permitir.';

  @override
  String get stacksSignInAgain => 'Faça login novamente';

  @override
  String get stacksCouldntLoad => 'Não foi possível carregar as pilhas';

  @override
  String stackSeriesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Série $count',
      one: '1 série',
    );
    return '$_temp0';
  }

  @override
  String stackSavesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count salva',
      one: '1 salvar',
    );
    return '$_temp0';
  }

  @override
  String stackBy(String name) {
    return 'por $name';
  }

  @override
  String get stackSpoilers => 'Spoilers';

  @override
  String get stackEmptyEntries => 'Esta pilha está vazia';

  @override
  String get stackSave => 'Salvar pilha';

  @override
  String get stackUnsave => 'Remover dos salvos';

  @override
  String get stackSavedToast => 'Salvo em suas pilhas';

  @override
  String get stackRemovedToast => 'Removido das suas pilhas salvas';

  @override
  String userStacks(String name) {
    return 'Pilhas por $name';
  }

  @override
  String get newsTitle => 'Notícias';

  @override
  String get newsEmpty => 'Nenhuma notícia agora';

  @override
  String get newsCouldntLoad => 'Não foi possível carregar as notícias';

  @override
  String get logFileCopied => 'Caminho do log copiado';

  @override
  String get donateSheetTitle => 'Curtindo o Dartotsu?';

  @override
  String get donateSheetMessage =>
      'O Dartotsu é feito e mantido por uma pessoa só. Se ele é útil pra você, pense em apoiar o desenvolvimento.';

  @override
  String get donateLater => 'Talvez depois';

  @override
  String get glassBackground => 'Fundo de vidro';

  @override
  String get glassBackgroundDesc =>
      'O banner do seu perfil, a menos que você defina um link de imagem';

  @override
  String get glassBackgroundHint =>
      'Link da imagem (deixe vazio pra usar seu banner)';

  @override
  String get followCover => 'Seguir a capa';

  @override
  String get followCoverDesc =>
      'As cores seguem o fundo e, nas páginas de detalhes, a capa';

  @override
  String get followCoverMediaOnly => 'Somente para mídia';

  @override
  String get followCoverMediaOnlyDesc =>
      'Siga apenas a capa nas páginas da mídia, em todos os outros lugares mantém as cores normais';

  @override
  String get cardStyle => 'Estilo dos cartões';

  @override
  String get cardStyleDesc => 'Posição do título, tamanho, progresso e selos';

  @override
  String get customFont => 'Fonte';

  @override
  String get customFontDesc =>
      'Padrão, um arquivo do seu dispositivo ou Google Fonts';

  @override
  String get customFontError => 'Não consegui carregar esse arquivo de fonte';

  @override
  String get googleFontError => 'Não consegui baixar essa fonte';

  @override
  String get yourFonts => 'Suas fontes';

  @override
  String get addFontFile => 'Adicionar arquivo de fonte…';

  @override
  String get browseGoogleFonts => 'Explorar Google Fonts…';

  @override
  String get searchGoogleFonts => 'Buscar no Google Fonts';

  @override
  String get defaultFont => 'Padrão';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDesc => 'Cor dinâmica do sistema';

  @override
  String get jsonTheme => 'Arquivo de tema personalizado';

  @override
  String get jsonThemeDesc =>
      'Cores ao vivo de ~/.config/dartotsu/theme.json (um script seu ou edições manuais)';

  @override
  String get themeMode => 'Modo do tema';

  @override
  String get mode => 'Modo';

  @override
  String get trackingService => 'Serviço de acompanhamento';

  @override
  String get signOut => 'Sair';

  @override
  String get signIn => 'Entrar';

  @override
  String get notSignedIn => 'Sem login';

  @override
  String signOutOf(String service) {
    return 'Sair do $service?';
  }

  @override
  String get checkForUpdates => 'Buscar atualizações';

  @override
  String get checkForUpdatesDesc =>
      'Avisar quando sair uma nova versão no GitHub';

  @override
  String get updateChannel => 'Canal de atualização';

  @override
  String get channel => 'Canal';

  @override
  String get stable => 'Estável';

  @override
  String get preRelease => 'Pré-lançamento';

  @override
  String get alpha => 'Alfa';

  @override
  String get checkNow => 'Verificar agora';

  @override
  String get userAgent => 'User-Agent';

  @override
  String get settingDefault => 'Padrão';

  @override
  String currentlyUsing(String value) {
    return 'Atual: $value';
  }

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

  @override
  String get dnsDefault => 'Padrão (Cloudflare)';

  @override
  String get proxy => 'Procurador';

  @override
  String get proxyProtocol => 'Tipo';

  @override
  String get proxyHost => 'Anfitrião';

  @override
  String get proxyPort => 'Porta';

  @override
  String get proxyUsername => 'Nome de usuário';

  @override
  String get proxyPassword => 'Senha';

  @override
  String get optional => 'Opcional';

  @override
  String get clearCookies => 'Limpar cookies';

  @override
  String get clearCookiesDesc => 'Remove todos os cookies salvos';

  @override
  String notImplementedArea(String area) {
    return '$area — em breve';
  }

  @override
  String notImplementedService(String service) {
    return 'O $service ainda não suporta isso.';
  }

  @override
  String get couldNotLoadResults => 'Não consegui carregar os resultados';

  @override
  String get updateCheckFailed => 'Não consegui verificar atualizações';

  @override
  String get highRefreshRate => 'Taxa de atualização alta';

  @override
  String get highRefreshRateDesc =>
      'Usa a maior taxa de atualização que a sua tela suporta';

  @override
  String get imageSave => 'Salvar imagem';

  @override
  String imageSavedTo(String path) {
    return 'Salvo em $path';
  }

  @override
  String get imageActionFailed => 'Não consegui baixar a imagem';

  @override
  String get imageTitleCover => 'Capa';

  @override
  String get imageTitlePage => 'Página';

  @override
  String get imageTitleBanner => 'Bandeira';

  @override
  String get imageTitleAvatar => 'Foto de perfil';

  @override
  String get verifyTls => 'Verificar certificados';

  @override
  String get verifyTlsDesc =>
      'Rejeita servidores com certificado HTTPS inválido. Desligue só pra uma fonte que usa um autoassinado';

  @override
  String get clearCookiesConfirm =>
      'Remover todos os cookies salvos? Isso pode deslogar você de algumas fontes.';

  @override
  String get version => 'Versão';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => 'Código, issues e releases';

  @override
  String get discordDesc => 'Comunidade e suporte';

  @override
  String get supportDeveloper => 'Apoie o desenvolvedor';

  @override
  String get buyMeCoffee => 'Compre-me um café';

  @override
  String get upiId => 'ID da UPI';

  @override
  String get upiCopied => 'ID UPI copiado';

  @override
  String get donateDesc => 'Apoiar o desenvolvimento';

  @override
  String get contributors => 'Colaboradores';

  @override
  String get contributorsDesc => 'As pessoas que construíram o Dartotsu';

  @override
  String get contributorsLoadFailed => 'Não consegui carregar os colaboradores';

  @override
  String get forks => 'Forks';

  @override
  String get forksDesc => 'Projetos feitos em cima do Dartotsu';

  @override
  String get forksEmpty => 'Nenhum fork encontrado';

  @override
  String get sectionColors => 'Cores';

  @override
  String get sectionDisplay => 'Tela';

  @override
  String get sectionStyle => 'Estilo';

  @override
  String get sectionCommunity => 'Comunidade';

  @override
  String get sectionAppInfo => 'Info do app';

  @override
  String get sectionRequests => 'Requisições';

  @override
  String get sectionDnsProxy => 'DNS e proxy';

  @override
  String get onboardingBack => 'Voltar';

  @override
  String get onboardingNext => 'Próximo';

  @override
  String get onboardingSkip => 'Pular';

  @override
  String get onboardingLanguageBody =>
      'Escolha o idioma em que o Dartotsu é mostrado. Você pode alterá-lo posteriormente em Configurações.';

  @override
  String get onboardingPaletteTitle => 'Deixe com a sua cara';

  @override
  String get onboardingPaletteBody =>
      'Escolha uma paleta. Todos os destaques, dos cartões ao player, seguem ela.';

  @override
  String get themeModeAuto => 'Automático';

  @override
  String get themeModeLight => 'Claro';

  @override
  String get themeModeDark => 'Escuro';

  @override
  String get onboardingSyncTitle => 'Sincronize sua biblioteca';

  @override
  String get onboardingSyncBody =>
      'Entre com o AniList pra trazer suas listas, progresso e notas. Ou pule e explore como visitante.';

  @override
  String get onboardingOpenLinks =>
      'Abrir links do AniList e de repositórios no Dartotsu';

  @override
  String get onboardingPermsTitle => 'Permissões';

  @override
  String get onboardingPermsBody =>
      'Libere agora pra downloads, atualizações e alertas funcionarem sem interrupção. Você pode mudar depois nas configurações do sistema.';

  @override
  String get permNotifications => 'Notificações';

  @override
  String get permNotificationsDesc =>
      'Progresso dos downloads, novos episódios e respostas';

  @override
  String get permStorage => 'Acesso a todos os arquivos';

  @override
  String get permStorageDesc => 'Salvar downloads na pasta pública do Dartotsu';

  @override
  String get permInstall => 'Instalar atualizações';

  @override
  String get permInstallDesc =>
      'Deixa o Dartotsu instalar as próprias atualizações';

  @override
  String get permBattery => 'Bateria sem restrições';

  @override
  String get permBatteryDesc =>
      'Mantém downloads longos rodando em segundo plano';

  @override
  String get permGrant => 'Permitir';

  @override
  String get linkOpenInApp => 'Abrir links no Dartotsu';

  @override
  String get linkOpenInAppDesc =>
      'Deixa os links do AniList e de repositórios abrirem o app';

  @override
  String get reviewsTitle => 'Comentários';

  @override
  String get reviewsEmpty => 'Nenhum review ainda';

  @override
  String get reviewsFailed => 'Não consegui carregar os reviews';

  @override
  String get reviewHelpfulQuestion => 'Esse review foi útil?';

  @override
  String get reviewVoteFailed => 'Não consegui salvar seu voto';

  @override
  String reviewHelpful(int n, int total) {
    return '$n de $total acharam isso útil';
  }

  @override
  String get calendarTitle => 'Calendário de exibição';

  @override
  String get calendarToday => 'Hoje';

  @override
  String get calendarEmpty => 'Nada vai ao ar nesse dia';

  @override
  String get calendarFailed => 'Não consegui carregar o calendário';

  @override
  String calendarChapter(int n) {
    return 'Capítulo $n';
  }

  @override
  String get calendarExpected => 'Esperado';

  @override
  String get castReceiverFailed => 'O Chromecast não iniciou seu player';

  @override
  String get castPlaybackFailed =>
      'O dispositivo não conseguiu reproduzir esta transmissão';

  @override
  String get shortcutNothingToContinue => 'Nada para continuar ainda';

  @override
  String shortcutNoCalendar(String service) {
    return '$service não tem calendário';
  }

  @override
  String calendarEpisode(int n) {
    return 'Episódio $n';
  }

  @override
  String get shareAnalytics => 'Compartilhar dados de uso anônimos';

  @override
  String get shareAnalyticsDesc =>
      'Contagem anônima de usuários e relatórios de falha. Sem conta nem dados pessoais';

  @override
  String get linkOpenAnilist => 'Abrir links do AniList no Dartotsu';

  @override
  String get linkOpenAnilistDesc =>
      'Ative o tratamento de links pra os links anilist.co abrirem o app';

  @override
  String get linkSettingsFailed =>
      'Não consegui abrir as configurações do sistema';

  @override
  String get discordRichPresence => 'Rich Presence';

  @override
  String get discordBrowsing => 'Mostrar atividade de navegação';

  @override
  String get discordBrowsingDesc =>
      'Mostra também a aba, página ou perfil que você está vendo, não só o que assiste ou lê.';

  @override
  String get discordActivityType => 'Tipo de atividade';

  @override
  String get discordActivityTypeDesc =>
      'Como o Discord escreve: \"Assistindo …\" ou \"Jogando …\". Auto usa Assistindo pra anime e Jogando pro resto.';

  @override
  String get discordWatching => 'Assistindo';

  @override
  String get discordPlaying => 'Jogando';

  @override
  String get discordCovers => 'Mostrar capas';

  @override
  String get discordCoversDesc => 'Capa e ícone do Dartotsu no cartão.';

  @override
  String get discordTimer => 'Mostrar timer';

  @override
  String get discordTimerDesc =>
      'Tempo decorrido ou restante embaixo do título.';

  @override
  String get discordButtons => 'Mostrar botões';

  @override
  String get discordButtonsDesc =>
      'Botões \"Ver anime / mangá\" e \"Abrir Dartotsu\".';

  @override
  String get discordHideTitles => 'Esconder títulos';

  @override
  String get discordHideTitlesDesc =>
      'Troca os nomes de anime e mangá (e a capa e o link) por \"Algo privado\".';

  @override
  String get listSearchHint => 'Buscar nessa lista';

  @override
  String get listSort => 'Ordenar';

  @override
  String get listFilter => 'Filtrar';

  @override
  String get listRandom => 'Título aleatório';

  @override
  String get listReverse => 'Inverter ordem';

  @override
  String get listSortDefault => 'Ordem da lista';

  @override
  String get listSortScore => 'Sua nota';

  @override
  String get listSortTitle => 'Título';

  @override
  String get listSortUpdated => 'Última atualização';

  @override
  String get listSortProgress => 'Progresso';

  @override
  String get listSortReleased => 'Data de lançamento';

  @override
  String get listSortAverage => 'Nota média';

  @override
  String get listFilterFormat => 'Formato';

  @override
  String get listFilterStatus => 'Estado';

  @override
  String get listFilterGenres => 'Gêneros';

  @override
  String get listFilterClear => 'Limpar filtros';

  @override
  String get listNoMatches => 'Nada nessa lista corresponde';

  @override
  String get discordLogin => 'Entrar no Discord';

  @override
  String get discordToken => 'Token do Discord';

  @override
  String get discordTokenSavedSnack => 'Token do Discord salvo';

  @override
  String get discordTokenRemovedSnack => 'Token do Discord removido';

  @override
  String get discordRichPresenceRow => 'Discord Rich Presence';

  @override
  String get discordRichPresenceRowOn => 'Ligado · toque pra mudar o visual';

  @override
  String get discordRichPresenceRowOff =>
      'Mostra o que você está fazendo no seu perfil do Discord';

  @override
  String get loginCancelled => 'Login cancelado';

  @override
  String get invalidToken => 'Token inválido';

  @override
  String loginFailed(String error) {
    return 'Falha no login: $error';
  }

  @override
  String get malLoginFailed => 'Falha no login do MyAnimeList';

  @override
  String get kitsuLoginFailed =>
      'Falha no login do Kitsu. Confira seu e-mail e senha.';

  @override
  String get kitsuLoginTitle => 'Entrar no Kitsu';

  @override
  String get emailOrUsername => 'E-mail ou nome de usuário';

  @override
  String get password => 'Senha';

  @override
  String get kitsuProfile => 'Perfil do Kitsu';

  @override
  String get mangaBakaLoginFailed => 'Falha no login do MangaBaka';

  @override
  String get comickLoginFailed => 'Falha no login do Comick';

  @override
  String get tagline => 'Slogan';

  @override
  String get trending => 'Tendências';

  @override
  String get anticipated => 'Antecipado';

  @override
  String get watchlist => 'Lista de observação';

  @override
  String get recommendedShows => 'Programas recomendados';

  @override
  String get recommendedMovies => 'Filmes recomendados';

  @override
  String get boxOffice => 'Bilheteria';

  @override
  String get popularMovies => 'Filmes populares';

  @override
  String get popularShows => 'Programas populares';

  @override
  String get anticipatedMovies => 'Filmes antecipados';

  @override
  String get anticipatedShows => 'Programas antecipados';

  @override
  String get trendingShows => 'Programas populares';

  @override
  String get mostWatchedThisWeek => 'Mais assistidos esta semana';

  @override
  String get sortMostViewed => 'Mais vistos';

  @override
  String get sortMostFollowed => 'Mais seguidos';

  @override
  String get sortLatestUpdates => 'Últimas atualizações';

  @override
  String get translationStatusLabel => 'Tradução';

  @override
  String get weeklySchedule => 'Programação Semanal';

  @override
  String get mostFollowed => 'Mais seguidos';

  @override
  String get latestUpdates => 'Últimas atualizações';

  @override
  String get trendingAnime => 'Tendências de animes';

  @override
  String get topRatedAnime => 'Animes mais bem avaliados';

  @override
  String get mostFollowedAnime => 'Animes mais seguidos';

  @override
  String get comickProfile => 'Perfil de quadrinhos';

  @override
  String get refreshFromComick => 'Atualizar do Comick';

  @override
  String get mangaBakaProfile => 'Perfil do MangaBaka';

  @override
  String get refreshFromMangaBaka => 'Atualizar do MangaBaka';

  @override
  String get mangaUpdatesLoginTitle => 'Faça login no MangaUpdates';

  @override
  String get mangaUpdatesProfile => 'Perfil MangaUpdates';

  @override
  String get mangaUpdatesAnimeStart => 'Começa a adaptação do anime';

  @override
  String get mangaUpdatesAnimeEnd => 'A adaptação do anime termina';

  @override
  String get refreshFromMangaUpdates => 'Atualizar do MangaUpdates';

  @override
  String get usernameOnly => 'Nome de usuário';

  @override
  String get releases => 'Lançamentos';

  @override
  String get artistsLabel => 'Artistas';

  @override
  String get authorsLabel => 'Autores';

  @override
  String get publishersLabel => 'Editoras';

  @override
  String get licensedLabel => 'Licenciado';

  @override
  String get contentRatingLabel => 'Classificação indicativa';

  @override
  String get yesLabel => 'Sim';

  @override
  String get noLabel => 'Não';

  @override
  String get ratingSteps => 'Escala de notas';

  @override
  String get hideNsfw => 'Esconder NSFW';

  @override
  String get hideNsfwSourcesDesc =>
      'Ocultar fontes marcadas com 18+ dos feeds e do seletor de fontes. Eles permanecem instalados.';

  @override
  String get hideNsfwDesc =>
      'Tira títulos adultos dos feeds e da busca e lista suas entradas adultas em Mídia oculta.';

  @override
  String get kitsuAccountOptions => 'Opções da conta Kitsu';

  @override
  String get mangaBakaAccountOptions => 'Opções da conta MangaBaka';

  @override
  String get comickClientId => 'ID do cliente Comick';

  @override
  String get comickClientIdDesc =>
      'ID de cliente personalizado registrado em comick.dev';

  @override
  String get traktClientId => 'Trakt Client ID';

  @override
  String get traktClientIdDesc =>
      'Sign in with your own Trakt app instead of the built-in one';

  @override
  String get traktCreateApp => 'Create a Trakt app';

  @override
  String get traktCreateAppDesc => 'Opens your apps on trakt.tv';

  @override
  String traktRedirectHelp(String uris) {
    return 'On trakt.tv/oauth/applications create an app and add these Redirect URIs, one per line:\n\n$uris\n\nThen paste its Client ID here, save and sign in again.';
  }

  @override
  String get couldNotUpdateKitsuSettings =>
      'Não consegui atualizar suas configurações do Kitsu';

  @override
  String get titleCanonical => 'Canônico';

  @override
  String get titleRomanized => 'Romanizado';

  @override
  String get titleLocalized => 'Localizado';

  @override
  String get ratingSystem => 'Sistema de notas';

  @override
  String get ratingSimple => 'Simples (3 carinhas)';

  @override
  String get ratingRegular => 'Normal (5 estrelas)';

  @override
  String get ratingAdvanced => 'Avançado (10 pontos)';

  @override
  String get contentFilter => 'Filtro de conteúdo';

  @override
  String get contentSfw => 'Só conteúdo seguro';

  @override
  String get contentSometimes => 'Conteúdo adulto nas buscas';

  @override
  String get contentEverywhere => 'Conteúdo adulto em todo lugar';

  @override
  String get shareToGlobal => 'Compartilhar no feed global';

  @override
  String get shareToGlobalDesc =>
      'Deixa sua atividade aparecer no feed global do Kitsu.';

  @override
  String get memberSince => 'Membro desde';

  @override
  String get location => 'Localização';

  @override
  String get accountType => 'Tipo de conta';

  @override
  String get accountSupporter => 'Apoiador';

  @override
  String get accountFree => 'Grátis';

  @override
  String get accountDetails => 'Detalhes da conta';

  @override
  String get refreshFromKitsu => 'Atualizar do Kitsu';

  @override
  String get simklReadOnly => 'O Simkl deu acesso somente leitura';

  @override
  String get incognitoEditsBlocked => 'Anônimo: edições na lista bloqueadas';

  @override
  String serviceError(String service, String error) {
    return '$service: $error';
  }

  @override
  String get incognitoProgressNotSaved => 'Anônimo: progresso não salvo';

  @override
  String progressSet(int progress) {
    return 'Progresso definido pra $progress';
  }

  @override
  String removedFromList(String title) {
    return '$title removido da sua lista';
  }

  @override
  String get following => 'Seguindo';

  @override
  String get followsMutual => 'Mútuo';

  @override
  String get followsNotMutual => 'Não mútuo';

  @override
  String get homeSections => 'Seções do início';

  @override
  String get homeSectionsHint =>
      'Arraste pra reordenar. Seções escondidas nunca são carregadas.';

  @override
  String get customListDeleteFailed => 'Falha ao apagar a lista personalizada';

  @override
  String get customListsSaveFailed =>
      'Falha ao salvar as listas personalizadas';

  @override
  String get customListsSaved => 'Listas personalizadas salvas';

  @override
  String get listName => 'Nome da lista';

  @override
  String get addList => 'Adicionar lista';

  @override
  String get voiceActors => 'Dubladores';

  @override
  String voiceActorsIn(String name) {
    return 'Dubladores · $name';
  }

  @override
  String get animeAppearances => 'Aparições em anime';

  @override
  String get mangaAppearances => 'Aparições em mangá';

  @override
  String get voicedCharacters => 'Personagens dubladas';

  @override
  String get animeCredits => 'Créditos em anime';

  @override
  String get mangaCredits => 'Créditos em mangá';

  @override
  String get mainProductions => 'Produções principais';

  @override
  String get otherWorks => 'Outros trabalhos';

  @override
  String get prequel => 'Prequela';

  @override
  String get sequel => 'Sequela';

  @override
  String get previousSeason => 'Temporada anterior';

  @override
  String get thisSeason => 'Essa temporada';

  @override
  String get nextSeason => 'Próxima temporada';

  @override
  String get voiceRoles => 'Papéis de dublagem';

  @override
  String get staffPositions => 'Cargos na equipe';

  @override
  String get mangaWorks => 'Obras de mangá';

  @override
  String get malProfile => 'Perfil do MyAnimeList';

  @override
  String get refreshFromMal => 'Atualizar do MyAnimeList';

  @override
  String get repullProfileCounts => 'Puxa de novo seu perfil e contagens';

  @override
  String get refreshed => 'Atualizado';

  @override
  String get simklProfile => 'Perfil do Simkl';

  @override
  String get traktProfile => 'Perfil Trakt';

  @override
  String get refreshFromSimkl => 'Atualizar do Simkl';

  @override
  String get refreshFromTrakt => 'Atualizar do Trakt';

  @override
  String get repullProfileLibrary => 'Puxa de novo seu perfil e biblioteca';

  @override
  String get simklSignInToSearch => 'Entre no Simkl pra buscar';

  @override
  String get dropRate => 'Taxa de abandono';

  @override
  String get simklAttribution =>
      'Dados e arte fornecidos pelo Simkl. Ver no Simkl';

  @override
  String get traktAttribution =>
      'Dados e arte fornecidos por Trakt. Ver no Trakt';

  @override
  String get listsLiked => 'Gostou';

  @override
  String get listsYours => 'Seu';

  @override
  String get traktVip => 'VIP';

  @override
  String get traktVipMember => 'Membro VIP do Trakt';

  @override
  String get onHold => 'Em pausa';

  @override
  String get scoredBy => 'Avaliado por';

  @override
  String get planToWatch => 'Pretendo assistir';

  @override
  String get planToRead => 'Pretendo ler';

  @override
  String get timesRewatched => 'Vezes reassistido';

  @override
  String get timesReread => 'Vezes relido';

  @override
  String get comments => 'Comentários';

  @override
  String get moviesAndSeries => 'Filmes e séries';

  @override
  String get simklMoviesOnly => 'Somente filmes e séries';

  @override
  String get simklMoviesOnlyDesc =>
      'Substitui a guia Anime: Filmes primeiro, depois Programas por algumas linhas de anime';

  @override
  String get trackingOnly => 'Só acompanhamento';

  @override
  String get signedIn => 'Logado';

  @override
  String get searchLanguage => 'Idioma da busca';

  @override
  String get savedToList => 'Salvo na sua lista';

  @override
  String get removedFromYourList => 'Removido da sua lista';

  @override
  String get retry => 'Tentar de novo';

  @override
  String get synopsis => 'Sinopse';

  @override
  String get details => 'Detalhes';

  @override
  String get addToList => 'Adicionar à lista';

  @override
  String get trailer => 'Reboque';

  @override
  String get trailerQuality => 'Qualidade do trailer';

  @override
  String get linkCopied => 'Link copiado';

  @override
  String get detailStale =>
      'Não foi possível acessar o AniList. Estas são informações salvas e podem estar desatualizadas.';

  @override
  String get copyLink => 'Copiar link';

  @override
  String get openInBrowser => 'Abrir no navegador';

  @override
  String viewOnSource(String source) {
    return 'Ver no $source';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return 'O episódio $ep sai em $time';
  }

  @override
  String nextEpisodeIn(String time) {
    return 'Próximo episódio em $time';
  }

  @override
  String chapterExpectedIn(int chapter, String time) {
    return 'Capítulo $chapter previsto daqui a cerca de $time';
  }

  @override
  String get logPathCopied => 'Caminho do arquivo de log copiado';

  @override
  String get animeSource => 'Fonte de anime';

  @override
  String get mangaSource => 'Fonte de mangá';

  @override
  String get popular => 'Populares';

  @override
  String get allCustomLists => 'Todas as listas personalizadas';

  @override
  String get simklTitleLanguage => 'Idioma do título do anime';

  @override
  String get titleLanguageEnglish => 'Inglês';

  @override
  String get titleLanguageRomaji => 'Romaji';

  @override
  String get simklListsTrending => 'Tendências';

  @override
  String get simklListsMostLiked => 'Mais curtido';

  @override
  String get simklListsMostFollowed => 'Mais seguidos';

  @override
  String get simklListsOfficial => 'Oficial';

  @override
  String simklListTitles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count títulos',
      one: '1 título',
    );
    return '$_temp0';
  }

  @override
  String get people => 'Pessoas';

  @override
  String get mostComments => 'A maioria dos comentários';

  @override
  String get alphabetical => 'Alfabético';

  @override
  String get latest => 'Mais recentes';

  @override
  String get saved => 'Salvos';

  @override
  String get nothingMatched => 'Nada encontrado';

  @override
  String get nothingSavedFromSource => 'Nada salvo dessa fonte ainda';

  @override
  String get sourceReturnedNothing => 'Essa fonte não retornou nada';

  @override
  String get checkConnectionOrSource =>
      'Confira sua conexão ou tente outra fonte.';

  @override
  String get tryDifferentSearch => 'Tente outro termo de busca.';

  @override
  String get savedTitlesAppearHere =>
      'Os títulos que você adicionar à lista aparecem aqui.';

  @override
  String get tryOtherFeed => 'Tente o outro feed ou faça uma busca.';

  @override
  String searchSource(String source) {
    return 'Buscar em $source';
  }

  @override
  String get animeExtensions => 'Extensões de anime';

  @override
  String get mangaExtensions => 'Extensões de mangá';

  @override
  String get nothingHereYet => 'Nada aqui ainda';

  @override
  String get savedOnDeviceUntilLogin =>
      'Tudo abaixo fica salvo nesse dispositivo até você fazer isso.';

  @override
  String get yourProfile => 'Seu perfil';

  @override
  String get activity => 'Atividade';

  @override
  String get extensions => 'Extensões';

  @override
  String get logOut => 'Sair';

  @override
  String get logIn => 'Entrar';

  @override
  String get logOutConfirm => 'Tem certeza que quer sair?';

  @override
  String get incognitoMode => 'Modo anônimo';

  @override
  String get alsoBlockListEdits => 'Bloquear também edições na lista';

  @override
  String get offlineMode => 'Modo offline';

  @override
  String get switchService => 'Trocar de serviço';

  @override
  String logOutOf(String name) {
    return 'Sair do $name';
  }

  @override
  String get loggedIn => 'Logado';

  @override
  String get notifications => 'Notificações';

  @override
  String get nothingNew => 'Nada de novo';

  @override
  String get thisWeek => 'Essa semana';

  @override
  String get listOnly => 'Só da lista';

  @override
  String get notInList => 'Não está na lista';

  @override
  String get filter => 'Filtrar';

  @override
  String get searchResults => 'Resultados da busca';

  @override
  String get recentSearches => 'Buscas recentes';

  @override
  String get searchOrSetFilter => 'Busque ou defina um filtro';

  @override
  String get filters => 'Filtros';

  @override
  String get showLess => 'Mostrar menos';

  @override
  String get showAll => 'Mostrar tudo';

  @override
  String get apply => 'Aplicar';

  @override
  String get preview => 'Prévia';

  @override
  String get preset => 'Predefinição';

  @override
  String get cardNormal => 'Normais';

  @override
  String get cardOnCard => 'No cartão';

  @override
  String get cardInCard => 'Dentro do cartão';

  @override
  String get size => 'Tamanho';

  @override
  String get cardWidth => 'Largura do cartão';

  @override
  String get compact => 'Compacto';

  @override
  String get coverAndTitleOnly => 'Só capa e título';

  @override
  String get titleLines => 'Linhas do título';

  @override
  String get shape => 'Formato';

  @override
  String get posterShape => 'Formato do pôster';

  @override
  String get cornerRadius => 'Raio dos cantos';

  @override
  String get off => 'Desligado';

  @override
  String get topLeft => 'Topo esquerdo';

  @override
  String get topRight => 'Topo direito';

  @override
  String get bottomLeft => 'Base esquerda';

  @override
  String get bottomRight => 'Base direita';

  @override
  String get overlays => 'Sobreposições';

  @override
  String get progressCount => 'Progresso / contagem';

  @override
  String get pill => 'Pílula';

  @override
  String get bar => 'Barra';

  @override
  String get outside => 'Fora';

  @override
  String get scoreBadge => 'Selo de nota';

  @override
  String get airingDot => 'Ponto de exibição';

  @override
  String get updateAvailable => 'Atualização disponível';

  @override
  String get notInstalled => 'Não instalado';

  @override
  String get done => 'Concluído';

  @override
  String get searchOrEnterUrl => 'Busque ou digite uma URL';

  @override
  String get refresh => 'Atualizar';

  @override
  String get animePlanetRank => 'Classificação';

  @override
  String get animePlanetMagazine => 'Revista';

  @override
  String get animePlanetRefreshLists => 'Atualize suas listas';

  @override
  String get animePlanetRefreshListsDesc =>
      'Leia suas listas do Anime-Planet novamente';

  @override
  String get animePlanetLocalNote =>
      'Faça login para salvar as alterações em sua conta Anime-Planet. Até então eles permanecem neste dispositivo';

  @override
  String get share => 'Compartilhar';

  @override
  String get characters => 'Personagens';

  @override
  String get staff => 'Equipe';

  @override
  String get readMore => 'Ler mais';

  @override
  String get couldNotLoadList => 'Não consegui carregar a lista';

  @override
  String get logInToFavourite => 'Entre pra adicionar favoritos';

  @override
  String get alsoKnownAs => 'Também conhecido como';

  @override
  String get hideSpoilerNames => 'Esconder nomes com spoiler';

  @override
  String get showSpoilerNames => 'Mostrar nomes com spoiler';

  @override
  String get favourited => 'Nos favoritos';

  @override
  String get favourite => 'Favoritar';

  @override
  String get couldNotOpenTitle => 'Não consegui abrir esse título';

  @override
  String get nobodyHereYet => 'Ninguém aqui ainda';

  @override
  String get noMatches => 'Nada encontrado';

  @override
  String get gridView => 'Visualização em grade';

  @override
  String get fullWidth => 'Largura total';

  @override
  String get userNotFound => 'Usuário não encontrado';

  @override
  String get couldNotUpdateFollow => 'Não consegui atualizar o seguir';

  @override
  String followedUser(String name) {
    return 'Você começou a seguir $name';
  }

  @override
  String unfollowedUser(String name) {
    return 'Você deixou de seguir $name';
  }

  @override
  String get messages => 'Mensagens';

  @override
  String get logInToSeeMessages => 'Entre pra ver suas mensagens';

  @override
  String get editActivity => 'Editar atividade';

  @override
  String get newActivity => 'Nova atividade';

  @override
  String get editMessage => 'Editar mensagem';

  @override
  String get writeMessage => 'Escrever uma mensagem';

  @override
  String get editReply => 'Editar resposta';

  @override
  String get posted => 'Publicado';

  @override
  String get couldNotPost => 'Não consegui publicar';

  @override
  String get nothingToPreview => 'Nada pra visualizar';

  @override
  String get writeSomethingHint =>
      'Escreva algo… o markdown do AniList funciona aqui';

  @override
  String get privateMessage => 'Mensagem privada';

  @override
  String get post => 'Publicar';

  @override
  String get nothingHere => 'Nada aqui';

  @override
  String get noAnimeProgress => 'Sem progresso de anime';

  @override
  String get noMangaProgress => 'Sem progresso de mangá';

  @override
  String get noMessages => 'Sem mensagens';

  @override
  String get writeMessageHint => 'Escreva uma mensagem…';

  @override
  String get shareSomethingHint => 'Compartilhe algo…';

  @override
  String get all => 'Tudo';

  @override
  String get anime => 'Anime';

  @override
  String get manga => 'Mangá';

  @override
  String get count => 'Contagem';

  @override
  String get hoursWatched => 'Horas assistidas';

  @override
  String get chaptersRead => 'Capítulos lidos';

  @override
  String get meanScore => 'Nota média';

  @override
  String get noStatsYet => 'Sem estatísticas ainda';

  @override
  String get totalEntries => 'Total de entradas';

  @override
  String get episodesWatched => 'Episódios assistidos';

  @override
  String get daysWatched => 'Dias assistidos';

  @override
  String get volumesRead => 'Volumes lidos';

  @override
  String get standardDeviation => 'Desvio padrão';

  @override
  String get showMore => 'Mostrar mais';

  @override
  String get followsYou => 'Segue você';

  @override
  String get nobodyYet => 'Ninguém ainda';

  @override
  String get logInToLike => 'Entre pra curtir';

  @override
  String get failedToLikeActivity => 'Falha ao curtir a atividade';

  @override
  String get deleteActivityConfirm => 'Apagar atividade?';

  @override
  String get deletedActivity => 'Atividade apagada';

  @override
  String get failedToDeleteActivity => 'Falha ao apagar a atividade';

  @override
  String get subscribed => 'Inscrito';

  @override
  String get unsubscribed => 'Inscrição cancelada';

  @override
  String get failedToUpdateSubscription => 'Falha ao atualizar a inscrição';

  @override
  String get edit => 'Editar';

  @override
  String get delete => 'Apagar';

  @override
  String get likedBy => 'Curtido por';

  @override
  String get follow => 'Seguir';

  @override
  String get nameCopied => 'Nome copiado';

  @override
  String get followsEachOther => 'Se seguem';

  @override
  String get unfollow => 'Deixar de seguir';

  @override
  String get userIdCopied => 'ID de usuário copiado';

  @override
  String get shareProfile => 'Compartilhar perfil';

  @override
  String get copyUserId => 'Copiar ID de usuário';

  @override
  String get failedToDelete => 'Falha ao apagar';

  @override
  String get failedToLike => 'Falha ao curtir';

  @override
  String get replies => 'Respostas';

  @override
  String get reply => 'Responder';

  @override
  String get noRepliesYet => 'Nenhuma resposta ainda';

  @override
  String get favouriteAnime => 'Animes favoritos';

  @override
  String get favouriteManga => 'Mangás favoritos';

  @override
  String get favouriteCharacters => 'Personagens favoritas';

  @override
  String get favouriteStaff => 'Equipe favorita';

  @override
  String get favouriteStudios => 'Estúdios favoritos';

  @override
  String get noFavouritesYet => 'Nenhum favorito ainda';

  @override
  String get yourStory => 'Seu story';

  @override
  String get copiedToClipboard => 'Copiado pra área de transferência';

  @override
  String get justNow => 'Agora mesmo';

  @override
  String get openImage => 'Abrir imagem';

  @override
  String get hideSpoiler => 'Esconder spoiler';

  @override
  String get showSpoiler => 'Mostrar spoiler';

  @override
  String get status => 'Estado';

  @override
  String get score => 'Nota';

  @override
  String get started => 'Início';

  @override
  String get completed => 'Concluído';

  @override
  String get private => 'Privado';

  @override
  String get hideFromStatusLists => 'Esconder das listas de status';

  @override
  String get totalRepeats => 'Total de repetições';

  @override
  String get other => 'Outro';

  @override
  String get customLists => 'Listas personalizadas';

  @override
  String get activeDays => 'Dias ativos';

  @override
  String get longestStreak => 'Maior sequência';

  @override
  String get currentStreak => 'Sequência atual';

  @override
  String get tapOrHoverDay => 'Toque ou passe o mouse num dia';

  @override
  String get less => 'Menos';

  @override
  String get more => 'Mais';

  @override
  String epIn(int ep, String time) {
    return 'Ep. $ep em $time';
  }

  @override
  String get sectionLoading => 'Carregando';

  @override
  String get querySize => 'Tamanho da consulta';

  @override
  String get querySizeDesc =>
      'Uma consulta grande carrega todas as linhas (e um perfil inteiro) numa requisição só. Consultas divididas mandam uma requisição pequena por linha ou parte do perfil: cada uma é rápida e as partes vão aparecendo.';

  @override
  String get oneBig => 'Uma grande';

  @override
  String get split => 'Dividida';

  @override
  String get sectionSocial => 'Sociais';

  @override
  String get systemNotifications => 'Notificações do sistema';

  @override
  String get feedLayout => 'Layout do feed';

  @override
  String sectionsShown(int shown, int total) {
    return '$shown de $total visíveis — toque pra escolher e reordenar';
  }

  @override
  String labelSections(String label) {
    return 'Seções de $label';
  }

  @override
  String get accountOptions => 'Opções da conta';

  @override
  String get anilistAccountOptions => 'Opções da conta AniList';

  @override
  String get sectionPrivacy => 'Privacidade';

  @override
  String get hidePrivateEntries => 'Esconder entradas privadas';

  @override
  String get hidePrivateEntriesDesc =>
      'Mantém fora do feed as entradas marcadas como privadas no AniList';

  @override
  String get anilistExcludeList => 'Excluir a tua lista';

  @override
  String get anilistExcludeListDesc =>
      'Esconde das páginas de anime e manga os títulos que já estão no teu AniList';

  @override
  String get anilistProfile => 'Perfil do AniList';

  @override
  String get refreshFromAnilist => 'Atualizar do AniList';

  @override
  String get couldNotUpdateAnilistSettings =>
      'Não consegui atualizar as configurações do AniList';

  @override
  String get sectionNames => 'Nomes';

  @override
  String get titleLanguage => 'Idioma dos títulos';

  @override
  String get titleLanguageDesc =>
      'Como os títulos são escritos em todo lugar, ex.: Attack on Titan / Shingeki no Kyojin / 進撃の巨人.';

  @override
  String get staffCharacterNames => 'Nomes da equipe e dos personagens';

  @override
  String get sectionLists => 'Listas';

  @override
  String get scoreFormat => 'Formato da nota';

  @override
  String get sortListsBy => 'Ordenar listas por';

  @override
  String labelCustomLists(String label) {
    return 'Listas personalizadas de $label';
  }

  @override
  String customListsCount(int count) {
    return '$count listas — toque pra adicionar ou remover';
  }

  @override
  String get mergeActivities => 'Agrupar atividades';

  @override
  String minutesCount(int count) {
    return '$count min';
  }

  @override
  String get timezone => 'Fuso horário';

  @override
  String get notSet => 'Não definido';

  @override
  String get airingNotifications => 'Notificações de exibição';

  @override
  String get airingNotificationsDesc =>
      'Receba um aviso quando sair um episódio de uma série que você segue';

  @override
  String get displayAdultContent => 'Mostrar conteúdo adulto';

  @override
  String get displayAdultContentDesc =>
      'Inclui títulos 18+ na exploração, busca e feeds';

  @override
  String get restrictMessages => 'Limitar mensagens a quem eu sigo';

  @override
  String get restrictMessagesDesc =>
      'Só quem você segue pode te mandar mensagem';

  @override
  String get sectionServices => 'Serviços';

  @override
  String get novel => 'Romance';

  @override
  String labelService(String label) {
    return 'Serviço de $label';
  }

  @override
  String nameSettings(String name) {
    return 'Configurações do $name';
  }

  @override
  String extensionBridgeOptions(String name) {
    return 'Opções da ponte de extensões do $name';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return 'O $name não conseguiu iniciar: $error';
  }

  @override
  String get importLists => 'Importar listas';

  @override
  String get importListsDesc =>
      'De backups do Aniyomi, Mihon / Tachiyomi ou Kotatsu';

  @override
  String get exportLists => 'Exportar listas';

  @override
  String get exportListsDesc => 'Pra um backup do Aniyomi, Mihon ou Kotatsu';

  @override
  String get sectionBrowse => 'Explorar';

  @override
  String get readingTab => 'Aba de leitura';

  @override
  String get readingTabDesc => 'Quais extensões a terceira aba mostra';

  @override
  String get firstTab => 'Primeira guia';

  @override
  String get firstTabDesc =>
      'Quais extensões a primeira guia mostra. Escolha aqui o mangá e o romance na aba de leitura para retirar o anime do bar';

  @override
  String get novelExtensions => 'Novas extensões';

  @override
  String get defaultFeed => 'Feed padrão';

  @override
  String get defaultFeedDesc => 'Com qual lista uma fonte abre';

  @override
  String noServiceSupports(String type) {
    return 'Nenhum serviço suporta $type';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · $loaded de $installed fontes carregando';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return 'Nenhum serviço de extensões suporta $type aqui.';
  }

  @override
  String get loadDataFrom => 'Carregar dados de';

  @override
  String noInstalledSourcesYet(String type) {
    return 'Nenhuma fonte de $type instalada ainda.';
  }

  @override
  String extensionNotInstalled(String name) {
    return 'A extensão do $name não está instalada';
  }

  @override
  String get thisSource => 'essa fonte';

  @override
  String failedToAddRepository(String error) {
    return 'Falha ao adicionar o repositório: $error';
  }

  @override
  String installedType(String type) {
    return '$type instalados';
  }

  @override
  String availableType(String type) {
    return '$type disponíveis';
  }

  @override
  String noInstalledExtensions(String type) {
    return 'Nenhuma extensão de $type instalada';
  }

  @override
  String noAvailableExtensions(String type) {
    return 'Nenhuma extensão de $type disponível';
  }

  @override
  String get nothingToShowYet => 'Nada pra mostrar ainda';

  @override
  String get addTitlesHint =>
      'Adicione alguns títulos à sua lista e eles aparecem aqui.';

  @override
  String get couldntLoad => 'Não consegui carregar';

  @override
  String get progressStyleHint =>
      'Pílula e barra ficam sobre o pôster; \"fora\" mostra a mesma contagem como texto simples — escolha um.';

  @override
  String get nixManagedUpdate =>
      'Essa build é gerenciada pelo Nix — rode \"nix flake update\" na sua flake e recompile em vez de atualizar por aqui';

  @override
  String autoUpdateFailed(String error) {
    return 'A atualização automática falhou ($error) — abrindo a página de download';
  }

  @override
  String get unknownPreference => 'Preferência desconhecida';

  @override
  String unsupportedPreferenceType(String type) {
    return 'Tipo de preferência não suportado $type';
  }

  @override
  String get notYetReleased => 'Ainda não lançado';

  @override
  String get notStarted => 'Não iniciado';

  @override
  String get country => 'País';

  @override
  String get sort => 'Ordenar';

  @override
  String get chooseBackupDialog =>
      'Escolha um backup do Aniyomi, Mihon ou Kotatsu';

  @override
  String get importListsHint =>
      'Traga uma biblioteca do Aniyomi, Mihon / Tachiyomi ou Kotatsu. Títulos, capas, progresso e categorias são mantidos.';

  @override
  String get chooseBackupFile => 'Escolher arquivo de backup';

  @override
  String importAnimeCount(int count) {
    return 'Importar $count animes';
  }

  @override
  String importMangaCount(int count) {
    return 'Importar $count mangás';
  }

  @override
  String get mergeWithExisting => 'Mesclar com as listas existentes';

  @override
  String get mergeWithExistingDesc =>
      'Mantém o que você já tem; desligado substitui títulos iguais';

  @override
  String get chooseAnother => 'Escolher outro';

  @override
  String get import => 'Importar';

  @override
  String animeCount(int count) {
    return '$count animes';
  }

  @override
  String mangaCount(int count) {
    return '$count mangás';
  }

  @override
  String savedPath(String path) {
    return 'Salvo em $path';
  }

  @override
  String exportFailed(String error) {
    return 'Falha ao exportar: $error';
  }

  @override
  String get nothingInLocalLists => 'Nada nas suas listas locais ainda.';

  @override
  String exportsSummary(int anime, int manga) {
    return 'Exporta $anime animes e $manga mangás das suas listas locais. O Kotatsu só suporta mangá.';
  }

  @override
  String get saveToFolder => 'Salvar na pasta';

  @override
  String get formatAnimeManga => 'Anime e mangá · .tachibk';

  @override
  String get formatMangaTachibk => 'Só mangá · .tachibk';

  @override
  String get formatMangaZip => 'Só mangá · .zip';

  @override
  String get genres => 'Gêneros';

  @override
  String get relations => 'Relações';

  @override
  String get recommendations => 'Recomendações';

  @override
  String get openings => 'Aberturas';

  @override
  String get endings => 'Encerramentos';

  @override
  String get background => 'Contexto';

  @override
  String get links => 'Ligações';

  @override
  String get rank => 'Ranking';

  @override
  String get members => 'Membros';

  @override
  String get favorites => 'Favoritos';

  @override
  String get episodes => 'Episódios';

  @override
  String get chapters => 'Capítulos';

  @override
  String get volumes => 'Volumes';

  @override
  String get format => 'Formato';

  @override
  String get source => 'Fonte';

  @override
  String get duration => 'Duração';

  @override
  String minutesPerEpisode(int minutes) {
    return '$minutes min por ep.';
  }

  @override
  String get rating => 'Classificação';

  @override
  String get studio => 'Estúdio';

  @override
  String get serialization => 'Serialização';

  @override
  String get season => 'Temporada';

  @override
  String get year => 'Ano';

  @override
  String get filterAny => 'Qualquer';

  @override
  String get broadcast => 'Transmissão';

  @override
  String get aired => 'Exibido';

  @override
  String get published => 'Publicado';

  @override
  String get popularity => 'Popularidade';

  @override
  String get community => 'Comunidade';

  @override
  String get watching => 'Assistindo';

  @override
  String get reading => 'Lendo';

  @override
  String get dropped => 'Abandonado';

  @override
  String get unfinished => 'Inacabado';

  @override
  String get planned => 'Planejado';

  @override
  String get trailers => 'Reboques';

  @override
  String get ratings => 'Notas';

  @override
  String get originalTitle => 'Originais';

  @override
  String get titleLabel => 'Título';

  @override
  String get votes => 'Votos';

  @override
  String get watchedStat => 'Assistido';

  @override
  String get runtime => 'Duração';

  @override
  String get director => 'Diretor';

  @override
  String get network => 'Emissora';

  @override
  String get certification => 'Certificação';

  @override
  String get airs => 'Exibição';

  @override
  String get budget => 'Orçamento';

  @override
  String get revenue => 'Receita';

  @override
  String get released => 'Lançado';

  @override
  String get tags => 'Etiquetas';

  @override
  String get author => 'Autor';

  @override
  String get born => 'Nascimento';

  @override
  String get died => 'Morreu';

  @override
  String get birthplace => 'Local de nascimento';

  @override
  String get department => 'Departamento';

  @override
  String get website => 'Site';

  @override
  String get established => 'Fundação';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novels => 'Romances';

  @override
  String get thisMonth => 'Esse mês';

  @override
  String get movies => 'Filmes';

  @override
  String get shows => 'Séries';

  @override
  String get moviesWatched => 'Filmes assistidos';

  @override
  String get showsWatched => 'Programas assistidos';

  @override
  String get moviesCollected => 'Filmes coletados';

  @override
  String get showsCollected => 'Programas coletados';

  @override
  String get rewatching => 'Reassistindo';

  @override
  String get rereading => 'Relendo';

  @override
  String get watchedStatus => 'Assistido';

  @override
  String get planning => 'Planejando';

  @override
  String get paused => 'Pausado';

  @override
  String get watch => 'Assistir';

  @override
  String get read => 'Ler';

  @override
  String get finished => 'Finalizado';

  @override
  String get releasing => 'Em exibição';

  @override
  String get cancelled => 'Cancelado';

  @override
  String get hiatus => 'Hiato';

  @override
  String get remove => 'Remover';

  @override
  String syncToService(String service) {
    return 'Sincronizar com o $service';
  }

  @override
  String syncedToService(String service) {
    return 'Sincronizado com o $service';
  }

  @override
  String get latestReleases => 'Últimos lançamentos';

  @override
  String get topRated => 'Mais bem avaliados';

  @override
  String localSection(String title) {
    return '$title · Locais';
  }

  @override
  String get localEntryNote =>
      'Esse título está só na sua lista local nesse dispositivo. A edição fica desligada aqui porque poderia conflitar com a lista da sua conta; você ainda pode removê-lo.';

  @override
  String get cardPresetPoster => 'Pôster';

  @override
  String get cardPresetCard => 'Cartão';

  @override
  String get cardPresetCozy => 'Aconchegante';

  @override
  String get sortTopRated => 'Mais bem avaliados';

  @override
  String get sortMostPopular => 'Mais populares';

  @override
  String get sortTrending => 'Em alta';

  @override
  String get sortNewest => 'Mais novos';

  @override
  String get sortAz => 'A–Z';

  @override
  String get sortMostFavourited => 'Mais favoritados';

  @override
  String get anyCountry => 'Qualquer país';

  @override
  String get orderScore => 'Nota';

  @override
  String get orderTitle => 'Título';

  @override
  String get orderLastUpdated => 'Última atualização';

  @override
  String get orderLastAdded => 'Último adicionado';

  @override
  String get never => 'Nunca';

  @override
  String get always => 'Sempre';

  @override
  String get scorePoint100 => '100 pontos';

  @override
  String get scorePoint10Decimal => '10 pontos decimal';

  @override
  String get scorePoint10 => '10 pontos';

  @override
  String get scorePoint5 => '5 estrelas';

  @override
  String get scorePoint3 => '3 carinhas';

  @override
  String hoursCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count horas',
      one: '1 hora',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dias',
      one: '1 dia',
    );
    return '$_temp0';
  }

  @override
  String weeksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count semanas',
      one: '1 semana',
    );
    return '$_temp0';
  }

  @override
  String get resumeTitle => 'Continuar';

  @override
  String get resumeSourceMissing =>
      'Instale a fonte desse título pra continuar';

  @override
  String get resumeRemove => 'Remover de continuar';

  @override
  String resumeAt(String time) {
    return 'faltam $time';
  }

  @override
  String resumePage(int page, int total) {
    return 'Página $page de $total';
  }

  @override
  String get continueWatching => 'Continuar assistindo';

  @override
  String splitSection(String section, String kind) {
    return '$section · $kind';
  }

  @override
  String get continueReading => 'Continuar lendo';

  @override
  String get favouriteAnimeSection => 'Animes favoritos';

  @override
  String get favouriteMangaSection => 'Mangás favoritos';

  @override
  String get plannedAnime => 'Animes planejados';

  @override
  String get plannedManga => 'Mangás planejados';

  @override
  String get completedAnime => 'Animes concluídos';

  @override
  String get completedManga => 'Mangás concluídos';

  @override
  String get hiddenMedia => 'Mídia oculta';

  @override
  String get recentUpdates => 'Atualizações recentes';

  @override
  String get trendingNow => 'Em alta agora';

  @override
  String get popularThisSeason => 'Populares dessa temporada';

  @override
  String get trendingMovies => 'Filmes em alta';

  @override
  String get topRatedSeries => 'Séries mais bem avaliadas';

  @override
  String get mostFavouriteSeries => 'Séries mais favoritadas';

  @override
  String get popularAnime => 'Animes populares';

  @override
  String get trendingManhwa => 'Manhwas em alta';

  @override
  String get trendingNovels => 'Novels em alta';

  @override
  String get topRatedManga => 'Mangás mais bem avaliados';

  @override
  String get mostFavouriteManga => 'Mangás mais favoritados';

  @override
  String get popularManga => 'Mangás populares';

  @override
  String get topMovies => 'Melhores filmes';

  @override
  String get topOna => 'Melhores ONA';

  @override
  String get topOva => 'Melhores OVA';

  @override
  String get mostPopular => 'Mais populares';

  @override
  String get mostFavourite => 'Mais favoritados';

  @override
  String get upcoming => 'Em breve';

  @override
  String get topManga => 'Melhores mangás';

  @override
  String get topManhwa => 'Melhores manhwas';

  @override
  String get topManhua => 'Melhores manhuas';

  @override
  String get topNovels => 'Melhores novels';

  @override
  String get topOneShots => 'Melhores one-shots';

  @override
  String get trendingMoviesToday => 'Filmes em alta hoje';

  @override
  String get trendingShowsToday => 'Séries em alta hoje';

  @override
  String get trendingMoviesWeek => 'Filmes em alta essa semana';

  @override
  String get trendingShowsWeek => 'Séries em alta essa semana';

  @override
  String get mostWatchedMoviesMonth => 'Filmes mais assistidos do mês';

  @override
  String get mostWatchedShowsMonth => 'Séries mais assistidas do mês';

  @override
  String get trendingThisWeek => 'Em alta essa semana';

  @override
  String get mostWatchedThisMonth => 'Mais assistidos do mês';

  @override
  String get repoLinksAdded => 'Links do repositório adicionados com sucesso!';

  @override
  String repoLinkConfirm(String url) {
    return 'Adicionar este repositório?\n\n$url\n\nAdicione apenas repositórios de fontes em que você confia.';
  }

  @override
  String get errorGettingAnilistData => 'Erro ao buscar dados do AniList.';

  @override
  String get navInfo => 'INFORMAÇÕES';

  @override
  String get navComments => 'COMENTÁRIOS';

  @override
  String get playerNotAvailable => 'O player ainda não está disponível';

  @override
  String deepLinkInitialError(String error) {
    return 'Erro ao obter o deep link inicial: $error';
  }

  @override
  String deepLinkOpenError(String error) {
    return 'Erro ao abrir link: $error';
  }

  @override
  String linkCantBeOpened(String link) {
    return 'Não dá pra abrir esse link: $link';
  }

  @override
  String linkOpenError(String error) {
    return 'Erro ao abrir link: $error';
  }

  @override
  String get progress => 'Progresso';

  @override
  String get notes => 'Notas';

  @override
  String serviceNotFound(String id) {
    return 'Serviço \"$id\" não encontrado';
  }

  @override
  String get glassEffectEnabled => 'Efeito vidro ligado';

  @override
  String get glassEffectDisabled => 'Efeito vidro desligado';

  @override
  String get materialYouEnabled => 'Material You ligado';

  @override
  String get materialYouDisabled => 'Material You desligado';

  @override
  String get darkModeEnabled => 'Modo escuro ligado';

  @override
  String get darkModeDisabled => 'Modo escuro desligado';

  @override
  String get animeList => 'Lista de animes';

  @override
  String get mangaList => 'Lista de mangás';

  @override
  String ownerAnimeList(String owner) {
    return 'Lista de animes de $owner';
  }

  @override
  String ownerMangaList(String owner) {
    return 'Lista de mangás de $owner';
  }

  @override
  String get loadingList => 'Carregando lista';

  @override
  String get earlier => 'Anteriores';

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'há $count dias',
      one: 'há 1 dia',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'há $count horas',
      one: 'há 1 hora',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'há $count minutos',
      one: 'há 1 minuto',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return 'há $count min';
  }

  @override
  String hoursAgoShort(int count) {
    return 'há $count h';
  }

  @override
  String daysAgoShort(int count) {
    return 'há $count d';
  }

  @override
  String weeksAgoShort(int count) {
    return 'há $count sem.';
  }

  @override
  String get couldntLoadSource => 'Não consegui carregar essa fonte';

  @override
  String get followers => 'Seguidores';

  @override
  String couldntLoadTitle(String title) {
    return 'Não consegui carregar $title';
  }

  @override
  String userTitle(String name, String title) {
    return '$name · $title';
  }

  @override
  String get couldntLoadProfile => 'Não consegui carregar esse perfil';

  @override
  String get profile => 'Perfil';

  @override
  String get feed => 'Alimentação';

  @override
  String get stats => 'Estatísticas';

  @override
  String get received => 'Recebidas';

  @override
  String get sent => 'Enviadas';

  @override
  String get global => 'Globais';

  @override
  String get couldntLoadPage => 'Não consegui carregar essa página';

  @override
  String get couldntLoadAllDetails => 'Não consegui carregar todos os detalhes';

  @override
  String get series => 'Séries';

  @override
  String get studios => 'Estúdios';

  @override
  String get users => 'Usuários';

  @override
  String repositoriesTitle(String type) {
    return 'Repositórios de $type';
  }

  @override
  String get repositoryUrl => 'URL do repositório';

  @override
  String get downloadingRepository => 'Baixando repositório…';

  @override
  String get noRepositories => 'Nenhum repositório adicionado';

  @override
  String repoExtensionsCount(String count) {
    return '$count extensões';
  }

  @override
  String get searchExtensions => 'Buscar extensões...';

  @override
  String deletePluginTitle(String name) {
    return 'Apagar $name?';
  }

  @override
  String get deletePluginMessage => 'Tem certeza que quer apagar esse plugin?';

  @override
  String pluginDeleted(String name) {
    return '$name apagado';
  }

  @override
  String pluginNotInRepo(String name) {
    return '$name não está disponível no repositório configurado';
  }

  @override
  String get pluginFetchFailed => 'Falha ao buscar info do plugin';

  @override
  String installPluginTitle(String name) {
    return 'Instalar $name';
  }

  @override
  String get installedState => 'Instalado';

  @override
  String updatePluginTitle(String name) {
    return 'Atualizar $name';
  }

  @override
  String get errorLabel => 'Erro:';

  @override
  String get stackTraceDetails => 'Detalhes (stack trace)';

  @override
  String get shareLogFile => 'Compartilhar arquivo de log';

  @override
  String get copyLogs => 'Copiar logs';

  @override
  String noListToEdit(String service) {
    return 'O $service não tem lista pra editar';
  }

  @override
  String get couldNotReadFile => 'Não consegui ler esse arquivo';

  @override
  String importedSummary(int anime, int manga) {
    return 'Importados $anime animes e $manga mangás';
  }

  @override
  String alreadyThere(int count) {
    return ' · $count já estavam lá';
  }

  @override
  String get airingNow => 'No ar agora';

  @override
  String get topRatedMovies => 'Filmes mais bem avaliados';

  @override
  String get koreanDramas => 'Doramas coreanos';

  @override
  String get chineseDramas => 'Doramas chineses';

  @override
  String get japaneseDramas => 'Doramas japoneses';

  @override
  String get thaiDramas => 'Doramas tailandeses';

  @override
  String get turkishDramas => 'Séries turcas';

  @override
  String get miniSeries => 'Minisséries';

  @override
  String get topRatedShows => 'Séries mais bem avaliadas';

  @override
  String get recommendedSection => 'Recomendados';

  @override
  String get syncRow => 'Sincronizar listas';

  @override
  String get syncRowDesc =>
      'Espelha a lista de um serviço nas suas outras contas';

  @override
  String get syncTitle => 'Sincronizar';

  @override
  String get syncMainService => 'Serviço principal';

  @override
  String get syncMainServiceDesc =>
      'A lista dele é a fonte da verdade; todos os outros serviços logados são atualizados pra ficar iguais';

  @override
  String get syncAuto => 'Sincronização automática';

  @override
  String get syncAutoDesc =>
      'Busca e sincroniza em segundo plano quando o app abre e a cada 30 minutos';

  @override
  String get syncAddMissing => 'Adicionar entradas faltando';

  @override
  String get syncAddMissingDesc =>
      'Adiciona também entradas que o outro serviço ainda não tem';

  @override
  String get syncDelete => 'Exclua o que o serviço principal não possui';

  @override
  String get syncDeleteDesc =>
      'Remova entradas de outros serviços que não estão na lista principal. Apenas as entradas que podem corresponder a um título são removidas, portanto, itens como filmes e séries Simkl permanecem';

  @override
  String get syncDeleteTitle => 'Excluir entradas?';

  @override
  String syncDeleteConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count entradas',
      one: '1 entrada',
    );
    return '$_temp0 que não estão na sua lista principal serão excluídos dos outros serviços. Isto não pode ser desfeito.';
  }

  @override
  String get syncDeleteAction => 'Excluir';

  @override
  String get syncToDelete => 'Para excluir';

  @override
  String get syncDeletedNote => 'Será excluído';

  @override
  String get syncOnlyForward => 'Manter o progresso mais adiantado';

  @override
  String get syncOnlyForwardDesc =>
      'Não diminui o progresso de um serviço que já está na frente';

  @override
  String get animePlanetWontWatch => 'Não vou assistir';

  @override
  String get animePlanetWontRead => 'Não vou ler';

  @override
  String get animePlanetNewList => 'Novo nome da lista';

  @override
  String get syncPrivate => 'Entradas privadas';

  @override
  String get syncPrivateDesc =>
      'O que fazer com as entradas que você mantém privadas. Um serviço com opção privada os torna privados; outros os mostrariam publicamente';

  @override
  String get syncPrivateModeAsk => 'Pergunte';

  @override
  String get syncPrivateModeSync => 'Sincronize-os';

  @override
  String get syncPrivateModeSkip => 'Ignorá-los';

  @override
  String get syncPrivateTitle => 'Entradas privadas';

  @override
  String syncPrivateAsk(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'As entradas $count são privadas',
      one: '1 entrada é privada',
    );
    return '$_temp0. Serviços com opção privada (AniList, Kitsu, MangaBaka) os tornarão privados; os demais serviços não têm opção privada e os mostrariam publicamente. Sincronizá-los? Sua resposta será lembrada; altere-o nas opções de sincronização.';
  }

  @override
  String get syncPrivateInclude => 'Sincronize-os';

  @override
  String get syncPrivateSkip => 'Ignorá-los';

  @override
  String get syncFetch => 'Buscar';

  @override
  String get syncFetchAgain => 'Buscar de novo';

  @override
  String get syncAll => 'Sincronizar tudo';

  @override
  String get syncStop => 'Parar';

  @override
  String get syncResume => 'Continuar';

  @override
  String get syncNothingToSync =>
      'Esse serviço não pode ser sincronizado pra esse tipo';

  @override
  String get syncNoTargets => 'Entre em outro serviço pra sincronizar';

  @override
  String get syncLoadingMap => 'Carregando mapeamento de IDs';

  @override
  String get syncComparing => 'Comparando listas';

  @override
  String get syncIntro =>
      'Escolha um serviço principal e toque em Buscar. Cada serviço é consultado uma vez pela sua lista e depois comparado com o principal.';

  @override
  String get syncStateSynced => 'Sincronizado';

  @override
  String get syncStateOutdated => 'Fora de sincronia';

  @override
  String get syncStateMissing => 'Não está na lista';

  @override
  String get syncStateUnmapped => 'Sem correspondência';

  @override
  String syncPaused(String time) {
    return 'Esperando o limite de requisições, volta em $time';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return '$count só no $name, deixados como estão';
  }

  @override
  String syncProgressOf(int done, int total) {
    return '$done de $total';
  }

  @override
  String get syncNothingHere => 'Nada pra mostrar';

  @override
  String syncLimits(int used, int max, String window) {
    return '$used de $max requisições usadas nesse $window';
  }

  @override
  String get syncMinute => 'minuto';

  @override
  String get syncDay => 'dia';

  @override
  String get syncNotInList => 'Ainda não está na lista';

  @override
  String get syncCleared => 'Plano limpo';

  @override
  String get syncClear => 'Limpar';

  @override
  String get syncOptions => 'Opções';

  @override
  String get syncShared => 'Divide a entrada com outro item';

  @override
  String syncNotFound(String service) {
    return 'Não encontrado no $service';
  }

  @override
  String syncService(String service, int count) {
    return 'Sincronizar $service ($count)';
  }

  @override
  String get syncOnEdit => 'Sincronizar na hora';

  @override
  String get syncOnEditDesc =>
      'Manda cada atualização de progresso e edição de lista pros seus outros serviços logados na hora';

  @override
  String syncRemoved(String services) {
    return 'Removido de $services';
  }

  @override
  String syncPushed(String services) {
    return 'Sincronizado com $services';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '$service: $error';
  }

  @override
  String get syncRateLimited =>
      'Limite de requisições atingido, tente de novo daqui a pouco';

  @override
  String get syncAhead => 'Quem estiver na frente';

  @override
  String get syncAheadDesc =>
      'Nos dois sentidos: pra cada título, vence a entrada mais adiantada e ela é copiada pros seus outros serviços';

  @override
  String syncAheadFrom(String service) {
    return 'Do $service';
  }

  @override
  String get syncConfirm => 'Revisar antes de sincronizar';

  @override
  String get syncConfirmDesc =>
      'Mostra o que o Sincronizar tudo vai mudar e quantas requisições precisa';

  @override
  String get syncPreviewTitle => 'Pronto pra sincronizar';

  @override
  String syncPreviewLine(int updates, int adds) {
    return '$updates atualizações, $adds pra adicionar';
  }

  @override
  String syncPreviewRequests(int count) {
    return 'Cerca de $count requisições';
  }

  @override
  String syncPreviewLookups(int count) {
    return '$count IDs precisam de consulta antes';
  }

  @override
  String get syncPreviewNothing => 'Nada pra mudar';

  @override
  String get syncStart => 'Iniciar';

  @override
  String get syncRetry => 'Tentar de novo';

  @override
  String get syncSkip => 'Pular esse item';

  @override
  String get syncInclude => 'Incluir esse item de novo';

  @override
  String get syncSkippedLabel => 'Pulado';

  @override
  String get syncChanges => 'Diferenças';

  @override
  String get syncChangeStatus => 'Estado';

  @override
  String get syncChangeProgress => 'Progresso';

  @override
  String get syncChangeScore => 'Nota';

  @override
  String get syncChangeDates => 'Datas';

  @override
  String get syncChangeRepeat => 'Nº de reassistidas';

  @override
  String get syncFailedReason => 'Por que falhou';

  @override
  String get syncSkippedHint =>
      'Itens pulados ficam como estão, mesmo depois de buscar de novo';

  @override
  String get commentsRules => 'Regras dos comentários';

  @override
  String get commentsRulesBody =>
      'QUEBROU UMA REGRA = TÁ FORA\n\n1. Nada de racismo, discriminação ou discurso de ódio\n2. Nada de spam ou autopromoção\n3. Absolutamente nada de conteúdo NSFW\n4. Só em inglês, sem exceção\n5. Nada de se passar por outra pessoa, assédio ou abuso\n6. Nada de conteúdo ilegal nem desrespeito extremo a qualquer fandom\n7. Não peça nem compartilhe repositórios ou extensões\n8. Spoiler só com tag de spoiler e aviso\n9. Nada de sexualizar nem comentários impróprios sobre personagens menores de idade\n10. Se tá errado, não poste!';

  @override
  String get commentsRulesAccept => 'Entendi';

  @override
  String get commentsSortNewest => 'Mais recentes';

  @override
  String get commentsSortOldest => 'Mais antigos';

  @override
  String get commentsSortHighest => 'Mais bem avaliados';

  @override
  String get commentsSortLowest => 'Pior avaliados';

  @override
  String commentsEpisodeShort(int number) {
    return 'Ep. $number';
  }

  @override
  String commentsChapterShort(int number) {
    return 'Cap. $number';
  }

  @override
  String get commentsFilterEpisodeTitle => 'Filtrar por episódio';

  @override
  String get commentsFilterChapterTitle => 'Filtrar por capítulo';

  @override
  String get commentsFilterTagTitle =>
      'Digite um número de episódio ou capítulo';

  @override
  String get commentsFilterHint => 'Número';

  @override
  String get commentsFilterApply => 'Filtrar';

  @override
  String get commentsFilterClear => 'Mostrar tudo';

  @override
  String get commentsPlaceholder => 'Adicione um comentário…';

  @override
  String commentsReplyingTo(String name) {
    return 'Respondendo a $name';
  }

  @override
  String get commentsSend => 'Enviar';

  @override
  String get commentsTagButton => 'Etiqueta';

  @override
  String commentsTagTitle(String label) {
    return 'Tag $label (opcional)';
  }

  @override
  String get commentsTagEpisode => 'episódio';

  @override
  String get commentsTagChapter => 'capítulo';

  @override
  String commentsTagRange(int total) {
    return '1–$total';
  }

  @override
  String commentsTagNumber(String label) {
    return 'Número do $label';
  }

  @override
  String commentsTagTooHigh(int total) {
    return 'A tag não pode passar do total ($total)';
  }

  @override
  String get commentsNoTag => 'Sem tag';

  @override
  String get commentsSpoiler => 'Spoilers';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => 'Buscar GIFs';

  @override
  String get commentsGifEmpty => 'Nenhum GIF encontrado';

  @override
  String get commentsEmptyText => 'O comentário não pode ficar vazio';

  @override
  String get commentsBannedYou => 'Você está banido de comentar';

  @override
  String get commentsEdited => 'Comentário editado';

  @override
  String get commentsDeleted => 'Comentário apagado';

  @override
  String get commentsDeletedPlaceholder => '[apagado]';

  @override
  String get commentsReported => 'Comentário denunciado';

  @override
  String get commentsUserBanned => 'Usuário banido';

  @override
  String get commentsReport => 'Denunciar';

  @override
  String get commentsReportAsk => 'Denunciar esse comentário pros moderadores?';

  @override
  String get commentsDelete => 'Apagar';

  @override
  String get commentsDeleteAsk =>
      'Esse comentário vai ser removido pra todo mundo.';

  @override
  String get commentsBan => 'Banir';

  @override
  String get commentsBanAsk => 'Banir esse usuário de comentar?';

  @override
  String get commentsCopy => 'Copiar';

  @override
  String get commentsViewReply => 'Ver 1 resposta';

  @override
  String commentsViewReplies(int count) {
    return 'Ver $count respostas';
  }

  @override
  String get commentsHideReplies => 'Esconder respostas';

  @override
  String get commentsLoadMore => 'Carregar mais comentários';

  @override
  String get commentsEmpty => 'Nenhum comentário ainda. Seja o primeiro!';

  @override
  String get commentsEmptyFiltered => 'Nenhum comentário pra esse filtro';

  @override
  String get commentsSignIn =>
      'Entre no AniList pra ler e escrever comentários';

  @override
  String get commentsSignInMessage =>
      'Os comentários são compartilhados entre todos os serviços e usam sua conta do AniList.';

  @override
  String get commentsUnavailable => 'Comentários indisponíveis pra esse título';

  @override
  String get commentsUnavailableMessage =>
      'Não deu pra associar a uma entrada do AniList.';

  @override
  String get commentsDisabled => 'Os comentários estão desligados';

  @override
  String get commentsDisabledMessage =>
      'Você pode ligar de novo em Configurações › Geral.';

  @override
  String get commentsOffline => 'Não consegui carregar os comentários';

  @override
  String get commentsSingleTitle => 'Mostrando um comentário';

  @override
  String get commentsShowAll => 'Mostrar todos os comentários';

  @override
  String get commentsSettingsHeader => 'Comentários';

  @override
  String get commentsSettingEnabled => 'Comentários';

  @override
  String get commentsSettingEnabledDesc =>
      'Mostra a aba Comentários nos títulos e faz login no servidor de comentários com sua conta do AniList';

  @override
  String get commentsSettingAlerts => 'Notificações de respostas';

  @override
  String get commentsSettingAlertsDesc =>
      'Me avise quando alguém responder aos meus comentários';

  @override
  String get commentsNoticeReplyTitle => 'Nova resposta a comentário';

  @override
  String commentsNoticeReply(String name) {
    return '$name respondeu ao seu comentário';
  }

  @override
  String get commentsNoticeWarningTitle => 'Você recebeu um aviso';

  @override
  String get commentsNoticeWarning => 'Pense melhor nos seus comentários';

  @override
  String get commentsNoticeUpdateTitle => 'Atualização do Dantotsu';

  @override
  String get barcodeTitle => 'Escanear código de barras';

  @override
  String get barcodeTooltip => 'Ache um mangá ou novel pelo código de barras';

  @override
  String get barcodeIntro =>
      'Aponte a câmera pro código de barras na parte de trás de um volume, ou digite o ISBN.';

  @override
  String get barcodeIntroManual =>
      'Digite o ISBN impresso acima do código de barras na parte de trás de um volume.';

  @override
  String get barcodeIsbnHint => 'ISBN';

  @override
  String get barcodeInvalid => 'Esse ISBN não é válido';

  @override
  String barcodeNotFound(String isbn) {
    return 'Nenhum livro encontrado pra $isbn';
  }

  @override
  String get barcodeCameraDenied =>
      'A câmera não está disponível. Permita o acesso à câmera ou digite o ISBN.';

  @override
  String get themesTitle => 'Aberturas e encerramentos';

  @override
  String get themesPlayVideo => 'Reproduzir vídeo';

  @override
  String get themesPlayAudio => 'Reproduzir só o áudio';

  @override
  String get themesOpenSite => 'Abrir no AnimeThemes';

  @override
  String get themesCredit => 'Temas do AnimeThemes';

  @override
  String get themesVersions => 'Versões';

  @override
  String get sauceTitle => 'Achar a origem';

  @override
  String get sauceIntro =>
      'Envie uma página de mangá ou uma arte, ou cole o link, pra descobrir de onde vem.';

  @override
  String get sauceKeyTitle => 'Chave de API do SauceNAO';

  @override
  String get sauceKeyHint => 'Opcional, aumenta o limite diário de buscas';

  @override
  String get sauceKeyDesc => 'Pegue uma chave grátis em saucenao.com/user.php';

  @override
  String get sauceOpen => 'Abrir origem';

  @override
  String get sauceCredit => 'Busca de imagem pelo SauceNAO';

  @override
  String get sauceEmpty => 'Nenhuma correspondência';

  @override
  String get sauceTooltip => 'Ache a origem de uma página de mangá ou arte';

  @override
  String get trendzTitle => 'Rankings de anime';

  @override
  String get trendzAnime => 'Anime';

  @override
  String get trendzFemale => 'Personagens femininas';

  @override
  String get trendzMale => 'Personagens masculinos';

  @override
  String get trendzCouple => 'Casais';

  @override
  String get trendzCredit => 'Rankings semanais do AniTrendz';

  @override
  String get trendzNew => 'NOVO';

  @override
  String get trendzEmpty => 'O ranking está vazio';

  @override
  String get shareCard => 'Compartilhar cartão';

  @override
  String get shareCardList => 'Compartilhar cartão da lista';

  @override
  String get shareCardSaved => 'Cartão salvo';

  @override
  String get shareCardFailed => 'Não consegui criar o cartão';

  @override
  String get shareCardListEmpty =>
      'Sua lista ainda não tem nada pra compartilhar';

  @override
  String get shareCardTop => 'Minhas escolhas';

  @override
  String themesEpisodes(String eps) {
    return 'Episódios $eps';
  }

  @override
  String sauceSimilarity(String percent) {
    return '$percent% de correspondência';
  }

  @override
  String trendzWeek(String week, String season) {
    return 'Semana $week · $season';
  }

  @override
  String trendzVotes(String count) {
    return '$count votos';
  }

  @override
  String trendzPeak(String rank) {
    return 'Pico #$rank';
  }

  @override
  String trendzWeeks(String count) {
    return '$count semanas no top dez';
  }

  @override
  String get imageSearchTitle => 'Buscar por imagem';

  @override
  String get imageSearchTooltip => 'Ache um anime a partir de um print';

  @override
  String get imageSearchIntro =>
      'Escolha um print ou cole o link de uma imagem e o trace.moe descobre o episódio e o momento de onde veio.';

  @override
  String get imageSearchPick => 'Escolher imagem';

  @override
  String get imageSearchLinkHint => 'Cole o link de uma imagem';

  @override
  String get imageSearchGo => 'Buscar';

  @override
  String get imageSearchEmpty => 'Nenhuma correspondência';

  @override
  String get imageSearchAdult => '18+';

  @override
  String imageSearchEpisode(String number) {
    return 'Episódio $number';
  }

  @override
  String imageSearchAt(String time) {
    return 'aos $time';
  }

  @override
  String get imageSearchPreview => 'Prévia do clipe';

  @override
  String imageSearchSimilarity(int percent) {
    return '$percent% de correspondência';
  }

  @override
  String get imageSearchCredit => 'Feito com trace.moe';

  @override
  String get imageSearchOpenFailed => 'Não consegui abrir esse título';

  @override
  String get groups => 'Grupos';

  @override
  String get groupsYours => 'Seus grupos';

  @override
  String get groupsPopular => 'Populares';

  @override
  String get groupsNew => 'Novos';

  @override
  String get groupsFeatured => 'Em destaque';

  @override
  String get groupsSearch => 'Buscar grupos';

  @override
  String get groupsAll => 'Todos';

  @override
  String get groupsEmpty => 'Nenhum grupo encontrado';

  @override
  String get groupsEmptyYours => 'Você ainda não entrou em nenhum grupo';

  @override
  String get groupsSignIn => 'Entre pra ver os grupos de que você participa';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count membros',
      one: '1 membro',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => 'Entrar';

  @override
  String get groupsJoined => 'Participando';

  @override
  String get groupsLeave => 'Sair do grupo';

  @override
  String get groupsLeaveAsk =>
      'Você vai parar de ver as postagens desse grupo no seu feed.';

  @override
  String get groupsJoinFailed =>
      'Não consegui entrar nesse grupo, pode ser só por convite';

  @override
  String get groupsLeaveFailed => 'Não consegui sair desse grupo';

  @override
  String get groupsPosts => 'Postagens';

  @override
  String get groupsMembersTab => 'Membros';

  @override
  String get groupsAbout => 'Sobre';

  @override
  String get groupsRules => 'Regras';

  @override
  String get groupsPrivacyOpen => 'Aberto';

  @override
  String get groupsPrivacyRestricted => 'Restrito';

  @override
  String get groupsPrivacyClosed => 'Fechado';

  @override
  String get groupsAdult => '18+';

  @override
  String get groupsRoleAdmin => 'Administrador';

  @override
  String get groupsRoleMod => 'Modo';

  @override
  String get groupsCouldntLoad => 'Não consegui carregar esse grupo';

  @override
  String get groupsNewPost => 'Postar no grupo';

  @override
  String get groupsPostHint => 'Compartilhe algo com o grupo';

  @override
  String get groupsOpenInBrowser => 'Abrir no navegador';

  @override
  String get groupsCategory => 'Categoria';

  @override
  String get groupsLanguage => 'Idioma';

  @override
  String get groupsCreated => 'Criado';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count líderes',
      one: '1 líder',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => 'Privacidade';

  @override
  String get notificationsAll => 'Tudo';

  @override
  String get notificationsAiring => 'No ar';

  @override
  String get notificationsMedia => 'Novos títulos';

  @override
  String get notificationsReplies => 'Respostas';

  @override
  String get notificationsMentions => 'Menções';

  @override
  String get notificationsMessages => 'Mensagens';

  @override
  String get notificationsLikes => 'Curtidas';

  @override
  String get notificationsFollows => 'Seguidores';

  @override
  String get notificationsNoServices =>
      'Nenhum serviço logado tem notificações';

  @override
  String get notificationsNoServicesMessage =>
      'Entre num serviço que envia notificações e elas aparecem aqui.';

  @override
  String get notificationsEmptyKind => 'Nada nessa categoria ainda';

  @override
  String get notificationsCommentsEmpty => 'Sem notificações de comentários';

  @override
  String get notificationsCommentsEmptyMessage =>
      'As respostas aos seus comentários e os avisos do Dantotsu aparecem aqui.';

  @override
  String get notificationsSettings => 'Configurações de notificações';

  @override
  String get notificationsPollTitle => 'Verificar novas notificações';

  @override
  String notificationsPollDesc(int minutes) {
    return 'A cada $minutes minutos com o app aberto';
  }

  @override
  String get notificationsNotifyAbout => 'Me avise sobre';

  @override
  String get notificationsCommentsHeader => 'Notificações de comentários';

  @override
  String systemNotificationsDescFor(String service) {
    return 'Mostra uma notificação do sistema pra cada notificação não lida do $service enquanto o app está rodando.';
  }

  @override
  String get notificationsTestSent => 'Notificação de teste enviada';

  @override
  String get notificationsTestDenied =>
      'As notificações não estão permitidas pro Dartotsu. Ligue nas configurações do sistema.';

  @override
  String get notificationsTestHint =>
      'Segure pra enviar uma notificação de teste';

  @override
  String get notificationsTestSample => 'Essa é uma notificação de teste';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return '$name respondeu ao seu comentário em $media';
  }

  @override
  String get imageSearchNotLink => 'Isso não parece um link';

  @override
  String get imageSearchQuota => 'Limite de buscas excedido';

  @override
  String get imageSearchBusy =>
      'Muitas requisições, tente de novo daqui a pouco';

  @override
  String imageSearchFailed(int code) {
    return 'A busca falhou ($code)';
  }

  @override
  String notificationsNewCount(int count) {
    return '$count novas notificações';
  }

  @override
  String get reactionsTitle => 'Reações';

  @override
  String get reactionsNeedEntry =>
      'Adicione esse título à sua lista antes de reagir';

  @override
  String get reactionsAdd => 'Adicionar uma reação';

  @override
  String get reactionsHint => 'O que achou? (curto e sem spoiler)';

  @override
  String get reactionsPost => 'Postar';

  @override
  String get reactionsFailed => 'Não consegui atualizar a reação';

  @override
  String get settingsWatch => 'Assistir e ler';

  @override
  String get settingsWatchDesc =>
      'Listas de episódios, associação de fontes e detalhes dos episódios';

  @override
  String get watchSettingsLayout => 'Lista de episódios';

  @override
  String get watchSettingsSources => 'Fontes';

  @override
  String get watchSettingsMetadata => 'Detalhes do episódio';

  @override
  String get watchLayout => 'Disposição';

  @override
  String get watchListView => 'Lista';

  @override
  String get watchGridView => 'Grade';

  @override
  String get watchCompactView => 'Compacto';

  @override
  String get watchDefaultLayoutDesc =>
      'Como episódios e capítulos aparecem até você mudar num título';

  @override
  String get watchChunkSize => 'Tamanho do intervalo';

  @override
  String get watchChunkSizeDesc =>
      'Quantos episódios ou capítulos cada aba de intervalo tem';

  @override
  String get watchShowDescription => 'Mostrar descrições';

  @override
  String get watchShowDescriptionDesc =>
      'Mostra o resumo do episódio embaixo de cada título no layout em lista';

  @override
  String get watchShowFiller => 'Mostrar episódios filler';

  @override
  String get watchShowFillerDesc =>
      'Desligue pra esconder episódios marcados como filler';

  @override
  String get watchBlurUnwatched => 'Esconder miniaturas com spoiler';

  @override
  String get watchBlurUnwatchedDesc =>
      'Desfoca a miniatura dos episódios que você ainda não assistiu';

  @override
  String get watchResumeShelf => 'Prateleira de continuar';

  @override
  String get watchResumeShelfDesc => 'Mostra a linha Continuar no Início';

  @override
  String get watchMarkOnLongPress => 'Segurar marca o progresso';

  @override
  String get watchMarkOnLongPressDesc =>
      'Segure um episódio ou capítulo pra marcar como assistido ou não assistido';

  @override
  String get watchMatching => 'Associação de fontes';

  @override
  String get watchMatchingDesc =>
      '\"Mais próxima\" pega o melhor resultado da busca. \"Só exata\" aceita apenas um título quase idêntico e deixa o resto pra você escolher.';

  @override
  String get watchMatchClosest => 'Correspondência mais próxima';

  @override
  String get watchMatchExact => 'Só correspondência exata';

  @override
  String get watchMetadataDesc =>
      'De onde vêm os títulos, resumos, miniaturas, datas de exibição e marcas de filler dos episódios. Arraste pra definir a prioridade; vale a primeira fonte com valor.';

  @override
  String get watchMetaAniZipDesc =>
      'Títulos, resumos, imagens e datas de exibição dos episódios';

  @override
  String get watchMetaKitsuDesc =>
      'Títulos, descrições e miniaturas dos episódios';

  @override
  String get watchMetaSimklDesc =>
      'Títulos, descrições, imagens e datas de exibição dos episódios';

  @override
  String get watchMetaAniListDesc =>
      'Títulos e miniaturas dos episódios em streaming e o calendário de exibição';

  @override
  String get watchMetaTenraiDesc =>
      'Títulos, datas de exibição, filler e recaps de episódios do MyAnimeList via Tenrai';

  @override
  String get watchClearMetadata => 'Atualizar detalhes dos episódios';

  @override
  String get watchClearMetadataDesc =>
      'Esquece os detalhes de episódios em cache pra buscar de novo';

  @override
  String get watchMetadataCleared =>
      'Os detalhes dos episódios vão ser buscados de novo';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count episódios',
      one: '1 episódio',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count capítulos',
      one: '1 capítulo',
    );
    return '$_temp0';
  }

  @override
  String watchEpisodeNumber(String number) {
    return 'Episódio $number';
  }

  @override
  String watchChapterNumber(String number) {
    return 'Capítulo $number';
  }

  @override
  String get watchSearching => 'Buscando…';

  @override
  String watchSearchingFor(String term) {
    return 'Buscando: $term';
  }

  @override
  String watchSelected(String title) {
    return 'Selecionado: $title';
  }

  @override
  String watchFound(String title) {
    return 'Encontrado: $title';
  }

  @override
  String get watchNothingFound => 'Nada encontrado nessa fonte';

  @override
  String get watchSearchFailed => 'A busca na fonte falhou';

  @override
  String get watchLoadFailed => 'Não consegui carregar a lista';

  @override
  String get watchSignInToTrack => 'Entre pra acompanhar seu progresso';

  @override
  String watchInstallSource(String action) {
    return 'Instale uma extensão pra começar a $action';
  }

  @override
  String get watchSourceMissing => 'Essa fonte não está instalada';

  @override
  String get watchWrongTitle => 'Título errado?';

  @override
  String get watchSearchAgain => 'Buscar de novo';

  @override
  String watchSearchSource(String source) {
    return 'Buscar em $source';
  }

  @override
  String get watchSource => 'Fonte';

  @override
  String get sourceTags => 'Etiquetas';

  @override
  String get sourceTagsHint =>
      'Marque para que serve esta fonte. Um título lista as fontes marcadas primeiro e depois as não marcadas. Fontes maiores de 18 anos são exibidas apenas para títulos adultos.';

  @override
  String get sourceTagAnime => 'Anime';

  @override
  String get sourceTagMovies => 'Filmes e séries';

  @override
  String get sourceTagAdult => '18+';

  @override
  String get sourceHiddenByTags => 'Oculto por tags';

  @override
  String get watchOptions => 'Opções';

  @override
  String get watchSelect => 'Select';

  @override
  String get watchSelectAll => 'Select all';

  @override
  String watchSelectedCount(int count) {
    return '$count selected';
  }

  @override
  String get watchNoneDownloaded => 'None of the selected items are downloaded';

  @override
  String get watchReverse => 'Inverter ordem';

  @override
  String get watchScanlators => 'Grupos';

  @override
  String get watchResetOptions => 'Redefinir essas opções';

  @override
  String get watchContinue => 'Continuar';

  @override
  String get watchStart => 'Iniciar';

  @override
  String get watchPlay => 'Reproduzir';

  @override
  String get watchRead => 'Ler';

  @override
  String get watchMarkWatched => 'Marcar como assistido';

  @override
  String get watchMarkUnwatched => 'Marcar como não assistido';

  @override
  String get watchMarkRead => 'Marcar como lido';

  @override
  String get watchMarkUnread => 'Marcar como não lido';

  @override
  String get watchFiller => 'Preenchimento';

  @override
  String get watchRecap => 'Recapitulação';

  @override
  String get watchNoEpisodes => 'Nenhum episódio encontrado';

  @override
  String get watchNoChapters => 'Nenhum capítulo encontrado';

  @override
  String get watchSourceTools => 'Ferramentas da fonte';

  @override
  String get watchSourceSettings => 'Configurações da fonte';

  @override
  String get watchOpenWebView => 'Abrir na webview';

  @override
  String get watchOpenWebViewDesc =>
      'Resolva uma verificação da Cloudflare ou faça login; os cookies são compartilhados com as requisições da fonte';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cookies salvos pra $host',
      one: '1 cookie salvo pra $host',
      zero: 'Nenhum cookie salvo pra $host',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'Liberação da Cloudflare ativa, $time';
  }

  @override
  String get watchClearanceMissing => 'Sem cookie de liberação da Cloudflare';

  @override
  String get watchClearanceSession => 'dura até o app fechar';

  @override
  String get watchAgentShared =>
      'As requisições usam o user agent da webview, que a Cloudflare confere';

  @override
  String get watchAgentCustom =>
      'Há um user agent personalizado, então a liberação da Cloudflare da webview pode ser rejeitada';

  @override
  String get watchTestConnection => 'Testar conexão';

  @override
  String get watchSolveChallenge => 'Resolver';

  @override
  String watchProbeOk(int code) {
    return 'Acessível (HTTP $code)';
  }

  @override
  String get watchProbeChallenge => 'A Cloudflare ainda pede uma verificação';

  @override
  String watchProbeBlocked(int code) {
    return 'Bloqueado pelo site (HTTP $code)';
  }

  @override
  String get watchProbeFailed => 'Não foi possível acessar o site';

  @override
  String get watchClearCookies => 'Limpar cookies desse site';

  @override
  String get watchCookiesCleared => 'Cookies limpos';

  @override
  String get watchFailTimeout => 'A verificação não terminou a tempo';

  @override
  String get watchFailBlocked =>
      'O site bloqueou este dispositivo (acesso negado). Um cheque não vai ajudar';

  @override
  String get watchFailTurnstile =>
      'Esta verificação precisa de um toque que o solucionador em segundo plano não pode fazer';

  @override
  String get watchFailLoad =>
      'A página não carregou. Verifique a conexão e o endereço do site';

  @override
  String get watchFailRejected =>
      'O site rejeitou a autorização que acabou de dar. Tente novamente ou limpe os cookies';

  @override
  String get watchFailDismissed => 'O cheque foi fechado antes de terminar';

  @override
  String get watchFailCooldown =>
      'Você fechou o cheque há pouco. Pressione Resolver para tentar novamente';

  @override
  String get watchFailQuiet =>
      'A verificação precisa de você e o aplicativo estava funcionando sozinho';

  @override
  String get watchFailWebView =>
      'A visualização da Web em segundo plano não pôde ser iniciada';

  @override
  String get watchFailUnavailable => 'Não há tela para mostrar a verificação';

  @override
  String get watchStatusReady => 'Pronto';

  @override
  String get watchStatusChallenge => 'Verificação Cloudflare necessária';

  @override
  String get watchStatusBlocked => 'Bloqueado pelo site';

  @override
  String get watchStatusOffline => 'Não consigo acessar o site';

  @override
  String get watchStatusUntested => 'Ainda não testado';

  @override
  String get watchStatusTesting => 'Testando a conexão…';

  @override
  String get watchStatusSolving => 'Passando na verificação do Cloudflare…';

  @override
  String watchSolvedBackground(int seconds) {
    return 'Verificação da Cloudflare aprovada em segundo plano ($seconds s)';
  }

  @override
  String get watchSolvedByUser => 'Verificação da Cloudflare aprovada';

  @override
  String watchClearanceIssued(String time) {
    return 'ganhou $time';
  }

  @override
  String get watchClearanceStale =>
      'A autorização foi obtida com outro agente de usuário, portanto não é enviada. Teste a conexão para obter uma nova';

  @override
  String get watchSectionSession => 'Sessão';

  @override
  String get watchSectionTools => 'Ferramentas';

  @override
  String get watchMetaSource => 'Detalhes dos episódios de';

  @override
  String get watchMetaAuto => 'Automático';

  @override
  String get watchMetaOff => 'Desligado';

  @override
  String get playerSettingsTitle => 'Configurações do player';

  @override
  String get playerSectionPlayback => 'Reprodução';

  @override
  String get playerSectionSkip => 'Pular';

  @override
  String get playerSectionGestures => 'Controles';

  @override
  String get playerSectionSubtitles => 'Legendas';

  @override
  String get playerSectionShaders => 'Sombreadores';

  @override
  String get playerSectionEngine => 'Motor';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => 'Velocidade de reprodução';

  @override
  String get localSource => 'Arquivos locais';

  @override
  String get localMissing =>
      'Este arquivo ou pasta não está mais na sua pasta local';

  @override
  String get playerStickyStage => 'Vídeo pegajoso';

  @override
  String get playerStickyStageDesc =>
      'Mantenha o vídeo fixo no topo enquanto você rola os episódios e comentários abaixo';

  @override
  String get playerCursedSpeed => 'Velocidades extras';

  @override
  String get playerCursedSpeedDesc => 'Adiciona velocidades de até 10x à lista';

  @override
  String get playerResize => 'Modo de redimensionamento';

  @override
  String get playerFitFit => 'Ajustar';

  @override
  String get playerFitCover => 'Cobrir';

  @override
  String get playerFitStretch => 'Esticar';

  @override
  String get playerSkipDuration => 'Duração do botão de pular';

  @override
  String get playerSkipDurationDesc =>
      'Segundos que o botão de pular avança fora das aberturas e encerramentos';

  @override
  String get playerSeekDuration => 'Toque duplo pra avançar';

  @override
  String get playerSeekDurationDesc =>
      'Segundos pra pular com um toque duplo ou tecla de seta';

  @override
  String get playerAutoPlay => 'Reproduzir o próximo automaticamente';

  @override
  String get playerAutoPlayDesc =>
      'Começa o próximo episódio quando esse acabar';

  @override
  String get playerResume => 'Continuar de onde parou';

  @override
  String get playerResumeDesc => 'Continua um episódio da última posição';

  @override
  String get playerAutoRotate => 'Rotate to fullscreen';

  @override
  String get playerAutoRotateDesc =>
      'Turning the phone sideways opens the fullscreen player. Off keeps the player page upright';

  @override
  String get playerOrientation => 'Orientação';

  @override
  String get playerOrientationAuto => 'Seguir o dispositivo';

  @override
  String get playerOrientationLandscape => 'Paisagem';

  @override
  String get playerOrientationPortrait => 'Retrato';

  @override
  String get playerAutoSkipOpening => 'Pular aberturas';

  @override
  String get playerAutoSkipEnding => 'Pular encerramentos';

  @override
  String get playerAutoSkipRecap => 'Pular recaps';

  @override
  String get playerAutoSkipDesc =>
      'Pula assim que começa, usando AniSkip e marcações de tempo do stream';

  @override
  String get playerDisableSkips => 'Desativar pulos';

  @override
  String get playerDisableSkipsDesc =>
      'Sem AniSkip ou carimbos de data e hora de transmissão, marcas de capítulo ou pular envios no player';

  @override
  String get playerSkipOnce => 'Pular só uma vez';

  @override
  String get playerSkipOnceDesc =>
      'Não pula a mesma parte de novo se você voltar nela';

  @override
  String get playerAdjustBrightness => 'Gesto de brilho';

  @override
  String get playerAdjustBrightnessDesc =>
      'Deslize pra cima e pra baixo na metade direita da tela';

  @override
  String get playerAdjustVolume => 'Gesto de volume';

  @override
  String get playerAdjustVolumeDesc =>
      'Deslize pra cima e pra baixo na metade esquerda da tela';

  @override
  String get playerHoldToSpeed => 'Segurar pra acelerar';

  @override
  String get playerHoldToSpeedDesc =>
      'Segure o vídeo pra reproduzir mais rápido, arraste pro lado pra mudar a velocidade';

  @override
  String get playerThumbless => 'Barra de progresso mais grossa';

  @override
  String get playerThumblessDesc => 'Uma barra grossa sem indicador';

  @override
  String get playerShowSubtitles => 'Mostrar legendas';

  @override
  String get playerShowSubtitlesDesc =>
      'Desligue pra esconder todas as faixas de legenda';

  @override
  String get playerSubtitleLanguage => 'Idioma preferido das legendas';

  @override
  String get playerSubtitleSize => 'Tamanho da legenda';

  @override
  String get playerSubtitleWeight => 'Espessura da legenda';

  @override
  String get playerSubtitleBottom => 'Margem inferior da legenda';

  @override
  String get playerSubtitleFont => 'Fonte da legenda';

  @override
  String get playerSubtitleColor => 'Cor da legenda';

  @override
  String get playerSubtitleBackground => 'Fundo da legenda';

  @override
  String get playerSubtitleOutline => 'Contorno da legenda';

  @override
  String get playerSubtitleOutlineWidth => 'Largura do contorno da legenda';

  @override
  String get playerSubtitlePreview => 'Visualização da legenda';

  @override
  String get playerSubtitlePreviewText => 'Texto de visualização da legenda';

  @override
  String get playerLibass => 'Usar libass';

  @override
  String get playerLibassDesc =>
      'Renderiza legendas .ass estilizadas. O tamanho, a cor e a fonte acima deixam de valer';

  @override
  String get playerShaders => 'Sombreadores';

  @override
  String get playerShadersEnable => 'Ativar shaders';

  @override
  String get playerShadersEnableDesc =>
      'Aumenta a resolução e limpa a imagem com shaders GLSL como o Anime4K';

  @override
  String get playerShadersOff => 'Shaders desligados';

  @override
  String get playerShadersMissing => 'O Anime4K não está instalado';

  @override
  String get playerShadersMissingDesc =>
      'Baixe o pacote de shaders do Anime4K (cerca de 0,8 MB) pra usar os modos integrados.';

  @override
  String get playerShadersDownload => 'Baixar Anime4K';

  @override
  String get playerPictureSave => 'Salve este quadro';

  @override
  String get playerPictureOriginal => 'Originais';

  @override
  String get playerPictureOriginalDesc =>
      'O quadro conforme o vídeo, sem shaders ou cores';

  @override
  String get playerPictureProcessed => 'Com shaders e cores';

  @override
  String get playerPictureProcessedDesc => 'A moldura como você a vê agora';

  @override
  String get playerPictureSaved => 'Quadro salvo';

  @override
  String get playerPictureSaveFailed => 'Não foi possível salvar o quadro';

  @override
  String get playerShadersPreview => 'Prévia nesse frame';

  @override
  String get playerShadersUse => 'Usar esse';

  @override
  String get playerPicture => 'Imagem';

  @override
  String get playerColors => 'Cores';

  @override
  String get playerColorDefault => 'Padrão';

  @override
  String get playerColorVivid => 'Vívido';

  @override
  String get playerColorPop => 'Anime pop';

  @override
  String get playerColorSoft => 'Suave';

  @override
  String get playerColorCinematic => 'Cinematográfico';

  @override
  String get playerColorBright => 'Brilhante';

  @override
  String get playerColorNight => 'Noite';

  @override
  String get playerColorMono => 'Mono';

  @override
  String get playerColorCustom => 'Personalizado';

  @override
  String get playerColorBrightness => 'Brilho';

  @override
  String get playerColorContrast => 'Contraste';

  @override
  String get playerColorSaturation => 'Saturação';

  @override
  String get playerColorGamma => 'Gama';

  @override
  String get playerColorHue => 'Matiz';

  @override
  String get playerColorReset => 'Redefinir';

  @override
  String get playerColorAdjust => 'Ajustar';

  @override
  String get playerShadersOriginal => 'Originais';

  @override
  String get playerShadersPreviewFailed =>
      'Não consegui pegar um frame pra prévia';

  @override
  String get playerShadersSoftware =>
      'Os shaders precisam de renderização de hardware e o player está usando renderização de software. Desative a renderização de software nas configurações do Player.';

  @override
  String get playerSoftwareRender => 'Renderização de software';

  @override
  String get playerSoftwareRenderDesc =>
      'Apenas para um vídeo preto. Shaders não funcionam com isso. Aplica-se na próxima vez que o player abrir';

  @override
  String get playerShadersCustomFiles => 'Seus shaders';

  @override
  String get playerShadersCustom => 'Shaders personalizados';

  @override
  String get playerShadersImport => 'Importar .glsl';

  @override
  String get playerShadersNone =>
      'Importe seus próprios arquivos .glsl ou .hook e marque pra encadear';

  @override
  String get playerShadersBadFile =>
      'Escolha um arquivo de shader .glsl ou .hook';

  @override
  String get playerDecoder => 'Decodificador';

  @override
  String get playerDecoderAuto => 'Automático';

  @override
  String get playerDecoderAutoSafe => 'Auto (seguro)';

  @override
  String get playerDecoderSoftware => 'Programas';

  @override
  String get playerDecoderHardware => 'Hardware';

  @override
  String get playerDecoderHardwarePlus => 'Hardware+';

  @override
  String get playerVideoOutput => 'Saída de vídeo';

  @override
  String get playerAudioChannels => 'Canais de áudio';

  @override
  String get playerBuffer => 'Tamanho do buffer (MB)';

  @override
  String get playerBufferDesc =>
      'Memória que o player pode usar pra fazer buffer de um stream';

  @override
  String get playerUseMpvConf => 'Usar mpv.conf';

  @override
  String get playerUseMpvConfDesc =>
      'Aplica as opções do seu mpv.conf quando a reprodução começa';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => 'Edite a configuração do mpv';

  @override
  String get playerMpvConfDesc =>
      'Uma opção por linha, como --hwdec=auto num mpv.conf normal. Perfis entre [colchetes] são ignorados.';

  @override
  String get playerMpvConfSaved => 'mpv.conf salvo';

  @override
  String get playerUseScripts => 'Usar scripts do mpv';

  @override
  String get playerUseScriptsDesc =>
      'Carrega os plugins da pasta de scripts. Precisam de uma build do libmpv com suporte a Lua ou JavaScript';

  @override
  String get playerScripts => 'Scripts do mpv';

  @override
  String get playerScriptsManage => 'Adicione, remova e alterne plugins';

  @override
  String get playerScriptsAdd => 'Adicionar script';

  @override
  String get playerScriptsDesc =>
      'Plugins Lua, JavaScript e nativos colocados aqui são carregados quando a reprodução começa.';

  @override
  String get playerScriptsNone => 'Nenhum script ainda';

  @override
  String get playerScriptsBadFile =>
      'Escolha um arquivo .lua, .js ou plugin nativo';

  @override
  String get playerTuning => 'Ajuste avançado de vídeo';

  @override
  String get playerTuningDesc =>
      'Sobrescreve sincronização, cache, escalonamento e tone mapping. Valores errados podem prejudicar a reprodução';

  @override
  String get playerVideoSync => 'Sincronização de vídeo';

  @override
  String get playerInterpolation => 'Interpolação de frames';

  @override
  String get playerInterpolationDesc =>
      'Movimento suave, precisa de sincronização display-resample';

  @override
  String get playerPitch => 'Correção de tom';

  @override
  String get playerPitchDesc =>
      'Mantém as vozes naturais em outras velocidades';

  @override
  String get playerCacheSeconds => 'Cache (segundos)';

  @override
  String get playerReadahead => 'Leitura antecipada (segundos)';

  @override
  String get playerThreads => 'Threads do decodificador';

  @override
  String get playerDeband => 'Desbandar';

  @override
  String get playerDebandDesc => 'Reduz as faixas de cor nos gradientes';

  @override
  String get playerDebandIterations => 'Iterações do deband';

  @override
  String get playerDebandThreshold => 'Limiar do deband';

  @override
  String get playerCorrectDownscaling => 'Redução correta';

  @override
  String get playerSigmoid => 'Escalonamento sigmoide';

  @override
  String get playerScale => 'Escalonador';

  @override
  String get playerCscale => 'Escalonador de croma';

  @override
  String get playerDscale => 'Redutor';

  @override
  String get playerToneMapping => 'Mapeamento de tons';

  @override
  String get playerTargetPeak => 'Pico alvo';

  @override
  String get playerOpenFiles => 'Abrir arquivos de vídeo';

  @override
  String get playerOpenFilesDesc => 'Reproduz arquivos desse dispositivo';

  @override
  String get playerOpenFolder => 'Abrir uma pasta';

  @override
  String get playerOpenFolderDesc =>
      'Reproduz todos os vídeos de uma pasta como playlist';

  @override
  String get playerNetworkStream => 'Stream de rede';

  @override
  String get playerNetworkStreamDesc => 'Abre um link direto de vídeo ou HLS';

  @override
  String get playerStreamUrl => 'URL do stream';

  @override
  String get playerStreamReferer => 'Referer (opcional)';

  @override
  String get playerTorrent => 'Torrente';

  @override
  String get playerTorrentDesc =>
      'Faz stream de um link magnet ou arquivo .torrent';

  @override
  String get playerMagnetLink => 'Link magnet ou URL de torrent';

  @override
  String get playerPickTorrent => 'Escolher um arquivo .torrent';

  @override
  String get playerTorrentMissing =>
      'Instale primeiro o complemento de torrent em Configurações > Complementos';

  @override
  String get playerNoVideos => 'Nenhum vídeo reproduzível encontrado';

  @override
  String get playerReset => 'Redefinir configurações do player';

  @override
  String get playerResetDesc => 'Volta todas as opções do player pro padrão';

  @override
  String get playerResetConfirm =>
      'Redefinir todas as configurações do player?';

  @override
  String get playerResetDone => 'Configurações do player redefinidas';

  @override
  String get playerQuality => 'Qualidade';

  @override
  String get streamGroupSub => 'Sub';

  @override
  String get streamGroupHardSub => 'Subdifícil';

  @override
  String get streamGroupSoftSub => 'Sub suave';

  @override
  String get streamGroupDub => 'Duplicar';

  @override
  String get streamGroupRaw => 'Cru';

  @override
  String get streamGroupOther => 'Outro';

  @override
  String streamsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count fluxos',
      one: '1 fluxo',
    );
    return '$_temp0';
  }

  @override
  String get playerStreams => 'Fluxos';

  @override
  String get playerStreamFailedNext =>
      'Essa transmissão não reproduz, estou tentando a próxima';

  @override
  String get playerAutoSelect => 'Escolher stream automaticamente';

  @override
  String get playerAutoSelectDesc =>
      'Escolhe o stream mais parecido com sua última escolha pra esse título';

  @override
  String get playerLoadingStreams => 'Procurando streams…';

  @override
  String get playerNoStreams => 'Esse episódio não tem streams';

  @override
  String get playerNoStreamsTitle => 'Nenhum stream encontrado';

  @override
  String get playerFailed => 'A reprodução falhou';

  @override
  String get playerTorrentNeeded => 'Esse stream é um torrent';

  @override
  String get playerTorrentNeededDesc =>
      'Instale o complemento de torrent pra reproduzir links magnet e arquivos .torrent';

  @override
  String get playerOpenAddons => 'Abrir complementos';

  @override
  String get playerTryAnotherStream => 'Tentar outro stream';

  @override
  String get playerEpisodes => 'Episódios';

  @override
  String get playerLock => 'Travar controles';

  @override
  String get playerFullscreen => 'Tela cheia';

  @override
  String get readerChapters => 'Capítulos';

  @override
  String get readerSettingsTitle => 'Configurações do leitor';

  @override
  String get readerPreviousChapter => 'Capítulo anterior';

  @override
  String get readerNextChapter => 'Próximo capítulo';

  @override
  String get readerFirstChapter => 'Esse é o primeiro capítulo';

  @override
  String get readerLastChapter => 'Você está em dia';

  @override
  String get readerFailed => 'Não consegui abrir esse capítulo';

  @override
  String get readerOpenBook => 'Abra um livro';

  @override
  String get readerOpenBookDesc =>
      'Leia um epub (leitor de romance) ou PDF (leitor de mangá) de seus arquivos';

  @override
  String get readerNoText => 'Esse capítulo não tem texto';

  @override
  String get readerPerTitle => 'Só pra esse título';

  @override
  String get readerPerTitleDesc =>
      'Mantém essas configurações do leitor só pra esse título';

  @override
  String get readerSectionReading => 'Leitura';

  @override
  String get readerSectionControls => 'Controles';

  @override
  String get readerSectionDisplay => 'Tela';

  @override
  String get readerSectionNovel => 'Romance';

  @override
  String get readerMode => 'Modo de leitura';

  @override
  String get readerModeAuto => 'Automático (por tipo de série)';

  @override
  String get readerModeRtl => 'Da direita pra esquerda';

  @override
  String get readerModeLtr => 'Da esquerda pra direita';

  @override
  String get readerModeVertical => 'Páginas na vertical';

  @override
  String get readerModeWebtoon => 'Webtoons';

  @override
  String get readerModeContinuous => 'Rolagem contínua';

  @override
  String get readerScale => 'Escala da imagem';

  @override
  String get readerScaleFit => 'Ajustar à tela';

  @override
  String get readerScaleWidth => 'Ajustar à largura';

  @override
  String get readerScaleHeight => 'Ajustar à altura';

  @override
  String get readerScaleOriginal => 'Tamanho original';

  @override
  String get readerScaleSmart => 'Ajuste inteligente';

  @override
  String get readerDoublePage => 'Páginas duplas';

  @override
  String get readerDoublePageDesc =>
      'Mostra duas páginas lado a lado na paisagem';

  @override
  String get readerDoubleTapZoom => 'Toque duplo pra dar zoom';

  @override
  String get readerDoubleTapZoomDesc =>
      'Aumenta e diminui uma página com um toque duplo';

  @override
  String get readerAnimate => 'Animação de página';

  @override
  String get readerAnimateDesc => 'Animar a troca de páginas';

  @override
  String get readerSidePadding => 'Margem lateral';

  @override
  String get readerSidePaddingDesc =>
      'Espaço ao lado das páginas, em porcentagem';

  @override
  String get readerPageGap => 'Espaço entre páginas';

  @override
  String get readerPageGapDesc => 'Espaço entre as páginas';

  @override
  String get readerAutoNext => 'Continuar no próximo capítulo';

  @override
  String get readerAutoNextDesc =>
      'Carrega o próximo capítulo enquanto você lê o final desse';

  @override
  String get readerPreload => 'Pré-carregar páginas';

  @override
  String get readerPreloadDesc => 'Quantas páginas baixar com antecedência';

  @override
  String get readerTapZones => 'Zonas de toque';

  @override
  String get readerTapDefault => 'Padrão';

  @override
  String get readerTapLShaped => 'Em L';

  @override
  String get readerTapKindle => 'Estilo Kindle';

  @override
  String get readerTapEdge => 'Só as bordas';

  @override
  String get readerTapOff => 'Desativado';

  @override
  String get readerInvertTaps => 'Inverter zonas de toque';

  @override
  String get readerInvertTapsDesc => 'Troca as áreas de anterior e próximo';

  @override
  String get readerBackground => 'Fundo';

  @override
  String get readerBackgroundBlack => 'Preto';

  @override
  String get readerBackgroundGray => 'Cinza';

  @override
  String get readerBackgroundWhite => 'Branco';

  @override
  String get readerBackgroundTheme => 'Tema do app';

  @override
  String get readerFilter => 'Filtro de cor';

  @override
  String get readerFilterNone => 'Nenhum';

  @override
  String get readerFilterGrayscale => 'Tons de cinza';

  @override
  String get readerFilterInvert => 'Inverter';

  @override
  String get readerFilterSepia => 'Sépia';

  @override
  String get readerFilterQuality => 'Qualidade do filtro de imagem';

  @override
  String get readerFilterQualityNone => 'Nenhum (vizinho mais próximo)';

  @override
  String get readerFilterQualityLow => 'Baixo (bilinear)';

  @override
  String get readerFilterQualityMedium => 'Médio (Trilinear)';

  @override
  String get readerFilterQualityHigh => 'Alto (Bicúbico)';

  @override
  String get readerFilterQualityLanczos =>
      'Lanczos (ferrugem de alta qualidade)';

  @override
  String get readerDim => 'Escurecer';

  @override
  String get readerDimDesc => 'Escurece as páginas';

  @override
  String get readerPageNumber => 'Número da página';

  @override
  String get readerPageNumberDesc =>
      'Mostra o número da página enquanto você lê';

  @override
  String get readerFullscreen => 'Tela cheia';

  @override
  String get readerFullscreenDesc => 'Esconde as barras do sistema';

  @override
  String get readerCropBorders => 'Cortar bordas';

  @override
  String get readerCropBordersDesc =>
      'Corta margens brancas ou pretas vazias das páginas';

  @override
  String get readerLongPressSave => 'Segure uma página para salvá-la';

  @override
  String get readerLongPressSaveDesc =>
      'Pressione longamente uma página para abrir as opções de salvar, compartilhar e copiar';

  @override
  String get readerVolumeKeys => 'Teclas de volume viram a página';

  @override
  String get readerVolumeKeysDesc =>
      'Volume pra baixo avança, volume pra cima volta';

  @override
  String get readerBookmarks => 'Marcadores';

  @override
  String get readerBookmarkAdd => 'Adicionar marcador';

  @override
  String get readerBookmarkRemove => 'Remover marcador';

  @override
  String get readerBookmarksEmpty => 'Nenhum marcador ainda';

  @override
  String readerBookmarkPage(int page, int total) {
    return 'Página $page de $total';
  }

  @override
  String get readerAutoScroll => 'Rolagem automática';

  @override
  String get readerAutoScrollStop => 'Parar rolagem automática';

  @override
  String get readerAutoScrollSpeed => 'Velocidade da rolagem automática';

  @override
  String get readerAutoScrollSpeedDesc =>
      'Com que rapidez as páginas rolam ou viram sozinhas';

  @override
  String get readerKeepOn => 'Manter a tela ligada';

  @override
  String get readerKeepOnDesc => 'Impede a tela de apagar enquanto você lê';

  @override
  String get readerOrientation => 'Orientação';

  @override
  String get readerOrientationFree => 'Livre';

  @override
  String get readerOrientationPortrait => 'Retrato';

  @override
  String get readerOrientationLandscape => 'Paisagem';

  @override
  String get readerSaveProgress => 'Salvar progresso';

  @override
  String get readerSaveProgressDesc =>
      'Lembra da sua página e marca capítulos como lidos';

  @override
  String get readerReset => 'Redefinir configurações do leitor';

  @override
  String get readerResetDesc => 'Voltar pro padrão';

  @override
  String get readerResetConfirm =>
      'Redefinir todas as configurações do leitor para o padrão?';

  @override
  String get novelSize => 'Tamanho do texto';

  @override
  String get novelFont => 'Fonte';

  @override
  String get novelLineHeight => 'Altura da linha';

  @override
  String get novelParagraph => 'Espaço entre parágrafos';

  @override
  String get novelMargin => 'Margens';

  @override
  String get novelTheme => 'Tema do leitor';

  @override
  String get novelThemeApp => 'Tema do app';

  @override
  String get novelThemeLight => 'Claro';

  @override
  String get novelThemeSepia => 'Sépia';

  @override
  String get novelThemeDark => 'Escuro';

  @override
  String get novelThemeBlack => 'Preto';

  @override
  String get novelJustify => 'Justificar texto';

  @override
  String get novelJustifyDesc => 'Alinha o texto nas duas bordas';

  @override
  String get trackProgressTitle => 'Salvar progresso?';

  @override
  String trackProgressAnime(String name) {
    return 'Registrar $name na sua lista enquanto assiste? Escolha \"Só nesse dispositivo\" pra manter local, ou Não pra não salvar nada.';
  }

  @override
  String trackProgressManga(String name) {
    return 'Registrar $name na sua lista quando terminar um capítulo? Escolha \"Só nesse dispositivo\" pra manter local, ou Não pra não salvar nada.';
  }

  @override
  String trackProgressAnimeLocal(String name) {
    return 'Salvar seu progresso em $name em sua lista neste dispositivo enquanto assiste?';
  }

  @override
  String trackProgressMangaLocal(String name) {
    return 'Salvar seu progresso em $name em sua lista neste dispositivo quando terminar um capítulo?';
  }

  @override
  String get downloadClearQueue => 'Limpar fila';

  @override
  String downloadClearQueueConfirm(int count) {
    return 'Cancelar todos os downloads $count na fila? O que já foi baixado é excluído.';
  }

  @override
  String downloadSelectedCount(int count) {
    return '$count selecionado';
  }

  @override
  String get downloadSelectAll => 'Selecionar tudo';

  @override
  String get downloadDeleteSelected => 'Excluir selecionado';

  @override
  String downloadDeleteSelectedConfirm(int count) {
    return 'Excluir downloads $count? Seus arquivos são removidos do dispositivo.';
  }

  @override
  String get castTitle => 'Transmitir para dispositivo';

  @override
  String get castSearching => 'Procurando dispositivos na sua rede…';

  @override
  String get castNoDevices =>
      'Nenhum dispositivo encontrado. Certifique-se de que a TV ou o Chromecast estejam no mesmo Wi-Fi e pesquise novamente.';

  @override
  String get castRefresh => 'Pesquise novamente';

  @override
  String get castFailed => 'Não foi possível iniciar a transmissão';

  @override
  String get castStop => 'Pare de transmitir';

  @override
  String castNowCasting(String name) {
    return 'Transmitindo para $name';
  }

  @override
  String get castProtocolChromecast => 'Chromecast';

  @override
  String get castProtocolDlna => 'DLNA/Smart TV';

  @override
  String get castProtocolRoku => 'Roku';

  @override
  String get castRokuNote => 'Roku não pode denunciar ou alterar a posição';

  @override
  String get castControls => 'Controles';

  @override
  String get castVolume => 'Volume da TV';

  @override
  String castSkipPart(String name) {
    return 'Pular $name';
  }

  @override
  String get trackProgressRememberSeries => 'Lembre-se desta série';

  @override
  String get trackProgressYes => 'Salvar';

  @override
  String get trackProgressReset =>
      'Pergunta de salvar progresso redefinida pra esse tipo, vai perguntar de novo';

  @override
  String get trackProgressNo => 'Não';

  @override
  String get trackProgressOff => 'Desligado';

  @override
  String get trackProgressLocal => 'Só nesse dispositivo';

  @override
  String get trackProgressSettingAnime => 'Registrar progresso de anime';

  @override
  String get trackProgressSettingManga =>
      'Registrar progresso de mangá e novel';

  @override
  String get trackProgressSettingDesc =>
      'O que fazer quando você abre um episódio ou termina um capítulo';

  @override
  String get trackProgressAsk => 'Perguntar';

  @override
  String get trackProgressAlways => 'Sempre';

  @override
  String get dantotsuImport => 'Importar do Dantotsu';

  @override
  String get dantotsuImportDesc =>
      'Lê um backup de configurações do Dantotsu (.ani, ou .sani criptografado)';

  @override
  String get dantotsuPick => 'Escolha um backup do Dantotsu';

  @override
  String get dantotsuNothing => 'Nada nesse arquivo pode ser importado';

  @override
  String get dantotsuApply => 'Importar selecionados';

  @override
  String dantotsuDone(int done, int total) {
    return 'Importados $done de $total';
  }

  @override
  String get dantotsuGroupAccounts => 'Contas';

  @override
  String get dantotsuGroupAppearance => 'Aparência';

  @override
  String get dantotsuGroupExtensions => 'Extensões';

  @override
  String get dantotsuGroupApp => 'Aplicativo';

  @override
  String get dantotsuGroupPlayer => 'Jogador';

  @override
  String get dantotsuAnilist => 'Login do AniList';

  @override
  String get dantotsuMal => 'Login do MyAnimeList';

  @override
  String get dantotsuDiscord => 'Token do Discord Rich Presence';

  @override
  String get dantotsuTheme => 'Tema';

  @override
  String get themePickerTitle => 'Tema';

  @override
  String get dantotsuReposAnime => 'Repositórios de extensões de anime';

  @override
  String get dantotsuReposManga => 'Repositórios de extensões de mangá';

  @override
  String get dantotsuReposNovel => 'Repositórios de extensões de novel';

  @override
  String get dantotsuUpdates => 'Verificação de atualização';

  @override
  String get dantotsuComments => 'Comentários';

  @override
  String get dantotsuActivity => 'Verificação de notificações do AniList';

  @override
  String get dantotsuDns => 'Provedor de DNS';

  @override
  String get dantotsuPlayer => 'Velocidade do player e cores das legendas';

  @override
  String get dantotsuWarning =>
      'Esse arquivo contém tokens de login. Mantenha privado.';

  @override
  String get novelIndent => 'Recuar parágrafos';

  @override
  String get novelIndentDesc =>
      'Começa cada parágrafo com recuo na primeira linha';

  @override
  String get novelLetterSpacing => 'Espaçamento entre letras';

  @override
  String get novelSectionTranslate => 'Tradução';

  @override
  String get sectionExperimental => 'Experimental';

  @override
  String get kitsuGraphqlDetail => 'Páginas de detalhes mais rápidas (GraphQL)';

  @override
  String get kitsuGraphqlDetailDesc =>
      'Carrega um título com personagens, equipe e sua entrada numa requisição só';

  @override
  String get togetherTitle => 'Assistir junto';

  @override
  String get togetherIntro =>
      'Cole o link da sala que seu amigo mandou. Você entra na hora e o player abre quando ele começar a assistir.';

  @override
  String togetherLinkConfirm(String room) {
    return 'Entrar na sala $room? O anfitrião escolhe o que toca e o player abre sozinho quando começa a assistir.';
  }

  @override
  String get togetherJoin => 'Junte-se';

  @override
  String get togetherName => 'Seu nome';

  @override
  String get togetherConnecting => 'Conectando…';

  @override
  String get togetherLeave => 'Sair da sala';

  @override
  String get togetherYou => 'Você';

  @override
  String get togetherNoChat => 'Nenhuma mensagem ainda';

  @override
  String get togetherChatHint => 'Mensagem';

  @override
  String get togetherCopyInvite => 'Copiar convite';

  @override
  String get togetherShareInvite => 'Compartilhar convite';

  @override
  String togetherShareText(String link) {
    return 'Assista comigo no Dartotsu: $link';
  }

  @override
  String get togetherInviteCopied => 'Servidor e sala copiados';

  @override
  String get togetherConnectionLost => 'Conexão perdida';

  @override
  String togetherConnectedTo(String room) {
    return 'Conectado a $room';
  }

  @override
  String togetherFailed(String error) {
    return 'Não consegui conectar: $error';
  }

  @override
  String togetherJoined(String name) {
    return '$name entrou';
  }

  @override
  String togetherLeft(String name) {
    return '$name saiu';
  }

  @override
  String togetherPaused(String name) {
    return '$name pausou';
  }

  @override
  String togetherResumed(String name) {
    return '$name retomou';
  }

  @override
  String togetherSeeked(String name, String time) {
    return '$name pulou pra $time';
  }

  @override
  String get togetherFollowFailed =>
      'Não consegui abrir o episódio do host. Abra você mesmo.';

  @override
  String get togetherJoinRole => 'Entrar numa sala';

  @override
  String get togetherOpenHost => 'Abrir episódio do host';

  @override
  String get togetherShowChat => 'Mostrar chat ao vivo';

  @override
  String get togetherWaitingHost => 'Esperando o host iniciar um episódio';

  @override
  String get togetherRoomLink => 'Link da sala';

  @override
  String get togetherBadLink => 'Isso não é um link de sala';

  @override
  String get togetherHostClosed => 'O host fechou a sala';

  @override
  String get togetherNowPlaying => 'Reproduzindo agora';

  @override
  String togetherWatchingCount(int count) {
    return '$count assistindo';
  }

  @override
  String togetherWantsPause(String user) {
    return '$user quer pausar';
  }

  @override
  String togetherWantsResume(String user) {
    return '$user quer retomar';
  }

  @override
  String get togetherChip => 'Juntos';

  @override
  String get togetherSettingsDesc => 'Entre na sala de um amigo com um link';

  @override
  String get novelBilingual => 'Mostrar original e tradução';

  @override
  String get novelBilingualDesc =>
      'Cada parágrafo mostra o texto original com a tradução embaixo';

  @override
  String get novelTranslateTo => 'Traduzir pra';

  @override
  String get novelTranslateOff => 'Desligado';

  @override
  String get novelSectionSpeech => 'Texto pra fala';

  @override
  String get novelSpeechRate => 'Velocidade da fala';

  @override
  String get novelSpeechPitch => 'Tom da fala';

  @override
  String get novelSpeak => 'Ler em voz alta';

  @override
  String get novelSpeakStop => 'Parar leitura em voz alta';

  @override
  String get novelTranslate => 'Traduzir capítulo';

  @override
  String get novelTranslateShowOriginal => 'Mostrar original';

  @override
  String novelTranslateFailed(String error) {
    return 'A tradução falhou: $error';
  }

  @override
  String get novelSpeechUnavailable =>
      'Texto pra fala não está disponível nesse dispositivo';

  @override
  String get novelSpeechVoice => 'Voz';

  @override
  String get novelSpeechVoiceDefault => 'Padrão do sistema';

  @override
  String get novelSpeakPrevious => 'Linha anterior';

  @override
  String get novelSpeakNext => 'Próxima linha';

  @override
  String get novelTapPaging => 'Toque nas bordas pra virar a página';

  @override
  String get novelTapPagingDesc =>
      'Toque no lado esquerdo ou direito pra rolar uma página, o meio mostra os controles';

  @override
  String get novelPaged => 'Virar página';

  @override
  String get novelPagedDesc =>
      'Divida o capítulo em páginas e deslize ou toque para girá-los em vez de rolar';

  @override
  String novelPageOf(int current, int total) {
    return 'Página $current de $total';
  }

  @override
  String get novelPaginating => 'Disposição de páginas';

  @override
  String get novelTools => 'Conteúdo, pesquisa e destaques';

  @override
  String get novelContents => 'Conteúdo';

  @override
  String get novelContentsEmpty => 'Este capítulo não tem títulos';

  @override
  String get novelSearch => 'Pesquisar';

  @override
  String get novelSearchHint => 'Pesquise neste capítulo';

  @override
  String get novelSearchNone => 'Nenhuma correspondência';

  @override
  String novelSearchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count corresponde',
      one: '1 partida',
    );
    return '$_temp0';
  }

  @override
  String get novelHighlights => 'Destaques';

  @override
  String get novelHighlightsEmpty =>
      'Selecione algum texto e toque em Destacar para mantê-lo aqui';

  @override
  String get novelHighlight => 'Destaque';

  @override
  String get novelHighlightNote => 'Nota';

  @override
  String get novelHighlightNoteHint => 'Adicione uma nota';

  @override
  String get novelHighlightRemove => 'Remover destaque';

  @override
  String get novelHighlightFailed =>
      'Não foi possível corresponder essa seleção ao texto';

  @override
  String novelMinutesLeft(int count) {
    return 'faltam $count min';
  }

  @override
  String get novelBold => 'Texto em negrito';

  @override
  String get novelBoldDesc => 'Usa uma espessura maior';

  @override
  String readerFinishedChapter(String chapter) {
    return '$chapter finalizado';
  }

  @override
  String readerNextUp(String chapter) {
    return 'Próximo: $chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return 'Anterior: $chapter';
  }

  @override
  String get readerNoPages => 'Esse capítulo não tem páginas';

  @override
  String get readerLoadingPages => 'Carregando páginas…';

  @override
  String get readerSlowPage => 'Essa página ainda está carregando…';

  @override
  String get readerPageFailed => 'Não consegui carregar essa página';

  @override
  String get playerShowComments => 'Mostrar comentários';

  @override
  String get playerHideComments => 'Esconder comentários';

  @override
  String get playerSubtitles => 'Legendas';

  @override
  String get playerSubtitlesOff => 'Legendas desligadas';

  @override
  String get playerAudio => 'Áudio';

  @override
  String get playerAddSubtitle => 'Adicionar arquivo de legenda';

  @override
  String get playerAddAudio => 'Adicionar arquivo de áudio';

  @override
  String get playerChapters => 'Capítulos';

  @override
  String get playerSkipSubmit => 'Enviar tempos de salto';

  @override
  String get playerSkipSubmitDesc =>
      'Marque onde começa e termina a abertura, final ou recapitulação deste episódio e compartilhe com o AniSkip, para que todos recebam o botão pular.';

  @override
  String get playerSkipStart => 'Começar';

  @override
  String get playerSkipEnd => 'Fim';

  @override
  String get playerSkipUseNow => 'Usar a posição atual';

  @override
  String get playerSkipSend => 'Enviar para AniSkip';

  @override
  String get playerSkipSent => 'Ignorar tempos enviados ao AniSkip, obrigado';

  @override
  String playerSkipFailed(String error) {
    return 'AniSkip recusou os tempos de salto: $error';
  }

  @override
  String get playerUnsupported =>
      'O player de vídeo não pode ser executado neste dispositivo (sua versão do Android é muito antiga para a biblioteca do player incluída). Toque para copiar os detalhes.';

  @override
  String get playerSkipNoMal =>
      'Este título não tem ID MyAnimeList, AniSkip não aguenta';

  @override
  String get playerNoChapters => 'Sem capítulos';

  @override
  String get playerTimestamp => 'Marcação de tempo';

  @override
  String get playerAutoPlayDelay => 'Contagem regressiva do próximo episódio';

  @override
  String get playerWatchedAt => 'Contar como assistido em';

  @override
  String playerNextIn(int seconds) {
    return 'Próximo episódio em ${seconds}s';
  }

  @override
  String get playerPlayNow => 'Reproduzir agora';

  @override
  String playerAutoSkipOn(String name) {
    return '$name: vai pular automaticamente nesse título';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name: não vai pular automaticamente nesse título';
  }

  @override
  String get playerAudioLanguage => 'Idioma de áudio preferido';

  @override
  String get playerLanguageOrderHint =>
      'Separe os idiomas com vírgula. Vale o primeiro que for encontrado.';

  @override
  String get playerPip => 'Imagem em imagem';

  @override
  String get playerAutoPip => 'Picture in picture ao sair';

  @override
  String get playerAutoPipDesc =>
      'Continua reproduzindo numa janela pequena quando você sai do app';

  @override
  String get playerPipPlay => 'Jogar';

  @override
  String get playerPipPause => 'Pausa';

  @override
  String get playerPipBack => 'Retroceder';

  @override
  String get playerPipForward => 'Avançar';

  @override
  String get playerPipRestore => 'De volta ao jogador';

  @override
  String get playerPipActive => 'Brincando em uma pequena janela';

  @override
  String get listDateAdded => 'Adicionado à lista';

  @override
  String get listDateLastWatched => 'Última visualização';

  @override
  String playerAutoPlaying(String title) {
    return 'Reproduzindo $title em seguida…';
  }

  @override
  String playerShadersFailed(String error) {
    return 'Não consegui instalar os shaders: $error';
  }

  @override
  String playerChapter(int number) {
    return 'Capítulo $number';
  }

  @override
  String get playerPerTitle => 'Só pra esse título';

  @override
  String get playerPerTitleDesc =>
      'Mantém essas opções pra esse título e deixa seus padrões em paz';

  @override
  String get playerSwapGestures => 'Trocar lados do deslize';

  @override
  String get playerSwapGesturesDesc => 'Brilho à esquerda e volume à direita';

  @override
  String get playerOpenBig => 'Abrir em vista grande';

  @override
  String get playerOpenBigDesc =>
      'Abre o leitor em ecrã inteiro em vez de com a lista de episódios';

  @override
  String get playerPauseOnBlur => 'Pausar quando perde o foco';

  @override
  String get playerPauseOnBlurDesc =>
      'Pausa enquanto a app está tapada, como pelo painel de notificações, e continua quando voltas';

  @override
  String get playerAudioOutput => 'Saída de áudio';

  @override
  String get fontAppDefault => 'Fonte do app';

  @override
  String get fontImport => 'Importar fonte';

  @override
  String get fontSample =>
      'A rápida raposa marrom pula sobre o cachorro preguiçoso';

  @override
  String get playerSubtitleDelay => 'Atraso da legenda';

  @override
  String get playerAudioDelay => 'Atraso do áudio';

  @override
  String get playerDelayReset => 'Redefinir';

  @override
  String get playerOnlineSubtitles => 'Legendas online';

  @override
  String get playerOnlineSearchHint => 'Título e episódio';

  @override
  String get playerOnlineNone => 'Nenhuma legenda encontrada';

  @override
  String playerOnlineFailed(String error) {
    return 'A busca de legendas falhou: $error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return 'Não consegui baixar essa legenda: $error';
  }

  @override
  String get playerOnlineMatch => 'Combina com esse arquivo';

  @override
  String get playerOnlineEpisode => 'Combina com o episódio';

  @override
  String playerOnlineDownloads(int count) {
    return '$count downloads';
  }

  @override
  String get playerSeekPreview => 'Prévia ao avançar';

  @override
  String get playerSeekPreviewDesc =>
      'Mostra uma pequena prévia acima da barra enquanto você arrasta. Abre um segundo decodificador de baixa resolução, então gasta mais dados em streams.';

  @override
  String get playerSettingsChip => 'Configurações';

  @override
  String get playerAudioDevice => 'Dispositivo de áudio';

  @override
  String get settingsDownloads => 'Transferências';

  @override
  String get settingsDownloadsDesc => 'Episódios offline, fila e modo offline';

  @override
  String get downloadsTitle => 'Transferências';

  @override
  String get widgetContinue => 'Continuar';

  @override
  String get widgetReleases => 'Lançamento em breve';

  @override
  String get widgetMore => 'Também em andamento';

  @override
  String get widgetNothing => 'Nada para continuar ainda';

  @override
  String get downloadStorageTitle => 'Armazenamento';

  @override
  String downloadStorageSummary(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count downloads',
      one: '1 baixar',
    );
    return '$_temp0 · $size';
  }

  @override
  String downloadStorageWatched(String size) {
    return '$size já assistiu ou leu';
  }

  @override
  String get downloadFreeUp => 'Libere espaço';

  @override
  String downloadFreeUpConfirm(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '',
      one: '1 download assistido',
    );
    return 'Excluir $_temp0 e grátis $size?';
  }

  @override
  String downloadFreed(String size) {
    return 'Libertado $size';
  }

  @override
  String get downloadDeleteWatched => 'Excluir assistido';

  @override
  String get downloadDeleteAll => 'Excluir tudo';

  @override
  String downloadDeleteAllConfirm(String title) {
    return 'Excluir todos os downloads de $title?';
  }

  @override
  String get downloadNothingWatched => 'Nada do que você concluiu foi baixado';

  @override
  String get downloadStorageEmpty => 'Nenhum download está usando espaço';

  @override
  String get downloadsOpenDesc =>
      'Veja a fila e tudo que está salvo nesse dispositivo';

  @override
  String get downloadTitle => 'Baixar';

  @override
  String get downloadMetaOnly => 'Somente metadados';

  @override
  String get downloadMetaFailed => 'Não foi possível criar a pasta de título';

  @override
  String downloadMetaSaved(String path) {
    return 'Salvo. Coloque seus arquivos em $path';
  }

  @override
  String get downloadAlready => 'Já baixado ou na fila';

  @override
  String get downloadPickStream => 'Baixar qual stream?';

  @override
  String get downloadPickSubtitle => 'Baixar qual legenda?';

  @override
  String get downloadPickAudio => 'Baixar qual faixa de áudio?';

  @override
  String get downloadAudio => 'Áudio';

  @override
  String get downloadHlsNeedsFfmpeg =>
      'Esse stream é uma playlist HLS. Pra baixar, precisa do complemento FFmpeg.';

  @override
  String get downloadSourceMissing =>
      'A fonte desse episódio não está instalada';

  @override
  String get downloadDashDrm => 'Este stream é protegido por DRM';

  @override
  String get downloadDashNoVideo => 'O manifesto DASH não tem vídeo';

  @override
  String get downloadWaitingConnection => 'Esperando conexão';

  @override
  String get downloadSubtitles => 'Legendas';

  @override
  String get downloadDownloaded => 'Baixado';

  @override
  String get downloadOffline => 'Off-line';

  @override
  String get downloadDelete => 'Apagar download';

  @override
  String get downloadCancel => 'Cancelar';

  @override
  String get downloadPause => 'Pausar';

  @override
  String get downloadPaused => 'Pausado';

  @override
  String get downloadResume => 'Continuar';

  @override
  String get downloadPauseAll => 'Pausar tudo';

  @override
  String get downloadResumeAll => 'Continuar tudo';

  @override
  String get downloadQueuedState => 'Esperando na fila';

  @override
  String get downloadResolving => 'Pegando o stream…';

  @override
  String get downloadUsedFallback =>
      'Nenhum stream correspondente, usei o primeiro';

  @override
  String get downloadTabQueue => 'Fila';

  @override
  String get downloadTabDone => 'Concluído';

  @override
  String get downloadTabFailed => 'Falhou';

  @override
  String get downloadEmptyQueue => 'Nada sendo baixado';

  @override
  String get downloadEmptyDone => 'Nada baixado ainda';

  @override
  String get downloadEmptyFailed => 'Sem downloads com falha';

  @override
  String get downloadNext => 'Próximo episódio';

  @override
  String downloadNextN(int count) {
    return 'Próximos $count episódios';
  }

  @override
  String get downloadCustom => 'Custom amount…';

  @override
  String downloadCustomPrompt(int max) {
    return 'How many from here? (1–$max)';
  }

  @override
  String downloadUnwatched(int count) {
    return 'Todos não assistidos ($count)';
  }

  @override
  String downloadRange(int count) {
    return 'Esse intervalo ($count)';
  }

  @override
  String downloadAll(int count) {
    return 'Todos os episódios ($count)';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count episódios na fila',
      one: '1 episódio na fila',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return '$name baixado';
  }

  @override
  String downloadFailedBody(String name) {
    return 'Falha ao baixar $name';
  }

  @override
  String downloadStorage(String size) {
    return '$size usados por downloads';
  }

  @override
  String get downloadQueueHeader => 'Fila';

  @override
  String get downloadParallel => 'Downloads simultâneos';

  @override
  String get downloadParallelDesc => 'Baixe um por vez ou vários juntos';

  @override
  String get downloadOneByOne => 'Um por um';

  @override
  String get downloadNotifications => 'Notificações de download';

  @override
  String get downloadNotificationsDesc =>
      'Progresso ao vivo onde o sistema suporta, senão um aviso quando um download termina';

  @override
  String get downloadNotifyLive => 'Ao vivo';

  @override
  String get downloadNotifyDone => 'Ao terminar';

  @override
  String get downloadNotifyOff => 'Desligado';

  @override
  String get downloadInfoFile =>
      'Gravar um arquivo de info junto de cada download';

  @override
  String get downloadInfoFileDesc =>
      'Salva o stream, qualidade, legenda e tempos de pulo num pequeno arquivo .json';

  @override
  String get offlineHeader => 'Off-line';

  @override
  String get offlineModeDesc =>
      'Auto só fica offline quando o app abre sem conexão. Sempre fica offline até você mudar.';

  @override
  String get offlineModeOff => 'Desligado';

  @override
  String get offlineModeAlways => 'Sempre';

  @override
  String get offlineModeOn =>
      'O modo offline está ligado. As mudanças ficam salvas aqui e são enviadas quando você voltar a ficar online.';

  @override
  String get offlineSaved =>
      'Salvo nesse dispositivo, vai sincronizar quando você estiver online';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mudanças sincronizadas',
      one: '1 mudança sincronizada',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mudanças esperando sincronizar',
      one: '1 mudança esperando sincronizar',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle => 'Mudanças esperando sincronizar';

  @override
  String get offlinePendingNone => 'Nada esperando';

  @override
  String get offlineSyncNow => 'Sincronizar agora';

  @override
  String get offlineDiscard => 'Descartar';

  @override
  String get downloadNotOffline =>
      'Esse episódio não foi baixado, então não está disponível offline';

  @override
  String get offlineModeChip => 'Off-line';

  @override
  String get downloadNextChapter => 'Próximo capítulo';

  @override
  String downloadNextChapters(int count) {
    return 'Próximos $count capítulos';
  }

  @override
  String downloadUnread(int count) {
    return 'Todos não lidos ($count)';
  }

  @override
  String downloadAllChapters(int count) {
    return 'Todos os capítulos ($count)';
  }

  @override
  String downloadPagesProgress(int done, int total) {
    return '$done / $total páginas';
  }

  @override
  String downloadPagesCount(int count) {
    return '$count páginas';
  }

  @override
  String get downloadFfmpegTitle => 'Complemento FFmpeg necessário';

  @override
  String get downloadFfmpegBody =>
      'Esse stream é uma playlist HLS. O complemento FFmpeg junta as partes num arquivo mp4 só. Sem ele, as partes ficam numa pasta do episódio e rodam de lá.';

  @override
  String get downloadFfmpegInstall => 'Instalar';

  @override
  String get downloadFfmpegInstalling =>
      'Instalando o FFmpeg, pode demorar um pouco…';

  @override
  String get downloadFinishing => 'Juntando as partes num arquivo só…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return '$done / $total partes';
  }

  @override
  String get downloadTorrentNoFile =>
      'O torrent não tem arquivo de vídeo pra baixar';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Baixando $count itens',
      one: 'Baixando 1 item',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => 'Apagar downloads assistidos';

  @override
  String get downloadAutoDeleteDesc =>
      'Remove um download quando seu progresso chega nesse episódio ou capítulo';

  @override
  String get downloadConnections => 'Conexões por download';

  @override
  String get downloadConnectionsDesc =>
      'Divide um arquivo grande em partes buscadas ao mesmo tempo. Alguns servidores limitam isso.';

  @override
  String get downloadPlayChoice => 'Reproduzir de';

  @override
  String get downloadPlayLocalDesc => 'O arquivo salvo nesse dispositivo';

  @override
  String get downloadPlayStream => 'Transmitir on-line';

  @override
  String get downloadPlayStreamDesc => 'Carrega o episódio da fonte';

  @override
  String get offlineFeedTitle => 'Baixado nesse dispositivo';

  @override
  String get offlineFeedEmpty =>
      'Baixe algo enquanto está online e aparece aqui';

  @override
  String get offlineEnabled => 'O modo offline está ligado';

  @override
  String get offlineDisabled => 'O modo offline está desligado';

  @override
  String get downloadReadChoice => 'Ler de';

  @override
  String get downloadReadLocalDesc => 'As páginas salvas nesse dispositivo';

  @override
  String get downloadReadOnline => 'Ler online';

  @override
  String get downloadReadOnlineDesc => 'Carrega o capítulo da fonte';

  @override
  String downloadDeleteConfirm(String name) {
    return 'Apagar $name desse dispositivo?';
  }

  @override
  String downloadCancelConfirm(String name) {
    return 'Cancelar o download de $name? O que já foi baixado é apagado.';
  }

  @override
  String get downloadFfmpegFolder => 'Manter como pasta';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Descartar $count mudanças que nunca foram enviadas? Isso não dá pra desfazer.',
      one: 'Descartar a mudança que nunca foi enviada? Isso não dá pra desfazer.',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => 'Esperando Wi-Fi';

  @override
  String get downloadWaitingMetered => 'Pausado numa conexão limitada';

  @override
  String get downloadWifiOnly => 'Só Wi-Fi';

  @override
  String get downloadWifiOnlyDesc =>
      'Os downloads esperam enquanto você está no 4G/5G';

  @override
  String get downloadMetered => 'Pausar em conexões limitadas';

  @override
  String get downloadMeteredDesc =>
      'Também espera em Wi-Fi que seu dispositivo marca como limitado';

  @override
  String get downloadSpeedLimit => 'Limite de velocidade';

  @override
  String get downloadSpeedLimitDesc => 'Limita a velocidade total de download';

  @override
  String get downloadUnlimited => 'Ilimitado';

  @override
  String get downloadMoveToTop => 'Mover pro topo';

  @override
  String downloadSwarm(int seeds, int peers) {
    return '$seeds sementes · $peers pares';
  }

  @override
  String get downloadTorrentFile => 'Qual arquivo?';

  @override
  String get downloadTorrentAuto => 'Associar o episódio automaticamente';

  @override
  String get downloadTorrentLoading => 'Lendo o torrent…';

  @override
  String get watchAutoSource => 'Trocar pra próxima fonte automaticamente';

  @override
  String get watchAutoSourceDesc =>
      'Se a fonte não achar o título ou falhar ao carregar, tenta a próxima instalada';

  @override
  String get extensionTest => 'Testar extensões';

  @override
  String get extensionTestCopy => 'Copia as falhas e os respectivos logs';

  @override
  String get extensionTestQuery => 'Termo de busca';

  @override
  String get extensionTestRun => 'Executar';

  @override
  String get extensionTestStop => 'Parar';

  @override
  String get extensionTestNone => 'Nenhuma extensão instalada desse tipo';

  @override
  String get extensionTestNotRun => 'Ainda não testado';

  @override
  String get extensionTestSearch => 'Busca';

  @override
  String get extensionTestDetail => 'Detalhes';

  @override
  String get extensionTestUnits => 'Episódios / capítulos';

  @override
  String get extensionTestLinks => 'Streams / páginas';

  @override
  String extensionTestFailedAt(String step) {
    return 'Falhou em $step';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return '$done de $total testadas · $passed passaram · $failed falharam';
  }

  @override
  String get extensionTestCopyLogs => 'Copia tudo com os logs completos';

  @override
  String get onboardingFeaturesTitle => 'Tudo num lugar só';

  @override
  String get onboardingFeaturesBody =>
      'Tudo que você acompanha, assiste e lê, sem ficar pulando entre apps.';

  @override
  String get onboardingFeatureTrack => 'Acompanhe tudo';

  @override
  String get onboardingFeatureTrackDesc =>
      'Listas, progresso e notas no AniList, MyAnimeList, Simkl, Kitsu e MangaBaka.';

  @override
  String get onboardingFeatureWatch => 'Assista e leia';

  @override
  String get onboardingFeatureWatchDesc =>
      'Instale extensões e assista anime em streaming ou leia mangá e novels direto no app.';

  @override
  String get onboardingFeatureOffline => 'Leve pro offline';

  @override
  String get onboardingFeatureOfflineDesc =>
      'Baixe episódios e capítulos e continue sem conexão.';

  @override
  String get onboardingFeatureSync => 'Mantenha as listas sincronizadas';

  @override
  String get onboardingFeatureSyncDesc =>
      'Espelhe sua lista entre os serviços, ou deixe ganhar quem estiver na frente.';

  @override
  String get onboardingServices => 'Funciona com';

  @override
  String sourceNotifyOn(String source) {
    return 'Você será informado quando $source tiver algo novo';
  }

  @override
  String get sourceNotifyOff => 'Liberar notificações desativadas';

  @override
  String get sourceNotifyNeedsSource =>
      'Escolha uma fonte que corresponda primeiro';

  @override
  String sourceNotifyAllOut(int count) {
    return 'Tudo ($count) já saiu, não há o que esperar';
  }

  @override
  String get sourceNotifyTooltipOn => 'Interromper notificações de lançamento';

  @override
  String get sourceNotifyTooltipOff => 'Avise-me sobre novos lançamentos';

  @override
  String sourceFoundEpisode(String number, String source) {
    return 'O episódio $number foi lançado em $source';
  }

  @override
  String sourceFoundEpisodes(String from, String to, String source) {
    return 'Os episódios $from–$to foram lançados em $source';
  }

  @override
  String sourceFoundChapter(String number, String source) {
    return 'Capítulo $number foi lançado em $source';
  }

  @override
  String sourceFoundChapters(String from, String to, String source) {
    return 'Os capítulos $from–$to foram lançados em $source';
  }

  @override
  String sourceFoundSummary(int count) {
    return 'Os títulos $count têm algo novo';
  }

  @override
  String get navSources => 'Fontes';

  @override
  String sourceInactiveOpen(String manager) {
    return 'Esta fonte pertence a $manager, que não é o serviço de extensão ativo';
  }

  @override
  String get sourceAlertsHeader => 'Notificações de lançamento';

  @override
  String get sourceAlertsSwitch => 'Verifique os títulos inscritos';

  @override
  String get sourceAlertsSwitchDesc =>
      'Uma vez cada vez que o aplicativo é aberto, para os títulos você ativou o sino';

  @override
  String get sourceSkipUnstarted =>
      'Ignorar títulos que você ainda não iniciou';

  @override
  String get sourceSkipUnstartedDesc =>
      'Nada assistido ou lido ainda, mas já existem episódios';

  @override
  String get sourceSkipUnseen => 'Pule enquanto você tem episódios não vistos';

  @override
  String get sourceSkipUnseenDesc =>
      'Você ainda tem episódios lançados para acompanhar';

  @override
  String get sourceManage => 'Assinaturas';

  @override
  String sourceManageDesc(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count títulos',
      one: '1 título',
      zero: 'Sem títulos',
    );
    return '$_temp0';
  }

  @override
  String get sourceCheckNow => 'Verifique agora';

  @override
  String get sourceCheckNowDesc => 'Ignora a programação e as regras de pulo';

  @override
  String get sourceChecking => 'Verificando…';

  @override
  String sourceCheckResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Os títulos $count têm algo novo',
      one: '1 título tem algo novo',
      zero: 'Nada de novo',
    );
    return '$_temp0';
  }

  @override
  String get sourceEmpty => 'Ainda não há assinaturas';

  @override
  String get sourceEmptyMessage =>
      'Toque no sino acima dos episódios de um título para ser informado sobre os novos';

  @override
  String get sourceAll => 'Todos';

  @override
  String sourceInactive(String manager) {
    return 'Inativo: $manager';
  }

  @override
  String sourceMissingDesc(String source) {
    return '$source não está instalado neste serviço de extensão';
  }

  @override
  String get sourceUnreachable => 'A fonte não está respondendo';

  @override
  String get sourceFinished => 'Concluído';

  @override
  String get sourceSkippedCompleted => 'Ignorado: concluído';

  @override
  String get sourceSkippedUnstarted => 'Ignorado: não iniciado';

  @override
  String get sourceSkippedUnseen => 'Ignorado: episódios inéditos';

  @override
  String get sourceWaiting => 'Aguardando o próximo lançamento';

  @override
  String sourceNextCheck(String when) {
    return 'Próxima verificação $when';
  }

  @override
  String get sourceSoon => 'em breve';

  @override
  String sourceInHours(int count) {
    return 'em ${count}h';
  }

  @override
  String sourceInDays(int count) {
    return 'em ${count}d';
  }

  @override
  String sourceLatest(String number) {
    return 'Mais recente: $number';
  }

  @override
  String get sourceMute => 'Mudo';

  @override
  String get sourceUnmute => 'Ativar som';

  @override
  String get sourceMuted => 'Silenciado';

  @override
  String get sourceUnsubscribe => 'Cancelar inscrição';

  @override
  String get sourcePickAnother => 'Escolha outra fonte';

  @override
  String get sourceOpenExtensions => 'Extensões abertas';

  @override
  String get sourceNoticesEmpty => 'Ainda não há avisos de lançamento';

  @override
  String get sourceNoticesEmptyMessage =>
      'Novos episódios e capítulos dos seus títulos assinados aparecem aqui';

  @override
  String get sourceOpenTitle => 'Título aberto';

  @override
  String get extensionsLoading => 'Carregando extensões…';

  @override
  String get updateWhatsNew => 'O que há de novo';

  @override
  String get updateLater => 'Mais tarde';

  @override
  String get updateSkipVersion => 'Pular esta versão';

  @override
  String get updatePreparing => 'Preparando…';

  @override
  String get updateDownloading => 'Baixando';

  @override
  String get updateInstalling => 'Instalando…';

  @override
  String updateSizeOf(String done, String total) {
    return '$done de $total';
  }

  @override
  String updateSpeed(String speed) {
    return '$speed/s';
  }

  @override
  String updateReleased(String date) {
    return 'Liberado $date';
  }

  @override
  String get updateNoAsset =>
      'Esta versão não tem download para o seu dispositivo';

  @override
  String get updateUpToDate => 'Você está na versão mais recente';

  @override
  String get updateIosHint =>
      'As compilações do iOS não estão na App Store. Pegue o .ipa na página de lançamento e carregue-o com AltStore ou SideStore';

  @override
  String get updateOpenedBrowser => 'Verifique seu navegador';

  @override
  String get updateTryAgain => 'Tente novamente';

  @override
  String get settingsNotifications => 'Notificações';

  @override
  String get settingsNotificationsDesc =>
      'Alertas para suas listas, novos episódios e capítulos e respostas a comentários';

  @override
  String get settingsAboutUpdates => 'Sobre e atualizações';

  @override
  String get settingsAboutUpdatesDesc =>
      'Atualizações de aplicativos, versão, registros, links e suporte';

  @override
  String get settingsGroupAccount => 'Sua conta';

  @override
  String get settingsGroupContent => 'Conteúdo';

  @override
  String get settingsGroupApp => 'Aplicativo';

  @override
  String get settingsAnimeDesc =>
      'Player, legendas, pulos, lista de episódios e detalhes do episódio';

  @override
  String get settingsMangaDesc =>
      'Modo leitor, controles, exibição e rastreamento de capítulo';

  @override
  String get settingsNovelDesc =>
      'Texto, virada de página, tradução e leitura em voz alta';

  @override
  String get settingsLocalPlay => 'Jogo local';

  @override
  String get settingsLocalPlayDesc =>
      'Reproduza arquivos, pastas, fluxos de rede e torrents ou abra um livro';

  @override
  String get settingsLocalPlayVideo => 'Vídeo';

  @override
  String get settingsLocalPlayBooks => 'Livros';

  @override
  String get settingsWatchSections => 'Seções';

  @override
  String get settingsSectionLists => 'Listas de episódios e capítulos';

  @override
  String get settingsSectionProgress => 'Acompanhamento do progresso';

  @override
  String get updateChannelDesc =>
      'Estável é a versão testada. O pré-lançamento e o Alpha recebem novos recursos mais cedo, mas podem falhar';

  @override
  String get checkNowDesc => 'Procure uma versão mais recente imediatamente';

  @override
  String get generalSectionBasics => 'Linguagem e comportamento';

  @override
  String get generalSectionSecurity => 'Segurança';

  @override
  String get generalSectionPrivacy => 'Privacidade';

  @override
  String get secPlayerPlayback =>
      'Velocidade padrão, reprodução automática, ajuste de vídeo, orientação e imagem em imagem';

  @override
  String get secPlayerSkip =>
      'Pule aberturas, finais e recapitulações automaticamente';

  @override
  String get secPlayerControls =>
      'Deslize, segure e toque nos gestos e busque a visualização';

  @override
  String get secPlayerSubtitles =>
      'Idiomas, aparência e renderização de legendas';

  @override
  String get secPlayerShaders => 'Upscaling de anime e seus próprios shaders';

  @override
  String get secPlayerEngine =>
      'Decodificador, saída de vídeo e áudio, buffer. Altere-os apenas se a reprodução tiver problemas';

  @override
  String get secPlayerMpv => 'mpv.conf, scripts e ajuste avançado';

  @override
  String get secAnimeList =>
      'Episódios de preenchimento e miniaturas não assistidas';

  @override
  String get secProgress =>
      'Quando o progresso assistido ou lido é salvo na sua lista';

  @override
  String get secAnimeDetails =>
      'De onde vêm os títulos dos episódios, miniaturas e resumos';

  @override
  String get secReaderReading =>
      'Modo de leitura, virada de página, zoom e próximo capítulo';

  @override
  String get secReaderControls =>
      'Toque em zonas, teclas de volume e rolagem automática';

  @override
  String get secReaderDisplay =>
      'Plano de fundo, brilho, tela cheia e número de página';

  @override
  String get secNovelText =>
      'Fonte, tamanho, espaçamento, margens e virada de página';

  @override
  String get secNovelTranslate => 'Traduza capítulos enquanto você lê';

  @override
  String get secNovelSpeech => 'Voz, velocidade e tom para leitura em voz alta';

  @override
  String get secNotifyAbout =>
      'Escolha quais tipos de atividade enviam um alerta';

  @override
  String get layoutTitle => 'Disposição';

  @override
  String get layoutDesc => 'Escolha, mova e oculte os botões nas barras';

  @override
  String get layoutHint =>
      'Arraste um botão para movê-lo (mantenha pressionado primeiro na tela sensível ao toque). Toque em um para cortar, mover ou ocultar';

  @override
  String layoutDropInto(String zone) {
    return 'Entre: $zone';
  }

  @override
  String layoutCutting(String name) {
    return 'Movendo $name. Pressione um botão colar para colocá-lo';
  }

  @override
  String get layoutTitleFixed => 'Título';

  @override
  String get layoutZoneTopStart => 'Barra superior, antes do título';

  @override
  String get layoutZoneTopEnd => 'Barra superior, após o título';

  @override
  String get layoutZoneBottomStart => 'Barra inferior, esquerda';

  @override
  String get layoutZoneBottomEnd => 'Barra inferior, direita';

  @override
  String get layoutZoneSecondRow =>
      'Oculto: segunda linha na visualização normal';

  @override
  String get layoutZoneOverflow => 'Oculto: no menu mais';

  @override
  String get layoutEmptyZone => 'Solte os botões aqui';

  @override
  String get layoutCut => 'Cortar';

  @override
  String get layoutPaste => 'Cole aqui';

  @override
  String get layoutHide => 'Esconder';

  @override
  String layoutMoveTo(String zone) {
    return 'Mover para $zone';
  }

  @override
  String get layoutReset => 'Redefinir para o padrão';

  @override
  String get layoutMore => 'Mais';

  @override
  String get sourceWhyAction => 'Por que não há alerta?';

  @override
  String get sourceWhyStatus => 'Estado';

  @override
  String get sourceWhyLastCheck => 'Última verificação';

  @override
  String get sourceWhyNever => 'Ainda não';

  @override
  String get sourceWhyNextCheck => 'Próxima verificação';

  @override
  String get sourceWhyNewest => 'O mais novo na fonte';

  @override
  String get sourceWhyProgress => 'Seu progresso';

  @override
  String get sourceWhyListStatus => 'Status da lista';

  @override
  String get sourceWhyFailures => 'Falha nas verificações consecutivas';

  @override
  String get sourceWhyLastRelease => 'Último novo lançamento visto';

  @override
  String get sourceWhyVerdictNew =>
      'Uma nova versão aparece aqui assim que a fonte a lista e a próxima verificação é executada.';

  @override
  String get sourceWhyVerdictAhead =>
      'A fonte já está à frente do seu progresso, então você foi informado sobre isso uma vez. Leia ou fique atento para receber o próximo alerta.';

  @override
  String get sourceWhyVerdictSkipped =>
      'Este título é ignorado pelas regras acima. Altere-os nas configurações de notificação ou use Verificar agora para executá-lo mesmo assim.';

  @override
  String get sourceWhyVerdictBroken =>
      'A fonte não pode ser alcançada ou foi removida, portanto nada está sendo verificado.';

  @override
  String get sourceWhyVerdictMuted => 'Esta assinatura está silenciada.';

  @override
  String get externalPlayerTitle => 'Abrir stream em outro lugar';

  @override
  String get externalCopyUrl => 'Copiar link da transmissão';

  @override
  String get externalCopied => 'Link da transmissão copiado';

  @override
  String get externalChooser => 'Abra em outro aplicativo';

  @override
  String get externalVlc => 'Abrir no VLC';

  @override
  String get externalMpv => 'Abrir em mpv';

  @override
  String get externalWebVideoCast => 'Elenco de vídeo da web';

  @override
  String get castViaAppHint =>
      'Envie o stream para o aplicativo Web Video Cast';

  @override
  String get externalFailed =>
      'Não foi possível abrir o stream. O reprodutor está instalado?';

  @override
  String get addonInstalled => 'Instalado';

  @override
  String get loadFailedActivity => 'Não foi possível carregar a atividade';

  @override
  String get loadFailedFavourites =>
      'Não foi possível carregar os favoritos. Tentar novamente';

  @override
  String get loadFailedStats => 'Não foi possível carregar as estatísticas';

  @override
  String get loadFailedReplies => 'Não foi possível carregar as respostas';

  @override
  String get cantBeUndone => 'Isso não pode ser desfeito.';

  @override
  String get searchTags => 'Tags de pesquisa';

  @override
  String get spoilerTapToView => 'Spoiler, toque para ver';

  @override
  String get mediaVideo => 'Vídeo';

  @override
  String get notificationSomeone => 'Alguém';

  @override
  String get notificationATitle => 'um título';

  @override
  String get notificationAddedDetail => 'Foi adicionado ao AniList';

  @override
  String get updateNoReleases => 'Nenhum lançamento encontrado';

  @override
  String get updateInvalidResponse => 'Resposta de atualização inválida';

  @override
  String get commentsRateLimited => 'Taxa limitada';

  @override
  String get commentsConnectFailed => 'Falha ao conectar';

  @override
  String get dnsNoRecords => 'Nenhum registro A foi retornado';

  @override
  String get importTokenRejected => 'Token rejeitado';

  @override
  String get developerRoleLead => 'Desenvolvedor líder';

  @override
  String get developerRoleModerator => 'Moderador de discórdia';

  @override
  String extensionManagerTitle(String type) {
    return '$type gerente';
  }

  @override
  String extensionsOfType(String type) {
    return '$type extensões';
  }

  @override
  String extensionSettingsTitle(String name) {
    return 'Configurações $name';
  }

  @override
  String extensionNoSettings(String name) {
    return '$name não fornece nenhuma configuração.';
  }

  @override
  String notificationAired(String episode, String title) {
    return 'Episódio $episode de $title foi ao ar';
  }

  @override
  String notificationAiredDetail(String episode) {
    return 'Episódio $episode foi ao ar';
  }

  @override
  String notificationAdded(String title) {
    return '$title foi adicionado ao AniList';
  }

  @override
  String updateNotFound(String message) {
    return 'O servidor de atualização não conseguiu encontrar essa versão: $message';
  }

  @override
  String get installStepJre => 'Tempo de execução Java';

  @override
  String get installStepCore => 'Núcleo de tempo de execução';

  @override
  String installStepsProgress(int current, int total) {
    return 'Etapa $current de $total';
  }

  @override
  String get stepChecking => 'Verificando…';

  @override
  String get stepUpToDate => 'Atualizado';

  @override
  String stepUpToDateWith(String detail) {
    return 'Atualizado · $detail';
  }

  @override
  String get stepWillInstall => 'Será instalado';

  @override
  String get stepWillUpdate => 'Será atualizado';

  @override
  String stepWillUpdateTo(String version) {
    return 'Será atualizado para $version';
  }

  @override
  String get stepInstalled => 'Instalado';

  @override
  String get stepNotNeeded => 'Não é necessário aqui';

  @override
  String get stepFailed => 'Falha';

  @override
  String stepFailedWith(String reason) {
    return 'Falha: $reason';
  }

  @override
  String get installNeedsRuntime =>
      'Ele é executado no tempo de execução Java e no núcleo do tempo de execução compartilhado. Eles são instalados primeiro e atualizados se forem alterados.';

  @override
  String get installRuntimeNewer =>
      'O tempo de execução em que este gerenciador é executado tem uma atualização.';

  @override
  String get removeJvmTitle => 'Remover o tempo de execução Java?';

  @override
  String get removeJvmMessage =>
      'Os gerenciadores de extensões de desktop param de funcionar até serem instalados novamente. Ele será baixado novamente na próxima vez que você instalar ou abrir um.';

  @override
  String get runtimePreparing => 'Preparando o tempo de execução…';

  @override
  String get calendarAll => 'Todos';

  @override
  String get calendarAnime => 'Anime';

  @override
  String get calendarManga => 'Mangá';

  @override
  String get readerCloudflare => 'Abrir no navegador (verificação Cloudflare)';

  @override
  String get badgeBoardHint =>
      'Arraste um emblema para um canto do primeiro cartão ou arraste um emblema que já esteja nele para movê-lo. Os emblemas trocam de lugar, então nenhum se sobrepõe. Toque em um selo abaixo para ativá-lo ou desativá-lo.';

  @override
  String get unreadCounter => 'Contador não lido';

  @override
  String get settingsShortcuts => 'Atalhos de teclado';

  @override
  String get settingsShortcutsDesc => 'Veja, altere e desligue todas as teclas';

  @override
  String get shortcutGroupApp => 'Aplicativo';

  @override
  String get shortcutGroupPlayer => 'Reprodutor de vídeo';

  @override
  String get shortcutGroupReader => 'Leitor';

  @override
  String get shortcutsEnableApp => 'Atalhos de aplicativos';

  @override
  String get shortcutsEnablePlayer => 'Atalhos do jogador';

  @override
  String get shortcutsEnableReader => 'Atalhos do leitor';

  @override
  String get shortcutsEnableDesc =>
      'Ative ou desative todas as teclas deste grupo';

  @override
  String get shortcutNotSet => 'Não definido';

  @override
  String get shortcutAddKey => 'Adicionar uma chave';

  @override
  String get shortcutResetOne => 'Redefinir para o padrão';

  @override
  String get shortcutResetAll => 'Redefinir todos os atalhos';

  @override
  String get shortcutResetAllDesc =>
      'Coloque todas as chaves de volta ao seu padrão';

  @override
  String get shortcutPress => 'Pressione a tecla ou combinação desejada';

  @override
  String get shortcutPressHint =>
      'Cada combinação só pode pertencer a uma ação, portanto, realizar uma move-a.';

  @override
  String get shortcutSeekPercent => 'Ir para um ponto do vídeo';

  @override
  String get shortcutSeekPercentKeys => '0 – 9';

  @override
  String get shortcutAppBack => 'Volte';

  @override
  String get shortcutAppFullscreen => 'Alternar tela cheia';

  @override
  String get shortcutAppGlass => 'Alternar modo de vidro';

  @override
  String get shortcutAppMaterialYou => 'Alternar material para você';

  @override
  String get shortcutAppDark => 'Alternar modo escuro';

  @override
  String get shortcutAppOled => 'Alternar OLED preto';

  @override
  String get shortcutAppSearch => 'Abrir pesquisa';

  @override
  String get shortcutAppSettings => 'Abrir configurações';

  @override
  String get shortcutAppDownloads => 'Abrir downloads';

  @override
  String get shortcutAppNotifications => 'Abrir notificações';

  @override
  String get shortcutAppIncognito => 'Alternar modo anônimo';

  @override
  String get shortcutAppShortcuts => 'Mostrar atalhos de teclado';

  @override
  String get shortcutPlayerPlayPause => 'Reproduzir ou pausar';

  @override
  String get shortcutPlayerSeekForward => 'Procure avançar';

  @override
  String get shortcutPlayerSeekBack => 'Procure de volta';

  @override
  String get shortcutPlayerSeekForwardLong => 'Procure avançar 30 segundos';

  @override
  String get shortcutPlayerSeekBackLong => 'Procure voltar 30 segundos';

  @override
  String get shortcutPlayerFrameForward => 'Próximo quadro';

  @override
  String get shortcutPlayerFrameBack => 'Quadro anterior';

  @override
  String get shortcutPlayerVolumeUp => 'Aumentar o volume';

  @override
  String get shortcutPlayerVolumeDown => 'Diminuir volume';

  @override
  String get shortcutPlayerMute => 'Mudo';

  @override
  String get shortcutPlayerFullscreen => 'Tela cheia';

  @override
  String get shortcutPlayerNext => 'Próximo episódio';

  @override
  String get shortcutPlayerPrevious => 'Episódio anterior';

  @override
  String get shortcutPlayerSkip => 'Pular introdução ou final';

  @override
  String get shortcutPlayerPanel => 'Lista de episódios';

  @override
  String get shortcutPlayerSpeedUp => 'Reprodução mais rápida';

  @override
  String get shortcutPlayerSpeedDown => 'Reprodução mais lenta';

  @override
  String get shortcutPlayerSpeedReset => 'Velocidade normal';

  @override
  String get shortcutPlayerSubtitleToggle => 'Legendas ativadas ou desativadas';

  @override
  String get shortcutPlayerSubtitleCycle => 'Próxima faixa de legenda';

  @override
  String get shortcutPlayerAudioCycle => 'Próxima faixa de áudio';

  @override
  String get shortcutPlayerStreamCycle => 'Próxima transmissão';

  @override
  String get shortcutPlayerFit => 'Alterar ajuste do vídeo';

  @override
  String get shortcutReaderRight => 'Página à direita';

  @override
  String get shortcutReaderLeft => 'Página à esquerda';

  @override
  String get shortcutReaderNextPage => 'Próxima página';

  @override
  String get shortcutReaderPreviousPage => 'Página anterior';

  @override
  String get shortcutReaderControls => 'Mostrar ou ocultar controles';

  @override
  String get shortcutReaderNextChapter => 'Próximo capítulo';

  @override
  String get shortcutReaderPreviousChapter => 'Capítulo anterior';

  @override
  String shortcutTaken(String action) {
    return 'Retirado de $action';
  }

  @override
  String get incognitoTurnedOn => 'Modo de navegação anônima ativado';

  @override
  String get incognitoTurnedOff => 'Modo de navegação anônima desativado';

  @override
  String get onHoldAnime => 'Em espera anime';

  @override
  String get onHoldManga => 'Mangá em espera';

  @override
  String get droppedAnime => 'Anime descartado';

  @override
  String get droppedManga => 'Mangá descartado';

  @override
  String get generalSectionDesktop => 'Área de trabalho';

  @override
  String get closeAction => 'Quando a janela está fechada';

  @override
  String get closeActionQuit => 'Saia do aplicativo';

  @override
  String get closeActionWhenBusy =>
      'Continue correndo na bandeja enquanto algo está sendo executado';

  @override
  String get closeActionAlways => 'Continue sempre correndo na bandeja';

  @override
  String get gamepadNav => 'Navegação do gamepad';

  @override
  String get gamepadNavDesc =>
      'Mova-se pelo aplicativo e controle o jogador com um controlador de jogo';

  @override
  String get trayShow => 'Mostrar Dartotsu';

  @override
  String get trayQuit => 'Sair';

  @override
  String get trayIdle => 'Nada funcionando';

  @override
  String trayDownloading(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Baixando itens $count',
      one: 'Baixando item $count',
    );
    return '$_temp0';
  }

  @override
  String get traySyncing => 'Sincronizando suas listas';

  @override
  String get trayUpdating => 'Atualizando o aplicativo';

  @override
  String get trayPlaying => 'Brincando em uma pequena janela';

  @override
  String get traySearch => 'Pesquisar';

  @override
  String get trayPauseDownloads => 'Pausar downloads';

  @override
  String get trayResumeDownloads => 'Retomar downloads';

  @override
  String get playerDownloadTitle => 'Baixando o player';

  @override
  String get playerDownloadBody =>
      'Dartotsu busca seu mecanismo de vídeo uma vez. A reprodução começa assim que estiver pronta.';

  @override
  String get playerDownloadStarting => 'Iniciando o download…';

  @override
  String get playerDownloadFailedTitle => 'Não foi possível obter o jogador';

  @override
  String get playerDownloadFailedBody =>
      'Verifique sua conexão e tente novamente. O download continua de onde parou.';

  @override
  String get playerDownloadRetry => 'Tente novamente';

  @override
  String get playerDownloadCopy => 'Copiar detalhes';

  @override
  String get removePlayerTitle => 'Remover o jogador?';

  @override
  String get removePlayerMessage =>
      'Os vídeos não podem ser reproduzidos até que o player seja baixado novamente.';

  @override
  String get trailerFailed =>
      'Não foi possível reproduzir o trailer aqui, abrindo-o no navegador';
}

/// The translations for Portuguese, as used in Brazil (`pt_BR`).
class AppLocalizationsPtBr extends AppLocalizationsPt {
  AppLocalizationsPtBr() : super('pt_BR');

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline => 'O NOVO melhor app pra\nacompanhar anime e mangá';

  @override
  String get anilist => 'AniList';

  @override
  String get mal => 'MyAnimeList';

  @override
  String get simkl => 'Simkl';

  @override
  String get trakt => 'Trakt';

  @override
  String get kitsu => 'Kitsu';

  @override
  String get comick => 'Comick';

  @override
  String get mangaBaka => 'MangaBaka';

  @override
  String get mangaUpdates => 'MangaUpdates';

  @override
  String get discord => 'Discord';

  @override
  String get loadMore => 'Carregar mais';

  @override
  String get login => 'Entrar';

  @override
  String get continueAsGuest => 'Continuar como visitante';

  @override
  String get getStarted => 'Começar';

  @override
  String get loginWithToken => 'Entrar com token';

  @override
  String get pasteTokenHint => 'Cole seu token de acesso';

  @override
  String loginTo(String service) {
    return 'Entrar no $service';
  }

  @override
  String get settings => 'Configurações';

  @override
  String get account => 'Conta';

  @override
  String get about => 'Sobre';

  @override
  String get language => 'Idioma';

  @override
  String get animationSpeed => 'Animações';

  @override
  String get animationSpeedDesc =>
      'Velocidade das transições e dos efeitos de entrada no app';

  @override
  String get animationSpeedOff => 'Desligado';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Extensões',
      one: 'Extensão',
    );
    return '$_temp0';
  }

  @override
  String get unknownSource => 'Fonte desconhecida';

  @override
  String get install => 'Instalar';

  @override
  String get update => 'Atualizar';

  @override
  String get uninstall => 'Desinstalar';

  @override
  String get updateInstallCancelled =>
      'Instalação cancelada. Se o Android disse que o app conflita com o instalado, a assinatura é diferente: desinstale a versão atual primeiro e depois instale a atualização';

  @override
  String updateInstallFailed(String error) {
    return 'A atualização falhou: $error';
  }

  @override
  String get appLock => 'Bloqueio do app';

  @override
  String get appLockDesc =>
      'Pede um código quando você abre o app ou volta pra ele depois de um tempo';

  @override
  String get appLockBiometric => 'Desbloqueie com biometria';

  @override
  String get appLockBiometricDesc =>
      'Use sua impressão digital ou rosto em vez de digitar a senha';

  @override
  String get appLockBiometricReason => 'Desbloquear Dartotsu';

  @override
  String get appLockDelay => 'Bloquear quando ocioso';

  @override
  String get appLockDelayAlways => 'Sempre';

  @override
  String get appLockDelayNever => 'Nunca';

  @override
  String appLockDelayAfter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minutos',
      one: '1 minuto',
    );
    return 'Depois $_temp0';
  }

  @override
  String get appLockUseBiometric => 'Use biometria';

  @override
  String get appLockUnlock => 'Digite seu código';

  @override
  String get appLockWrong => 'Código errado';

  @override
  String appLockWait(String seconds) {
    return 'Muitas tentativas, espere ${seconds}s';
  }

  @override
  String get appLockNew => 'Escolha um código';

  @override
  String get appLockNewHint => 'De 4 a 8 dígitos';

  @override
  String get appLockConfirm => 'Digite de novo';

  @override
  String get appLockMismatch => 'Os códigos não batem';

  @override
  String get appLockOn => 'Código definido';

  @override
  String get appLockRemoveTitle => 'Digite seu código pra desativar o bloqueio';

  @override
  String get installFailed => 'Falha ao instalar';

  @override
  String get updateFailed => 'Falha ao atualizar';

  @override
  String extensionUpdates(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count atualizações disponíveis',
      one: '1 atualização disponível',
    );
    return '$_temp0';
  }

  @override
  String get updateAll => 'Atualizar tudo';

  @override
  String extensionsUpdated(int done, int total) {
    return '$done de $total extensões atualizadas';
  }

  @override
  String get updateConflictTitle => 'Atualização não instalada';

  @override
  String updateConflictBody(String names) {
    return '$names não pôde ser instalado sobre a versão existente. Isso geralmente significa que a cópia instalada foi assinada de forma diferente. Desinstalá-lo e instalar a nova versão?';
  }

  @override
  String get updateConflictAction => 'Desinstalar e reinstalar';

  @override
  String get noSourceSettings => 'A fonte não tem configurações';

  @override
  String get addPluginRepository => 'Adicionar repositório de plugins';

  @override
  String get pluginIndexUrlHint => 'URL do índice de plugins';

  @override
  String get addRepository => 'Adicionar repositório';

  @override
  String get importRepositoryFile => 'Importar um arquivo';

  @override
  String get pluginRepoUpdated => 'Repositório de plugins atualizado';

  @override
  String get pluginRepoUpdateFailed =>
      'Falha ao atualizar o repositório de plugins';

  @override
  String get ok => 'OK';

  @override
  String get cancel => 'Cancelar';

  @override
  String get yes => 'Sim';

  @override
  String get no => 'Não';

  @override
  String get save => 'Salvar';

  @override
  String get reset => 'Redefinir';

  @override
  String get clear => 'Limpar';

  @override
  String get test => 'Testar';

  @override
  String get testing => 'Testando…';

  @override
  String get resolving => 'Resolvendo…';

  @override
  String get none => 'Nenhum';

  @override
  String get selectMediaService => 'Escolher serviço de mídia';

  @override
  String get manageServices => 'Serviços de mídia';

  @override
  String get manageServicesDesc =>
      'Reordene os serviços e escolha quais serão exibidos no seletor';

  @override
  String get manageServicesHint =>
      'Arraste para reordenar, desligue aqueles que você não usa';

  @override
  String get pickColor => 'Escolha uma cor';

  @override
  String get colorPickerCustom => 'Personalizado';

  @override
  String get colorPickerTransparent => 'Transparente';

  @override
  String get ltr => 'Da esquerda pra direita';

  @override
  String get searchSettings => 'Buscar configurações';

  @override
  String nothingMatches(String query) {
    return 'Nada encontrado pra \"$query\"';
  }

  @override
  String searchCategory(String category) {
    return 'Buscar em $category';
  }

  @override
  String get settingsAppearance => 'Aparência';

  @override
  String get settingsAppearanceDesc => 'Tema, cores, modo vidro';

  @override
  String get settingsGeneral => 'Geral';

  @override
  String get settingsGeneralDesc => 'Idioma e comportamento';

  @override
  String get settingsNetwork => 'Rede';

  @override
  String get settingsNetworkDesc => 'User agent, certificates, DNS and proxy';

  @override
  String get settingsAccountDesc => 'Serviço de acompanhamento e login';

  @override
  String get settingsUpdates => 'Atualizações';

  @override
  String get amoledBlack => 'Preto AMOLED';

  @override
  String get amoledBlackDesc => 'Superfícies totalmente pretas no modo escuro';

  @override
  String get glassMode => 'Modo vidro';

  @override
  String get glassModeDesc =>
      'Superfícies foscas sobre as capas da sua biblioteca';

  @override
  String get shelfFrame => 'Moldura em volta das seções';

  @override
  String get shelfFrameDesc =>
      'Mostra um cartão atrás de cada prateleira, ou deixa as linhas direto na página';

  @override
  String get settingsExtensionsDesc =>
      'Gerenciadores de fontes, repositórios e opções das extensões';

  @override
  String get settingsAddons => 'Complementos';

  @override
  String get customPath => 'Caminho de armazenamento personalizado';

  @override
  String get stories => 'Histórias';

  @override
  String get watchOrder => 'Assistir ordem';

  @override
  String get watchOrderOpenSite => 'Abra em chiaki.site';

  @override
  String get watchOrderUnavailable =>
      'Nenhuma ordem de exibição foi encontrada para este título';

  @override
  String get watchOrderOpenFailed => 'Não foi possível abrir esse título';

  @override
  String get watchOrderCurrent => 'Você está aqui';

  @override
  String get watchOrderCredit => 'Assista aos pedidos por chiaki.site';

  @override
  String get customPathDesc =>
      'Onde ficam os dados do app. Segure pra redefinir';

  @override
  String get selectDirectory => 'Selecionar pasta';

  @override
  String get differentCacheManager => 'Cache de imagens alternativo';

  @override
  String get differentCacheManagerDesc =>
      'Usa outro gerenciador de cache pras imagens';

  @override
  String get settingsSync => 'Configurações de sincronização';

  @override
  String get settingsSyncDesc =>
      'Mantenha suas configurações iguais em todos os dispositivos. Eles são armazenados em uma essência privada em sua conta GitHub';

  @override
  String get settingsSyncSwitch => 'Sincronizar na mudança';

  @override
  String get settingsSyncModeGithub => 'GitHub';

  @override
  String get settingsSyncSignIn => 'Faça login com GitHub';

  @override
  String get settingsSyncToken => 'Use um token de acesso pessoal';

  @override
  String get settingsSyncTokenDesc =>
      'Crie um em github.com/settings/tokens apenas com a permissão Gist';

  @override
  String get settingsSyncTokenField => 'Símbolo';

  @override
  String settingsSyncSignedIn(Object user) {
    return 'Conectado como $user';
  }

  @override
  String get settingsSyncSignOut => 'Sair';

  @override
  String get settingsSyncSignInFailed =>
      'Não foi possível fazer login no GitHub';

  @override
  String get dcSampleWatching => 'Assistindo';

  @override
  String get dcSampleReading => 'Lendo';

  @override
  String get dcSampleBrowsing => 'Navegando';

  @override
  String get dcSampleLive => 'Agora mesmo';

  @override
  String get dcLiveNothing =>
      'Nada está aparecendo agora. Abra um título, inicie um episódio ou capítulo e ele aparecerá aqui.';

  @override
  String get dcMemberList => 'Na lista de membros';

  @override
  String get dcSignOut => 'Sair';

  @override
  String get dcConnect => 'Conectar discórdia';

  @override
  String get dcConnectDesc =>
      'Abre a página de autorização do Discord e adiciona Dartotsu em Aplicativos Autorizados. Discord pede para atualizar sua presença. Apenas um token de atualização é salvo, não o token da sua conta.';

  @override
  String get dcConnectFailed => 'Não foi possível conectar o Discord';

  @override
  String get dcConnectedSnack => 'Discord conectado';

  @override
  String get dcDisconnect => 'Desconectar';

  @override
  String get dcDisconnectedSnack => 'Discord desconectado';

  @override
  String get dcUseToken => 'Use um token';

  @override
  String get dcRouteDesktop => 'Por meio do aplicativo Discord para desktop';

  @override
  String get dcRouteHeadless => 'Através da sua conta';

  @override
  String get dcRouteGateway => 'Através da sua conta, viva';

  @override
  String get dcRouteLinked => 'Aplicativo conectado';

  @override
  String get dcRouteNone => 'Não conectado';

  @override
  String get dcStatusNeedsToken =>
      'Precisa de um token Discord. Conectar o aplicativo não define seu status online.';

  @override
  String get dcAccountOnly => 'Precisa de uma conta conectada';

  @override
  String get dcStatusSection => 'Estado';

  @override
  String get dcControlStatus => 'Controlar meu status';

  @override
  String get dcControlStatusDesc =>
      'Mantém uma conexão ao vivo com o Discord enquanto o Rich Presence está ativado, para que o Dartotsu possa definir seu status.';

  @override
  String get dcStatusOnline => 'On-line';

  @override
  String get dcStatusIdle => 'Inativo';

  @override
  String get dcStatusDnd => 'Não perturbe';

  @override
  String get dcStatusInvisible => 'Invisível';

  @override
  String get dcCustomStatus => 'Status personalizado';

  @override
  String get dcCustomStatusHint => 'O que você está fazendo?';

  @override
  String get dcActivitySection => 'Atividade';

  @override
  String get dcShowWatching => 'Mostrar enquanto assiste';

  @override
  String get dcShowReading => 'Mostrar durante a leitura';

  @override
  String get dcListening => 'Audição';

  @override
  String get dcCompeting => 'Competindo';

  @override
  String get dcActivityName => 'Nome da atividade';

  @override
  String get dcNameApp => 'Dartotsu';

  @override
  String get dcNameTitle => 'Título';

  @override
  String get dcNameCustom => 'Personalizado';

  @override
  String get dcCustomNameHint => 'Nome mostrado após “Assistindo”';

  @override
  String get dcStatusText => 'Texto de status';

  @override
  String get dcStatusTextDesc =>
      'O que a lista de membros mostra ao lado do seu nome';

  @override
  String get dcDisplayName => 'Nome';

  @override
  String get dcDisplayState => 'Estado';

  @override
  String get dcDisplayDetails => 'Detalhes';

  @override
  String get dcTextSection => 'Texto';

  @override
  String get dcDetails => 'Linha superior';

  @override
  String get dcState => 'Resultado final';

  @override
  String get dcTemplateHint => 'Vazio usa o padrão';

  @override
  String get dcVariables => 'Toque para inserir um valor';

  @override
  String get dcImagesSection => 'Imagens';

  @override
  String get dcLargeImage => 'Imagem grande';

  @override
  String get dcLargeAuto => 'Auto';

  @override
  String get dcLargeCover => 'Cobrir';

  @override
  String get dcLargeLogo => 'Logotipo';

  @override
  String get dcSmallImage => 'Imagem pequena';

  @override
  String get dcSmallAuto => 'Logotipo';

  @override
  String get dcSmallNone => 'Nenhum';

  @override
  String get dcTimerStyle => 'Estilo do temporizador';

  @override
  String get dcTimerAuto => 'Automático';

  @override
  String get dcTimerElapsed => 'Decorrido';

  @override
  String get dcTimerRemaining => 'Restante';

  @override
  String get dcButtonsSection => 'Botões';

  @override
  String get dcButtonMedia => 'Link para o título';

  @override
  String get dcButtonApp => 'Link para Dartotsu';

  @override
  String get dcButtonCustom => 'Botão personalizado';

  @override
  String get dcButtonLabel => 'Etiqueta';

  @override
  String get dcButtonUrl => 'Ligação';

  @override
  String get dcPrivacySection => 'Privacidade';

  @override
  String get dcPrivateText => 'Texto privado';

  @override
  String get dcPrivateHint => 'Algo privado';

  @override
  String get dcTokenWarning =>
      'O login usa o token da sua conta. As regras do Discord desencorajam isso, então use por sua própria conta e risco.';

  @override
  String get dcConnected => 'Conectado';

  @override
  String get dcConnection => 'Conexão';

  @override
  String get dcMethodDesktop => 'Aplicativo de desktop Discord';

  @override
  String get dcMethodDesktopDesc =>
      'Usado automaticamente quando nada mais está conectado. O Discord deve estar aberto neste computador.';

  @override
  String get dcMethodToken => 'Token de conta';

  @override
  String get dcInUse => 'Em uso';

  @override
  String get dcRecommended => 'Recomendado';

  @override
  String dcSignedInAs(String name) {
    return 'Conectado como $name';
  }

  @override
  String get settingsSyncOn => 'Ligado';

  @override
  String get settingsSyncCustom => 'Personalizado';

  @override
  String get settingsSyncChangedHeader => 'Configurações alteradas';

  @override
  String get settingsSyncNoneChanged =>
      'Você ainda não alterou nada disso, então não há nada para sincronizar.';

  @override
  String get settingsSyncChangedOnly =>
      'Somente as configurações que você alterou serão armazenadas. Todo o resto usa seu padrão em todos os dispositivos. O ícone da nuvem mostra o que já está no servidor.';

  @override
  String get settingsSyncOffCategory =>
      'Não sincronizando. Eles permanecem neste dispositivo e a cópia do servidor é deixada como está.';

  @override
  String get settingsSyncPartsNote =>
      'Por dispositivo. Desligado mantém o valor de cada dispositivo, portanto, um telefone e uma TV podem ser diferentes.';

  @override
  String get settingsSyncPartSubtitles => 'Tamanho e cores da legenda';

  @override
  String get settingsSyncPartSubtitlesDesc => 'Tamanho, peso, cores e posição';

  @override
  String get settingsSyncPartPictureColors => 'Cores da imagem';

  @override
  String get settingsSyncPartPictureColorsDesc =>
      'Brilho, contraste, saturação, gama, matiz e HDR';

  @override
  String get settingsSyncPartPalette => 'Cores do tema';

  @override
  String get settingsSyncPartPaletteDesc =>
      'Tema, cor de destaque e preto OLED';

  @override
  String get settingsSyncCatOther => 'Assistir, ler e serviços';

  @override
  String get settingsSyncTitles => 'Observe o progresso e os títulos';

  @override
  String settingsSyncTitlesCount(Object records, Object resume) {
    return '$records títulos e $resume resumem entradas no servidor';
  }

  @override
  String get settingsSyncTitlesNone => 'Nada carregado ainda';

  @override
  String get settingsSyncTitlesNote =>
      'Assista e leia as posições, a estante de currículos, suas listas locais, marcadores, destaques e opções por título. As correspondências e streams de origem permanecem em cada dispositivo porque dependem de suas extensões. Os títulos são carregados no máximo a cada 45 segundos.';

  @override
  String get settingsSyncConnect => 'Não conectado';

  @override
  String get settingsSyncConnectDesc =>
      'Faça login no GitHub para manter suas configurações iguais em todos os dispositivos.';

  @override
  String get settingsSyncFailedTitle => 'Falha na sincronização';

  @override
  String get settingsSyncPaused => 'Pausado';

  @override
  String get settingsSyncPausedDesc =>
      'Nada é carregado ou baixado enquanto esta opção estiver desativada.';

  @override
  String get settingsSyncUpToDate => 'Atualizado';

  @override
  String get settingsSyncRetry => 'Tentar novamente';

  @override
  String get settingsSyncAccount => 'Conta GitHub';

  @override
  String get settingsSyncAccountDesc =>
      'Seus dados vão para uma essência privada em sua própria conta.';

  @override
  String get settingsSyncWaiting => 'Esperando sua aprovação no GitHub';

  @override
  String get settingsSyncCopyCode => 'Toque no código para copiá-lo';

  @override
  String get settingsSyncCancel => 'Cancelar';

  @override
  String get settingsSyncStatSettings => 'Configurações';

  @override
  String get settingsSyncStatTitles => 'Títulos';

  @override
  String get settingsSyncStatShelf => 'Currículo';

  @override
  String settingsSyncUploaded(Object time, Object device) {
    return 'Carregado $time de $device';
  }

  @override
  String settingsSyncChanged(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count alterado',
      one: '1 mudou',
      zero: 'Nada mudou ainda',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncSecrets => 'Contas e senhas';

  @override
  String get settingsSyncSecretsDesc =>
      'Sincronize seus logins (AniList, MAL, Kitsu, Simkl, MangaBaka, MangaUpdates), chaves de API e bloqueio de aplicativos entre seus dispositivos. Eles são criptografados com uma senha que permanece em seus dispositivos, para que o GitHub nunca os veja.';

  @override
  String get settingsSyncSecretsOn =>
      'As contas são sincronizadas e criptografadas';

  @override
  String get settingsSyncSecretsOnDesc =>
      'Sair de um dispositivo não significa desconectar você dos outros.';

  @override
  String get settingsSyncSecretsBroken =>
      'A senha não corresponde mais à do servidor. Digite-o novamente para continuar sincronizando as contas.';

  @override
  String get settingsSyncPassphraseSet => 'Defina uma senha';

  @override
  String get settingsSyncPassphraseEnter => 'Digite sua senha';

  @override
  String get settingsSyncPassphraseField => 'Senha';

  @override
  String get settingsSyncPassphraseConfirm => 'Repita a senha';

  @override
  String get settingsSyncPassphraseNew =>
      'Escolha uma senha de pelo menos 6 caracteres. Ele não é armazenado em nenhum lugar além de seus dispositivos e não pode ser recuperado. Se você esquecer, exclua a cópia do servidor e comece novamente.';

  @override
  String get settingsSyncPassphraseExisting =>
      'Digite a senha que você escolheu no outro dispositivo. As contas neste dispositivo serão substituídas pelas contas sincronizadas.';

  @override
  String get settingsSyncPassphraseWrong => 'Senha errada';

  @override
  String get settingsSyncPassphraseMismatch => 'As senhas não correspondem';

  @override
  String get settingsSyncPassphraseShort => 'Use pelo menos 6 caracteres';

  @override
  String get settingsSyncSecretsStop => 'Pare de sincronizar contas';

  @override
  String get settingsSyncSecretsDelete => 'Excluir do GitHub';

  @override
  String get settingsSyncSecretsDeleteMessage =>
      'Isso remove o arquivo de contas criptografadas da sua essência. Outros dispositivos mantêm seus logins e podem definir uma nova senha.';

  @override
  String get settingsSyncWhat => 'O que sincronizar';

  @override
  String get settingsSyncServerEmpty => 'Nada carregado ainda';

  @override
  String get settingsSyncThisDevice => 'este dispositivo';

  @override
  String settingsSyncCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Configurações $count no servidor',
      one: '1 configuração no servidor',
      zero: 'Nada no servidor',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncNow => 'Sincronize agora';

  @override
  String get settingsSyncRunning => 'Sincronizando…';

  @override
  String get settingsSyncNever => 'Ainda não sincronizado';

  @override
  String settingsSyncLast(Object time) {
    return 'Última sincronização $time';
  }

  @override
  String get settingsSyncScope =>
      'Somente as configurações que funcionam da mesma forma em todos os lugares são sincronizadas. Contas, tokens, pastas, extensões, notificações, Discord, atualizações e tamanho da janela permanecem em cada dispositivo.';

  @override
  String get backupAndRestore => 'Backup e restauração';

  @override
  String get backupAndRestoreDesc => 'Salve ou carregue suas preferências';

  @override
  String get backup => 'Cópia de segurança';

  @override
  String get restore => 'Restaurar';

  @override
  String get loadExtensionsIcon => 'Carregar ícones das extensões';

  @override
  String get autoUpdateRuntimes =>
      'Atualizar tempos de execução de extensão automaticamente';

  @override
  String get autoUpdateRuntimesDesc =>
      'Baixe o novo Aniyomi, CloudStream e outras versões de tempo de execução em segundo plano. Desativado, um ícone de atualização aparece ao lado do gerenciador.';

  @override
  String get loadExtensionsIconDesc =>
      'Mostra os ícones das fontes nas listas de extensões';

  @override
  String get sectionStorage => 'Armazenamento';

  @override
  String get sectionManagers => 'Gerenciadores';

  @override
  String get sectionOptions => 'Opções';

  @override
  String get backupTabBackup => 'Fazer backup';

  @override
  String get backupTabRestore => 'Restaurar';

  @override
  String backupSummary(Object keys, Object categories) {
    return '$keys configurações em $categories categorias';
  }

  @override
  String backupLastBackup(Object time) {
    return 'Último backup $time';
  }

  @override
  String get backupNever => 'Nenhum backup ainda';

  @override
  String get backupSelectAll => 'Selecionar tudo';

  @override
  String get backupClearAll => 'Limpar';

  @override
  String backupKeys(Object count) {
    return '$count configurações';
  }

  @override
  String get backupPasswordRequired =>
      'Senha (obrigatória para dados da conta)';

  @override
  String get backupProtectedNeedsPassword =>
      'Defina uma senha para fazer backup dos dados da conta ou desmarque-a';

  @override
  String get backupProtectedSkipped =>
      'Este backup não tem senha, então os dados da conta foram ignorados';

  @override
  String get backupPassword => 'Senha (opcional)';

  @override
  String get backupPasswordHint => 'Deixe vazio pra usar a padrão';

  @override
  String get backupSensitive =>
      'Inclui tokens de login. Mantenha esse arquivo privado';

  @override
  String get backupCreate => 'Criar backup';

  @override
  String backupSaved(Object name) {
    return 'Backup salvo em $name';
  }

  @override
  String backupFailed(Object error) {
    return 'Falha no backup: $error';
  }

  @override
  String get backupPickFile => 'Escolha um arquivo de backup';

  @override
  String get backupPickFileDesc =>
      'Escolha um arquivo .json feito pelo Dartotsu';

  @override
  String get backupChooseAnother => 'Escolher outro arquivo';

  @override
  String get backupCreatedAt => 'Criado';

  @override
  String get backupAppVersion => 'Versão do app';

  @override
  String get backupDevice => 'Dispositivo';

  @override
  String get backupAccounts => 'Contas';

  @override
  String get backupSize => 'Tamanho';

  @override
  String get backupEncrypted => 'Protegido por senha';

  @override
  String get backupUnlock => 'Desbloquear';

  @override
  String get backupWrongPassword =>
      'Não consegui ler esse arquivo. Confira a senha';

  @override
  String get backupRestoreSelected => 'Restaurar selecionados';

  @override
  String backupRestoreConfirm(Object count) {
    return 'Restaurar $count configurações? Os valores existentes nessas categorias serão sobrescritos.';
  }

  @override
  String get backupRestored => 'Restaurado. Reinicie o app pra aplicar tudo';

  @override
  String backupRestoreFailed(Object error) {
    return 'Falha na restauração: $error';
  }

  @override
  String get backupSelectOne => 'Selecione pelo menos uma categoria';

  @override
  String get backupCatTheme => 'Aparência';

  @override
  String get backupCatThemeDesc =>
      'Tema, cores, vidro, fontes e estilo dos cartões';

  @override
  String get backupCatCommon => 'Geral';

  @override
  String get backupCatCommonDesc =>
      'Idioma, armazenamento, rede e opções das extensões';

  @override
  String get backupCatPlayer => 'Jogador';

  @override
  String get backupCatPlayerDesc => 'Preferências do player';

  @override
  String get backupCatReader => 'Leitor';

  @override
  String get backupCatReaderDesc => 'Preferências do leitor';

  @override
  String get backupCatProtected => 'Contas';

  @override
  String get backupCatProtectedDesc => 'Tokens de login e dados de sessão';

  @override
  String get backupCatOther => 'Serviços e feeds';

  @override
  String get backupCatOtherDesc =>
      'Layout dos feeds, listas e opções dos serviços';

  @override
  String get logFile => 'Arquivo de log';

  @override
  String get logFileDesc =>
      'Compartilhe o log do app ou copie o caminho no Linux';

  @override
  String get logDelete => 'Excluir arquivos de log';

  @override
  String get logDeleteDesc =>
      'Limpe os logs de aplicativos salvos para liberar espaço';

  @override
  String logDeleted(String size) {
    return 'Excluído $size dos registros';
  }

  @override
  String get missingSequel => 'Sequela perdida';

  @override
  String get rising => 'Ascendente';

  @override
  String get stacks => 'Pilhas';

  @override
  String get stacksAll => 'Todos';

  @override
  String get stacksFeatured => 'Destaque';

  @override
  String get stacksMine => 'Seu';

  @override
  String get stacksSaved => 'Salvo';

  @override
  String get stacksFollowing => 'Seguindo';

  @override
  String get stacksEmpty => 'Nenhuma pilha aqui ainda';

  @override
  String get stacksSignIn => 'Faça login no MangaBaka para ver suas pilhas';

  @override
  String get stacksScopeNeeded =>
      'Suas pilhas precisam de uma nova permissão. Faça login no MangaBaka novamente para permitir.';

  @override
  String get stacksSignInAgain => 'Faça login novamente';

  @override
  String get stacksCouldntLoad => 'Não foi possível carregar as pilhas';

  @override
  String stackSeriesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Série $count',
      one: '1 série',
    );
    return '$_temp0';
  }

  @override
  String stackSavesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count salva',
      one: '1 salvar',
    );
    return '$_temp0';
  }

  @override
  String stackBy(String name) {
    return 'por $name';
  }

  @override
  String get stackSpoilers => 'Spoilers';

  @override
  String get stackEmptyEntries => 'Esta pilha está vazia';

  @override
  String get stackSave => 'Salvar pilha';

  @override
  String get stackUnsave => 'Remover dos salvos';

  @override
  String get stackSavedToast => 'Salvo em suas pilhas';

  @override
  String get stackRemovedToast => 'Removido das suas pilhas salvas';

  @override
  String userStacks(String name) {
    return 'Pilhas por $name';
  }

  @override
  String get newsTitle => 'Notícias';

  @override
  String get newsEmpty => 'Nenhuma notícia agora';

  @override
  String get newsCouldntLoad => 'Não foi possível carregar as notícias';

  @override
  String get logFileCopied => 'Caminho do log copiado';

  @override
  String get donateSheetTitle => 'Curtindo o Dartotsu?';

  @override
  String get donateSheetMessage =>
      'O Dartotsu é feito e mantido por uma pessoa só. Se ele é útil pra você, pense em apoiar o desenvolvimento.';

  @override
  String get donateLater => 'Talvez depois';

  @override
  String get glassBackground => 'Fundo de vidro';

  @override
  String get glassBackgroundDesc =>
      'O banner do seu perfil, a menos que você defina um link de imagem';

  @override
  String get glassBackgroundHint =>
      'Link da imagem (deixe vazio pra usar seu banner)';

  @override
  String get followCover => 'Seguir a capa';

  @override
  String get followCoverDesc =>
      'As cores seguem o fundo e, nas páginas de detalhes, a capa';

  @override
  String get followCoverMediaOnly => 'Somente para mídia';

  @override
  String get followCoverMediaOnlyDesc =>
      'Siga apenas a capa nas páginas da mídia, em todos os outros lugares mantém as cores normais';

  @override
  String get cardStyle => 'Estilo dos cartões';

  @override
  String get cardStyleDesc => 'Posição do título, tamanho, progresso e selos';

  @override
  String get customFont => 'Fonte';

  @override
  String get customFontDesc =>
      'Padrão, um arquivo do seu dispositivo ou Google Fonts';

  @override
  String get customFontError => 'Não consegui carregar esse arquivo de fonte';

  @override
  String get googleFontError => 'Não consegui baixar essa fonte';

  @override
  String get yourFonts => 'Suas fontes';

  @override
  String get addFontFile => 'Adicionar arquivo de fonte…';

  @override
  String get browseGoogleFonts => 'Explorar Google Fonts…';

  @override
  String get searchGoogleFonts => 'Buscar no Google Fonts';

  @override
  String get defaultFont => 'Padrão';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDesc => 'Cor dinâmica do sistema';

  @override
  String get jsonTheme => 'Arquivo de tema personalizado';

  @override
  String get jsonThemeDesc =>
      'Cores ao vivo de ~/.config/dartotsu/theme.json (um script seu ou edições manuais)';

  @override
  String get themeMode => 'Modo do tema';

  @override
  String get mode => 'Modo';

  @override
  String get trackingService => 'Serviço de acompanhamento';

  @override
  String get signOut => 'Sair';

  @override
  String get signIn => 'Entrar';

  @override
  String get notSignedIn => 'Sem login';

  @override
  String signOutOf(String service) {
    return 'Sair do $service?';
  }

  @override
  String get checkForUpdates => 'Buscar atualizações';

  @override
  String get checkForUpdatesDesc =>
      'Avisar quando sair uma nova versão no GitHub';

  @override
  String get updateChannel => 'Canal de atualização';

  @override
  String get channel => 'Canal';

  @override
  String get stable => 'Estável';

  @override
  String get preRelease => 'Pré-lançamento';

  @override
  String get alpha => 'Alfa';

  @override
  String get checkNow => 'Verificar agora';

  @override
  String get userAgent => 'User-Agent';

  @override
  String get settingDefault => 'Padrão';

  @override
  String currentlyUsing(String value) {
    return 'Atual: $value';
  }

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

  @override
  String get dnsDefault => 'Padrão (Cloudflare)';

  @override
  String get proxy => 'Procurador';

  @override
  String get proxyProtocol => 'Tipo';

  @override
  String get proxyHost => 'Anfitrião';

  @override
  String get proxyPort => 'Porta';

  @override
  String get proxyUsername => 'Nome de usuário';

  @override
  String get proxyPassword => 'Senha';

  @override
  String get optional => 'Opcional';

  @override
  String get clearCookies => 'Limpar cookies';

  @override
  String get clearCookiesDesc => 'Remove todos os cookies salvos';

  @override
  String notImplementedArea(String area) {
    return '$area — em breve';
  }

  @override
  String notImplementedService(String service) {
    return 'O $service ainda não suporta isso.';
  }

  @override
  String get couldNotLoadResults => 'Não consegui carregar os resultados';

  @override
  String get updateCheckFailed => 'Não consegui verificar atualizações';

  @override
  String get highRefreshRate => 'Taxa de atualização alta';

  @override
  String get highRefreshRateDesc =>
      'Usa a maior taxa de atualização que a sua tela suporta';

  @override
  String get imageSave => 'Salvar imagem';

  @override
  String imageSavedTo(String path) {
    return 'Salvo em $path';
  }

  @override
  String get imageActionFailed => 'Não consegui baixar a imagem';

  @override
  String get imageTitleCover => 'Capa';

  @override
  String get imageTitlePage => 'Página';

  @override
  String get imageTitleBanner => 'Bandeira';

  @override
  String get imageTitleAvatar => 'Foto de perfil';

  @override
  String get verifyTls => 'Verificar certificados';

  @override
  String get verifyTlsDesc =>
      'Rejeita servidores com certificado HTTPS inválido. Desligue só pra uma fonte que usa um autoassinado';

  @override
  String get clearCookiesConfirm =>
      'Remover todos os cookies salvos? Isso pode deslogar você de algumas fontes.';

  @override
  String get version => 'Versão';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => 'Código, issues e releases';

  @override
  String get discordDesc => 'Comunidade e suporte';

  @override
  String get supportDeveloper => 'Apoie o desenvolvedor';

  @override
  String get buyMeCoffee => 'Compre-me um café';

  @override
  String get upiId => 'ID da UPI';

  @override
  String get upiCopied => 'ID UPI copiado';

  @override
  String get donateDesc => 'Apoiar o desenvolvimento';

  @override
  String get contributors => 'Colaboradores';

  @override
  String get contributorsDesc => 'As pessoas que construíram o Dartotsu';

  @override
  String get contributorsLoadFailed => 'Não consegui carregar os colaboradores';

  @override
  String get forks => 'Forks';

  @override
  String get forksDesc => 'Projetos feitos em cima do Dartotsu';

  @override
  String get forksEmpty => 'Nenhum fork encontrado';

  @override
  String get sectionColors => 'Cores';

  @override
  String get sectionDisplay => 'Tela';

  @override
  String get sectionStyle => 'Estilo';

  @override
  String get sectionCommunity => 'Comunidade';

  @override
  String get sectionAppInfo => 'Info do app';

  @override
  String get sectionRequests => 'Requisições';

  @override
  String get sectionDnsProxy => 'DNS e proxy';

  @override
  String get onboardingBack => 'Voltar';

  @override
  String get onboardingNext => 'Próximo';

  @override
  String get onboardingSkip => 'Pular';

  @override
  String get onboardingLanguageBody =>
      'Escolha o idioma em que o Dartotsu é mostrado. Você pode alterá-lo posteriormente em Configurações.';

  @override
  String get onboardingPaletteTitle => 'Deixe com a sua cara';

  @override
  String get onboardingPaletteBody =>
      'Escolha uma paleta. Todos os destaques, dos cartões ao player, seguem ela.';

  @override
  String get themeModeAuto => 'Automático';

  @override
  String get themeModeLight => 'Claro';

  @override
  String get themeModeDark => 'Escuro';

  @override
  String get onboardingSyncTitle => 'Sincronize sua biblioteca';

  @override
  String get onboardingSyncBody =>
      'Entre com o AniList pra trazer suas listas, progresso e notas. Ou pule e explore como visitante.';

  @override
  String get onboardingOpenLinks =>
      'Abrir links do AniList e de repositórios no Dartotsu';

  @override
  String get onboardingPermsTitle => 'Permissões';

  @override
  String get onboardingPermsBody =>
      'Libere agora pra downloads, atualizações e alertas funcionarem sem interrupção. Você pode mudar depois nas configurações do sistema.';

  @override
  String get permNotifications => 'Notificações';

  @override
  String get permNotificationsDesc =>
      'Progresso dos downloads, novos episódios e respostas';

  @override
  String get permStorage => 'Acesso a todos os arquivos';

  @override
  String get permStorageDesc => 'Salvar downloads na pasta pública do Dartotsu';

  @override
  String get permInstall => 'Instalar atualizações';

  @override
  String get permInstallDesc =>
      'Deixa o Dartotsu instalar as próprias atualizações';

  @override
  String get permBattery => 'Bateria sem restrições';

  @override
  String get permBatteryDesc =>
      'Mantém downloads longos rodando em segundo plano';

  @override
  String get permGrant => 'Permitir';

  @override
  String get linkOpenInApp => 'Abrir links no Dartotsu';

  @override
  String get linkOpenInAppDesc =>
      'Deixa os links do AniList e de repositórios abrirem o app';

  @override
  String get reviewsTitle => 'Comentários';

  @override
  String get reviewsEmpty => 'Nenhum review ainda';

  @override
  String get reviewsFailed => 'Não consegui carregar os reviews';

  @override
  String get reviewHelpfulQuestion => 'Esse review foi útil?';

  @override
  String get reviewVoteFailed => 'Não consegui salvar seu voto';

  @override
  String reviewHelpful(int n, int total) {
    return '$n de $total acharam isso útil';
  }

  @override
  String get calendarTitle => 'Calendário de exibição';

  @override
  String get calendarToday => 'Hoje';

  @override
  String get calendarEmpty => 'Nada vai ao ar nesse dia';

  @override
  String get calendarFailed => 'Não consegui carregar o calendário';

  @override
  String calendarChapter(int n) {
    return 'Capítulo $n';
  }

  @override
  String get calendarExpected => 'Esperado';

  @override
  String get castReceiverFailed => 'O Chromecast não iniciou seu player';

  @override
  String get castPlaybackFailed =>
      'O dispositivo não conseguiu reproduzir esta transmissão';

  @override
  String get shortcutNothingToContinue => 'Nada para continuar ainda';

  @override
  String shortcutNoCalendar(String service) {
    return '$service não tem calendário';
  }

  @override
  String calendarEpisode(int n) {
    return 'Episódio $n';
  }

  @override
  String get shareAnalytics => 'Compartilhar dados de uso anônimos';

  @override
  String get shareAnalyticsDesc =>
      'Contagem anônima de usuários e relatórios de falha. Sem conta nem dados pessoais';

  @override
  String get linkOpenAnilist => 'Abrir links do AniList no Dartotsu';

  @override
  String get linkOpenAnilistDesc =>
      'Ative o tratamento de links pra os links anilist.co abrirem o app';

  @override
  String get linkSettingsFailed =>
      'Não consegui abrir as configurações do sistema';

  @override
  String get discordRichPresence => 'Rich Presence';

  @override
  String get discordBrowsing => 'Mostrar atividade de navegação';

  @override
  String get discordBrowsingDesc =>
      'Mostra também a aba, página ou perfil que você está vendo, não só o que assiste ou lê.';

  @override
  String get discordActivityType => 'Tipo de atividade';

  @override
  String get discordActivityTypeDesc =>
      'Como o Discord escreve: \"Assistindo …\" ou \"Jogando …\". Auto usa Assistindo pra anime e Jogando pro resto.';

  @override
  String get discordWatching => 'Assistindo';

  @override
  String get discordPlaying => 'Jogando';

  @override
  String get discordCovers => 'Mostrar capas';

  @override
  String get discordCoversDesc => 'Capa e ícone do Dartotsu no cartão.';

  @override
  String get discordTimer => 'Mostrar timer';

  @override
  String get discordTimerDesc =>
      'Tempo decorrido ou restante embaixo do título.';

  @override
  String get discordButtons => 'Mostrar botões';

  @override
  String get discordButtonsDesc =>
      'Botões \"Ver anime / mangá\" e \"Abrir Dartotsu\".';

  @override
  String get discordHideTitles => 'Esconder títulos';

  @override
  String get discordHideTitlesDesc =>
      'Troca os nomes de anime e mangá (e a capa e o link) por \"Algo privado\".';

  @override
  String get listSearchHint => 'Buscar nessa lista';

  @override
  String get listSort => 'Ordenar';

  @override
  String get listFilter => 'Filtrar';

  @override
  String get listRandom => 'Título aleatório';

  @override
  String get listReverse => 'Inverter ordem';

  @override
  String get listSortDefault => 'Ordem da lista';

  @override
  String get listSortScore => 'Sua nota';

  @override
  String get listSortTitle => 'Título';

  @override
  String get listSortUpdated => 'Última atualização';

  @override
  String get listSortProgress => 'Progresso';

  @override
  String get listSortReleased => 'Data de lançamento';

  @override
  String get listSortAverage => 'Nota média';

  @override
  String get listFilterFormat => 'Formato';

  @override
  String get listFilterStatus => 'Estado';

  @override
  String get listFilterGenres => 'Gêneros';

  @override
  String get listFilterClear => 'Limpar filtros';

  @override
  String get listNoMatches => 'Nada nessa lista corresponde';

  @override
  String get discordLogin => 'Entrar no Discord';

  @override
  String get discordToken => 'Token do Discord';

  @override
  String get discordTokenSavedSnack => 'Token do Discord salvo';

  @override
  String get discordTokenRemovedSnack => 'Token do Discord removido';

  @override
  String get discordRichPresenceRow => 'Discord Rich Presence';

  @override
  String get discordRichPresenceRowOn => 'Ligado · toque pra mudar o visual';

  @override
  String get discordRichPresenceRowOff =>
      'Mostra o que você está fazendo no seu perfil do Discord';

  @override
  String get loginCancelled => 'Login cancelado';

  @override
  String get invalidToken => 'Token inválido';

  @override
  String loginFailed(String error) {
    return 'Falha no login: $error';
  }

  @override
  String get malLoginFailed => 'Falha no login do MyAnimeList';

  @override
  String get kitsuLoginFailed =>
      'Falha no login do Kitsu. Confira seu e-mail e senha.';

  @override
  String get kitsuLoginTitle => 'Entrar no Kitsu';

  @override
  String get emailOrUsername => 'E-mail ou nome de usuário';

  @override
  String get password => 'Senha';

  @override
  String get kitsuProfile => 'Perfil do Kitsu';

  @override
  String get mangaBakaLoginFailed => 'Falha no login do MangaBaka';

  @override
  String get comickLoginFailed => 'Falha no login do Comick';

  @override
  String get tagline => 'Slogan';

  @override
  String get trending => 'Tendências';

  @override
  String get anticipated => 'Antecipado';

  @override
  String get watchlist => 'Lista de observação';

  @override
  String get recommendedShows => 'Programas recomendados';

  @override
  String get recommendedMovies => 'Filmes recomendados';

  @override
  String get boxOffice => 'Bilheteria';

  @override
  String get popularMovies => 'Filmes populares';

  @override
  String get popularShows => 'Programas populares';

  @override
  String get anticipatedMovies => 'Filmes antecipados';

  @override
  String get anticipatedShows => 'Programas antecipados';

  @override
  String get trendingShows => 'Programas populares';

  @override
  String get mostWatchedThisWeek => 'Mais assistidos esta semana';

  @override
  String get sortMostViewed => 'Mais vistos';

  @override
  String get sortMostFollowed => 'Mais seguidos';

  @override
  String get sortLatestUpdates => 'Últimas atualizações';

  @override
  String get translationStatusLabel => 'Tradução';

  @override
  String get weeklySchedule => 'Programação Semanal';

  @override
  String get mostFollowed => 'Mais seguidos';

  @override
  String get latestUpdates => 'Últimas atualizações';

  @override
  String get trendingAnime => 'Tendências de animes';

  @override
  String get topRatedAnime => 'Animes mais bem avaliados';

  @override
  String get mostFollowedAnime => 'Animes mais seguidos';

  @override
  String get comickProfile => 'Perfil de quadrinhos';

  @override
  String get refreshFromComick => 'Atualizar do Comick';

  @override
  String get mangaBakaProfile => 'Perfil do MangaBaka';

  @override
  String get refreshFromMangaBaka => 'Atualizar do MangaBaka';

  @override
  String get mangaUpdatesLoginTitle => 'Faça login no MangaUpdates';

  @override
  String get mangaUpdatesProfile => 'Perfil MangaUpdates';

  @override
  String get mangaUpdatesAnimeStart => 'Começa a adaptação do anime';

  @override
  String get mangaUpdatesAnimeEnd => 'A adaptação do anime termina';

  @override
  String get refreshFromMangaUpdates => 'Atualizar do MangaUpdates';

  @override
  String get usernameOnly => 'Nome de usuário';

  @override
  String get releases => 'Lançamentos';

  @override
  String get artistsLabel => 'Artistas';

  @override
  String get authorsLabel => 'Autores';

  @override
  String get publishersLabel => 'Editoras';

  @override
  String get licensedLabel => 'Licenciado';

  @override
  String get contentRatingLabel => 'Classificação indicativa';

  @override
  String get yesLabel => 'Sim';

  @override
  String get noLabel => 'Não';

  @override
  String get ratingSteps => 'Escala de notas';

  @override
  String get hideNsfw => 'Esconder NSFW';

  @override
  String get hideNsfwSourcesDesc =>
      'Ocultar fontes marcadas com 18+ dos feeds e do seletor de fontes. Eles permanecem instalados.';

  @override
  String get hideNsfwDesc =>
      'Tira títulos adultos dos feeds e da busca e lista suas entradas adultas em Mídia oculta.';

  @override
  String get kitsuAccountOptions => 'Opções da conta Kitsu';

  @override
  String get mangaBakaAccountOptions => 'Opções da conta do MangaBaka';

  @override
  String get comickClientId => 'ID do cliente Comick';

  @override
  String get comickClientIdDesc =>
      'ID de cliente personalizado registrado em comick.dev';

  @override
  String get couldNotUpdateKitsuSettings =>
      'Não consegui atualizar suas configurações do Kitsu';

  @override
  String get titleCanonical => 'Canônico';

  @override
  String get titleRomanized => 'Romanizado';

  @override
  String get titleLocalized => 'Localizado';

  @override
  String get ratingSystem => 'Sistema de notas';

  @override
  String get ratingSimple => 'Simples (3 carinhas)';

  @override
  String get ratingRegular => 'Normal (5 estrelas)';

  @override
  String get ratingAdvanced => 'Avançado (10 pontos)';

  @override
  String get contentFilter => 'Filtro de conteúdo';

  @override
  String get contentSfw => 'Só conteúdo seguro';

  @override
  String get contentSometimes => 'Conteúdo adulto nas buscas';

  @override
  String get contentEverywhere => 'Conteúdo adulto em todo lugar';

  @override
  String get shareToGlobal => 'Compartilhar no feed global';

  @override
  String get shareToGlobalDesc =>
      'Deixa sua atividade aparecer no feed global do Kitsu.';

  @override
  String get memberSince => 'Membro desde';

  @override
  String get location => 'Localização';

  @override
  String get accountType => 'Tipo de conta';

  @override
  String get accountSupporter => 'Apoiador';

  @override
  String get accountFree => 'Grátis';

  @override
  String get accountDetails => 'Detalhes da conta';

  @override
  String get refreshFromKitsu => 'Atualizar do Kitsu';

  @override
  String get simklReadOnly => 'O Simkl deu acesso somente leitura';

  @override
  String get incognitoEditsBlocked => 'Anônimo: edições na lista bloqueadas';

  @override
  String serviceError(String service, String error) {
    return '$service: $error';
  }

  @override
  String get incognitoProgressNotSaved => 'Anônimo: progresso não salvo';

  @override
  String progressSet(int progress) {
    return 'Progresso definido pra $progress';
  }

  @override
  String removedFromList(String title) {
    return '$title removido da sua lista';
  }

  @override
  String get following => 'Seguindo';

  @override
  String get followsMutual => 'Mútuo';

  @override
  String get followsNotMutual => 'Não mútuo';

  @override
  String get homeSections => 'Seções do início';

  @override
  String get homeSectionsHint =>
      'Arraste pra reordenar. Seções escondidas nunca são carregadas.';

  @override
  String get customListDeleteFailed => 'Falha ao apagar a lista personalizada';

  @override
  String get customListsSaveFailed =>
      'Falha ao salvar as listas personalizadas';

  @override
  String get customListsSaved => 'Listas personalizadas salvas';

  @override
  String get listName => 'Nome da lista';

  @override
  String get addList => 'Adicionar lista';

  @override
  String get voiceActors => 'Dubladores';

  @override
  String voiceActorsIn(String name) {
    return 'Dubladores · $name';
  }

  @override
  String get animeAppearances => 'Aparições em anime';

  @override
  String get mangaAppearances => 'Aparições em mangá';

  @override
  String get voicedCharacters => 'Personagens dubladas';

  @override
  String get animeCredits => 'Créditos em anime';

  @override
  String get mangaCredits => 'Créditos em mangá';

  @override
  String get mainProductions => 'Produções principais';

  @override
  String get otherWorks => 'Outros trabalhos';

  @override
  String get prequel => 'Prequela';

  @override
  String get sequel => 'Sequela';

  @override
  String get previousSeason => 'Temporada anterior';

  @override
  String get thisSeason => 'Essa temporada';

  @override
  String get nextSeason => 'Próxima temporada';

  @override
  String get voiceRoles => 'Papéis de dublagem';

  @override
  String get staffPositions => 'Cargos na equipe';

  @override
  String get mangaWorks => 'Obras de mangá';

  @override
  String get malProfile => 'Perfil do MyAnimeList';

  @override
  String get refreshFromMal => 'Atualizar do MyAnimeList';

  @override
  String get repullProfileCounts => 'Puxa de novo seu perfil e contagens';

  @override
  String get refreshed => 'Atualizado';

  @override
  String get simklProfile => 'Perfil do Simkl';

  @override
  String get traktProfile => 'Perfil Trakt';

  @override
  String get refreshFromSimkl => 'Atualizar do Simkl';

  @override
  String get refreshFromTrakt => 'Atualizar do Trakt';

  @override
  String get repullProfileLibrary => 'Puxa de novo seu perfil e biblioteca';

  @override
  String get simklSignInToSearch => 'Entre no Simkl pra buscar';

  @override
  String get dropRate => 'Taxa de abandono';

  @override
  String get simklAttribution =>
      'Dados e arte fornecidos pelo Simkl. Ver no Simkl';

  @override
  String get traktAttribution =>
      'Dados e arte fornecidos por Trakt. Ver no Trakt';

  @override
  String get listsLiked => 'Gostou';

  @override
  String get listsYours => 'Seu';

  @override
  String get traktVip => 'VIP';

  @override
  String get traktVipMember => 'Membro VIP do Trakt';

  @override
  String get onHold => 'Em pausa';

  @override
  String get scoredBy => 'Avaliado por';

  @override
  String get planToWatch => 'Pretendo assistir';

  @override
  String get planToRead => 'Pretendo ler';

  @override
  String get timesRewatched => 'Vezes reassistido';

  @override
  String get timesReread => 'Vezes relido';

  @override
  String get comments => 'Comentários';

  @override
  String get moviesAndSeries => 'Filmes e séries';

  @override
  String get simklMoviesOnly => 'Somente filmes e séries';

  @override
  String get simklMoviesOnlyDesc =>
      'Substitui a guia Anime: Filmes primeiro, depois Programas por algumas linhas de anime';

  @override
  String get trackingOnly => 'Só acompanhamento';

  @override
  String get signedIn => 'Logado';

  @override
  String get searchLanguage => 'Idioma da busca';

  @override
  String get savedToList => 'Salvo na sua lista';

  @override
  String get removedFromYourList => 'Removido da sua lista';

  @override
  String get retry => 'Tentar de novo';

  @override
  String get synopsis => 'Sinopse';

  @override
  String get details => 'Detalhes';

  @override
  String get addToList => 'Adicionar à lista';

  @override
  String get trailer => 'Reboque';

  @override
  String get trailerQuality => 'Qualidade do trailer';

  @override
  String get linkCopied => 'Link copiado';

  @override
  String get detailStale =>
      'Não foi possível acessar o AniList. Estas são informações salvas e podem estar desatualizadas.';

  @override
  String get copyLink => 'Copiar link';

  @override
  String get openInBrowser => 'Abrir no navegador';

  @override
  String viewOnSource(String source) {
    return 'Ver no $source';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return 'O episódio $ep sai em $time';
  }

  @override
  String nextEpisodeIn(String time) {
    return 'Próximo episódio em $time';
  }

  @override
  String chapterExpectedIn(int chapter, String time) {
    return 'Capítulo $chapter previsto pra daqui a uns $time';
  }

  @override
  String get logPathCopied => 'Caminho do arquivo de log copiado';

  @override
  String get animeSource => 'Fonte de anime';

  @override
  String get mangaSource => 'Fonte de mangá';

  @override
  String get popular => 'Populares';

  @override
  String get allCustomLists => 'Todas as listas personalizadas';

  @override
  String get simklTitleLanguage => 'Idioma do título do anime';

  @override
  String get titleLanguageEnglish => 'Inglês';

  @override
  String get titleLanguageRomaji => 'Romaji';

  @override
  String get simklListsTrending => 'Tendências';

  @override
  String get simklListsMostLiked => 'Mais curtido';

  @override
  String get simklListsMostFollowed => 'Mais seguidos';

  @override
  String get simklListsOfficial => 'Oficial';

  @override
  String simklListTitles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count títulos',
      one: '1 título',
    );
    return '$_temp0';
  }

  @override
  String get people => 'Pessoas';

  @override
  String get mostComments => 'A maioria dos comentários';

  @override
  String get alphabetical => 'Alfabético';

  @override
  String get latest => 'Mais recentes';

  @override
  String get saved => 'Salvos';

  @override
  String get nothingMatched => 'Nada encontrado';

  @override
  String get nothingSavedFromSource => 'Nada salvo dessa fonte ainda';

  @override
  String get sourceReturnedNothing => 'Essa fonte não retornou nada';

  @override
  String get checkConnectionOrSource =>
      'Confira sua conexão ou tente outra fonte.';

  @override
  String get tryDifferentSearch => 'Tente outro termo de busca.';

  @override
  String get savedTitlesAppearHere =>
      'Os títulos que você adicionar à lista aparecem aqui.';

  @override
  String get tryOtherFeed => 'Tente o outro feed ou faça uma busca.';

  @override
  String searchSource(String source) {
    return 'Buscar em $source';
  }

  @override
  String get animeExtensions => 'Extensões de anime';

  @override
  String get mangaExtensions => 'Extensões de mangá';

  @override
  String get nothingHereYet => 'Nada aqui ainda';

  @override
  String get savedOnDeviceUntilLogin =>
      'Tudo abaixo fica salvo nesse dispositivo até você fazer isso.';

  @override
  String get yourProfile => 'Seu perfil';

  @override
  String get activity => 'Atividade';

  @override
  String get extensions => 'Extensões';

  @override
  String get logOut => 'Sair';

  @override
  String get logIn => 'Entrar';

  @override
  String get logOutConfirm => 'Tem certeza que quer sair?';

  @override
  String get incognitoMode => 'Modo anônimo';

  @override
  String get alsoBlockListEdits => 'Bloquear também edições na lista';

  @override
  String get offlineMode => 'Modo offline';

  @override
  String get switchService => 'Trocar de serviço';

  @override
  String logOutOf(String name) {
    return 'Sair do $name';
  }

  @override
  String get loggedIn => 'Logado';

  @override
  String get notifications => 'Notificações';

  @override
  String get nothingNew => 'Nada de novo';

  @override
  String get thisWeek => 'Essa semana';

  @override
  String get listOnly => 'Só da lista';

  @override
  String get notInList => 'Não está na lista';

  @override
  String get filter => 'Filtrar';

  @override
  String get searchResults => 'Resultados da busca';

  @override
  String get recentSearches => 'Buscas recentes';

  @override
  String get searchOrSetFilter => 'Busque ou defina um filtro';

  @override
  String get filters => 'Filtros';

  @override
  String get showLess => 'Mostrar menos';

  @override
  String get showAll => 'Mostrar tudo';

  @override
  String get apply => 'Aplicar';

  @override
  String get preview => 'Prévia';

  @override
  String get preset => 'Predefinição';

  @override
  String get cardNormal => 'Normais';

  @override
  String get cardOnCard => 'No cartão';

  @override
  String get cardInCard => 'Dentro do cartão';

  @override
  String get size => 'Tamanho';

  @override
  String get cardWidth => 'Largura do cartão';

  @override
  String get compact => 'Compacto';

  @override
  String get coverAndTitleOnly => 'Só capa e título';

  @override
  String get titleLines => 'Linhas do título';

  @override
  String get shape => 'Formato';

  @override
  String get posterShape => 'Formato do pôster';

  @override
  String get cornerRadius => 'Raio dos cantos';

  @override
  String get off => 'Desligado';

  @override
  String get topLeft => 'Topo esquerdo';

  @override
  String get topRight => 'Topo direito';

  @override
  String get bottomLeft => 'Base esquerda';

  @override
  String get bottomRight => 'Base direita';

  @override
  String get overlays => 'Sobreposições';

  @override
  String get progressCount => 'Progresso / contagem';

  @override
  String get pill => 'Pílula';

  @override
  String get bar => 'Barra';

  @override
  String get outside => 'Fora';

  @override
  String get scoreBadge => 'Selo de nota';

  @override
  String get airingDot => 'Ponto de exibição';

  @override
  String get updateAvailable => 'Atualização disponível';

  @override
  String get notInstalled => 'Não instalado';

  @override
  String get done => 'Concluído';

  @override
  String get searchOrEnterUrl => 'Busque ou digite uma URL';

  @override
  String get refresh => 'Atualizar';

  @override
  String get animePlanetRank => 'Classificação';

  @override
  String get animePlanetMagazine => 'Revista';

  @override
  String get animePlanetRefreshLists => 'Atualize suas listas';

  @override
  String get animePlanetRefreshListsDesc =>
      'Leia suas listas do Anime-Planet novamente';

  @override
  String get animePlanetLocalNote =>
      'Faça login para salvar as alterações em sua conta Anime-Planet. Até então eles permanecem neste dispositivo';

  @override
  String get share => 'Compartilhar';

  @override
  String get characters => 'Personagens';

  @override
  String get staff => 'Equipe';

  @override
  String get readMore => 'Ler mais';

  @override
  String get couldNotLoadList => 'Não consegui carregar a lista';

  @override
  String get logInToFavourite => 'Entre pra adicionar favoritos';

  @override
  String get alsoKnownAs => 'Também conhecido como';

  @override
  String get hideSpoilerNames => 'Esconder nomes com spoiler';

  @override
  String get showSpoilerNames => 'Mostrar nomes com spoiler';

  @override
  String get favourited => 'Nos favoritos';

  @override
  String get favourite => 'Favoritar';

  @override
  String get couldNotOpenTitle => 'Não consegui abrir esse título';

  @override
  String get nobodyHereYet => 'Ninguém aqui ainda';

  @override
  String get noMatches => 'Nada encontrado';

  @override
  String get gridView => 'Visualização em grade';

  @override
  String get fullWidth => 'Largura total';

  @override
  String get userNotFound => 'Usuário não encontrado';

  @override
  String get couldNotUpdateFollow => 'Não consegui atualizar o seguir';

  @override
  String followedUser(String name) {
    return 'Você começou a seguir $name';
  }

  @override
  String unfollowedUser(String name) {
    return 'Você deixou de seguir $name';
  }

  @override
  String get messages => 'Mensagens';

  @override
  String get logInToSeeMessages => 'Entre pra ver suas mensagens';

  @override
  String get editActivity => 'Editar atividade';

  @override
  String get newActivity => 'Nova atividade';

  @override
  String get editMessage => 'Editar mensagem';

  @override
  String get writeMessage => 'Escrever uma mensagem';

  @override
  String get editReply => 'Editar resposta';

  @override
  String get posted => 'Publicado';

  @override
  String get couldNotPost => 'Não consegui publicar';

  @override
  String get nothingToPreview => 'Nada pra visualizar';

  @override
  String get writeSomethingHint =>
      'Escreva algo… o markdown do AniList funciona aqui';

  @override
  String get privateMessage => 'Mensagem privada';

  @override
  String get post => 'Publicar';

  @override
  String get nothingHere => 'Nada aqui';

  @override
  String get noAnimeProgress => 'Sem progresso de anime';

  @override
  String get noMangaProgress => 'Sem progresso de mangá';

  @override
  String get noMessages => 'Sem mensagens';

  @override
  String get writeMessageHint => 'Escreva uma mensagem…';

  @override
  String get shareSomethingHint => 'Compartilhe algo…';

  @override
  String get all => 'Tudo';

  @override
  String get anime => 'Anime';

  @override
  String get manga => 'Mangá';

  @override
  String get count => 'Contagem';

  @override
  String get hoursWatched => 'Horas assistidas';

  @override
  String get chaptersRead => 'Capítulos lidos';

  @override
  String get meanScore => 'Nota média';

  @override
  String get noStatsYet => 'Sem estatísticas ainda';

  @override
  String get totalEntries => 'Total de entradas';

  @override
  String get episodesWatched => 'Episódios assistidos';

  @override
  String get daysWatched => 'Dias assistidos';

  @override
  String get volumesRead => 'Volumes lidos';

  @override
  String get standardDeviation => 'Desvio padrão';

  @override
  String get showMore => 'Mostrar mais';

  @override
  String get followsYou => 'Segue você';

  @override
  String get nobodyYet => 'Ninguém ainda';

  @override
  String get logInToLike => 'Entre pra curtir';

  @override
  String get failedToLikeActivity => 'Falha ao curtir a atividade';

  @override
  String get deleteActivityConfirm => 'Apagar atividade?';

  @override
  String get deletedActivity => 'Atividade apagada';

  @override
  String get failedToDeleteActivity => 'Falha ao apagar a atividade';

  @override
  String get subscribed => 'Inscrito';

  @override
  String get unsubscribed => 'Inscrição cancelada';

  @override
  String get failedToUpdateSubscription => 'Falha ao atualizar a inscrição';

  @override
  String get edit => 'Editar';

  @override
  String get delete => 'Apagar';

  @override
  String get likedBy => 'Curtido por';

  @override
  String get follow => 'Seguir';

  @override
  String get nameCopied => 'Nome copiado';

  @override
  String get followsEachOther => 'Se seguem';

  @override
  String get unfollow => 'Deixar de seguir';

  @override
  String get userIdCopied => 'ID de usuário copiado';

  @override
  String get shareProfile => 'Compartilhar perfil';

  @override
  String get copyUserId => 'Copiar ID de usuário';

  @override
  String get failedToDelete => 'Falha ao apagar';

  @override
  String get failedToLike => 'Falha ao curtir';

  @override
  String get replies => 'Respostas';

  @override
  String get reply => 'Responder';

  @override
  String get noRepliesYet => 'Nenhuma resposta ainda';

  @override
  String get favouriteAnime => 'Animes favoritos';

  @override
  String get favouriteManga => 'Mangás favoritos';

  @override
  String get favouriteCharacters => 'Personagens favoritas';

  @override
  String get favouriteStaff => 'Equipe favorita';

  @override
  String get favouriteStudios => 'Estúdios favoritos';

  @override
  String get noFavouritesYet => 'Nenhum favorito ainda';

  @override
  String get yourStory => 'Seu story';

  @override
  String get copiedToClipboard => 'Copiado pra área de transferência';

  @override
  String get justNow => 'Agora mesmo';

  @override
  String get openImage => 'Abrir imagem';

  @override
  String get hideSpoiler => 'Esconder spoiler';

  @override
  String get showSpoiler => 'Mostrar spoiler';

  @override
  String get status => 'Estado';

  @override
  String get score => 'Nota';

  @override
  String get started => 'Início';

  @override
  String get completed => 'Concluído';

  @override
  String get private => 'Privado';

  @override
  String get hideFromStatusLists => 'Esconder das listas de status';

  @override
  String get totalRepeats => 'Total de repetições';

  @override
  String get other => 'Outro';

  @override
  String get customLists => 'Listas personalizadas';

  @override
  String get activeDays => 'Dias ativos';

  @override
  String get longestStreak => 'Maior sequência';

  @override
  String get currentStreak => 'Sequência atual';

  @override
  String get tapOrHoverDay => 'Toque ou passe o mouse num dia';

  @override
  String get less => 'Menos';

  @override
  String get more => 'Mais';

  @override
  String epIn(int ep, String time) {
    return 'Ep. $ep em $time';
  }

  @override
  String get sectionLoading => 'Carregando';

  @override
  String get querySize => 'Tamanho da consulta';

  @override
  String get querySizeDesc =>
      'Uma consulta grande carrega todas as linhas (e um perfil inteiro) numa requisição só. Consultas divididas mandam uma requisição pequena por linha ou parte do perfil: cada uma é rápida e as partes vão aparecendo.';

  @override
  String get oneBig => 'Uma grande';

  @override
  String get split => 'Dividida';

  @override
  String get sectionSocial => 'Sociais';

  @override
  String get systemNotifications => 'Notificações do sistema';

  @override
  String get feedLayout => 'Layout do feed';

  @override
  String sectionsShown(int shown, int total) {
    return '$shown de $total visíveis — toque pra escolher e reordenar';
  }

  @override
  String labelSections(String label) {
    return 'Seções de $label';
  }

  @override
  String get accountOptions => 'Opções da conta';

  @override
  String get anilistAccountOptions => 'Opções da conta AniList';

  @override
  String get sectionPrivacy => 'Privacidade';

  @override
  String get hidePrivateEntries => 'Esconder entradas privadas';

  @override
  String get hidePrivateEntriesDesc =>
      'Mantém fora do feed as entradas marcadas como privadas no AniList';

  @override
  String get anilistExcludeList => 'Excluir sua lista';

  @override
  String get anilistExcludeListDesc =>
      'Esconde das páginas de anime e mangá os títulos que já estão no seu AniList';

  @override
  String get anilistProfile => 'Perfil do AniList';

  @override
  String get refreshFromAnilist => 'Atualizar do AniList';

  @override
  String get couldNotUpdateAnilistSettings =>
      'Não consegui atualizar as configurações do AniList';

  @override
  String get sectionNames => 'Nomes';

  @override
  String get titleLanguage => 'Idioma dos títulos';

  @override
  String get titleLanguageDesc =>
      'Como os títulos são escritos em todo lugar, ex.: Attack on Titan / Shingeki no Kyojin / 進撃の巨人.';

  @override
  String get staffCharacterNames => 'Nomes da equipe e dos personagens';

  @override
  String get sectionLists => 'Listas';

  @override
  String get scoreFormat => 'Formato da nota';

  @override
  String get sortListsBy => 'Ordenar listas por';

  @override
  String labelCustomLists(String label) {
    return 'Listas personalizadas de $label';
  }

  @override
  String customListsCount(int count) {
    return '$count listas — toque pra adicionar ou remover';
  }

  @override
  String get mergeActivities => 'Agrupar atividades';

  @override
  String minutesCount(int count) {
    return '$count min';
  }

  @override
  String get timezone => 'Fuso horário';

  @override
  String get notSet => 'Não definido';

  @override
  String get airingNotifications => 'Notificações de exibição';

  @override
  String get airingNotificationsDesc =>
      'Receba um aviso quando sair um episódio de uma série que você segue';

  @override
  String get displayAdultContent => 'Mostrar conteúdo adulto';

  @override
  String get displayAdultContentDesc =>
      'Inclui títulos 18+ na exploração, busca e feeds';

  @override
  String get restrictMessages => 'Limitar mensagens a quem eu sigo';

  @override
  String get restrictMessagesDesc =>
      'Só quem você segue pode te mandar mensagem';

  @override
  String get sectionServices => 'Serviços';

  @override
  String get novel => 'Romance';

  @override
  String labelService(String label) {
    return 'Serviço de $label';
  }

  @override
  String nameSettings(String name) {
    return 'Configurações do $name';
  }

  @override
  String extensionBridgeOptions(String name) {
    return 'Opções da ponte de extensões do $name';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return 'O $name não conseguiu iniciar: $error';
  }

  @override
  String get importLists => 'Importar listas';

  @override
  String get importListsDesc =>
      'De backups do Aniyomi, Mihon / Tachiyomi ou Kotatsu';

  @override
  String get exportLists => 'Exportar listas';

  @override
  String get exportListsDesc => 'Pra um backup do Aniyomi, Mihon ou Kotatsu';

  @override
  String get sectionBrowse => 'Explorar';

  @override
  String get readingTab => 'Aba de leitura';

  @override
  String get readingTabDesc => 'Quais extensões a terceira aba mostra';

  @override
  String get firstTab => 'Primeira guia';

  @override
  String get firstTabDesc =>
      'Quais extensões a primeira guia mostra. Escolha aqui o mangá e o romance na aba de leitura para retirar o anime do bar';

  @override
  String get novelExtensions => 'Novas extensões';

  @override
  String get defaultFeed => 'Feed padrão';

  @override
  String get defaultFeedDesc => 'Com qual lista uma fonte abre';

  @override
  String noServiceSupports(String type) {
    return 'Nenhum serviço suporta $type';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · $loaded de $installed fontes carregando';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return 'Nenhum serviço de extensões suporta $type aqui.';
  }

  @override
  String get loadDataFrom => 'Carregar dados de';

  @override
  String noInstalledSourcesYet(String type) {
    return 'Nenhuma fonte de $type instalada ainda.';
  }

  @override
  String extensionNotInstalled(String name) {
    return 'A extensão do $name não está instalada';
  }

  @override
  String get thisSource => 'essa fonte';

  @override
  String failedToAddRepository(String error) {
    return 'Falha ao adicionar o repositório: $error';
  }

  @override
  String installedType(String type) {
    return '$type instalados';
  }

  @override
  String availableType(String type) {
    return '$type disponíveis';
  }

  @override
  String noInstalledExtensions(String type) {
    return 'Nenhuma extensão de $type instalada';
  }

  @override
  String noAvailableExtensions(String type) {
    return 'Nenhuma extensão de $type disponível';
  }

  @override
  String get nothingToShowYet => 'Nada pra mostrar ainda';

  @override
  String get addTitlesHint =>
      'Adicione alguns títulos à sua lista e eles aparecem aqui.';

  @override
  String get couldntLoad => 'Não consegui carregar';

  @override
  String get progressStyleHint =>
      'Pílula e barra ficam sobre o pôster; \"fora\" mostra a mesma contagem como texto simples — escolha um.';

  @override
  String get nixManagedUpdate =>
      'Essa build é gerenciada pelo Nix — rode \"nix flake update\" na sua flake e recompile em vez de atualizar por aqui';

  @override
  String autoUpdateFailed(String error) {
    return 'A atualização automática falhou ($error) — abrindo a página de download';
  }

  @override
  String get unknownPreference => 'Preferência desconhecida';

  @override
  String unsupportedPreferenceType(String type) {
    return 'Tipo de preferência não suportado $type';
  }

  @override
  String get notYetReleased => 'Ainda não lançado';

  @override
  String get notStarted => 'Não iniciado';

  @override
  String get country => 'País';

  @override
  String get sort => 'Ordenar';

  @override
  String get chooseBackupDialog =>
      'Escolha um backup do Aniyomi, Mihon ou Kotatsu';

  @override
  String get importListsHint =>
      'Traga uma biblioteca do Aniyomi, Mihon / Tachiyomi ou Kotatsu. Títulos, capas, progresso e categorias são mantidos.';

  @override
  String get chooseBackupFile => 'Escolher arquivo de backup';

  @override
  String importAnimeCount(int count) {
    return 'Importar $count animes';
  }

  @override
  String importMangaCount(int count) {
    return 'Importar $count mangás';
  }

  @override
  String get mergeWithExisting => 'Mesclar com as listas existentes';

  @override
  String get mergeWithExistingDesc =>
      'Mantém o que você já tem; desligado substitui títulos iguais';

  @override
  String get chooseAnother => 'Escolher outro';

  @override
  String get import => 'Importar';

  @override
  String animeCount(int count) {
    return '$count animes';
  }

  @override
  String mangaCount(int count) {
    return '$count mangás';
  }

  @override
  String savedPath(String path) {
    return 'Salvo em $path';
  }

  @override
  String exportFailed(String error) {
    return 'Falha ao exportar: $error';
  }

  @override
  String get nothingInLocalLists => 'Nada nas suas listas locais ainda.';

  @override
  String exportsSummary(int anime, int manga) {
    return 'Exporta $anime animes e $manga mangás das suas listas locais. O Kotatsu só suporta mangá.';
  }

  @override
  String get saveToFolder => 'Salvar na pasta';

  @override
  String get formatAnimeManga => 'Anime e mangá · .tachibk';

  @override
  String get formatMangaTachibk => 'Só mangá · .tachibk';

  @override
  String get formatMangaZip => 'Só mangá · .zip';

  @override
  String get genres => 'Gêneros';

  @override
  String get relations => 'Relações';

  @override
  String get recommendations => 'Recomendações';

  @override
  String get openings => 'Aberturas';

  @override
  String get endings => 'Encerramentos';

  @override
  String get background => 'Contexto';

  @override
  String get links => 'Ligações';

  @override
  String get rank => 'Ranking';

  @override
  String get members => 'Membros';

  @override
  String get favorites => 'Favoritos';

  @override
  String get episodes => 'Episódios';

  @override
  String get chapters => 'Capítulos';

  @override
  String get volumes => 'Volumes';

  @override
  String get format => 'Formato';

  @override
  String get source => 'Fonte';

  @override
  String get duration => 'Duração';

  @override
  String minutesPerEpisode(int minutes) {
    return '$minutes min por ep.';
  }

  @override
  String get rating => 'Classificação';

  @override
  String get studio => 'Estúdio';

  @override
  String get serialization => 'Serialização';

  @override
  String get season => 'Temporada';

  @override
  String get year => 'Ano';

  @override
  String get filterAny => 'Qualquer';

  @override
  String get broadcast => 'Transmissão';

  @override
  String get aired => 'Exibido';

  @override
  String get published => 'Publicado';

  @override
  String get popularity => 'Popularidade';

  @override
  String get community => 'Comunidade';

  @override
  String get watching => 'Assistindo';

  @override
  String get reading => 'Lendo';

  @override
  String get dropped => 'Abandonado';

  @override
  String get unfinished => 'Inacabado';

  @override
  String get planned => 'Planejado';

  @override
  String get trailers => 'Reboques';

  @override
  String get ratings => 'Notas';

  @override
  String get originalTitle => 'Originais';

  @override
  String get titleLabel => 'Título';

  @override
  String get votes => 'Votos';

  @override
  String get watchedStat => 'Assistido';

  @override
  String get runtime => 'Duração';

  @override
  String get director => 'Diretor';

  @override
  String get network => 'Emissora';

  @override
  String get certification => 'Certificação';

  @override
  String get airs => 'Exibição';

  @override
  String get budget => 'Orçamento';

  @override
  String get revenue => 'Receita';

  @override
  String get released => 'Lançado';

  @override
  String get tags => 'Etiquetas';

  @override
  String get author => 'Autor';

  @override
  String get born => 'Nascimento';

  @override
  String get died => 'Morreu';

  @override
  String get birthplace => 'Local de nascimento';

  @override
  String get department => 'Departamento';

  @override
  String get website => 'Site';

  @override
  String get established => 'Fundação';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novels => 'Romances';

  @override
  String get thisMonth => 'Esse mês';

  @override
  String get movies => 'Filmes';

  @override
  String get shows => 'Séries';

  @override
  String get moviesWatched => 'Filmes assistidos';

  @override
  String get showsWatched => 'Programas assistidos';

  @override
  String get moviesCollected => 'Filmes coletados';

  @override
  String get showsCollected => 'Programas coletados';

  @override
  String get rewatching => 'Reassistindo';

  @override
  String get rereading => 'Relendo';

  @override
  String get watchedStatus => 'Assistido';

  @override
  String get planning => 'Planejando';

  @override
  String get paused => 'Pausado';

  @override
  String get watch => 'Assistir';

  @override
  String get read => 'Ler';

  @override
  String get finished => 'Finalizado';

  @override
  String get releasing => 'Em exibição';

  @override
  String get cancelled => 'Cancelado';

  @override
  String get hiatus => 'Hiato';

  @override
  String get remove => 'Remover';

  @override
  String syncToService(String service) {
    return 'Sincronizar com o $service';
  }

  @override
  String syncedToService(String service) {
    return 'Sincronizado com o $service';
  }

  @override
  String get latestReleases => 'Últimos lançamentos';

  @override
  String get topRated => 'Mais bem avaliados';

  @override
  String localSection(String title) {
    return '$title · Locais';
  }

  @override
  String get localEntryNote =>
      'Esse título está só na sua lista local nesse dispositivo. A edição fica desligada aqui porque poderia conflitar com a lista da sua conta; você ainda pode removê-lo.';

  @override
  String get cardPresetPoster => 'Pôster';

  @override
  String get cardPresetCard => 'Cartão';

  @override
  String get cardPresetCozy => 'Aconchegante';

  @override
  String get sortTopRated => 'Mais bem avaliados';

  @override
  String get sortMostPopular => 'Mais populares';

  @override
  String get sortTrending => 'Em alta';

  @override
  String get sortNewest => 'Mais novos';

  @override
  String get sortAz => 'A–Z';

  @override
  String get sortMostFavourited => 'Mais favoritados';

  @override
  String get anyCountry => 'Qualquer país';

  @override
  String get orderScore => 'Nota';

  @override
  String get orderTitle => 'Título';

  @override
  String get orderLastUpdated => 'Última atualização';

  @override
  String get orderLastAdded => 'Último adicionado';

  @override
  String get never => 'Nunca';

  @override
  String get always => 'Sempre';

  @override
  String get scorePoint100 => '100 pontos';

  @override
  String get scorePoint10Decimal => '10 pontos decimal';

  @override
  String get scorePoint10 => '10 pontos';

  @override
  String get scorePoint5 => '5 estrelas';

  @override
  String get scorePoint3 => '3 carinhas';

  @override
  String hoursCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count horas',
      one: '1 hora',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dias',
      one: '1 dia',
    );
    return '$_temp0';
  }

  @override
  String weeksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count semanas',
      one: '1 semana',
    );
    return '$_temp0';
  }

  @override
  String get resumeTitle => 'Continuar';

  @override
  String get resumeSourceMissing =>
      'Instale a fonte desse título pra continuar';

  @override
  String get resumeRemove => 'Remover de continuar';

  @override
  String resumeAt(String time) {
    return 'faltam $time';
  }

  @override
  String resumePage(int page, int total) {
    return 'Página $page de $total';
  }

  @override
  String get continueWatching => 'Continuar assistindo';

  @override
  String get continueReading => 'Continuar lendo';

  @override
  String get favouriteAnimeSection => 'Animes favoritos';

  @override
  String get favouriteMangaSection => 'Mangás favoritos';

  @override
  String get plannedAnime => 'Animes planejados';

  @override
  String get plannedManga => 'Mangás planejados';

  @override
  String get completedAnime => 'Animes concluídos';

  @override
  String get completedManga => 'Mangás concluídos';

  @override
  String get hiddenMedia => 'Mídia oculta';

  @override
  String get recentUpdates => 'Atualizações recentes';

  @override
  String get trendingNow => 'Em alta agora';

  @override
  String get popularThisSeason => 'Populares dessa temporada';

  @override
  String get trendingMovies => 'Filmes em alta';

  @override
  String get topRatedSeries => 'Séries mais bem avaliadas';

  @override
  String get mostFavouriteSeries => 'Séries mais favoritadas';

  @override
  String get popularAnime => 'Animes populares';

  @override
  String get trendingManhwa => 'Manhwas em alta';

  @override
  String get trendingNovels => 'Novels em alta';

  @override
  String get topRatedManga => 'Mangás mais bem avaliados';

  @override
  String get mostFavouriteManga => 'Mangás mais favoritados';

  @override
  String get popularManga => 'Mangás populares';

  @override
  String get topMovies => 'Melhores filmes';

  @override
  String get topOna => 'Melhores ONA';

  @override
  String get topOva => 'Melhores OVA';

  @override
  String get mostPopular => 'Mais populares';

  @override
  String get mostFavourite => 'Mais favoritados';

  @override
  String get upcoming => 'Em breve';

  @override
  String get topManga => 'Melhores mangás';

  @override
  String get topManhwa => 'Melhores manhwas';

  @override
  String get topManhua => 'Melhores manhuas';

  @override
  String get topNovels => 'Melhores novels';

  @override
  String get topOneShots => 'Melhores one-shots';

  @override
  String get trendingMoviesToday => 'Filmes em alta hoje';

  @override
  String get trendingShowsToday => 'Séries em alta hoje';

  @override
  String get trendingMoviesWeek => 'Filmes em alta essa semana';

  @override
  String get trendingShowsWeek => 'Séries em alta essa semana';

  @override
  String get mostWatchedMoviesMonth => 'Filmes mais assistidos do mês';

  @override
  String get mostWatchedShowsMonth => 'Séries mais assistidas do mês';

  @override
  String get trendingThisWeek => 'Em alta essa semana';

  @override
  String get mostWatchedThisMonth => 'Mais assistidos do mês';

  @override
  String get repoLinksAdded => 'Links do repositório adicionados com sucesso!';

  @override
  String repoLinkConfirm(String url) {
    return 'Adicionar este repositório?\n\n$url\n\nAdicione apenas repositórios de fontes em que você confia.';
  }

  @override
  String get errorGettingAnilistData => 'Erro ao buscar dados do AniList.';

  @override
  String get navInfo => 'INFORMAÇÕES';

  @override
  String get navComments => 'COMENTÁRIOS';

  @override
  String get playerNotAvailable => 'O player ainda não está disponível';

  @override
  String deepLinkInitialError(String error) {
    return 'Erro ao obter o deep link inicial: $error';
  }

  @override
  String deepLinkOpenError(String error) {
    return 'Erro ao abrir link: $error';
  }

  @override
  String linkCantBeOpened(String link) {
    return 'Não dá pra abrir esse link: $link';
  }

  @override
  String linkOpenError(String error) {
    return 'Erro ao abrir link: $error';
  }

  @override
  String get progress => 'Progresso';

  @override
  String get notes => 'Notas';

  @override
  String serviceNotFound(String id) {
    return 'Serviço \"$id\" não encontrado';
  }

  @override
  String get glassEffectEnabled => 'Efeito vidro ligado';

  @override
  String get glassEffectDisabled => 'Efeito vidro desligado';

  @override
  String get materialYouEnabled => 'Material You ligado';

  @override
  String get materialYouDisabled => 'Material You desligado';

  @override
  String get darkModeEnabled => 'Modo escuro ligado';

  @override
  String get darkModeDisabled => 'Modo escuro desligado';

  @override
  String get animeList => 'Lista de animes';

  @override
  String get mangaList => 'Lista de mangás';

  @override
  String ownerAnimeList(String owner) {
    return 'Lista de animes de $owner';
  }

  @override
  String ownerMangaList(String owner) {
    return 'Lista de mangás de $owner';
  }

  @override
  String get loadingList => 'Carregando lista';

  @override
  String get earlier => 'Anteriores';

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'há $count dias',
      one: 'há 1 dia',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'há $count horas',
      one: 'há 1 hora',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'há $count minutos',
      one: 'há 1 minuto',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return 'há $count min';
  }

  @override
  String hoursAgoShort(int count) {
    return 'há $count h';
  }

  @override
  String daysAgoShort(int count) {
    return 'há $count d';
  }

  @override
  String weeksAgoShort(int count) {
    return 'há $count sem.';
  }

  @override
  String get couldntLoadSource => 'Não consegui carregar essa fonte';

  @override
  String get followers => 'Seguidores';

  @override
  String couldntLoadTitle(String title) {
    return 'Não consegui carregar $title';
  }

  @override
  String userTitle(String name, String title) {
    return '$name · $title';
  }

  @override
  String get couldntLoadProfile => 'Não consegui carregar esse perfil';

  @override
  String get profile => 'Perfil';

  @override
  String get feed => 'Alimentação';

  @override
  String get stats => 'Estatísticas';

  @override
  String get received => 'Recebidas';

  @override
  String get sent => 'Enviadas';

  @override
  String get global => 'Globais';

  @override
  String get couldntLoadPage => 'Não consegui carregar essa página';

  @override
  String get couldntLoadAllDetails => 'Não consegui carregar todos os detalhes';

  @override
  String get series => 'Séries';

  @override
  String get studios => 'Estúdios';

  @override
  String get users => 'Usuários';

  @override
  String repositoriesTitle(String type) {
    return 'Repositórios de $type';
  }

  @override
  String get repositoryUrl => 'URL do repositório';

  @override
  String get downloadingRepository => 'Baixando repositório…';

  @override
  String get noRepositories => 'Nenhum repositório adicionado';

  @override
  String repoExtensionsCount(String count) {
    return '$count extensões';
  }

  @override
  String get searchExtensions => 'Buscar extensões...';

  @override
  String deletePluginTitle(String name) {
    return 'Apagar $name?';
  }

  @override
  String get deletePluginMessage => 'Tem certeza que quer apagar esse plugin?';

  @override
  String pluginDeleted(String name) {
    return '$name apagado';
  }

  @override
  String pluginNotInRepo(String name) {
    return '$name não está disponível no repositório configurado';
  }

  @override
  String get pluginFetchFailed => 'Falha ao buscar info do plugin';

  @override
  String installPluginTitle(String name) {
    return 'Instalar $name';
  }

  @override
  String get installedState => 'Instalado';

  @override
  String updatePluginTitle(String name) {
    return 'Atualizar $name';
  }

  @override
  String get errorLabel => 'Erro:';

  @override
  String get stackTraceDetails => 'Detalhes (stack trace)';

  @override
  String get shareLogFile => 'Compartilhar arquivo de log';

  @override
  String get copyLogs => 'Copiar logs';

  @override
  String noListToEdit(String service) {
    return 'O $service não tem lista pra editar';
  }

  @override
  String get couldNotReadFile => 'Não consegui ler esse arquivo';

  @override
  String importedSummary(int anime, int manga) {
    return 'Importados $anime animes e $manga mangás';
  }

  @override
  String alreadyThere(int count) {
    return ' · $count já estavam lá';
  }

  @override
  String get airingNow => 'No ar agora';

  @override
  String get topRatedMovies => 'Filmes mais bem avaliados';

  @override
  String get koreanDramas => 'Doramas coreanos';

  @override
  String get chineseDramas => 'Doramas chineses';

  @override
  String get japaneseDramas => 'Doramas japoneses';

  @override
  String get thaiDramas => 'Doramas tailandeses';

  @override
  String get turkishDramas => 'Séries turcas';

  @override
  String get miniSeries => 'Minisséries';

  @override
  String get topRatedShows => 'Séries mais bem avaliadas';

  @override
  String get recommendedSection => 'Recomendados';

  @override
  String get syncRow => 'Sincronizar listas';

  @override
  String get syncRowDesc =>
      'Espelha a lista de um serviço nas suas outras contas';

  @override
  String get syncTitle => 'Sincronizar';

  @override
  String get syncMainService => 'Serviço principal';

  @override
  String get syncMainServiceDesc =>
      'A lista dele é a fonte da verdade; todos os outros serviços logados são atualizados pra ficar iguais';

  @override
  String get syncAuto => 'Sincronização automática';

  @override
  String get syncAutoDesc =>
      'Busca e sincroniza em segundo plano quando o app abre e a cada 30 minutos';

  @override
  String get syncAddMissing => 'Adicionar entradas faltando';

  @override
  String get syncAddMissingDesc =>
      'Adiciona também entradas que o outro serviço ainda não tem';

  @override
  String get syncDelete => 'Exclua o que o serviço principal não possui';

  @override
  String get syncDeleteDesc =>
      'Remova entradas de outros serviços que não estão na lista principal. Apenas as entradas que podem corresponder a um título são removidas, portanto, itens como filmes e séries Simkl permanecem';

  @override
  String get syncDeleteTitle => 'Excluir entradas?';

  @override
  String syncDeleteConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count entradas',
      one: '1 entrada',
    );
    return '$_temp0 que não estão na sua lista principal serão excluídos dos outros serviços. Isto não pode ser desfeito.';
  }

  @override
  String get syncDeleteAction => 'Excluir';

  @override
  String get syncToDelete => 'Para excluir';

  @override
  String get syncDeletedNote => 'Será excluído';

  @override
  String get syncOnlyForward => 'Manter o progresso mais adiantado';

  @override
  String get syncOnlyForwardDesc =>
      'Não diminui o progresso de um serviço que já está na frente';

  @override
  String get animePlanetWontWatch => 'Não vou assistir';

  @override
  String get animePlanetWontRead => 'Não vou ler';

  @override
  String get animePlanetNewList => 'Novo nome da lista';

  @override
  String get syncPrivate => 'Entradas privadas';

  @override
  String get syncPrivateDesc =>
      'O que fazer com as entradas que você mantém privadas. Um serviço com opção privada os torna privados; outros os mostrariam publicamente';

  @override
  String get syncPrivateModeAsk => 'Pergunte';

  @override
  String get syncPrivateModeSync => 'Sincronize-os';

  @override
  String get syncPrivateModeSkip => 'Ignorá-los';

  @override
  String get syncPrivateTitle => 'Entradas privadas';

  @override
  String syncPrivateAsk(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'As entradas $count são privadas',
      one: '1 entrada é privada',
    );
    return '$_temp0. Serviços com opção privada (AniList, Kitsu, MangaBaka) os tornarão privados; os demais serviços não têm opção privada e os mostrariam publicamente. Sincronizá-los? Sua resposta será lembrada; altere-o nas opções de sincronização.';
  }

  @override
  String get syncPrivateInclude => 'Sincronize-os';

  @override
  String get syncPrivateSkip => 'Ignorá-los';

  @override
  String get syncFetch => 'Buscar';

  @override
  String get syncFetchAgain => 'Buscar de novo';

  @override
  String get syncAll => 'Sincronizar tudo';

  @override
  String get syncStop => 'Parar';

  @override
  String get syncResume => 'Continuar';

  @override
  String get syncNothingToSync =>
      'Esse serviço não pode ser sincronizado pra esse tipo';

  @override
  String get syncNoTargets => 'Entre em outro serviço pra sincronizar';

  @override
  String get syncLoadingMap => 'Carregando mapeamento de IDs';

  @override
  String get syncComparing => 'Comparando listas';

  @override
  String get syncIntro =>
      'Escolha um serviço principal e toque em Buscar. Cada serviço é consultado uma vez pela sua lista e depois comparado com o principal.';

  @override
  String get syncStateSynced => 'Sincronizado';

  @override
  String get syncStateOutdated => 'Fora de sincronia';

  @override
  String get syncStateMissing => 'Não está na lista';

  @override
  String get syncStateUnmapped => 'Sem correspondência';

  @override
  String syncPaused(String time) {
    return 'Esperando o limite de requisições, volta em $time';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return '$count só no $name, deixados como estão';
  }

  @override
  String syncProgressOf(int done, int total) {
    return '$done de $total';
  }

  @override
  String get syncNothingHere => 'Nada pra mostrar';

  @override
  String syncLimits(int used, int max, String window) {
    return '$used de $max requisições usadas nesse $window';
  }

  @override
  String get syncMinute => 'minuto';

  @override
  String get syncDay => 'dia';

  @override
  String get syncNotInList => 'Ainda não está na lista';

  @override
  String get syncCleared => 'Plano limpo';

  @override
  String get syncClear => 'Limpar';

  @override
  String get syncOptions => 'Opções';

  @override
  String get syncShared => 'Divide a entrada com outro item';

  @override
  String syncNotFound(String service) {
    return 'Não encontrado no $service';
  }

  @override
  String syncService(String service, int count) {
    return 'Sincronizar $service ($count)';
  }

  @override
  String get syncOnEdit => 'Sincronizar na hora';

  @override
  String get syncOnEditDesc =>
      'Manda cada atualização de progresso e edição de lista pros seus outros serviços logados na hora';

  @override
  String syncRemoved(String services) {
    return 'Removido de $services';
  }

  @override
  String syncPushed(String services) {
    return 'Sincronizado com $services';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '$service: $error';
  }

  @override
  String get syncRateLimited =>
      'Limite de requisições atingido, tente de novo daqui a pouco';

  @override
  String get syncAhead => 'Quem estiver na frente';

  @override
  String get syncAheadDesc =>
      'Nos dois sentidos: pra cada título, vence a entrada mais adiantada e ela é copiada pros seus outros serviços';

  @override
  String syncAheadFrom(String service) {
    return 'Do $service';
  }

  @override
  String get syncConfirm => 'Revisar antes de sincronizar';

  @override
  String get syncConfirmDesc =>
      'Mostra o que o Sincronizar tudo vai mudar e quantas requisições precisa';

  @override
  String get syncPreviewTitle => 'Pronto pra sincronizar';

  @override
  String syncPreviewLine(int updates, int adds) {
    return '$updates atualizações, $adds pra adicionar';
  }

  @override
  String syncPreviewRequests(int count) {
    return 'Cerca de $count requisições';
  }

  @override
  String syncPreviewLookups(int count) {
    return '$count IDs precisam de consulta antes';
  }

  @override
  String get syncPreviewNothing => 'Nada pra mudar';

  @override
  String get syncStart => 'Iniciar';

  @override
  String get syncRetry => 'Tentar de novo';

  @override
  String get syncSkip => 'Pular esse item';

  @override
  String get syncInclude => 'Incluir esse item de novo';

  @override
  String get syncSkippedLabel => 'Pulado';

  @override
  String get syncChanges => 'Diferenças';

  @override
  String get syncChangeStatus => 'Estado';

  @override
  String get syncChangeProgress => 'Progresso';

  @override
  String get syncChangeScore => 'Nota';

  @override
  String get syncChangeDates => 'Datas';

  @override
  String get syncChangeRepeat => 'Nº de reassistidas';

  @override
  String get syncFailedReason => 'Por que falhou';

  @override
  String get syncSkippedHint =>
      'Itens pulados ficam como estão, mesmo depois de buscar de novo';

  @override
  String get commentsRules => 'Regras dos comentários';

  @override
  String get commentsRulesBody =>
      'QUEBROU UMA REGRA = TÁ FORA\n\n1. Nada de racismo, discriminação ou discurso de ódio\n2. Nada de spam ou autopromoção\n3. Absolutamente nada de conteúdo NSFW\n4. Só em inglês, sem exceção\n5. Nada de se passar por outra pessoa, assédio ou abuso\n6. Nada de conteúdo ilegal nem desrespeito extremo a qualquer fandom\n7. Não peça nem compartilhe repositórios ou extensões\n8. Spoiler só com tag de spoiler e aviso\n9. Nada de sexualizar nem comentários impróprios sobre personagens menores de idade\n10. Se tá errado, não poste!';

  @override
  String get commentsRulesAccept => 'Entendi';

  @override
  String get commentsSortNewest => 'Mais recentes';

  @override
  String get commentsSortOldest => 'Mais antigos';

  @override
  String get commentsSortHighest => 'Mais bem avaliados';

  @override
  String get commentsSortLowest => 'Pior avaliados';

  @override
  String commentsEpisodeShort(int number) {
    return 'Ep. $number';
  }

  @override
  String commentsChapterShort(int number) {
    return 'Cap. $number';
  }

  @override
  String get commentsFilterEpisodeTitle => 'Filtrar por episódio';

  @override
  String get commentsFilterChapterTitle => 'Filtrar por capítulo';

  @override
  String get commentsFilterTagTitle =>
      'Digite um número de episódio ou capítulo';

  @override
  String get commentsFilterHint => 'Número';

  @override
  String get commentsFilterApply => 'Filtrar';

  @override
  String get commentsFilterClear => 'Mostrar tudo';

  @override
  String get commentsPlaceholder => 'Adicione um comentário…';

  @override
  String commentsReplyingTo(String name) {
    return 'Respondendo a $name';
  }

  @override
  String get commentsSend => 'Enviar';

  @override
  String get commentsTagButton => 'Etiqueta';

  @override
  String commentsTagTitle(String label) {
    return 'Tag $label (opcional)';
  }

  @override
  String get commentsTagEpisode => 'episódio';

  @override
  String get commentsTagChapter => 'capítulo';

  @override
  String commentsTagRange(int total) {
    return '1–$total';
  }

  @override
  String commentsTagNumber(String label) {
    return 'Número do $label';
  }

  @override
  String commentsTagTooHigh(int total) {
    return 'A tag não pode passar do total ($total)';
  }

  @override
  String get commentsNoTag => 'Sem tag';

  @override
  String get commentsSpoiler => 'Spoilers';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => 'Buscar GIFs';

  @override
  String get commentsGifEmpty => 'Nenhum GIF encontrado';

  @override
  String get commentsEmptyText => 'O comentário não pode ficar vazio';

  @override
  String get commentsBannedYou => 'Você está banido de comentar';

  @override
  String get commentsEdited => 'Comentário editado';

  @override
  String get commentsDeleted => 'Comentário apagado';

  @override
  String get commentsDeletedPlaceholder => '[apagado]';

  @override
  String get commentsReported => 'Comentário denunciado';

  @override
  String get commentsUserBanned => 'Usuário banido';

  @override
  String get commentsReport => 'Denunciar';

  @override
  String get commentsReportAsk => 'Denunciar esse comentário pros moderadores?';

  @override
  String get commentsDelete => 'Apagar';

  @override
  String get commentsDeleteAsk =>
      'Esse comentário vai ser removido pra todo mundo.';

  @override
  String get commentsBan => 'Banir';

  @override
  String get commentsBanAsk => 'Banir esse usuário de comentar?';

  @override
  String get commentsCopy => 'Copiar';

  @override
  String get commentsViewReply => 'Ver 1 resposta';

  @override
  String commentsViewReplies(int count) {
    return 'Ver $count respostas';
  }

  @override
  String get commentsHideReplies => 'Esconder respostas';

  @override
  String get commentsLoadMore => 'Carregar mais comentários';

  @override
  String get commentsEmpty => 'Nenhum comentário ainda. Seja o primeiro!';

  @override
  String get commentsEmptyFiltered => 'Nenhum comentário pra esse filtro';

  @override
  String get commentsSignIn =>
      'Entre no AniList pra ler e escrever comentários';

  @override
  String get commentsSignInMessage =>
      'Os comentários são compartilhados entre todos os serviços e usam sua conta do AniList.';

  @override
  String get commentsUnavailable => 'Comentários indisponíveis pra esse título';

  @override
  String get commentsUnavailableMessage =>
      'Não deu pra associar a uma entrada do AniList.';

  @override
  String get commentsDisabled => 'Os comentários estão desligados';

  @override
  String get commentsDisabledMessage =>
      'Você pode ligar de novo em Configurações › Geral.';

  @override
  String get commentsOffline => 'Não consegui carregar os comentários';

  @override
  String get commentsSingleTitle => 'Mostrando um comentário';

  @override
  String get commentsShowAll => 'Mostrar todos os comentários';

  @override
  String get commentsSettingsHeader => 'Comentários';

  @override
  String get commentsSettingEnabled => 'Comentários';

  @override
  String get commentsSettingEnabledDesc =>
      'Mostra a aba Comentários nos títulos e faz login no servidor de comentários com sua conta do AniList';

  @override
  String get commentsSettingAlerts => 'Notificações de respostas';

  @override
  String get commentsSettingAlertsDesc =>
      'Me avise quando alguém responder aos meus comentários';

  @override
  String get commentsNoticeReplyTitle => 'Nova resposta a comentário';

  @override
  String commentsNoticeReply(String name) {
    return '$name respondeu ao seu comentário';
  }

  @override
  String get commentsNoticeWarningTitle => 'Você recebeu um aviso';

  @override
  String get commentsNoticeWarning => 'Pense melhor nos seus comentários';

  @override
  String get commentsNoticeUpdateTitle => 'Atualização do Dantotsu';

  @override
  String get barcodeTitle => 'Escanear código de barras';

  @override
  String get barcodeTooltip => 'Ache um mangá ou novel pelo código de barras';

  @override
  String get barcodeIntro =>
      'Aponte a câmera pro código de barras na parte de trás de um volume, ou digite o ISBN.';

  @override
  String get barcodeIntroManual =>
      'Digite o ISBN impresso acima do código de barras na parte de trás de um volume.';

  @override
  String get barcodeIsbnHint => 'ISBN';

  @override
  String get barcodeInvalid => 'Esse ISBN não é válido';

  @override
  String barcodeNotFound(String isbn) {
    return 'Nenhum livro encontrado pra $isbn';
  }

  @override
  String get barcodeCameraDenied =>
      'A câmera não está disponível. Permita o acesso à câmera ou digite o ISBN.';

  @override
  String get themesTitle => 'Aberturas e encerramentos';

  @override
  String get themesPlayVideo => 'Reproduzir vídeo';

  @override
  String get themesPlayAudio => 'Reproduzir só o áudio';

  @override
  String get themesOpenSite => 'Abrir no AnimeThemes';

  @override
  String get themesCredit => 'Temas do AnimeThemes';

  @override
  String get themesVersions => 'Versões';

  @override
  String get sauceTitle => 'Achar a origem';

  @override
  String get sauceIntro =>
      'Envie uma página de mangá ou uma arte, ou cole o link, pra descobrir de onde vem.';

  @override
  String get sauceKeyTitle => 'Chave de API do SauceNAO';

  @override
  String get sauceKeyHint => 'Opcional, aumenta o limite diário de buscas';

  @override
  String get sauceKeyDesc => 'Pegue uma chave grátis em saucenao.com/user.php';

  @override
  String get sauceOpen => 'Abrir origem';

  @override
  String get sauceCredit => 'Busca de imagem pelo SauceNAO';

  @override
  String get sauceEmpty => 'Nenhuma correspondência';

  @override
  String get sauceTooltip => 'Ache a origem de uma página de mangá ou arte';

  @override
  String get trendzTitle => 'Rankings de anime';

  @override
  String get trendzAnime => 'Anime';

  @override
  String get trendzFemale => 'Personagens femininas';

  @override
  String get trendzMale => 'Personagens masculinos';

  @override
  String get trendzCouple => 'Casais';

  @override
  String get trendzCredit => 'Rankings semanais do AniTrendz';

  @override
  String get trendzNew => 'NOVO';

  @override
  String get trendzEmpty => 'O ranking está vazio';

  @override
  String get shareCard => 'Compartilhar cartão';

  @override
  String get shareCardList => 'Compartilhar cartão da lista';

  @override
  String get shareCardSaved => 'Cartão salvo';

  @override
  String get shareCardFailed => 'Não consegui criar o cartão';

  @override
  String get shareCardListEmpty =>
      'Sua lista ainda não tem nada pra compartilhar';

  @override
  String get shareCardTop => 'Minhas escolhas';

  @override
  String themesEpisodes(String eps) {
    return 'Episódios $eps';
  }

  @override
  String sauceSimilarity(String percent) {
    return '$percent% de correspondência';
  }

  @override
  String trendzWeek(String week, String season) {
    return 'Semana $week · $season';
  }

  @override
  String trendzVotes(String count) {
    return '$count votos';
  }

  @override
  String trendzPeak(String rank) {
    return 'Pico #$rank';
  }

  @override
  String trendzWeeks(String count) {
    return '$count semanas no top dez';
  }

  @override
  String get imageSearchTitle => 'Buscar por imagem';

  @override
  String get imageSearchTooltip => 'Ache um anime a partir de um print';

  @override
  String get imageSearchIntro =>
      'Escolha um print ou cole o link de uma imagem e o trace.moe descobre o episódio e o momento de onde veio.';

  @override
  String get imageSearchPick => 'Escolher imagem';

  @override
  String get imageSearchLinkHint => 'Cole o link de uma imagem';

  @override
  String get imageSearchGo => 'Buscar';

  @override
  String get imageSearchEmpty => 'Nenhuma correspondência';

  @override
  String get imageSearchAdult => '18+';

  @override
  String imageSearchEpisode(String number) {
    return 'Episódio $number';
  }

  @override
  String imageSearchAt(String time) {
    return 'aos $time';
  }

  @override
  String get imageSearchPreview => 'Prévia do clipe';

  @override
  String imageSearchSimilarity(int percent) {
    return '$percent% de correspondência';
  }

  @override
  String get imageSearchCredit => 'Feito com trace.moe';

  @override
  String get imageSearchOpenFailed => 'Não consegui abrir esse título';

  @override
  String get groups => 'Grupos';

  @override
  String get groupsYours => 'Seus grupos';

  @override
  String get groupsPopular => 'Populares';

  @override
  String get groupsNew => 'Novos';

  @override
  String get groupsFeatured => 'Em destaque';

  @override
  String get groupsSearch => 'Buscar grupos';

  @override
  String get groupsAll => 'Todos';

  @override
  String get groupsEmpty => 'Nenhum grupo encontrado';

  @override
  String get groupsEmptyYours => 'Você ainda não entrou em nenhum grupo';

  @override
  String get groupsSignIn => 'Entre pra ver os grupos de que você participa';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count membros',
      one: '1 membro',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => 'Entrar';

  @override
  String get groupsJoined => 'Participando';

  @override
  String get groupsLeave => 'Sair do grupo';

  @override
  String get groupsLeaveAsk =>
      'Você vai parar de ver as postagens desse grupo no seu feed.';

  @override
  String get groupsJoinFailed =>
      'Não consegui entrar nesse grupo, pode ser só por convite';

  @override
  String get groupsLeaveFailed => 'Não consegui sair desse grupo';

  @override
  String get groupsPosts => 'Postagens';

  @override
  String get groupsMembersTab => 'Membros';

  @override
  String get groupsAbout => 'Sobre';

  @override
  String get groupsRules => 'Regras';

  @override
  String get groupsPrivacyOpen => 'Aberto';

  @override
  String get groupsPrivacyRestricted => 'Restrito';

  @override
  String get groupsPrivacyClosed => 'Fechado';

  @override
  String get groupsAdult => '18+';

  @override
  String get groupsRoleAdmin => 'Administrador';

  @override
  String get groupsRoleMod => 'Modo';

  @override
  String get groupsCouldntLoad => 'Não consegui carregar esse grupo';

  @override
  String get groupsNewPost => 'Postar no grupo';

  @override
  String get groupsPostHint => 'Compartilhe algo com o grupo';

  @override
  String get groupsOpenInBrowser => 'Abrir no navegador';

  @override
  String get groupsCategory => 'Categoria';

  @override
  String get groupsLanguage => 'Idioma';

  @override
  String get groupsCreated => 'Criado';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count líderes',
      one: '1 líder',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => 'Privacidade';

  @override
  String get notificationsAll => 'Tudo';

  @override
  String get notificationsAiring => 'No ar';

  @override
  String get notificationsMedia => 'Novos títulos';

  @override
  String get notificationsReplies => 'Respostas';

  @override
  String get notificationsMentions => 'Menções';

  @override
  String get notificationsMessages => 'Mensagens';

  @override
  String get notificationsLikes => 'Curtidas';

  @override
  String get notificationsFollows => 'Seguidores';

  @override
  String get notificationsNoServices =>
      'Nenhum serviço logado tem notificações';

  @override
  String get notificationsNoServicesMessage =>
      'Entre num serviço que envia notificações e elas aparecem aqui.';

  @override
  String get notificationsEmptyKind => 'Nada nessa categoria ainda';

  @override
  String get notificationsCommentsEmpty => 'Sem notificações de comentários';

  @override
  String get notificationsCommentsEmptyMessage =>
      'As respostas aos seus comentários e os avisos do Dantotsu aparecem aqui.';

  @override
  String get notificationsSettings => 'Configurações de notificações';

  @override
  String get notificationsPollTitle => 'Verificar novas notificações';

  @override
  String notificationsPollDesc(int minutes) {
    return 'A cada $minutes minutos com o app aberto';
  }

  @override
  String get notificationsNotifyAbout => 'Me avise sobre';

  @override
  String get notificationsCommentsHeader => 'Notificações de comentários';

  @override
  String systemNotificationsDescFor(String service) {
    return 'Mostra uma notificação do sistema pra cada notificação não lida do $service enquanto o app está rodando.';
  }

  @override
  String get notificationsTestSent => 'Notificação de teste enviada';

  @override
  String get notificationsTestDenied =>
      'As notificações não estão permitidas pro Dartotsu. Ligue nas configurações do sistema.';

  @override
  String get notificationsTestHint =>
      'Segure pra enviar uma notificação de teste';

  @override
  String get notificationsTestSample => 'Essa é uma notificação de teste';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return '$name respondeu ao seu comentário em $media';
  }

  @override
  String get imageSearchNotLink => 'Isso não parece um link';

  @override
  String get imageSearchQuota => 'Limite de buscas excedido';

  @override
  String get imageSearchBusy =>
      'Muitas requisições, tente de novo daqui a pouco';

  @override
  String imageSearchFailed(int code) {
    return 'A busca falhou ($code)';
  }

  @override
  String notificationsNewCount(int count) {
    return '$count novas notificações';
  }

  @override
  String get reactionsTitle => 'Reações';

  @override
  String get reactionsNeedEntry =>
      'Adicione esse título à sua lista antes de reagir';

  @override
  String get reactionsAdd => 'Adicionar uma reação';

  @override
  String get reactionsHint => 'O que achou? (curto e sem spoiler)';

  @override
  String get reactionsPost => 'Postar';

  @override
  String get reactionsFailed => 'Não consegui atualizar a reação';

  @override
  String get settingsWatch => 'Assistir e ler';

  @override
  String get settingsWatchDesc =>
      'Listas de episódios, associação de fontes e detalhes dos episódios';

  @override
  String get watchSettingsLayout => 'Lista de episódios';

  @override
  String get watchSettingsSources => 'Fontes';

  @override
  String get watchSettingsMetadata => 'Detalhes do episódio';

  @override
  String get watchLayout => 'Disposição';

  @override
  String get watchListView => 'Lista';

  @override
  String get watchGridView => 'Grade';

  @override
  String get watchCompactView => 'Compacto';

  @override
  String get watchDefaultLayoutDesc =>
      'Como episódios e capítulos aparecem até você mudar num título';

  @override
  String get watchChunkSize => 'Tamanho do intervalo';

  @override
  String get watchChunkSizeDesc =>
      'Quantos episódios ou capítulos cada aba de intervalo tem';

  @override
  String get watchShowDescription => 'Mostrar descrições';

  @override
  String get watchShowDescriptionDesc =>
      'Mostra o resumo do episódio embaixo de cada título no layout em lista';

  @override
  String get watchShowFiller => 'Mostrar episódios filler';

  @override
  String get watchShowFillerDesc =>
      'Desligue pra esconder episódios marcados como filler';

  @override
  String get watchBlurUnwatched => 'Esconder miniaturas com spoiler';

  @override
  String get watchBlurUnwatchedDesc =>
      'Desfoca a miniatura dos episódios que você ainda não assistiu';

  @override
  String get watchResumeShelf => 'Prateleira de continuar';

  @override
  String get watchResumeShelfDesc => 'Mostra a linha Continuar no Início';

  @override
  String get watchMarkOnLongPress => 'Segurar marca o progresso';

  @override
  String get watchMarkOnLongPressDesc =>
      'Segure um episódio ou capítulo pra marcar como assistido ou não assistido';

  @override
  String get watchMatching => 'Associação de fontes';

  @override
  String get watchMatchingDesc =>
      '\"Mais próxima\" pega o melhor resultado da busca. \"Só exata\" aceita apenas um título quase idêntico e deixa o resto pra você escolher.';

  @override
  String get watchMatchClosest => 'Correspondência mais próxima';

  @override
  String get watchMatchExact => 'Só correspondência exata';

  @override
  String get watchMetadataDesc =>
      'De onde vêm os títulos, resumos, miniaturas, datas de exibição e marcas de filler dos episódios. Arraste pra definir a prioridade; vale a primeira fonte com valor.';

  @override
  String get watchMetaAniZipDesc =>
      'Títulos, resumos, imagens e datas de exibição dos episódios';

  @override
  String get watchMetaKitsuDesc =>
      'Títulos, descrições e miniaturas dos episódios';

  @override
  String get watchMetaSimklDesc =>
      'Títulos, descrições, imagens e datas de exibição dos episódios';

  @override
  String get watchMetaAniListDesc =>
      'Títulos e miniaturas dos episódios em streaming e o calendário de exibição';

  @override
  String get watchMetaTenraiDesc =>
      'Títulos, datas de exibição, filler e recaps de episódios do MyAnimeList via Tenrai';

  @override
  String get watchClearMetadata => 'Atualizar detalhes dos episódios';

  @override
  String get watchClearMetadataDesc =>
      'Esquece os detalhes de episódios em cache pra buscar de novo';

  @override
  String get watchMetadataCleared =>
      'Os detalhes dos episódios vão ser buscados de novo';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count episódios',
      one: '1 episódio',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count capítulos',
      one: '1 capítulo',
    );
    return '$_temp0';
  }

  @override
  String watchEpisodeNumber(String number) {
    return 'Episódio $number';
  }

  @override
  String watchChapterNumber(String number) {
    return 'Capítulo $number';
  }

  @override
  String get watchSearching => 'Buscando…';

  @override
  String watchSearchingFor(String term) {
    return 'Buscando: $term';
  }

  @override
  String watchSelected(String title) {
    return 'Selecionado: $title';
  }

  @override
  String watchFound(String title) {
    return 'Encontrado: $title';
  }

  @override
  String get watchNothingFound => 'Nada encontrado nessa fonte';

  @override
  String get watchSearchFailed => 'A busca na fonte falhou';

  @override
  String get watchLoadFailed => 'Não consegui carregar a lista';

  @override
  String get watchSignInToTrack => 'Entre pra acompanhar seu progresso';

  @override
  String watchInstallSource(String action) {
    return 'Instale uma extensão pra começar a $action';
  }

  @override
  String get watchSourceMissing => 'Essa fonte não está instalada';

  @override
  String get watchWrongTitle => 'Título errado?';

  @override
  String get watchSearchAgain => 'Buscar de novo';

  @override
  String watchSearchSource(String source) {
    return 'Buscar em $source';
  }

  @override
  String get watchSource => 'Fonte';

  @override
  String get sourceTags => 'Etiquetas';

  @override
  String get sourceTagsHint =>
      'Marque para que serve esta fonte. Um título lista as fontes marcadas primeiro e depois as não marcadas. Fontes maiores de 18 anos são exibidas apenas para títulos adultos.';

  @override
  String get sourceTagAnime => 'Anime';

  @override
  String get sourceTagMovies => 'Filmes e séries';

  @override
  String get sourceTagAdult => '18+';

  @override
  String get sourceHiddenByTags => 'Oculto por tags';

  @override
  String get watchOptions => 'Opções';

  @override
  String get watchReverse => 'Inverter ordem';

  @override
  String get watchScanlators => 'Grupos';

  @override
  String get watchResetOptions => 'Redefinir essas opções';

  @override
  String get watchContinue => 'Continuar';

  @override
  String get watchStart => 'Iniciar';

  @override
  String get watchPlay => 'Reproduzir';

  @override
  String get watchRead => 'Ler';

  @override
  String get watchMarkWatched => 'Marcar como assistido';

  @override
  String get watchMarkUnwatched => 'Marcar como não assistido';

  @override
  String get watchMarkRead => 'Marcar como lido';

  @override
  String get watchMarkUnread => 'Marcar como não lido';

  @override
  String get watchFiller => 'Preenchimento';

  @override
  String get watchRecap => 'Recapitulação';

  @override
  String get watchNoEpisodes => 'Nenhum episódio encontrado';

  @override
  String get watchNoChapters => 'Nenhum capítulo encontrado';

  @override
  String get watchSourceTools => 'Ferramentas da fonte';

  @override
  String get watchSourceSettings => 'Configurações da fonte';

  @override
  String get watchOpenWebView => 'Abrir na webview';

  @override
  String get watchOpenWebViewDesc =>
      'Resolva uma verificação da Cloudflare ou faça login; os cookies são compartilhados com as requisições da fonte';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cookies salvos pra $host',
      one: '1 cookie salvo pra $host',
      zero: 'Nenhum cookie salvo pra $host',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'Liberação da Cloudflare ativa, $time';
  }

  @override
  String get watchClearanceMissing => 'Sem cookie de liberação da Cloudflare';

  @override
  String get watchClearanceSession => 'dura até o app fechar';

  @override
  String get watchAgentShared =>
      'As requisições usam o user agent da webview, que a Cloudflare confere';

  @override
  String get watchAgentCustom =>
      'Há um user agent personalizado, então a liberação da Cloudflare da webview pode ser rejeitada';

  @override
  String get watchTestConnection => 'Testar conexão';

  @override
  String get watchSolveChallenge => 'Resolver';

  @override
  String watchProbeOk(int code) {
    return 'Acessível (HTTP $code)';
  }

  @override
  String get watchProbeChallenge => 'A Cloudflare ainda pede uma verificação';

  @override
  String watchProbeBlocked(int code) {
    return 'Bloqueado pelo site (HTTP $code)';
  }

  @override
  String get watchProbeFailed => 'Não foi possível acessar o site';

  @override
  String get watchClearCookies => 'Limpar cookies desse site';

  @override
  String get watchCookiesCleared => 'Cookies limpos';

  @override
  String get watchFailTimeout => 'A verificação não terminou a tempo';

  @override
  String get watchFailBlocked =>
      'O site bloqueou este dispositivo (acesso negado). Um cheque não vai ajudar';

  @override
  String get watchFailTurnstile =>
      'Esta verificação precisa de um toque que o solucionador em segundo plano não pode fazer';

  @override
  String get watchFailLoad =>
      'A página não carregou. Verifique a conexão e o endereço do site';

  @override
  String get watchFailRejected =>
      'O site rejeitou a autorização que acabou de dar. Tente novamente ou limpe os cookies';

  @override
  String get watchFailDismissed => 'O cheque foi fechado antes de terminar';

  @override
  String get watchFailCooldown =>
      'Você fechou o cheque há pouco. Pressione Resolver para tentar novamente';

  @override
  String get watchFailQuiet =>
      'A verificação precisa de você e o aplicativo estava funcionando sozinho';

  @override
  String get watchFailWebView =>
      'A visualização da Web em segundo plano não pôde ser iniciada';

  @override
  String get watchFailUnavailable => 'Não há tela para mostrar a verificação';

  @override
  String get watchStatusReady => 'Pronto';

  @override
  String get watchStatusChallenge => 'Verificação Cloudflare necessária';

  @override
  String get watchStatusBlocked => 'Bloqueado pelo site';

  @override
  String get watchStatusOffline => 'Não consigo acessar o site';

  @override
  String get watchStatusUntested => 'Ainda não testado';

  @override
  String get watchStatusTesting => 'Testando a conexão…';

  @override
  String get watchStatusSolving => 'Passando na verificação do Cloudflare…';

  @override
  String watchSolvedBackground(int seconds) {
    return 'Verificação da Cloudflare aprovada em segundo plano ($seconds s)';
  }

  @override
  String get watchSolvedByUser => 'Verificação da Cloudflare aprovada';

  @override
  String watchClearanceIssued(String time) {
    return 'ganhou $time';
  }

  @override
  String get watchClearanceStale =>
      'A autorização foi obtida com outro agente de usuário, portanto não é enviada. Teste a conexão para obter uma nova';

  @override
  String get watchSectionSession => 'Sessão';

  @override
  String get watchSectionTools => 'Ferramentas';

  @override
  String get watchMetaSource => 'Detalhes dos episódios de';

  @override
  String get watchMetaAuto => 'Automático';

  @override
  String get watchMetaOff => 'Desligado';

  @override
  String get playerSettingsTitle => 'Configurações do player';

  @override
  String get playerSectionPlayback => 'Reprodução';

  @override
  String get playerSectionSkip => 'Pular';

  @override
  String get playerSectionGestures => 'Controles';

  @override
  String get playerSectionSubtitles => 'Legendas';

  @override
  String get playerSectionShaders => 'Sombreadores';

  @override
  String get playerSectionEngine => 'Motor';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => 'Velocidade de reprodução';

  @override
  String get localSource => 'Arquivos locais';

  @override
  String get localMissing =>
      'Este arquivo ou pasta não está mais na sua pasta local';

  @override
  String get playerStickyStage => 'Vídeo pegajoso';

  @override
  String get playerStickyStageDesc =>
      'Mantenha o vídeo fixo no topo enquanto você rola os episódios e comentários abaixo';

  @override
  String get playerCursedSpeed => 'Velocidades extras';

  @override
  String get playerCursedSpeedDesc => 'Adiciona velocidades de até 10x à lista';

  @override
  String get playerResize => 'Modo de redimensionamento';

  @override
  String get playerFitFit => 'Ajustar';

  @override
  String get playerFitCover => 'Cobrir';

  @override
  String get playerFitStretch => 'Esticar';

  @override
  String get playerSkipDuration => 'Duração do botão de pular';

  @override
  String get playerSkipDurationDesc =>
      'Segundos que o botão de pular avança fora das aberturas e encerramentos';

  @override
  String get playerSeekDuration => 'Toque duplo pra avançar';

  @override
  String get playerSeekDurationDesc =>
      'Segundos pra pular com um toque duplo ou tecla de seta';

  @override
  String get playerAutoPlay => 'Reproduzir o próximo automaticamente';

  @override
  String get playerAutoPlayDesc =>
      'Começa o próximo episódio quando esse acabar';

  @override
  String get playerResume => 'Continuar de onde parou';

  @override
  String get playerResumeDesc => 'Continua um episódio da última posição';

  @override
  String get playerOrientation => 'Orientação';

  @override
  String get playerOrientationAuto => 'Seguir o dispositivo';

  @override
  String get playerOrientationLandscape => 'Paisagem';

  @override
  String get playerOrientationPortrait => 'Retrato';

  @override
  String get playerAutoSkipOpening => 'Pular aberturas';

  @override
  String get playerAutoSkipEnding => 'Pular encerramentos';

  @override
  String get playerAutoSkipRecap => 'Pular recaps';

  @override
  String get playerAutoSkipDesc =>
      'Pula assim que começa, usando AniSkip e marcações de tempo do stream';

  @override
  String get playerDisableSkips => 'Desativar pulos';

  @override
  String get playerDisableSkipsDesc =>
      'Sem AniSkip ou carimbos de data e hora de transmissão, marcas de capítulo ou pular envios no player';

  @override
  String get playerSkipOnce => 'Pular só uma vez';

  @override
  String get playerSkipOnceDesc =>
      'Não pula a mesma parte de novo se você voltar nela';

  @override
  String get playerAdjustBrightness => 'Gesto de brilho';

  @override
  String get playerAdjustBrightnessDesc =>
      'Deslize pra cima e pra baixo na metade direita da tela';

  @override
  String get playerAdjustVolume => 'Gesto de volume';

  @override
  String get playerAdjustVolumeDesc =>
      'Deslize pra cima e pra baixo na metade esquerda da tela';

  @override
  String get playerHoldToSpeed => 'Segurar pra acelerar';

  @override
  String get playerHoldToSpeedDesc =>
      'Segure o vídeo pra reproduzir mais rápido, arraste pro lado pra mudar a velocidade';

  @override
  String get playerThumbless => 'Barra de progresso mais grossa';

  @override
  String get playerThumblessDesc => 'Uma barra grossa sem indicador';

  @override
  String get playerShowSubtitles => 'Mostrar legendas';

  @override
  String get playerShowSubtitlesDesc =>
      'Desligue pra esconder todas as faixas de legenda';

  @override
  String get playerSubtitleLanguage => 'Idioma preferido das legendas';

  @override
  String get playerSubtitleSize => 'Tamanho da legenda';

  @override
  String get playerSubtitleWeight => 'Espessura da legenda';

  @override
  String get playerSubtitleBottom => 'Margem inferior da legenda';

  @override
  String get playerSubtitleFont => 'Fonte da legenda';

  @override
  String get playerSubtitleColor => 'Cor da legenda';

  @override
  String get playerSubtitleBackground => 'Fundo da legenda';

  @override
  String get playerSubtitleOutline => 'Contorno da legenda';

  @override
  String get playerSubtitleOutlineWidth => 'Largura do contorno da legenda';

  @override
  String get playerSubtitlePreview => 'Visualização da legenda';

  @override
  String get playerSubtitlePreviewText => 'Texto de visualização da legenda';

  @override
  String get playerLibass => 'Usar libass';

  @override
  String get playerLibassDesc =>
      'Renderiza legendas .ass estilizadas. O tamanho, a cor e a fonte acima deixam de valer';

  @override
  String get playerShaders => 'Sombreadores';

  @override
  String get playerShadersEnable => 'Ativar shaders';

  @override
  String get playerShadersEnableDesc =>
      'Aumenta a resolução e limpa a imagem com shaders GLSL como o Anime4K';

  @override
  String get playerShadersOff => 'Shaders desligados';

  @override
  String get playerShadersMissing => 'O Anime4K não está instalado';

  @override
  String get playerShadersMissingDesc =>
      'Baixe o pacote de shaders do Anime4K (cerca de 0,8 MB) pra usar os modos integrados.';

  @override
  String get playerShadersDownload => 'Baixar Anime4K';

  @override
  String get playerPictureSave => 'Salve este quadro';

  @override
  String get playerPictureOriginal => 'Originais';

  @override
  String get playerPictureOriginalDesc =>
      'O quadro conforme o vídeo, sem shaders ou cores';

  @override
  String get playerPictureProcessed => 'Com shaders e cores';

  @override
  String get playerPictureProcessedDesc => 'A moldura como você a vê agora';

  @override
  String get playerPictureSaved => 'Quadro salvo';

  @override
  String get playerPictureSaveFailed => 'Não foi possível salvar o quadro';

  @override
  String get playerShadersPreview => 'Prévia nesse frame';

  @override
  String get playerShadersUse => 'Usar esse';

  @override
  String get playerPicture => 'Imagem';

  @override
  String get playerColors => 'Cores';

  @override
  String get playerColorDefault => 'Padrão';

  @override
  String get playerColorVivid => 'Vívido';

  @override
  String get playerColorPop => 'Anime pop';

  @override
  String get playerColorSoft => 'Suave';

  @override
  String get playerColorCinematic => 'Cinematográfico';

  @override
  String get playerColorBright => 'Brilhante';

  @override
  String get playerColorNight => 'Noite';

  @override
  String get playerColorMono => 'Mono';

  @override
  String get playerColorCustom => 'Personalizado';

  @override
  String get playerColorBrightness => 'Brilho';

  @override
  String get playerColorContrast => 'Contraste';

  @override
  String get playerColorSaturation => 'Saturação';

  @override
  String get playerColorGamma => 'Gama';

  @override
  String get playerColorHue => 'Matiz';

  @override
  String get playerColorReset => 'Redefinir';

  @override
  String get playerColorAdjust => 'Ajustar';

  @override
  String get playerShadersOriginal => 'Originais';

  @override
  String get playerShadersPreviewFailed =>
      'Não consegui pegar um frame pra prévia';

  @override
  String get playerShadersSoftware =>
      'Os shaders precisam de renderização de hardware e o player está usando renderização de software. Desative a renderização de software nas configurações do Player.';

  @override
  String get playerSoftwareRender => 'Renderização de software';

  @override
  String get playerSoftwareRenderDesc =>
      'Apenas para um vídeo preto. Shaders não funcionam com isso. Aplica-se na próxima vez que o player abrir';

  @override
  String get playerShadersCustomFiles => 'Seus shaders';

  @override
  String get playerShadersCustom => 'Shaders personalizados';

  @override
  String get playerShadersImport => 'Importar .glsl';

  @override
  String get playerShadersNone =>
      'Importe seus próprios arquivos .glsl ou .hook e marque pra encadear';

  @override
  String get playerShadersBadFile =>
      'Escolha um arquivo de shader .glsl ou .hook';

  @override
  String get playerDecoder => 'Decodificador';

  @override
  String get playerDecoderAuto => 'Automático';

  @override
  String get playerDecoderAutoSafe => 'Auto (seguro)';

  @override
  String get playerDecoderSoftware => 'Programas';

  @override
  String get playerDecoderHardware => 'Hardware';

  @override
  String get playerDecoderHardwarePlus => 'Hardware+';

  @override
  String get playerVideoOutput => 'Saída de vídeo';

  @override
  String get playerAudioChannels => 'Canais de áudio';

  @override
  String get playerBuffer => 'Tamanho do buffer (MB)';

  @override
  String get playerBufferDesc =>
      'Memória que o player pode usar pra fazer buffer de um stream';

  @override
  String get playerUseMpvConf => 'Usar mpv.conf';

  @override
  String get playerUseMpvConfDesc =>
      'Aplica as opções do seu mpv.conf quando a reprodução começa';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => 'Edite a configuração do mpv';

  @override
  String get playerMpvConfDesc =>
      'Uma opção por linha, como --hwdec=auto num mpv.conf normal. Perfis entre [colchetes] são ignorados.';

  @override
  String get playerMpvConfSaved => 'mpv.conf salvo';

  @override
  String get playerUseScripts => 'Usar scripts do mpv';

  @override
  String get playerUseScriptsDesc =>
      'Carrega os plugins da pasta de scripts. Precisam de uma build do libmpv com suporte a Lua ou JavaScript';

  @override
  String get playerScripts => 'Scripts do mpv';

  @override
  String get playerScriptsManage => 'Adicione, remova e alterne plugins';

  @override
  String get playerScriptsAdd => 'Adicionar script';

  @override
  String get playerScriptsDesc =>
      'Plugins Lua, JavaScript e nativos colocados aqui são carregados quando a reprodução começa.';

  @override
  String get playerScriptsNone => 'Nenhum script ainda';

  @override
  String get playerScriptsBadFile =>
      'Escolha um arquivo .lua, .js ou plugin nativo';

  @override
  String get playerTuning => 'Ajuste avançado de vídeo';

  @override
  String get playerTuningDesc =>
      'Sobrescreve sincronização, cache, escalonamento e tone mapping. Valores errados podem prejudicar a reprodução';

  @override
  String get playerVideoSync => 'Sincronização de vídeo';

  @override
  String get playerInterpolation => 'Interpolação de frames';

  @override
  String get playerInterpolationDesc =>
      'Movimento suave, precisa de sincronização display-resample';

  @override
  String get playerPitch => 'Correção de tom';

  @override
  String get playerPitchDesc =>
      'Mantém as vozes naturais em outras velocidades';

  @override
  String get playerCacheSeconds => 'Cache (segundos)';

  @override
  String get playerReadahead => 'Leitura antecipada (segundos)';

  @override
  String get playerThreads => 'Threads do decodificador';

  @override
  String get playerDeband => 'Desbandar';

  @override
  String get playerDebandDesc => 'Reduz as faixas de cor nos gradientes';

  @override
  String get playerDebandIterations => 'Iterações do deband';

  @override
  String get playerDebandThreshold => 'Limiar do deband';

  @override
  String get playerCorrectDownscaling => 'Redução correta';

  @override
  String get playerSigmoid => 'Escalonamento sigmoide';

  @override
  String get playerScale => 'Escalonador';

  @override
  String get playerCscale => 'Escalonador de croma';

  @override
  String get playerDscale => 'Redutor';

  @override
  String get playerToneMapping => 'Mapeamento de tons';

  @override
  String get playerTargetPeak => 'Pico alvo';

  @override
  String get playerOpenFiles => 'Abrir arquivos de vídeo';

  @override
  String get playerOpenFilesDesc => 'Reproduz arquivos desse dispositivo';

  @override
  String get playerOpenFolder => 'Abrir uma pasta';

  @override
  String get playerOpenFolderDesc =>
      'Reproduz todos os vídeos de uma pasta como playlist';

  @override
  String get playerNetworkStream => 'Stream de rede';

  @override
  String get playerNetworkStreamDesc => 'Abre um link direto de vídeo ou HLS';

  @override
  String get playerStreamUrl => 'URL do stream';

  @override
  String get playerStreamReferer => 'Referer (opcional)';

  @override
  String get playerTorrent => 'Torrente';

  @override
  String get playerTorrentDesc =>
      'Faz stream de um link magnet ou arquivo .torrent';

  @override
  String get playerMagnetLink => 'Link magnet ou URL de torrent';

  @override
  String get playerPickTorrent => 'Escolher um arquivo .torrent';

  @override
  String get playerTorrentMissing =>
      'Instale primeiro o complemento de torrent em Configurações > Complementos';

  @override
  String get playerNoVideos => 'Nenhum vídeo reproduzível encontrado';

  @override
  String get playerReset => 'Redefinir configurações do player';

  @override
  String get playerResetDesc => 'Volta todas as opções do player pro padrão';

  @override
  String get playerResetConfirm =>
      'Redefinir todas as configurações do player?';

  @override
  String get playerResetDone => 'Configurações do player redefinidas';

  @override
  String get playerQuality => 'Qualidade';

  @override
  String get streamGroupSub => 'Sub';

  @override
  String get streamGroupHardSub => 'Subdifícil';

  @override
  String get streamGroupSoftSub => 'Sub suave';

  @override
  String get streamGroupDub => 'Duplicar';

  @override
  String get streamGroupRaw => 'Cru';

  @override
  String get streamGroupOther => 'Outro';

  @override
  String streamsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count fluxos',
      one: '1 fluxo',
    );
    return '$_temp0';
  }

  @override
  String get playerStreams => 'Fluxos';

  @override
  String get playerStreamFailedNext =>
      'Essa transmissão não reproduz, estou tentando a próxima';

  @override
  String get playerAutoSelect => 'Escolher stream automaticamente';

  @override
  String get playerAutoSelectDesc =>
      'Escolhe o stream mais parecido com sua última escolha pra esse título';

  @override
  String get playerLoadingStreams => 'Procurando streams…';

  @override
  String get playerNoStreams => 'Esse episódio não tem streams';

  @override
  String get playerNoStreamsTitle => 'Nenhum stream encontrado';

  @override
  String get playerFailed => 'A reprodução falhou';

  @override
  String get playerTorrentNeeded => 'Esse stream é um torrent';

  @override
  String get playerTorrentNeededDesc =>
      'Instale o complemento de torrent pra reproduzir links magnet e arquivos .torrent';

  @override
  String get playerOpenAddons => 'Abrir complementos';

  @override
  String get playerTryAnotherStream => 'Tentar outro stream';

  @override
  String get playerEpisodes => 'Episódios';

  @override
  String get playerLock => 'Travar controles';

  @override
  String get playerFullscreen => 'Tela cheia';

  @override
  String get readerChapters => 'Capítulos';

  @override
  String get readerSettingsTitle => 'Configurações do leitor';

  @override
  String get readerPreviousChapter => 'Capítulo anterior';

  @override
  String get readerNextChapter => 'Próximo capítulo';

  @override
  String get readerFirstChapter => 'Esse é o primeiro capítulo';

  @override
  String get readerLastChapter => 'Você está em dia';

  @override
  String get readerFailed => 'Não consegui abrir esse capítulo';

  @override
  String get readerOpenBook => 'Abra um livro';

  @override
  String get readerOpenBookDesc =>
      'Leia um epub (leitor de romance) ou PDF (leitor de mangá) de seus arquivos';

  @override
  String get readerNoText => 'Esse capítulo não tem texto';

  @override
  String get readerPerTitle => 'Só pra esse título';

  @override
  String get readerPerTitleDesc =>
      'Mantém essas configurações do leitor só pra esse título';

  @override
  String get readerSectionReading => 'Leitura';

  @override
  String get readerSectionControls => 'Controles';

  @override
  String get readerSectionDisplay => 'Tela';

  @override
  String get readerSectionNovel => 'Romance';

  @override
  String get readerMode => 'Modo de leitura';

  @override
  String get readerModeAuto => 'Automático (por tipo de série)';

  @override
  String get readerModeRtl => 'Da direita pra esquerda';

  @override
  String get readerModeLtr => 'Da esquerda pra direita';

  @override
  String get readerModeVertical => 'Páginas na vertical';

  @override
  String get readerModeWebtoon => 'Webtoons';

  @override
  String get readerModeContinuous => 'Rolagem contínua';

  @override
  String get readerScale => 'Escala da imagem';

  @override
  String get readerScaleFit => 'Ajustar à tela';

  @override
  String get readerScaleWidth => 'Ajustar à largura';

  @override
  String get readerScaleHeight => 'Ajustar à altura';

  @override
  String get readerScaleOriginal => 'Tamanho original';

  @override
  String get readerScaleSmart => 'Ajuste inteligente';

  @override
  String get readerDoublePage => 'Páginas duplas';

  @override
  String get readerDoublePageDesc =>
      'Mostra duas páginas lado a lado na paisagem';

  @override
  String get readerDoubleTapZoom => 'Toque duplo pra dar zoom';

  @override
  String get readerDoubleTapZoomDesc =>
      'Aumenta e diminui uma página com um toque duplo';

  @override
  String get readerAnimate => 'Animação de página';

  @override
  String get readerAnimateDesc => 'Animar a troca de páginas';

  @override
  String get readerSidePadding => 'Margem lateral';

  @override
  String get readerSidePaddingDesc =>
      'Espaço ao lado das páginas, em porcentagem';

  @override
  String get readerPageGap => 'Espaço entre páginas';

  @override
  String get readerPageGapDesc => 'Espaço entre as páginas';

  @override
  String get readerAutoNext => 'Continuar no próximo capítulo';

  @override
  String get readerAutoNextDesc =>
      'Carrega o próximo capítulo enquanto você lê o final desse';

  @override
  String get readerPreload => 'Pré-carregar páginas';

  @override
  String get readerPreloadDesc => 'Quantas páginas baixar com antecedência';

  @override
  String get readerTapZones => 'Zonas de toque';

  @override
  String get readerTapDefault => 'Padrão';

  @override
  String get readerTapLShaped => 'Em L';

  @override
  String get readerTapKindle => 'Estilo Kindle';

  @override
  String get readerTapEdge => 'Só as bordas';

  @override
  String get readerTapOff => 'Desativado';

  @override
  String get readerInvertTaps => 'Inverter zonas de toque';

  @override
  String get readerInvertTapsDesc => 'Troca as áreas de anterior e próximo';

  @override
  String get readerBackground => 'Fundo';

  @override
  String get readerBackgroundBlack => 'Preto';

  @override
  String get readerBackgroundGray => 'Cinza';

  @override
  String get readerBackgroundWhite => 'Branco';

  @override
  String get readerBackgroundTheme => 'Tema do app';

  @override
  String get readerFilter => 'Filtro de cor';

  @override
  String get readerFilterNone => 'Nenhum';

  @override
  String get readerFilterGrayscale => 'Tons de cinza';

  @override
  String get readerFilterInvert => 'Inverter';

  @override
  String get readerFilterSepia => 'Sépia';

  @override
  String get readerFilterQuality => 'Qualidade do filtro de imagem';

  @override
  String get readerFilterQualityNone => 'Nenhum (vizinho mais próximo)';

  @override
  String get readerFilterQualityLow => 'Baixo (bilinear)';

  @override
  String get readerFilterQualityMedium => 'Médio (Trilinear)';

  @override
  String get readerFilterQualityHigh => 'Alto (Bicúbico)';

  @override
  String get readerFilterQualityLanczos =>
      'Lanczos (ferrugem de alta qualidade)';

  @override
  String get readerDim => 'Escurecer';

  @override
  String get readerDimDesc => 'Escurece as páginas';

  @override
  String get readerPageNumber => 'Número da página';

  @override
  String get readerPageNumberDesc =>
      'Mostra o número da página enquanto você lê';

  @override
  String get readerFullscreen => 'Tela cheia';

  @override
  String get readerFullscreenDesc => 'Esconde as barras do sistema';

  @override
  String get readerCropBorders => 'Cortar bordas';

  @override
  String get readerCropBordersDesc =>
      'Corta margens brancas ou pretas vazias das páginas';

  @override
  String get readerLongPressSave => 'Segure uma página para salvá-la';

  @override
  String get readerLongPressSaveDesc =>
      'Pressione longamente uma página para abrir as opções de salvar, compartilhar e copiar';

  @override
  String get readerVolumeKeys => 'Teclas de volume viram a página';

  @override
  String get readerVolumeKeysDesc =>
      'Volume pra baixo avança, volume pra cima volta';

  @override
  String get readerBookmarks => 'Marcadores';

  @override
  String get readerBookmarkAdd => 'Adicionar marcador';

  @override
  String get readerBookmarkRemove => 'Remover marcador';

  @override
  String get readerBookmarksEmpty => 'Nenhum marcador ainda';

  @override
  String readerBookmarkPage(int page, int total) {
    return 'Página $page de $total';
  }

  @override
  String get readerAutoScroll => 'Rolagem automática';

  @override
  String get readerAutoScrollStop => 'Parar rolagem automática';

  @override
  String get readerAutoScrollSpeed => 'Velocidade da rolagem automática';

  @override
  String get readerAutoScrollSpeedDesc =>
      'Com que rapidez as páginas rolam ou viram sozinhas';

  @override
  String get readerKeepOn => 'Manter a tela ligada';

  @override
  String get readerKeepOnDesc => 'Impede a tela de apagar enquanto você lê';

  @override
  String get readerOrientation => 'Orientação';

  @override
  String get readerOrientationFree => 'Livre';

  @override
  String get readerOrientationPortrait => 'Retrato';

  @override
  String get readerOrientationLandscape => 'Paisagem';

  @override
  String get readerSaveProgress => 'Salvar progresso';

  @override
  String get readerSaveProgressDesc =>
      'Lembra da sua página e marca capítulos como lidos';

  @override
  String get readerReset => 'Redefinir configurações do leitor';

  @override
  String get readerResetDesc => 'Voltar pro padrão';

  @override
  String get readerResetConfirm =>
      'Redefinir todas as configurações do leitor para o padrão?';

  @override
  String get novelSize => 'Tamanho do texto';

  @override
  String get novelFont => 'Fonte';

  @override
  String get novelLineHeight => 'Altura da linha';

  @override
  String get novelParagraph => 'Espaço entre parágrafos';

  @override
  String get novelMargin => 'Margens';

  @override
  String get novelTheme => 'Tema do leitor';

  @override
  String get novelThemeApp => 'Tema do app';

  @override
  String get novelThemeLight => 'Claro';

  @override
  String get novelThemeSepia => 'Sépia';

  @override
  String get novelThemeDark => 'Escuro';

  @override
  String get novelThemeBlack => 'Preto';

  @override
  String get novelJustify => 'Justificar texto';

  @override
  String get novelJustifyDesc => 'Alinha o texto nas duas bordas';

  @override
  String get trackProgressTitle => 'Salvar progresso?';

  @override
  String trackProgressAnime(String name) {
    return 'Registrar $name na sua lista enquanto assiste? Escolha \"Só nesse dispositivo\" pra manter local, ou Não pra não salvar nada.';
  }

  @override
  String trackProgressManga(String name) {
    return 'Registrar $name na sua lista quando terminar um capítulo? Escolha \"Só nesse dispositivo\" pra manter local, ou Não pra não salvar nada.';
  }

  @override
  String trackProgressAnimeLocal(String name) {
    return 'Salvar seu progresso em $name em sua lista neste dispositivo enquanto assiste?';
  }

  @override
  String trackProgressMangaLocal(String name) {
    return 'Salvar seu progresso em $name em sua lista neste dispositivo quando terminar um capítulo?';
  }

  @override
  String get downloadClearQueue => 'Limpar fila';

  @override
  String downloadClearQueueConfirm(int count) {
    return 'Cancelar todos os downloads $count na fila? O que já foi baixado é excluído.';
  }

  @override
  String downloadSelectedCount(int count) {
    return '$count selecionado';
  }

  @override
  String get downloadSelectAll => 'Selecionar tudo';

  @override
  String get downloadDeleteSelected => 'Excluir selecionado';

  @override
  String downloadDeleteSelectedConfirm(int count) {
    return 'Excluir downloads $count? Seus arquivos são removidos do dispositivo.';
  }

  @override
  String get castTitle => 'Transmitir para dispositivo';

  @override
  String get castSearching => 'Procurando dispositivos na sua rede…';

  @override
  String get castNoDevices =>
      'Nenhum dispositivo encontrado. Certifique-se de que a TV ou o Chromecast estejam no mesmo Wi-Fi e pesquise novamente.';

  @override
  String get castRefresh => 'Pesquise novamente';

  @override
  String get castFailed => 'Não foi possível iniciar a transmissão';

  @override
  String get castStop => 'Pare de transmitir';

  @override
  String castNowCasting(String name) {
    return 'Transmitindo para $name';
  }

  @override
  String get castProtocolChromecast => 'Chromecast';

  @override
  String get castProtocolDlna => 'DLNA/Smart TV';

  @override
  String get castProtocolRoku => 'Roku';

  @override
  String get castRokuNote => 'Roku não pode denunciar ou alterar a posição';

  @override
  String get castControls => 'Controles';

  @override
  String get castVolume => 'Volume da TV';

  @override
  String castSkipPart(String name) {
    return 'Pular $name';
  }

  @override
  String get trackProgressRememberSeries => 'Lembre-se desta série';

  @override
  String get trackProgressYes => 'Salvar';

  @override
  String get trackProgressReset =>
      'Pergunta de salvar progresso redefinida pra esse tipo, vai perguntar de novo';

  @override
  String get trackProgressNo => 'Não';

  @override
  String get trackProgressOff => 'Desligado';

  @override
  String get trackProgressLocal => 'Só nesse dispositivo';

  @override
  String get trackProgressSettingAnime => 'Registrar progresso de anime';

  @override
  String get trackProgressSettingManga =>
      'Registrar progresso de mangá e novel';

  @override
  String get trackProgressSettingDesc =>
      'O que fazer quando você abre um episódio ou termina um capítulo';

  @override
  String get trackProgressAsk => 'Perguntar';

  @override
  String get trackProgressAlways => 'Sempre';

  @override
  String get dantotsuImport => 'Importar do Dantotsu';

  @override
  String get dantotsuImportDesc =>
      'Lê um backup de configurações do Dantotsu (.ani, ou .sani criptografado)';

  @override
  String get dantotsuPick => 'Escolha um backup do Dantotsu';

  @override
  String get dantotsuNothing => 'Nada nesse arquivo pode ser importado';

  @override
  String get dantotsuApply => 'Importar selecionados';

  @override
  String dantotsuDone(int done, int total) {
    return 'Importados $done de $total';
  }

  @override
  String get dantotsuGroupAccounts => 'Contas';

  @override
  String get dantotsuGroupAppearance => 'Aparência';

  @override
  String get dantotsuGroupExtensions => 'Extensões';

  @override
  String get dantotsuGroupApp => 'Aplicativo';

  @override
  String get dantotsuGroupPlayer => 'Jogador';

  @override
  String get dantotsuAnilist => 'Login do AniList';

  @override
  String get dantotsuMal => 'Login do MyAnimeList';

  @override
  String get dantotsuDiscord => 'Token do Discord Rich Presence';

  @override
  String get dantotsuTheme => 'Tema';

  @override
  String get themePickerTitle => 'Tema';

  @override
  String get dantotsuReposAnime => 'Repositórios de extensões de anime';

  @override
  String get dantotsuReposManga => 'Repositórios de extensões de mangá';

  @override
  String get dantotsuReposNovel => 'Repositórios de extensões de novel';

  @override
  String get dantotsuUpdates => 'Verificação de atualização';

  @override
  String get dantotsuComments => 'Comentários';

  @override
  String get dantotsuActivity => 'Verificação de notificações do AniList';

  @override
  String get dantotsuDns => 'Provedor de DNS';

  @override
  String get dantotsuPlayer => 'Velocidade do player e cores das legendas';

  @override
  String get dantotsuWarning =>
      'Esse arquivo contém tokens de login. Mantenha privado.';

  @override
  String get novelIndent => 'Recuar parágrafos';

  @override
  String get novelIndentDesc =>
      'Começa cada parágrafo com recuo na primeira linha';

  @override
  String get novelLetterSpacing => 'Espaçamento entre letras';

  @override
  String get novelSectionTranslate => 'Tradução';

  @override
  String get sectionExperimental => 'Experimental';

  @override
  String get kitsuGraphqlDetail => 'Páginas de detalhes mais rápidas (GraphQL)';

  @override
  String get kitsuGraphqlDetailDesc =>
      'Carrega um título com personagens, equipe e sua entrada numa requisição só';

  @override
  String get togetherTitle => 'Assistir junto';

  @override
  String get togetherIntro =>
      'Cole o link da sala que seu amigo mandou. Você entra na hora e o player abre quando ele começar a assistir.';

  @override
  String togetherLinkConfirm(String room) {
    return 'Entrar na sala $room? O anfitrião escolhe o que toca e o player abre sozinho quando começa a assistir.';
  }

  @override
  String get togetherJoin => 'Junte-se';

  @override
  String get togetherName => 'Seu nome';

  @override
  String get togetherConnecting => 'Conectando…';

  @override
  String get togetherLeave => 'Sair da sala';

  @override
  String get togetherYou => 'Você';

  @override
  String get togetherNoChat => 'Nenhuma mensagem ainda';

  @override
  String get togetherChatHint => 'Mensagem';

  @override
  String get togetherCopyInvite => 'Copiar convite';

  @override
  String get togetherShareInvite => 'Compartilhar convite';

  @override
  String togetherShareText(String link) {
    return 'Assista comigo no Dartotsu: $link';
  }

  @override
  String get togetherInviteCopied => 'Servidor e sala copiados';

  @override
  String get togetherConnectionLost => 'Conexão perdida';

  @override
  String togetherConnectedTo(String room) {
    return 'Conectado a $room';
  }

  @override
  String togetherFailed(String error) {
    return 'Não consegui conectar: $error';
  }

  @override
  String togetherJoined(String name) {
    return '$name entrou';
  }

  @override
  String togetherLeft(String name) {
    return '$name saiu';
  }

  @override
  String togetherPaused(String name) {
    return '$name pausou';
  }

  @override
  String togetherResumed(String name) {
    return '$name retomou';
  }

  @override
  String togetherSeeked(String name, String time) {
    return '$name pulou pra $time';
  }

  @override
  String get togetherFollowFailed =>
      'Não consegui abrir o episódio do host. Abra você mesmo.';

  @override
  String get togetherJoinRole => 'Entrar numa sala';

  @override
  String get togetherOpenHost => 'Abrir episódio do host';

  @override
  String get togetherShowChat => 'Mostrar chat ao vivo';

  @override
  String get togetherWaitingHost => 'Esperando o host iniciar um episódio';

  @override
  String get togetherRoomLink => 'Link da sala';

  @override
  String get togetherBadLink => 'Isso não é um link de sala';

  @override
  String get togetherHostClosed => 'O host fechou a sala';

  @override
  String get togetherNowPlaying => 'Reproduzindo agora';

  @override
  String togetherWatchingCount(int count) {
    return '$count assistindo';
  }

  @override
  String togetherWantsPause(String user) {
    return '$user quer pausar';
  }

  @override
  String togetherWantsResume(String user) {
    return '$user quer retomar';
  }

  @override
  String get togetherChip => 'Juntos';

  @override
  String get togetherSettingsDesc => 'Entre na sala de um amigo com um link';

  @override
  String get novelBilingual => 'Mostrar original e tradução';

  @override
  String get novelBilingualDesc =>
      'Cada parágrafo mostra o texto original com a tradução embaixo';

  @override
  String get novelTranslateTo => 'Traduzir pra';

  @override
  String get novelTranslateOff => 'Desligado';

  @override
  String get novelSectionSpeech => 'Texto pra fala';

  @override
  String get novelSpeechRate => 'Velocidade da fala';

  @override
  String get novelSpeechPitch => 'Tom da fala';

  @override
  String get novelSpeak => 'Ler em voz alta';

  @override
  String get novelSpeakStop => 'Parar leitura em voz alta';

  @override
  String get novelTranslate => 'Traduzir capítulo';

  @override
  String get novelTranslateShowOriginal => 'Mostrar original';

  @override
  String novelTranslateFailed(String error) {
    return 'A tradução falhou: $error';
  }

  @override
  String get novelSpeechUnavailable =>
      'Texto pra fala não está disponível nesse dispositivo';

  @override
  String get novelSpeechVoice => 'Voz';

  @override
  String get novelSpeechVoiceDefault => 'Padrão do sistema';

  @override
  String get novelSpeakPrevious => 'Linha anterior';

  @override
  String get novelSpeakNext => 'Próxima linha';

  @override
  String get novelTapPaging => 'Toque nas bordas pra virar a página';

  @override
  String get novelTapPagingDesc =>
      'Toque no lado esquerdo ou direito pra rolar uma página, o meio mostra os controles';

  @override
  String get novelPaged => 'Virar página';

  @override
  String get novelPagedDesc =>
      'Divida o capítulo em páginas e deslize ou toque para girá-los em vez de rolar';

  @override
  String novelPageOf(int current, int total) {
    return 'Página $current de $total';
  }

  @override
  String get novelPaginating => 'Disposição de páginas';

  @override
  String get novelTools => 'Conteúdo, pesquisa e destaques';

  @override
  String get novelContents => 'Conteúdo';

  @override
  String get novelContentsEmpty => 'Este capítulo não tem títulos';

  @override
  String get novelSearch => 'Pesquisar';

  @override
  String get novelSearchHint => 'Pesquise neste capítulo';

  @override
  String get novelSearchNone => 'Nenhuma correspondência';

  @override
  String novelSearchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count corresponde',
      one: '1 partida',
    );
    return '$_temp0';
  }

  @override
  String get novelHighlights => 'Destaques';

  @override
  String get novelHighlightsEmpty =>
      'Selecione algum texto e toque em Destacar para mantê-lo aqui';

  @override
  String get novelHighlight => 'Destaque';

  @override
  String get novelHighlightNote => 'Nota';

  @override
  String get novelHighlightNoteHint => 'Adicione uma nota';

  @override
  String get novelHighlightRemove => 'Remover destaque';

  @override
  String get novelHighlightFailed =>
      'Não foi possível corresponder essa seleção ao texto';

  @override
  String novelMinutesLeft(int count) {
    return 'faltam $count min';
  }

  @override
  String get novelBold => 'Texto em negrito';

  @override
  String get novelBoldDesc => 'Usa uma espessura maior';

  @override
  String readerFinishedChapter(String chapter) {
    return '$chapter finalizado';
  }

  @override
  String readerNextUp(String chapter) {
    return 'Próximo: $chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return 'Anterior: $chapter';
  }

  @override
  String get readerNoPages => 'Esse capítulo não tem páginas';

  @override
  String get readerLoadingPages => 'Carregando páginas…';

  @override
  String get readerSlowPage => 'Essa página ainda está carregando…';

  @override
  String get readerPageFailed => 'Não consegui carregar essa página';

  @override
  String get playerShowComments => 'Mostrar comentários';

  @override
  String get playerHideComments => 'Esconder comentários';

  @override
  String get playerSubtitles => 'Legendas';

  @override
  String get playerSubtitlesOff => 'Legendas desligadas';

  @override
  String get playerAudio => 'Áudio';

  @override
  String get playerAddSubtitle => 'Adicionar arquivo de legenda';

  @override
  String get playerAddAudio => 'Adicionar arquivo de áudio';

  @override
  String get playerChapters => 'Capítulos';

  @override
  String get playerSkipSubmit => 'Enviar tempos de salto';

  @override
  String get playerSkipSubmitDesc =>
      'Marque onde começa e termina a abertura, final ou recapitulação deste episódio e compartilhe com o AniSkip, para que todos recebam o botão pular.';

  @override
  String get playerSkipStart => 'Começar';

  @override
  String get playerSkipEnd => 'Fim';

  @override
  String get playerSkipUseNow => 'Usar a posição atual';

  @override
  String get playerSkipSend => 'Enviar para AniSkip';

  @override
  String get playerSkipSent => 'Ignorar tempos enviados ao AniSkip, obrigado';

  @override
  String playerSkipFailed(String error) {
    return 'AniSkip recusou os tempos de salto: $error';
  }

  @override
  String get playerUnsupported =>
      'O player de vídeo não pode ser executado neste dispositivo (sua versão do Android é muito antiga para a biblioteca do player incluída). Toque para copiar os detalhes.';

  @override
  String get playerSkipNoMal =>
      'Este título não tem ID MyAnimeList, AniSkip não aguenta';

  @override
  String get playerNoChapters => 'Sem capítulos';

  @override
  String get playerTimestamp => 'Marcação de tempo';

  @override
  String get playerAutoPlayDelay => 'Contagem regressiva do próximo episódio';

  @override
  String get playerWatchedAt => 'Contar como assistido em';

  @override
  String playerNextIn(int seconds) {
    return 'Próximo episódio em ${seconds}s';
  }

  @override
  String get playerPlayNow => 'Reproduzir agora';

  @override
  String playerAutoSkipOn(String name) {
    return '$name: vai pular automaticamente nesse título';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name: não vai pular automaticamente nesse título';
  }

  @override
  String get playerAudioLanguage => 'Idioma de áudio preferido';

  @override
  String get playerLanguageOrderHint =>
      'Separe os idiomas com vírgula. Vale o primeiro que for encontrado.';

  @override
  String get playerPip => 'Imagem em imagem';

  @override
  String get playerAutoPip => 'Picture in picture ao sair';

  @override
  String get playerAutoPipDesc =>
      'Continua reproduzindo numa janela pequena quando você sai do app';

  @override
  String get playerPipPlay => 'Jogar';

  @override
  String get playerPipPause => 'Pausa';

  @override
  String get playerPipBack => 'Retroceder';

  @override
  String get playerPipForward => 'Avançar';

  @override
  String get playerPipRestore => 'De volta ao jogador';

  @override
  String get playerPipActive => 'Brincando em uma pequena janela';

  @override
  String get listDateAdded => 'Adicionado à lista';

  @override
  String get listDateLastWatched => 'Última visualização';

  @override
  String playerAutoPlaying(String title) {
    return 'Reproduzindo $title em seguida…';
  }

  @override
  String playerShadersFailed(String error) {
    return 'Não consegui instalar os shaders: $error';
  }

  @override
  String playerChapter(int number) {
    return 'Capítulo $number';
  }

  @override
  String get playerPerTitle => 'Só pra esse título';

  @override
  String get playerPerTitleDesc =>
      'Mantém essas opções pra esse título e deixa seus padrões em paz';

  @override
  String get playerSwapGestures => 'Trocar lados do deslize';

  @override
  String get playerSwapGesturesDesc => 'Brilho na esquerda e volume na direita';

  @override
  String get playerOpenBig => 'Abrir em tela grande';

  @override
  String get playerOpenBigDesc =>
      'Abre o player em tela cheia em vez de com a lista de episódios';

  @override
  String get playerPauseOnBlur => 'Pausar ao perder o foco';

  @override
  String get playerPauseOnBlurDesc =>
      'Pausa enquanto o app está coberto, tipo pelo painel de notificações, e continua quando você volta';

  @override
  String get playerAudioOutput => 'Saída de áudio';

  @override
  String get fontAppDefault => 'Fonte do app';

  @override
  String get fontImport => 'Importar fonte';

  @override
  String get fontSample =>
      'A rápida raposa marrom pula sobre o cachorro preguiçoso';

  @override
  String get playerSubtitleDelay => 'Atraso da legenda';

  @override
  String get playerAudioDelay => 'Atraso do áudio';

  @override
  String get playerDelayReset => 'Redefinir';

  @override
  String get playerOnlineSubtitles => 'Legendas online';

  @override
  String get playerOnlineSearchHint => 'Título e episódio';

  @override
  String get playerOnlineNone => 'Nenhuma legenda encontrada';

  @override
  String playerOnlineFailed(String error) {
    return 'A busca de legendas falhou: $error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return 'Não consegui baixar essa legenda: $error';
  }

  @override
  String get playerOnlineMatch => 'Combina com esse arquivo';

  @override
  String get playerOnlineEpisode => 'Combina com o episódio';

  @override
  String playerOnlineDownloads(int count) {
    return '$count downloads';
  }

  @override
  String get playerSeekPreview => 'Prévia ao avançar';

  @override
  String get playerSeekPreviewDesc =>
      'Mostra uma pequena prévia acima da barra enquanto você arrasta. Abre um segundo decodificador de baixa resolução, então gasta mais dados em streams.';

  @override
  String get playerSettingsChip => 'Configurações';

  @override
  String get playerAudioDevice => 'Dispositivo de áudio';

  @override
  String get settingsDownloads => 'Transferências';

  @override
  String get settingsDownloadsDesc => 'Episódios offline, fila e modo offline';

  @override
  String get downloadsTitle => 'Transferências';

  @override
  String get widgetContinue => 'Continuar';

  @override
  String get widgetReleases => 'Lançamento em breve';

  @override
  String get widgetMore => 'Também em andamento';

  @override
  String get widgetNothing => 'Nada para continuar ainda';

  @override
  String get downloadStorageTitle => 'Armazenamento';

  @override
  String downloadStorageSummary(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count downloads',
      one: '1 baixar',
    );
    return '$_temp0 · $size';
  }

  @override
  String downloadStorageWatched(String size) {
    return '$size já assistiu ou leu';
  }

  @override
  String get downloadFreeUp => 'Libere espaço';

  @override
  String downloadFreeUpConfirm(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count assistiu downloads',
      one: '1 download assistido',
    );
    return 'Excluir $_temp0 e grátis $size?';
  }

  @override
  String downloadFreed(String size) {
    return 'Libertado $size';
  }

  @override
  String get downloadDeleteWatched => 'Excluir assistido';

  @override
  String get downloadDeleteAll => 'Excluir tudo';

  @override
  String downloadDeleteAllConfirm(String title) {
    return 'Excluir todos os downloads de $title?';
  }

  @override
  String get downloadNothingWatched => 'Nada do que você concluiu foi baixado';

  @override
  String get downloadStorageEmpty => 'Nenhum download está usando espaço';

  @override
  String get downloadsOpenDesc =>
      'Veja a fila e tudo que está salvo nesse dispositivo';

  @override
  String get downloadTitle => 'Baixar';

  @override
  String get downloadMetaOnly => 'Somente metadados';

  @override
  String get downloadMetaFailed => 'Não foi possível criar a pasta de título';

  @override
  String downloadMetaSaved(String path) {
    return 'Salvo. Coloque seus arquivos em $path';
  }

  @override
  String get downloadAlready => 'Já baixado ou na fila';

  @override
  String get downloadPickStream => 'Baixar qual stream?';

  @override
  String get downloadPickSubtitle => 'Baixar qual legenda?';

  @override
  String get downloadPickAudio => 'Baixar qual faixa de áudio?';

  @override
  String get downloadAudio => 'Áudio';

  @override
  String get downloadHlsNeedsFfmpeg =>
      'Esse stream é uma playlist HLS. Pra baixar, precisa do complemento FFmpeg.';

  @override
  String get downloadSourceMissing =>
      'A fonte desse episódio não está instalada';

  @override
  String get downloadDashDrm => 'Este stream é protegido por DRM';

  @override
  String get downloadDashNoVideo => 'O manifesto DASH não tem vídeo';

  @override
  String get downloadWaitingConnection => 'Esperando conexão';

  @override
  String get downloadSubtitles => 'Legendas';

  @override
  String get downloadDownloaded => 'Baixado';

  @override
  String get downloadOffline => 'Off-line';

  @override
  String get downloadDelete => 'Apagar download';

  @override
  String get downloadCancel => 'Cancelar';

  @override
  String get downloadPause => 'Pausar';

  @override
  String get downloadPaused => 'Pausado';

  @override
  String get downloadResume => 'Continuar';

  @override
  String get downloadPauseAll => 'Pausar tudo';

  @override
  String get downloadResumeAll => 'Continuar tudo';

  @override
  String get downloadQueuedState => 'Esperando na fila';

  @override
  String get downloadResolving => 'Pegando o stream…';

  @override
  String get downloadUsedFallback =>
      'Nenhum stream correspondente, usei o primeiro';

  @override
  String get downloadTabQueue => 'Fila';

  @override
  String get downloadTabDone => 'Concluído';

  @override
  String get downloadTabFailed => 'Falhou';

  @override
  String get downloadEmptyQueue => 'Nada sendo baixado';

  @override
  String get downloadEmptyDone => 'Nada baixado ainda';

  @override
  String get downloadEmptyFailed => 'Sem downloads com falha';

  @override
  String get downloadNext => 'Próximo episódio';

  @override
  String downloadNextN(int count) {
    return 'Próximos $count episódios';
  }

  @override
  String downloadUnwatched(int count) {
    return 'Todos não assistidos ($count)';
  }

  @override
  String downloadRange(int count) {
    return 'Esse intervalo ($count)';
  }

  @override
  String downloadAll(int count) {
    return 'Todos os episódios ($count)';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count episódios na fila',
      one: '1 episódio na fila',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return '$name baixado';
  }

  @override
  String downloadFailedBody(String name) {
    return 'Falha ao baixar $name';
  }

  @override
  String downloadStorage(String size) {
    return '$size usados por downloads';
  }

  @override
  String get downloadQueueHeader => 'Fila';

  @override
  String get downloadParallel => 'Downloads simultâneos';

  @override
  String get downloadParallelDesc => 'Baixe um por vez ou vários juntos';

  @override
  String get downloadOneByOne => 'Um por um';

  @override
  String get downloadNotifications => 'Notificações de download';

  @override
  String get downloadNotificationsDesc =>
      'Progresso ao vivo onde o sistema suporta, senão um aviso quando um download termina';

  @override
  String get downloadNotifyLive => 'Ao vivo';

  @override
  String get downloadNotifyDone => 'Ao terminar';

  @override
  String get downloadNotifyOff => 'Desligado';

  @override
  String get downloadInfoFile =>
      'Gravar um arquivo de info junto de cada download';

  @override
  String get downloadInfoFileDesc =>
      'Salva o stream, qualidade, legenda e tempos de pulo num pequeno arquivo .json';

  @override
  String get offlineHeader => 'Off-line';

  @override
  String get offlineModeDesc =>
      'Auto só fica offline quando o app abre sem conexão. Sempre fica offline até você mudar.';

  @override
  String get offlineModeOff => 'Desligado';

  @override
  String get offlineModeAlways => 'Sempre';

  @override
  String get offlineModeOn =>
      'O modo offline está ligado. As mudanças ficam salvas aqui e são enviadas quando você voltar a ficar online.';

  @override
  String get offlineSaved =>
      'Salvo nesse dispositivo, vai sincronizar quando você estiver online';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mudanças sincronizadas',
      one: '1 mudança sincronizada',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mudanças esperando sincronizar',
      one: '1 mudança esperando sincronizar',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle => 'Mudanças esperando sincronizar';

  @override
  String get offlinePendingNone => 'Nada esperando';

  @override
  String get offlineSyncNow => 'Sincronizar agora';

  @override
  String get offlineDiscard => 'Descartar';

  @override
  String get downloadNotOffline =>
      'Esse episódio não foi baixado, então não está disponível offline';

  @override
  String get offlineModeChip => 'Off-line';

  @override
  String get downloadNextChapter => 'Próximo capítulo';

  @override
  String downloadNextChapters(int count) {
    return 'Próximos $count capítulos';
  }

  @override
  String downloadUnread(int count) {
    return 'Todos não lidos ($count)';
  }

  @override
  String downloadAllChapters(int count) {
    return 'Todos os capítulos ($count)';
  }

  @override
  String downloadPagesProgress(int done, int total) {
    return '$done / $total páginas';
  }

  @override
  String downloadPagesCount(int count) {
    return '$count páginas';
  }

  @override
  String get downloadFfmpegTitle => 'Complemento FFmpeg necessário';

  @override
  String get downloadFfmpegBody =>
      'Esse stream é uma playlist HLS. O complemento FFmpeg junta as partes num arquivo mp4 só. Sem ele, as partes ficam numa pasta do episódio e rodam de lá.';

  @override
  String get downloadFfmpegInstall => 'Instalar';

  @override
  String get downloadFfmpegInstalling =>
      'Instalando o FFmpeg, pode demorar um pouco…';

  @override
  String get downloadFinishing => 'Juntando as partes num arquivo só…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return '$done / $total partes';
  }

  @override
  String get downloadTorrentNoFile =>
      'O torrent não tem arquivo de vídeo pra baixar';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Baixando $count itens',
      one: 'Baixando 1 item',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => 'Apagar downloads assistidos';

  @override
  String get downloadAutoDeleteDesc =>
      'Remove um download quando seu progresso chega nesse episódio ou capítulo';

  @override
  String get downloadConnections => 'Conexões por download';

  @override
  String get downloadConnectionsDesc =>
      'Divide um arquivo grande em partes buscadas ao mesmo tempo. Alguns servidores limitam isso.';

  @override
  String get downloadPlayChoice => 'Reproduzir de';

  @override
  String get downloadPlayLocalDesc => 'O arquivo salvo nesse dispositivo';

  @override
  String get downloadPlayStream => 'Transmitir on-line';

  @override
  String get downloadPlayStreamDesc => 'Carrega o episódio da fonte';

  @override
  String get offlineFeedTitle => 'Baixado nesse dispositivo';

  @override
  String get offlineFeedEmpty =>
      'Baixe algo enquanto está online e aparece aqui';

  @override
  String get offlineEnabled => 'O modo offline está ligado';

  @override
  String get offlineDisabled => 'O modo offline está desligado';

  @override
  String get downloadReadChoice => 'Ler de';

  @override
  String get downloadReadLocalDesc => 'As páginas salvas nesse dispositivo';

  @override
  String get downloadReadOnline => 'Ler online';

  @override
  String get downloadReadOnlineDesc => 'Carrega o capítulo da fonte';

  @override
  String downloadDeleteConfirm(String name) {
    return 'Apagar $name desse dispositivo?';
  }

  @override
  String downloadCancelConfirm(String name) {
    return 'Cancelar o download de $name? O que já foi baixado é apagado.';
  }

  @override
  String get downloadFfmpegFolder => 'Manter como pasta';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Descartar $count mudanças que nunca foram enviadas? Isso não dá pra desfazer.',
      one: 'Descartar a mudança que nunca foi enviada? Isso não dá pra desfazer.',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => 'Esperando Wi-Fi';

  @override
  String get downloadWaitingMetered => 'Pausado numa conexão limitada';

  @override
  String get downloadWifiOnly => 'Só Wi-Fi';

  @override
  String get downloadWifiOnlyDesc =>
      'Os downloads esperam enquanto você está no 4G/5G';

  @override
  String get downloadMetered => 'Pausar em conexões limitadas';

  @override
  String get downloadMeteredDesc =>
      'Também espera em Wi-Fi que seu dispositivo marca como limitado';

  @override
  String get downloadSpeedLimit => 'Limite de velocidade';

  @override
  String get downloadSpeedLimitDesc => 'Limita a velocidade total de download';

  @override
  String get downloadUnlimited => 'Ilimitado';

  @override
  String get downloadMoveToTop => 'Mover pro topo';

  @override
  String downloadSwarm(int seeds, int peers) {
    return '$seeds sementes · $peers pares';
  }

  @override
  String get downloadTorrentFile => 'Qual arquivo?';

  @override
  String get downloadTorrentAuto => 'Associar o episódio automaticamente';

  @override
  String get downloadTorrentLoading => 'Lendo o torrent…';

  @override
  String get watchAutoSource => 'Trocar pra próxima fonte automaticamente';

  @override
  String get watchAutoSourceDesc =>
      'Se a fonte não achar o título ou falhar ao carregar, tenta a próxima instalada';

  @override
  String get extensionTest => 'Testar extensões';

  @override
  String get extensionTestCopy => 'Copia as falhas e os respectivos logs';

  @override
  String get extensionTestQuery => 'Termo de busca';

  @override
  String get extensionTestRun => 'Executar';

  @override
  String get extensionTestStop => 'Parar';

  @override
  String get extensionTestNone => 'Nenhuma extensão instalada desse tipo';

  @override
  String get extensionTestNotRun => 'Ainda não testado';

  @override
  String get extensionTestSearch => 'Busca';

  @override
  String get extensionTestDetail => 'Detalhes';

  @override
  String get extensionTestUnits => 'Episódios / capítulos';

  @override
  String get extensionTestLinks => 'Streams / páginas';

  @override
  String extensionTestFailedAt(String step) {
    return 'Falhou em $step';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return '$done de $total testadas · $passed passaram · $failed falharam';
  }

  @override
  String get extensionTestCopyLogs => 'Copia tudo com os logs completos';

  @override
  String get onboardingFeaturesTitle => 'Tudo num lugar só';

  @override
  String get onboardingFeaturesBody =>
      'Tudo que você acompanha, assiste e lê, sem ficar pulando entre apps.';

  @override
  String get onboardingFeatureTrack => 'Acompanhe tudo';

  @override
  String get onboardingFeatureTrackDesc =>
      'Listas, progresso e notas no AniList, MyAnimeList, Simkl, Kitsu e MangaBaka.';

  @override
  String get onboardingFeatureWatch => 'Assista e leia';

  @override
  String get onboardingFeatureWatchDesc =>
      'Instale extensões e assista anime em streaming ou leia mangá e novels direto no app.';

  @override
  String get onboardingFeatureOffline => 'Leve pro offline';

  @override
  String get onboardingFeatureOfflineDesc =>
      'Baixe episódios e capítulos e continue sem conexão.';

  @override
  String get onboardingFeatureSync => 'Mantenha as listas sincronizadas';

  @override
  String get onboardingFeatureSyncDesc =>
      'Espelhe sua lista entre os serviços, ou deixe ganhar quem estiver na frente.';

  @override
  String get onboardingServices => 'Funciona com';

  @override
  String sourceNotifyOn(String source) {
    return 'Você será informado quando $source tiver algo novo';
  }

  @override
  String get sourceNotifyOff => 'Liberar notificações desativadas';

  @override
  String get sourceNotifyNeedsSource =>
      'Escolha uma fonte que corresponda primeiro';

  @override
  String sourceNotifyAllOut(int count) {
    return 'Tudo ($count) já saiu, não há o que esperar';
  }

  @override
  String get sourceNotifyTooltipOn => 'Interromper notificações de lançamento';

  @override
  String get sourceNotifyTooltipOff => 'Avise-me sobre novos lançamentos';

  @override
  String sourceFoundEpisode(String number, String source) {
    return 'O episódio $number foi lançado em $source';
  }

  @override
  String sourceFoundEpisodes(String from, String to, String source) {
    return 'Os episódios $from–$to foram lançados em $source';
  }

  @override
  String sourceFoundChapter(String number, String source) {
    return 'Capítulo $number foi lançado em $source';
  }

  @override
  String sourceFoundChapters(String from, String to, String source) {
    return 'Os capítulos $from–$to foram lançados em $source';
  }

  @override
  String sourceFoundSummary(int count) {
    return 'Os títulos $count têm algo novo';
  }

  @override
  String get navSources => 'Fontes';

  @override
  String sourceInactiveOpen(String manager) {
    return 'Esta fonte pertence a $manager, que não é o serviço de extensão ativo';
  }

  @override
  String get sourceAlertsHeader => 'Notificações de lançamento';

  @override
  String get sourceAlertsSwitch => 'Verifique os títulos inscritos';

  @override
  String get sourceAlertsSwitchDesc =>
      'Uma vez cada vez que o aplicativo é aberto, para os títulos você ativou o sino';

  @override
  String get sourceSkipUnstarted =>
      'Ignorar títulos que você ainda não iniciou';

  @override
  String get sourceSkipUnstartedDesc =>
      'Nada assistido ou lido ainda, mas já existem episódios';

  @override
  String get sourceSkipUnseen => 'Pule enquanto você tem episódios não vistos';

  @override
  String get sourceSkipUnseenDesc =>
      'Você ainda tem episódios lançados para acompanhar';

  @override
  String get sourceManage => 'Assinaturas';

  @override
  String sourceManageDesc(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count títulos',
      one: '1 título',
      zero: 'Sem títulos',
    );
    return '$_temp0';
  }

  @override
  String get sourceCheckNow => 'Verifique agora';

  @override
  String get sourceCheckNowDesc => 'Ignora a programação e as regras de pulo';

  @override
  String get sourceChecking => 'Verificando…';

  @override
  String sourceCheckResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Os títulos $count têm algo novo',
      one: '1 título tem algo novo',
      zero: 'Nada de novo',
    );
    return '$_temp0';
  }

  @override
  String get sourceEmpty => 'Ainda não há assinaturas';

  @override
  String get sourceEmptyMessage =>
      'Toque no sino acima dos episódios de um título para ser informado sobre os novos';

  @override
  String get sourceAll => 'Todos';

  @override
  String sourceInactive(String manager) {
    return 'Inativo: $manager';
  }

  @override
  String sourceMissingDesc(String source) {
    return '$source não está instalado neste serviço de extensão';
  }

  @override
  String get sourceUnreachable => 'A fonte não está respondendo';

  @override
  String get sourceFinished => 'Concluído';

  @override
  String get sourceSkippedCompleted => 'Ignorado: concluído';

  @override
  String get sourceSkippedUnstarted => 'Ignorado: não iniciado';

  @override
  String get sourceSkippedUnseen => 'Ignorado: episódios inéditos';

  @override
  String get sourceWaiting => 'Aguardando o próximo lançamento';

  @override
  String sourceNextCheck(String when) {
    return 'Próxima verificação $when';
  }

  @override
  String get sourceSoon => 'em breve';

  @override
  String sourceInHours(int count) {
    return 'em ${count}h';
  }

  @override
  String sourceInDays(int count) {
    return 'em ${count}d';
  }

  @override
  String sourceLatest(String number) {
    return 'Mais recente: $number';
  }

  @override
  String get sourceMute => 'Mudo';

  @override
  String get sourceUnmute => 'Ativar som';

  @override
  String get sourceMuted => 'Silenciado';

  @override
  String get sourceUnsubscribe => 'Cancelar inscrição';

  @override
  String get sourcePickAnother => 'Escolha outra fonte';

  @override
  String get sourceOpenExtensions => 'Extensões abertas';

  @override
  String get sourceNoticesEmpty => 'Ainda não há avisos de lançamento';

  @override
  String get sourceNoticesEmptyMessage =>
      'Novos episódios e capítulos dos seus títulos assinados aparecem aqui';

  @override
  String get sourceOpenTitle => 'Título aberto';

  @override
  String get extensionsLoading => 'Carregando extensões…';

  @override
  String get updateWhatsNew => 'O que há de novo';

  @override
  String get updateLater => 'Mais tarde';

  @override
  String get updateSkipVersion => 'Pular esta versão';

  @override
  String get updatePreparing => 'Preparando…';

  @override
  String get updateDownloading => 'Baixando';

  @override
  String get updateInstalling => 'Instalando…';

  @override
  String updateSizeOf(String done, String total) {
    return '$done de $total';
  }

  @override
  String updateSpeed(String speed) {
    return '$speed/s';
  }

  @override
  String updateReleased(String date) {
    return 'Liberado $date';
  }

  @override
  String get updateNoAsset =>
      'Esta versão não tem download para o seu dispositivo';

  @override
  String get updateUpToDate => 'Você está na versão mais recente';

  @override
  String get updateIosHint =>
      'As compilações do iOS não estão na App Store. Pegue o .ipa na página de lançamento e carregue-o com AltStore ou SideStore';

  @override
  String get updateOpenedBrowser => 'Verifique seu navegador';

  @override
  String get updateTryAgain => 'Tente novamente';

  @override
  String get settingsNotifications => 'Notificações';

  @override
  String get settingsNotificationsDesc =>
      'Alertas para suas listas, novos episódios e capítulos e respostas a comentários';

  @override
  String get settingsAboutUpdates => 'Sobre e atualizações';

  @override
  String get settingsAboutUpdatesDesc =>
      'Atualizações de aplicativos, versão, registros, links e suporte';

  @override
  String get settingsGroupAccount => 'Sua conta';

  @override
  String get settingsGroupContent => 'Conteúdo';

  @override
  String get settingsGroupApp => 'Aplicativo';

  @override
  String get settingsAnimeDesc =>
      'Player, legendas, pulos, lista de episódios e detalhes do episódio';

  @override
  String get settingsMangaDesc =>
      'Modo leitor, controles, exibição e rastreamento de capítulo';

  @override
  String get settingsNovelDesc =>
      'Texto, virada de página, tradução e leitura em voz alta';

  @override
  String get settingsLocalPlay => 'Jogo local';

  @override
  String get settingsLocalPlayDesc =>
      'Reproduza arquivos, pastas, fluxos de rede e torrents ou abra um livro';

  @override
  String get settingsLocalPlayVideo => 'Vídeo';

  @override
  String get settingsLocalPlayBooks => 'Livros';

  @override
  String get settingsWatchSections => 'Seções';

  @override
  String get settingsSectionLists => 'Listas de episódios e capítulos';

  @override
  String get settingsSectionProgress => 'Acompanhamento do progresso';

  @override
  String get updateChannelDesc =>
      'Estável é a versão testada. O pré-lançamento e o Alpha recebem novos recursos mais cedo, mas podem falhar';

  @override
  String get checkNowDesc => 'Procure uma versão mais recente imediatamente';

  @override
  String get generalSectionBasics => 'Linguagem e comportamento';

  @override
  String get generalSectionSecurity => 'Segurança';

  @override
  String get generalSectionPrivacy => 'Privacidade';

  @override
  String get secPlayerPlayback =>
      'Velocidade padrão, reprodução automática, ajuste de vídeo, orientação e imagem em imagem';

  @override
  String get secPlayerSkip =>
      'Pule aberturas, finais e recapitulações automaticamente';

  @override
  String get secPlayerControls =>
      'Deslize, segure e toque nos gestos e busque a visualização';

  @override
  String get secPlayerSubtitles =>
      'Idiomas, aparência e renderização de legendas';

  @override
  String get secPlayerShaders => 'Upscaling de anime e seus próprios shaders';

  @override
  String get secPlayerEngine =>
      'Decodificador, saída de vídeo e áudio, buffer. Altere-os apenas se a reprodução tiver problemas';

  @override
  String get secPlayerMpv => 'mpv.conf, scripts e ajuste avançado';

  @override
  String get secAnimeList =>
      'Episódios de preenchimento e miniaturas não assistidas';

  @override
  String get secProgress =>
      'Quando o progresso assistido ou lido é salvo na sua lista';

  @override
  String get secAnimeDetails =>
      'De onde vêm os títulos dos episódios, miniaturas e resumos';

  @override
  String get secReaderReading =>
      'Modo de leitura, virada de página, zoom e próximo capítulo';

  @override
  String get secReaderControls =>
      'Toque em zonas, teclas de volume e rolagem automática';

  @override
  String get secReaderDisplay =>
      'Plano de fundo, brilho, tela cheia e número de página';

  @override
  String get secNovelText =>
      'Fonte, tamanho, espaçamento, margens e virada de página';

  @override
  String get secNovelTranslate => 'Traduza capítulos enquanto você lê';

  @override
  String get secNovelSpeech => 'Voz, velocidade e tom para leitura em voz alta';

  @override
  String get secNotifyAbout =>
      'Escolha quais tipos de atividade enviam um alerta';

  @override
  String get layoutTitle => 'Disposição';

  @override
  String get layoutDesc => 'Escolha, mova e oculte os botões nas barras';

  @override
  String get layoutHint =>
      'Arraste um botão para movê-lo (mantenha pressionado primeiro na tela sensível ao toque). Toque em um para cortar, mover ou ocultar';

  @override
  String layoutDropInto(String zone) {
    return 'Entre: $zone';
  }

  @override
  String layoutCutting(String name) {
    return 'Movendo $name. Pressione um botão colar para colocá-lo';
  }

  @override
  String get layoutTitleFixed => 'Título';

  @override
  String get layoutZoneTopStart => 'Barra superior, antes do título';

  @override
  String get layoutZoneTopEnd => 'Barra superior, após o título';

  @override
  String get layoutZoneBottomStart => 'Barra inferior, esquerda';

  @override
  String get layoutZoneBottomEnd => 'Barra inferior, direita';

  @override
  String get layoutZoneSecondRow =>
      'Oculto: segunda linha na visualização normal';

  @override
  String get layoutZoneOverflow => 'Oculto: no menu mais';

  @override
  String get layoutEmptyZone => 'Solte os botões aqui';

  @override
  String get layoutCut => 'Cortar';

  @override
  String get layoutPaste => 'Cole aqui';

  @override
  String get layoutHide => 'Esconder';

  @override
  String layoutMoveTo(String zone) {
    return 'Mover para $zone';
  }

  @override
  String get layoutReset => 'Redefinir para o padrão';

  @override
  String get layoutMore => 'Mais';

  @override
  String get sourceWhyAction => 'Por que não há alerta?';

  @override
  String get sourceWhyStatus => 'Estado';

  @override
  String get sourceWhyLastCheck => 'Última verificação';

  @override
  String get sourceWhyNever => 'Ainda não';

  @override
  String get sourceWhyNextCheck => 'Próxima verificação';

  @override
  String get sourceWhyNewest => 'O mais novo na fonte';

  @override
  String get sourceWhyProgress => 'Seu progresso';

  @override
  String get sourceWhyListStatus => 'Status da lista';

  @override
  String get sourceWhyFailures => 'Falha nas verificações consecutivas';

  @override
  String get sourceWhyLastRelease => 'Último novo lançamento visto';

  @override
  String get sourceWhyVerdictNew =>
      'Uma nova versão aparece aqui assim que a fonte a lista e a próxima verificação é executada.';

  @override
  String get sourceWhyVerdictAhead =>
      'A fonte já está à frente do seu progresso, então você foi informado sobre isso uma vez. Leia ou fique atento para receber o próximo alerta.';

  @override
  String get sourceWhyVerdictSkipped =>
      'Este título é ignorado pelas regras acima. Altere-os nas configurações de notificação ou use Verificar agora para executá-lo mesmo assim.';

  @override
  String get sourceWhyVerdictBroken =>
      'A fonte não pode ser alcançada ou foi removida, portanto nada está sendo verificado.';

  @override
  String get sourceWhyVerdictMuted => 'Esta assinatura está silenciada.';

  @override
  String get externalPlayerTitle => 'Abrir stream em outro lugar';

  @override
  String get externalCopyUrl => 'Copiar link da transmissão';

  @override
  String get externalCopied => 'Link da transmissão copiado';

  @override
  String get externalChooser => 'Abra em outro aplicativo';

  @override
  String get externalVlc => 'Abrir no VLC';

  @override
  String get externalMpv => 'Abrir em mpv';

  @override
  String get externalWebVideoCast => 'Elenco de vídeo da web';

  @override
  String get castViaAppHint =>
      'Envie o stream para o aplicativo Web Video Cast';

  @override
  String get externalFailed =>
      'Não foi possível abrir o stream. O reprodutor está instalado?';

  @override
  String get addonInstalled => 'Instalado';

  @override
  String get loadFailedActivity => 'Não foi possível carregar a atividade';

  @override
  String get loadFailedFavourites =>
      'Não foi possível carregar os favoritos. Tentar novamente';

  @override
  String get loadFailedStats => 'Não foi possível carregar as estatísticas';

  @override
  String get loadFailedReplies => 'Não foi possível carregar as respostas';

  @override
  String get cantBeUndone => 'Isso não pode ser desfeito.';

  @override
  String get searchTags => 'Tags de pesquisa';

  @override
  String get spoilerTapToView => 'Spoiler, toque para ver';

  @override
  String get mediaVideo => 'Vídeo';

  @override
  String get notificationSomeone => 'Alguém';

  @override
  String get notificationATitle => 'um título';

  @override
  String get notificationAddedDetail => 'Foi adicionado ao AniList';

  @override
  String get updateNoReleases => 'Nenhum lançamento encontrado';

  @override
  String get updateInvalidResponse => 'Resposta de atualização inválida';

  @override
  String get commentsRateLimited => 'Taxa limitada';

  @override
  String get commentsConnectFailed => 'Falha ao conectar';

  @override
  String get dnsNoRecords => 'Nenhum registro A foi retornado';

  @override
  String get importTokenRejected => 'Token rejeitado';

  @override
  String get developerRoleLead => 'Desenvolvedor líder';

  @override
  String get developerRoleModerator => 'Moderador de discórdia';

  @override
  String extensionManagerTitle(String type) {
    return '$type gerente';
  }

  @override
  String extensionsOfType(String type) {
    return '$type extensões';
  }

  @override
  String extensionSettingsTitle(String name) {
    return 'Configurações $name';
  }

  @override
  String extensionNoSettings(String name) {
    return '$name não fornece nenhuma configuração.';
  }

  @override
  String notificationAired(String episode, String title) {
    return 'Episódio $episode de $title foi ao ar';
  }

  @override
  String notificationAiredDetail(String episode) {
    return 'Episódio $episode foi ao ar';
  }

  @override
  String notificationAdded(String title) {
    return '$title foi adicionado ao AniList';
  }

  @override
  String updateNotFound(String message) {
    return 'O servidor de atualização não conseguiu encontrar essa versão: $message';
  }

  @override
  String get installStepJre => 'Tempo de execução Java';

  @override
  String get installStepCore => 'Núcleo de tempo de execução';

  @override
  String installStepsProgress(int current, int total) {
    return 'Etapa $current de $total';
  }

  @override
  String get stepChecking => 'Verificando…';

  @override
  String get stepUpToDate => 'Atualizado';

  @override
  String stepUpToDateWith(String detail) {
    return 'Atualizado · $detail';
  }

  @override
  String get stepWillInstall => 'Será instalado';

  @override
  String get stepWillUpdate => 'Será atualizado';

  @override
  String stepWillUpdateTo(String version) {
    return 'Será atualizado para $version';
  }

  @override
  String get stepInstalled => 'Instalado';

  @override
  String get stepNotNeeded => 'Não é necessário aqui';

  @override
  String get stepFailed => 'Falha';

  @override
  String stepFailedWith(String reason) {
    return 'Falha: $reason';
  }

  @override
  String get installNeedsRuntime =>
      'Ele é executado no tempo de execução Java e no núcleo do tempo de execução compartilhado. Eles são instalados primeiro e atualizados se forem alterados.';

  @override
  String get installRuntimeNewer =>
      'O tempo de execução em que este gerenciador é executado tem uma atualização.';

  @override
  String get removeJvmTitle => 'Remover o tempo de execução Java?';

  @override
  String get removeJvmMessage =>
      'Os gerenciadores de extensões de desktop param de funcionar até serem instalados novamente. Ele será baixado novamente na próxima vez que você instalar ou abrir um.';

  @override
  String get runtimePreparing => 'Preparando o tempo de execução…';

  @override
  String get calendarAll => 'Todos';

  @override
  String get calendarAnime => 'Anime';

  @override
  String get calendarManga => 'Mangá';

  @override
  String get readerCloudflare => 'Abrir no navegador (verificação Cloudflare)';

  @override
  String get badgeBoardHint =>
      'Arraste um emblema para um canto do primeiro cartão ou arraste um emblema que já esteja nele para movê-lo. Os emblemas trocam de lugar, então nenhum se sobrepõe. Toque em um selo abaixo para ativá-lo ou desativá-lo.';

  @override
  String get unreadCounter => 'Contador não lido';

  @override
  String get settingsShortcuts => 'Atalhos de teclado';

  @override
  String get settingsShortcutsDesc => 'Veja, altere e desligue todas as teclas';

  @override
  String get shortcutGroupApp => 'Aplicativo';

  @override
  String get shortcutGroupPlayer => 'Reprodutor de vídeo';

  @override
  String get shortcutGroupReader => 'Leitor';

  @override
  String get shortcutsEnableApp => 'Atalhos de aplicativos';

  @override
  String get shortcutsEnablePlayer => 'Atalhos do jogador';

  @override
  String get shortcutsEnableReader => 'Atalhos do leitor';

  @override
  String get shortcutsEnableDesc =>
      'Ative ou desative todas as teclas deste grupo';

  @override
  String get shortcutNotSet => 'Não definido';

  @override
  String get shortcutAddKey => 'Adicionar uma chave';

  @override
  String get shortcutResetOne => 'Redefinir para o padrão';

  @override
  String get shortcutResetAll => 'Redefinir todos os atalhos';

  @override
  String get shortcutResetAllDesc =>
      'Coloque todas as chaves de volta ao seu padrão';

  @override
  String get shortcutPress => 'Pressione a tecla ou combinação desejada';

  @override
  String get shortcutPressHint =>
      'Cada combinação só pode pertencer a uma ação, portanto, realizar uma move-a.';

  @override
  String get shortcutSeekPercent => 'Ir para um ponto do vídeo';

  @override
  String get shortcutSeekPercentKeys => '0 – 9';

  @override
  String get shortcutAppBack => 'Volte';

  @override
  String get shortcutAppFullscreen => 'Alternar tela cheia';

  @override
  String get shortcutAppGlass => 'Alternar modo de vidro';

  @override
  String get shortcutAppMaterialYou => 'Alternar material para você';

  @override
  String get shortcutAppDark => 'Alternar modo escuro';

  @override
  String get shortcutAppOled => 'Alternar OLED preto';

  @override
  String get shortcutAppSearch => 'Abrir pesquisa';

  @override
  String get shortcutAppSettings => 'Abrir configurações';

  @override
  String get shortcutAppDownloads => 'Abrir downloads';

  @override
  String get shortcutAppNotifications => 'Abrir notificações';

  @override
  String get shortcutAppIncognito => 'Alternar modo anônimo';

  @override
  String get shortcutAppShortcuts => 'Mostrar atalhos de teclado';

  @override
  String get shortcutPlayerPlayPause => 'Reproduzir ou pausar';

  @override
  String get shortcutPlayerSeekForward => 'Procure avançar';

  @override
  String get shortcutPlayerSeekBack => 'Procure de volta';

  @override
  String get shortcutPlayerSeekForwardLong => 'Procure avançar 30 segundos';

  @override
  String get shortcutPlayerSeekBackLong => 'Procure voltar 30 segundos';

  @override
  String get shortcutPlayerFrameForward => 'Próximo quadro';

  @override
  String get shortcutPlayerFrameBack => 'Quadro anterior';

  @override
  String get shortcutPlayerVolumeUp => 'Aumentar o volume';

  @override
  String get shortcutPlayerVolumeDown => 'Diminuir volume';

  @override
  String get shortcutPlayerMute => 'Mudo';

  @override
  String get shortcutPlayerFullscreen => 'Tela cheia';

  @override
  String get shortcutPlayerNext => 'Próximo episódio';

  @override
  String get shortcutPlayerPrevious => 'Episódio anterior';

  @override
  String get shortcutPlayerSkip => 'Pular introdução ou final';

  @override
  String get shortcutPlayerPanel => 'Lista de episódios';

  @override
  String get shortcutPlayerSpeedUp => 'Reprodução mais rápida';

  @override
  String get shortcutPlayerSpeedDown => 'Reprodução mais lenta';

  @override
  String get shortcutPlayerSpeedReset => 'Velocidade normal';

  @override
  String get shortcutPlayerSubtitleToggle => 'Legendas ativadas ou desativadas';

  @override
  String get shortcutPlayerSubtitleCycle => 'Próxima faixa de legenda';

  @override
  String get shortcutPlayerAudioCycle => 'Próxima faixa de áudio';

  @override
  String get shortcutPlayerStreamCycle => 'Próxima transmissão';

  @override
  String get shortcutPlayerFit => 'Alterar ajuste do vídeo';

  @override
  String get shortcutReaderRight => 'Página à direita';

  @override
  String get shortcutReaderLeft => 'Página à esquerda';

  @override
  String get shortcutReaderNextPage => 'Próxima página';

  @override
  String get shortcutReaderPreviousPage => 'Página anterior';

  @override
  String get shortcutReaderControls => 'Mostrar ou ocultar controles';

  @override
  String get shortcutReaderNextChapter => 'Próximo capítulo';

  @override
  String get shortcutReaderPreviousChapter => 'Capítulo anterior';

  @override
  String shortcutTaken(String action) {
    return 'Retirado de $action';
  }

  @override
  String get incognitoTurnedOn => 'Modo de navegação anônima ativado';

  @override
  String get incognitoTurnedOff => 'Modo de navegação anônima desativado';

  @override
  String get onHoldAnime => 'Em espera anime';

  @override
  String get onHoldManga => 'Mangá em espera';

  @override
  String get droppedAnime => 'Anime descartado';

  @override
  String get droppedManga => 'Mangá descartado';

  @override
  String get generalSectionDesktop => 'Área de trabalho';

  @override
  String get closeAction => 'Quando a janela está fechada';

  @override
  String get closeActionQuit => 'Saia do aplicativo';

  @override
  String get closeActionWhenBusy =>
      'Continue correndo na bandeja enquanto algo está sendo executado';

  @override
  String get closeActionAlways => 'Continue sempre correndo na bandeja';

  @override
  String get gamepadNav => 'Navegação do gamepad';

  @override
  String get gamepadNavDesc =>
      'Mova-se pelo aplicativo e controle o jogador com um controlador de jogo';

  @override
  String get trayShow => 'Mostrar Dartotsu';

  @override
  String get trayQuit => 'Sair';

  @override
  String get trayIdle => 'Nada funcionando';

  @override
  String trayDownloading(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Baixando itens $count',
      one: 'Baixando item $count',
    );
    return '$_temp0';
  }

  @override
  String get traySyncing => 'Sincronizando suas listas';

  @override
  String get trayUpdating => 'Atualizando o aplicativo';

  @override
  String get trayPlaying => 'Brincando em uma pequena janela';

  @override
  String get traySearch => 'Pesquisar';

  @override
  String get trayPauseDownloads => 'Pausar downloads';

  @override
  String get trayResumeDownloads => 'Retomar downloads';

  @override
  String get playerDownloadTitle => 'Baixando o player';

  @override
  String get playerDownloadBody =>
      'Dartotsu busca seu mecanismo de vídeo uma vez. A reprodução começa assim que estiver pronta.';

  @override
  String get playerDownloadStarting => 'Iniciando o download…';

  @override
  String get playerDownloadFailedTitle => 'Não foi possível obter o jogador';

  @override
  String get playerDownloadFailedBody =>
      'Verifique sua conexão e tente novamente. O download continua de onde parou.';

  @override
  String get playerDownloadRetry => 'Tente novamente';

  @override
  String get playerDownloadCopy => 'Copiar detalhes';

  @override
  String get removePlayerTitle => 'Remover o jogador?';

  @override
  String get removePlayerMessage =>
      'Os vídeos não podem ser reproduzidos até que o player seja baixado novamente.';

  @override
  String get trailerFailed =>
      'Não foi possível reproduzir o trailer aqui, abrindo-o no navegador';
}
