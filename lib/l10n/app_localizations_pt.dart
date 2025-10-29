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
  String get appTagline => 'O NOVO Melhor App Para\nAcompanhar Animes & Mangás';

  @override
  String get anilist => 'AniList';

  @override
  String get mal => 'MyAnimeList';

  @override
  String get kitsu => 'Kitsu';

  @override
  String get simkl => 'Simkl';

  @override
  String get discord => 'Discord';

  @override
  String get login => 'Entrar';

  @override
  String loginTo(String service) {
    return 'Conecte-se ao $service';
  }

  @override
  String logout(String type) {
    return 'Sair de $type';
  }

  @override
  String get confirmLogout => 'Tem certeza de que deseja sair?';

  @override
  String get anime => 'Anime';

  @override
  String get manga => 'Mangá';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novel => 'Novel';

  @override
  String get ln => 'Novela leve';

  @override
  String get home => 'Início';

  @override
  String get search => 'Procurar';

  @override
  String get calendar => 'Calendário';

  @override
  String get settings => 'Configurações';

  @override
  String get watch => 'Assistir';

  @override
  String get read => 'Ler';

  @override
  String get info => 'Informações';

  @override
  String get comments => 'Comentários';

  @override
  String get addToList => 'Adicionar à Lista';

  @override
  String get series => 'Séries';

  @override
  String get season => 'Temporada';

  @override
  String episode(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Episódios',
      one: 'Episódio',
    );
    return '$_temp0';
  }

  @override
  String chapter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Capítulos',
      one: 'Capítulo',
    );
    return '$_temp0';
  }

  @override
  String volume(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Volumes',
      one: 'Volume',
    );
    return '$_temp0';
  }

  @override
  String movie(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Filmes',
      one: 'Filme',
    );
    return '$_temp0';
  }

  @override
  String get totalEpisodes => 'Episódios';

  @override
  String get totalChapters => 'Capítulos';

  @override
  String nextEpisodeRelease(int episode) {
    return 'Episódio $episode será lançado em';
  }

  @override
  String get genres => 'Gêneros';

  @override
  String get scanlators => 'Scanalizadores';

  @override
  String list(String type) {
    return '$type Lista';
  }

  @override
  String get watching => 'Observando';

  @override
  String get reading => 'Leitura';

  @override
  String get readStatus => 'Ler';

  @override
  String get watchStatus => 'Vigiado';

  @override
  String planned(String type) {
    return '$type Planejado';
  }

  @override
  String onHold(String type) {
    return '$type Em Pausa';
  }

  @override
  String get droppedAnime => 'Anime Abandonado';

  @override
  String get droppedManga => 'Mangá Abandonado';

  @override
  String noDropped(String type) {
    return 'Você ainda não abandonou nenhum $type.';
  }

  @override
  String get continueReading => 'Continue Lendo';

  @override
  String get continueWatching => 'Continue Assistindo';

  @override
  String browse(String type) {
    return 'Navegar por $type';
  }

  @override
  String trending(String type) {
    return '$type Em Alta';
  }

  @override
  String popular(String type) {
    return '$type Popular';
  }

  @override
  String get topAiring => 'Top Da Temporada';

  @override
  String topRated(String type) {
    return '$type Mais Bem Avaliado';
  }

  @override
  String get topScore => 'Pontuação superior';

  @override
  String mostFavourite(String type) {
    return '$type Mais Preferido';
  }

  @override
  String get thisSeason => 'Esta Temporada';

  @override
  String get nextSeason => 'Próxima Temporada';

  @override
  String get previousSeason => 'Temporada Anterior';

  @override
  String get recommended => 'Recomendado';

  @override
  String get recommendationsEmptyMessage =>
      'Assista/Leia alguns Animes ou Mangás para receber Recomendações';

  @override
  String get recentUpdates => 'Atualizações Recentes';

  @override
  String get allCaughtUpNew => 'Tudo apanhado, o que há de novo?';

  @override
  String favorite(String type) {
    return 'Favorito $type';
  }

  @override
  String get favorites => 'Favoritos';

  @override
  String get noFavourites =>
      'Parece que você não curtiu nada ainda,\nTente curtir um show para mantê-lo aqui.';

  @override
  String get noOnHold => 'Parece que você ainda não colocou nada em pausa.';

  @override
  String manageLayout(String service, String page) {
    return 'Gerenciar o Layout da página $page no $service';
  }

  @override
  String manageLayoutDescription(String page) {
    return 'Você pode gerenciar o layout da página $page arrastando e soltando os itens';
  }

  @override
  String get gridView => 'Visualização Em Grade';

  @override
  String get listView => 'Visualização Em Lista';

  @override
  String get compactView => 'Visualização Compacta';

  @override
  String get layout => 'Layout';

  @override
  String get sort => 'Ordenar';

  @override
  String get utd => 'De Cima Para Baixo';

  @override
  String get dtu => 'De Baixo Para Cima';

  @override
  String get rtl => 'Direita à esquerda';

  @override
  String get ltr => 'Esquerda para a direita';

  @override
  String get direction => 'Direcção';

  @override
  String get episodeWatched => 'Episódio Assistido';

  @override
  String get chapterRead => 'Capítulo Lido';

  @override
  String get outOf => 'fora de';

  @override
  String get totalOf => 'Total de';

  @override
  String get selected => 'Selecionado';

  @override
  String get found => 'Encontrado';

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
  String available(String type) {
    return '$type Disponível';
  }

  @override
  String installed(String type) {
    return '$type Instalado';
  }

  @override
  String get extensionsDescription =>
      'Instale e gerencie extensões para funcionalidades extras';

  @override
  String get addAnimeRepo => 'Adicionar Anime Repo';

  @override
  String get addAnimeRepoDesc => 'Adicionar Anime Repo de várias fontes';

  @override
  String get addMangaRepo => 'Adicionar Manga Repo';

  @override
  String get addMangaRepoDesc => 'Adicionar Manga Repo de várias fontes';

  @override
  String get addNovelRepo => 'Adicionar nova versão';

  @override
  String get addNovelRepoDesc => 'Adicionar Novel Repo de várias fontes';

  @override
  String get loadExtensionsIcon => 'Ícone de extensões de carga';

  @override
  String get loadExtensionsIconDesc => 'Desabilitar se extensões página lags';

  @override
  String get autoUpdate => 'Atualização automática';

  @override
  String get autoUpdateDesc => 'Extensões de atualização automática';

  @override
  String get installSourceToStart =>
      'Instale uma fonte da página de extensão para começar';

  @override
  String get author => 'Autor';

  @override
  String get averageDuration => 'Duração Média';

  @override
  String get characters => 'Personagens';

  @override
  String get synopsis => 'Sinopse';

  @override
  String get endDate => 'Data De Término';

  @override
  String get format => 'Formato';

  @override
  String get meanScore => 'Nota Média';

  @override
  String get name => 'Nome';

  @override
  String get nameRomaji => 'Nome (Romaji)';

  @override
  String get popularity => 'Popularidade';

  @override
  String get relations => 'Relações';

  @override
  String get prequel => 'ANTERIOR';

  @override
  String get sequel => 'SEQUÊNCIA';

  @override
  String get source => 'Fonte';

  @override
  String get staff => 'Funcionários';

  @override
  String get startDate => 'Data De Início';

  @override
  String get status => 'Status';

  @override
  String get studio => 'Estúdio';

  @override
  String get synonyms => 'Sinônimos';

  @override
  String get tags => 'Tags';

  @override
  String get total => 'Total';

  @override
  String get collapseText => 'Média';

  @override
  String get expandText => 'Mostrar Mais';

  @override
  String get comingSoon => 'Em BREVE';

  @override
  String get wrongTitle => 'Título errado?';

  @override
  String get youTube => 'Jogar no YouTube?';

  @override
  String get mediaNotFound => 'Mídia não encontrada';

  @override
  String get noChapterFound => 'Nenhum capítulo encontrado';

  @override
  String activity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Atividades',
      one: 'Atividade',
    );
    return '$_temp0';
  }

  @override
  String get language => 'Idioma';

  @override
  String get account => 'Conta';

  @override
  String get accountDescription =>
      'Gerencie suas contas do AniList, MAL e Discord com facilidade';

  @override
  String get common => 'Comum';

  @override
  String get commonDescription =>
      'Ajuste as configurações gerais para usar o app sem problemas';

  @override
  String get animeDescription =>
      'Personalize e gerencie suas preferências de anime';

  @override
  String get mangaDescription => 'Organize e adapte sua experiência de mangá';

  @override
  String get about => 'Sobre';

  @override
  String get aboutDescription =>
      'Saiba mais sobre o aplicativo e seus criadores';

  @override
  String get notifications => 'Notificações';

  @override
  String get notificationsDescription =>
      'Configure como e quando você receberá notificações';

  @override
  String get offlineMode => 'Modo Offline';

  @override
  String get offlineModeDescription =>
      'Use o app sem uma conexão com a internet';

  @override
  String get incognitoMode => 'Modo Anônimo';

  @override
  String get incognitoModeDescription => 'Navegue sem salvar sua atividade';

  @override
  String get hidePrivate => 'Ocultar Privado';

  @override
  String get hidePrivateDescription =>
      'Ocultar séries privadas da Página Inicial.';

  @override
  String get hiddenMedia => 'Mídia Oculta';

  @override
  String get noHiddenMediaFound => 'Nenhuma mídia oculta encontrada';

  @override
  String get playerSettingsTitle => 'Configurações Do Reprodutor';

  @override
  String get playerSettingsDesc => 'Alterar as configurações do jogador';

  @override
  String get speed => 'Velocidade';

  @override
  String get speedDescription => 'Velocidade padrão para o reprodutor';

  @override
  String get cursedSpeed => 'Velocidade Amaldiçoada';

  @override
  String get cursedSpeedDescription =>
      'Para quem está ocupado demais com a vida';

  @override
  String get resizeMode => 'Modo De Redimensionamento';

  @override
  String get resizeModeDescription =>
      'Modo de redimensionamento padrão para o reprodutor';

  @override
  String get skipButton => 'Botão De Pular';

  @override
  String get skipButtonDescription => 'Duração do botão de pular';

  @override
  String get thumbLessSeekBar => 'Procurar Bar';

  @override
  String get thumbLessSeekBarDesc => 'Remova o polegar da barra de busca';

  @override
  String get customMPV => 'MPV personalizado Configuração';

  @override
  String customMPVDescription(String path) {
    return 'Ative esta opção para usar seu próprio arquivo de configuração MPV. Coloque sua configuração personalizada em: $path';
  }

  @override
  String get subtitles => 'Legendas';

  @override
  String get showSubtitles => 'Mostrar Legendas';

  @override
  String get showSubtitlesDescription => 'Mostrar legendas por padrão';

  @override
  String get subtitlePreview => 'Pré-Visualização Da Legenda';

  @override
  String get fontColor => 'Cor da Fonte';

  @override
  String get fontColorDescription => 'Cor da fonte da legenda';

  @override
  String get fontFamily => 'Família De Fontes';

  @override
  String get fontFamilyDescription => 'Família de fontes de legenda';

  @override
  String get fontSize => 'Tamanho Da Fonte';

  @override
  String get fontSizeDescription => 'Tamanho da Fonte da Legenda';

  @override
  String get fontWeight => 'Espessura Da Fonte';

  @override
  String get fontWeightDescription => 'Espessura da fonte da legenda';

  @override
  String get backgroundColor => 'Cor De Fundo';

  @override
  String get backgroundColorDescription => 'Cor de fundo da legenda';

  @override
  String get outlineColor => 'Cor Do Contorno';

  @override
  String get outlineColorDescription => 'Cor do contorno da legenda';

  @override
  String get bottomPadding => 'Acolchoamento Inferior';

  @override
  String get bottomPaddingDescription => 'Preenchimento inferior da legenda';

  @override
  String get useLibass => 'Use Libass';

  @override
  String get useLibassDescription =>
      'Use Libass for subtitle rendering (overrides other subtitle settings)';

  @override
  String get readerSettings => 'Configurações do leitor';

  @override
  String get readerSettingsDesc => 'Alterar as configurações do leitor';

  @override
  String get spacedPages => 'Páginas espaçadas';

  @override
  String get spacedPagesDesc => 'Adicionar espaço entre páginas';

  @override
  String get hideScrollbar => 'Ocultar o Scrollbar';

  @override
  String get hideScrollbarDesc =>
      'Ocultar a barra de rolagem durante a leitura';

  @override
  String get hidePageNumber => 'Ocultar número de página';

  @override
  String get hidePageNumberDesc => 'Ocultar o número da página ao ler';

  @override
  String get theme => 'Tema';

  @override
  String get themeDescription => 'Personalize a aparência e o clima do seu app';

  @override
  String get darkMode => 'Modo Escuro';

  @override
  String get enableDarkMode => 'Ativar o Modo Escuro';

  @override
  String get glassEffect => 'Efeito de vidro';

  @override
  String get glassEffectDescription =>
      'Dá um efeito de vidro fosco para o aplicativo';

  @override
  String get coverTheme => 'Usar tema de capa';

  @override
  String get coverThemeDescription =>
      'Use a imagem da capa da mídia como cor do tema';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription => 'Use a mesma cor do seu papel de parede';

  @override
  String get customTheme => 'Personalizado Tema';

  @override
  String get customThemeDescription => 'Use sua própria cor para o tema';

  @override
  String get oledThemeVariant => 'Variante de tema OLED';

  @override
  String get oledThemeVariantDescription => 'Ativar o Modo OLED';

  @override
  String get colorPicker => 'Seletor De Cores';

  @override
  String get pickColor => 'Selecione uma cor';

  @override
  String get colorPickerDescription => 'Escolha uma cor';

  @override
  String get colorPickerDefault => 'Padrão';

  @override
  String get colorPickerCustom => 'Personalizado';

  @override
  String get customPath => 'Caminho personalizado';

  @override
  String get customPathDescription =>
      'Defina um caminho personalizado para salvar arquivos\nImprensa longa para remover';

  @override
  String get selectDirectory => 'Selecione um diretório';

  @override
  String get selectMediaService => 'Selecione o serviço de mídia';

  @override
  String get logFile => 'Arquivo de log';

  @override
  String get logFileDescription => 'Compartilhe o arquivo de log';

  @override
  String get restoreSettings => 'Restaurar Configurações';

  @override
  String get differentCacheManager => 'Gerente de Cache diferente';

  @override
  String get differentCacheManagerDesc =>
      'Use o gerenciador de cache de imagem diferente';

  @override
  String get webView => 'Visualização Web';

  @override
  String get developersHelpers => 'Desenvolvedores/Ajudantes';

  @override
  String get developersHelpersDesc => 'Trabalhos não pagos de Dartotsu';

  @override
  String get supportMaintainer =>
      'Quer apoiar o mantenedor do Dartotsu?\nConsidere fazer uma doação';

  @override
  String get donationGoal => 'Sem meta de doação no momento';

  @override
  String get options => 'Opções';

  @override
  String get ok => 'OK';

  @override
  String get cancel => 'Cancelar';

  @override
  String get yes => 'Sim';

  @override
  String get no => 'Não';
}

/// The translations for Portuguese, as used in Brazil (`pt_BR`).
class AppLocalizationsPtBr extends AppLocalizationsPt {
  AppLocalizationsPtBr() : super('pt_BR');

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline => 'O NOVO Melhor App Para\nAcompanhar Animes e Mangás';

  @override
  String get anilist => 'AniList';

  @override
  String get mal => 'MyAnimeList';

  @override
  String get kitsu => 'Kitsu';

  @override
  String get simkl => 'Simkl';

  @override
  String get discord => 'Discord';

  @override
  String get login => 'Login';

  @override
  String loginTo(String service) {
    return 'Entrar no $service';
  }

  @override
  String logout(String type) {
    return 'Sair $type';
  }

  @override
  String get confirmLogout => 'Tem certeza que quer sair?';

  @override
  String get anime => 'Anime';

  @override
  String get manga => 'Mangá';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novel => 'Novel';

  @override
  String get ln => 'Light Novel';

  @override
  String get home => 'Início';

  @override
  String get search => 'Buscar';

  @override
  String get calendar => 'Calendário';

  @override
  String get settings => 'Configurações';

  @override
  String get watch => 'Assistir';

  @override
  String get read => 'Ler';

  @override
  String get info => 'Info';

  @override
  String get comments => 'Comentários';

  @override
  String get addToList => 'Adicionar à Lista';

  @override
  String get series => 'Série';

  @override
  String get season => 'Temporada';

  @override
  String episode(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Episódios',
      one: 'Episódio',
    );
    return '$_temp0';
  }

  @override
  String chapter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Capítulos',
      one: 'Capítulo',
    );
    return '$_temp0';
  }

  @override
  String volume(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Volumes',
      one: 'Volume',
    );
    return '$_temp0';
  }

  @override
  String movie(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Filmes',
      one: 'Filme',
    );
    return '$_temp0';
  }

  @override
  String get totalEpisodes => 'Episódios';

  @override
  String get totalChapters => 'Capítulos';

  @override
  String nextEpisodeRelease(int episode) {
    return 'Episódio $episode será lançado em';
  }

  @override
  String get genres => 'Gêneros';

  @override
  String get scanlators => 'Scanlators';

  @override
  String list(String type) {
    return '$type Lista';
  }

  @override
  String get watching => 'Assistindo';

  @override
  String get reading => 'Lendo';

  @override
  String get readStatus => 'Ler';

  @override
  String get watchStatus => 'Assistido';

  @override
  String planned(String type) {
    return '$type Planejado';
  }

  @override
  String onHold(String type) {
    return '$type Em Espera';
  }

  @override
  String get droppedAnime => 'Anime Abandonado';

  @override
  String get droppedManga => 'Mangá Abandonado';

  @override
  String noDropped(String type) {
    return 'Você ainda não abandonou nenhum $type.';
  }

  @override
  String get continueReading => 'Continue Lendo';

  @override
  String get continueWatching => 'Continue Assistindo';

  @override
  String browse(String type) {
    return 'Buscar por $type';
  }

  @override
  String trending(String type) {
    return '$type em Alta';
  }

  @override
  String popular(String type) {
    return '$type Populares';
  }

  @override
  String get topAiring => 'Mais Assistidos';

  @override
  String topRated(String type) {
    return '$type Mais Bem Avaliados';
  }

  @override
  String get topScore => 'Pontuação superior';

  @override
  String mostFavourite(String type) {
    return '$type Mais Favoritados';
  }

  @override
  String get thisSeason => 'Temporada Atual';

  @override
  String get nextSeason => 'Próxima Temporada';

  @override
  String get previousSeason => 'Temporada Anterior';

  @override
  String get recommended => 'Recomendações';

  @override
  String get recommendationsEmptyMessage =>
      'Assista/Leia algum Anime ou Mangá para receber Recomendações';

  @override
  String get recentUpdates => 'Atualizado Recentemente';

  @override
  String get allCaughtUpNew => 'E aí, alguma novidade?';

  @override
  String favorite(String type) {
    return '$type Favorito';
  }

  @override
  String get favorites => 'Favoritos';

  @override
  String get noFavourites =>
      'Hmm... nada por aqui ainda!\nCurte algum título e deixa essa área mais animada.';

  @override
  String get noOnHold => 'Tudo em dia por aqui! Nada em pausa por enquanto.';

  @override
  String manageLayout(String service, String page) {
    return 'Gerenciar o layout da página $page para o $service';
  }

  @override
  String manageLayoutDescription(String page) {
    return 'Você pode gerenciar o layout da página $page arrastando e soltando os itens';
  }

  @override
  String get gridView => 'Visual em Grade';

  @override
  String get listView => 'Visual em Lista';

  @override
  String get compactView => 'Visual Compacta';

  @override
  String get layout => 'Layout';

  @override
  String get sort => 'Ordenar';

  @override
  String get utd => 'Para Baixo';

  @override
  String get dtu => 'Para Cima';

  @override
  String get rtl => 'Direita à esquerda';

  @override
  String get ltr => 'Esquerda para a direita';

  @override
  String get direction => 'Direção';

  @override
  String get episodeWatched => 'Episódio Assistido';

  @override
  String get chapterRead => 'Capítulo Lido';

  @override
  String get outOf => 'fora de';

  @override
  String get totalOf => 'Total de';

  @override
  String get selected => 'Selecionado';

  @override
  String get found => 'Encontrado';

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
  String available(String type) {
    return '$type Disponível';
  }

  @override
  String installed(String type) {
    return '$type Instalado';
  }

  @override
  String get extensionsDescription =>
      'Instale e gerencie suas extensões para funcionalidades extras';

  @override
  String get addAnimeRepo => 'Adicionar Repositório de Anime';

  @override
  String get addAnimeRepoDesc =>
      'Adicionar Repositório de Anime de várias fontes';

  @override
  String get addMangaRepo => 'Adicionar Repositório de Mangás';

  @override
  String get addMangaRepoDesc =>
      'Adicionar Repositório de Mangás de várias fontes';

  @override
  String get addNovelRepo => 'Adicionar Repositório de Novel';

  @override
  String get addNovelRepoDesc =>
      'Adicionar Repositório de Novel de várias fontes';

  @override
  String get loadExtensionsIcon => 'Carregar ícone das extensões';

  @override
  String get loadExtensionsIconDesc =>
      'Desative se a página de extensões ficar lenta';

  @override
  String get autoUpdate => 'Atualização Automática';

  @override
  String get autoUpdateDesc => 'Atualização Automática das Extensões';

  @override
  String get installSourceToStart =>
      'Adicione um repositório na página de extensões para começar';

  @override
  String get author => 'Autor';

  @override
  String get averageDuration => 'Média de Duração';

  @override
  String get characters => 'Personagens';

  @override
  String get synopsis => 'Sinopse';

  @override
  String get endDate => 'Encerramento';

  @override
  String get format => 'Formato/Categoria';

  @override
  String get meanScore => 'Nota Média';

  @override
  String get name => 'Nome';

  @override
  String get nameRomaji => 'Nome (Romaji)';

  @override
  String get popularity => 'Popularidade';

  @override
  String get relations => 'Relacionados';

  @override
  String get prequel => 'ANTERIOR';

  @override
  String get sequel => 'SEQUÊNCIA';

  @override
  String get source => 'Origem';

  @override
  String get staff => 'Equipe Técnica';

  @override
  String get startDate => 'Data de Início';

  @override
  String get status => 'Estado Atual';

  @override
  String get studio => 'Estúdio';

  @override
  String get synonyms => 'Sinônimos';

  @override
  String get tags => 'Tags';

  @override
  String get total => 'Total';

  @override
  String get collapseText => 'mostrar menos';

  @override
  String get expandText => 'mostrar mais';

  @override
  String get comingSoon => 'Chegando EM BREVE';

  @override
  String get wrongTitle => 'Título Errado?';

  @override
  String get youTube => 'Assistir no YouTube?';

  @override
  String get mediaNotFound => 'Mídia não encontrada';

  @override
  String get noChapterFound => 'Nenhum capítulo encontrado';

  @override
  String activity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Atividades',
      one: 'Atividade',
    );
    return '$_temp0';
  }

  @override
  String get language => 'Idioma';

  @override
  String get account => 'Conta';

  @override
  String get accountDescription =>
      'Organize suas contas AniList, MAL e Discord aqui nesta aba :)';

  @override
  String get common => 'Geral';

  @override
  String get commonDescription =>
      'Ajuste as configurações gerais para uma experiência suave no app';

  @override
  String get animeDescription => 'Ajuste e controle suas preferências de anime';

  @override
  String get mangaDescription =>
      'Organize e personalize sua experiência com mangás';

  @override
  String get about => 'Sobre';

  @override
  String get aboutDescription =>
      'Tudo sobre o app e as pessoas que fizeram acontecer';

  @override
  String get notifications => 'Notificações';

  @override
  String get notificationsDescription =>
      'Configure como e quando você recebe as notificações';

  @override
  String get offlineMode => 'Modo Offline';

  @override
  String get offlineModeDescription =>
      'Curta o app offline, sem precisar de conexão';

  @override
  String get incognitoMode => 'Modo Anônimo';

  @override
  String get incognitoModeDescription =>
      'Navegue sem rastrear as suas atividades';

  @override
  String get hidePrivate => 'Ocultar Privado';

  @override
  String get hidePrivateDescription =>
      'Ocultar séries privadas da página inicial.';

  @override
  String get hiddenMedia => 'Mídias Ocultas';

  @override
  String get noHiddenMediaFound => 'Nenhuma mídia oculta encontrada';

  @override
  String get playerSettingsTitle => 'Configurações do Player';

  @override
  String get playerSettingsDesc => 'Alterar configurações do player';

  @override
  String get speed => 'Velocidade';

  @override
  String get speedDescription => 'Velocidade padrão do reprodutor';

  @override
  String get cursedSpeed => 'Velocidade Insana';

  @override
  String get cursedSpeedDescription => 'Perfeito pra quem tá sempre sem tempo';

  @override
  String get resizeMode => 'Ajuste de tamanho';

  @override
  String get resizeModeDescription => 'Redimensionamento padrão do player';

  @override
  String get skipButton => 'Botão de Pular';

  @override
  String get skipButtonDescription => 'Duração do botão pular';

  @override
  String get thumbLessSeekBar => 'Barra de Progresso Sem Indicador';

  @override
  String get thumbLessSeekBarDesc => 'Tirar o indicador da barra de progresso';

  @override
  String get customMPV => 'MPV personalizado Configuração';

  @override
  String customMPVDescription(String path) {
    return 'Ative esta opção para usar seu próprio arquivo de configuração MPV. Coloque sua configuração personalizada em: $path';
  }

  @override
  String get subtitles => 'Legendas';

  @override
  String get showSubtitles => 'Mostrar Legendas';

  @override
  String get showSubtitlesDescription => 'Exibir legendas por padrão';

  @override
  String get subtitlePreview => 'Preview das Legendas';

  @override
  String get fontColor => 'Cor da Fonte';

  @override
  String get fontColorDescription => 'Cor da fonte das legendas';

  @override
  String get fontFamily => 'Tipo De Fonte';

  @override
  String get fontFamilyDescription => 'Tipo de fonte das legendas';

  @override
  String get fontSize => 'Tamanho da Fonte';

  @override
  String get fontSizeDescription => 'Tamanho da fonte das legendas';

  @override
  String get fontWeight => 'Grossura da fonte';

  @override
  String get fontWeightDescription => 'Grossura da fonte das legendas';

  @override
  String get backgroundColor => 'Cor de Fundo';

  @override
  String get backgroundColorDescription => 'Cor de fundo das legendas';

  @override
  String get outlineColor => 'Cor de Contorno';

  @override
  String get outlineColorDescription => 'Cor de contorno das legendas';

  @override
  String get bottomPadding => 'Margem Inferior';

  @override
  String get bottomPaddingDescription => 'Margem inferior das legendas';

  @override
  String get readerSettings => 'Ajustes do Leitor';

  @override
  String get readerSettingsDesc => 'Ajustar configurações do leitor';

  @override
  String get spacedPages => 'Páginas Espaçadas';

  @override
  String get spacedPagesDesc => 'Adicionar espaço entre as páginas';

  @override
  String get hideScrollbar => 'Ocultar Barra de Rolagem';

  @override
  String get hideScrollbarDesc => 'Oculte a barra de rolagem durante a leitura';

  @override
  String get hidePageNumber => 'Ocultar Número da Página';

  @override
  String get hidePageNumberDesc =>
      'Oculte o número da página durante a leitura';

  @override
  String get theme => 'Tema';

  @override
  String get themeDescription => 'Customize o visual e o clima do seu app';

  @override
  String get darkMode => 'Modo Escuro';

  @override
  String get enableDarkMode => 'Ativar Modo Escuro';

  @override
  String get glassEffect => 'Efeito de vidro';

  @override
  String get glassEffectDescription =>
      'Dá um efeito de vidro fosco para o aplicativo';

  @override
  String get coverTheme => 'Usar tema de capa';

  @override
  String get coverThemeDescription =>
      'Use a imagem da capa da mídia como cor do tema';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription =>
      'Combine com a cor do seu papel de parede e use ela';

  @override
  String get customTheme => 'Personalizado Tema';

  @override
  String get customThemeDescription => 'Use sua cor favorita no tema';

  @override
  String get oledThemeVariant => 'OLED Variante do tema';

  @override
  String get oledThemeVariantDescription => 'Ativar modo OLED';

  @override
  String get colorPicker => 'Seletor de Cores';

  @override
  String get pickColor => 'Selecione uma cor';

  @override
  String get colorPickerDescription => 'Escolha uma cor';

  @override
  String get colorPickerDefault => 'Padrão';

  @override
  String get colorPickerCustom => 'Personalizado';

  @override
  String get customPath => 'Caminho Personalizado';

  @override
  String get customPathDescription =>
      'Defina um caminho personalizado para salvar os arquivos\nToque e segure para remover';

  @override
  String get selectDirectory => 'Escolha uma pasta';

  @override
  String get selectMediaService => 'Selecionar Serviço de Mídia';

  @override
  String get logFile => 'Arquivo de Log';

  @override
  String get logFileDescription => 'Compartilhar o arquivo de log';

  @override
  String get restoreSettings => 'Restaurar Configuração';

  @override
  String get differentCacheManager => 'Gerenciador de Cache Alternativo';

  @override
  String get differentCacheManagerDesc =>
      'Usar um gerenciador diferente para o cache de imagens';

  @override
  String get webView => 'Visualização Web';

  @override
  String get developersHelpers => 'Desenvolvedores / Colaboradores';

  @override
  String get developersHelpersDesc =>
      'O esforço dedicado (não pago) do Dartotsu';

  @override
  String get supportMaintainer =>
      'Quer ajudar o Dartotsu a continuar rolando?\nDoe e faça a diferença ;)';

  @override
  String get donationGoal => 'Por enquanto, sem meta de doação';

  @override
  String get options => 'Opções';

  @override
  String get ok => 'OK';

  @override
  String get cancel => 'Cancelar';

  @override
  String get yes => 'Sim';

  @override
  String get no => 'Não';
}
