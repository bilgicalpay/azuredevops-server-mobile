// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'Azure DevOps';

  @override
  String get settings => 'Настройки';

  @override
  String get wikiSettings => 'Настройки Wiki';

  @override
  String get wikiSettingsDescription =>
      'Введите URL файла Azure DevOps wiki. Содержимое wiki будет отображаться на главной странице.';

  @override
  String get wikiUrl => 'URL Wiki';

  @override
  String get save => 'Сохранить';

  @override
  String get marketSettings => 'Настройки Маркета';

  @override
  String get marketSettingsDescription =>
      'Введите URL статического каталога IIS. Файлы APK и IPA будут перечислены и доступны для загрузки из этого каталога.';

  @override
  String get marketUrl => 'URL Маркета';

  @override
  String get notificationSettings => 'Настройки Уведомлений';

  @override
  String get controlFrequency => 'Частота Проверки';

  @override
  String get pollingInterval => 'Интервал Опроса (секунды)';

  @override
  String get pollingIntervalHelper => 'От 5 до 300 секунд';

  @override
  String get fast => 'Быстро (10с)';

  @override
  String get normal => 'Обычно (15с)';

  @override
  String get slow => 'Медленно (30с)';

  @override
  String get notificationTypes => 'Типы Уведомлений';

  @override
  String get notifyOnFirstAssignment => 'Уведомление при Первом Назначении';

  @override
  String get notifyOnFirstAssignmentDescription =>
      'Отправлять уведомление только при первом назначении мне';

  @override
  String get notifyOnAllUpdates => 'Уведомление при Всех Обновлениях';

  @override
  String get notifyOnAllUpdatesDescription =>
      'Отправлять уведомление при обновлении рабочих элементов, назначенных мне';

  @override
  String get notifyOnHotfixOnly => 'Только Hotfix';

  @override
  String get notifyOnHotfixOnlyDescription =>
      'Уведомление только для рабочих элементов типа Hotfix';

  @override
  String get notifyOnGroupAssignments => 'Уведомление при Назначении Группам';

  @override
  String get notifyOnGroupAssignmentsDescription =>
      'Отправлять уведомление при назначении указанным группам';

  @override
  String get groupName => 'Имя Группы';

  @override
  String get groupNameHint => 'Например: Разработчики, Команда QA';

  @override
  String get smartwatchNotifications => 'Уведомления на Умные Часы';

  @override
  String get smartwatchNotificationsDescription =>
      'Отправлять уведомления на умные часы (только при первом назначении)';

  @override
  String get onCallMode => 'Режим Дежурства';

  @override
  String get onCallModeDescription =>
      'В режиме дежурства уведомления становятся более агрессивными, а непрочитанные уведомления обновляются 3 раза.';

  @override
  String get onCallModePhone => 'Режим Дежурства для Телефона';

  @override
  String get onCallModePhoneDescription =>
      'Агрессивные уведомления на телефоне';

  @override
  String get onCallModeWatch => 'Режим Дежурства для Умных Часов';

  @override
  String get onCallModeWatchDescription =>
      'Агрессивные уведомления на умных часах';

  @override
  String get vacationMode => 'Режим Отпуска';

  @override
  String get vacationModeDescription =>
      'В режиме отпуска уведомления не приходят.';

  @override
  String get vacationModePhone => 'Режим Отпуска для Телефона';

  @override
  String get vacationModePhoneDescription =>
      'Отключить уведомления на телефоне';

  @override
  String get vacationModeWatch => 'Режим Отпуска для Умных Часов';

  @override
  String get vacationModeWatchDescription =>
      'Отключить уведомления на умных часах';

  @override
  String get serverUrl => 'URL Сервера';

  @override
  String get collection => 'Коллекция';

  @override
  String get language => 'Язык';

  @override
  String get selectLanguage => 'Выберите Язык';

  @override
  String get languageDescription =>
      'Выберите предпочитаемый язык. Приложение будет использовать язык вашего устройства по умолчанию.';

  @override
  String get close => 'Закрыть';

  @override
  String get settingsSaved => 'Настройки сохранены';

  @override
  String get invalidUrl => 'Пожалуйста, введите действительный URL';

  @override
  String get invalidMarketUrl =>
      'Пожалуйста, введите действительный URL Маркета (например: https://devops.higgscloud.com/_static/market/)';

  @override
  String get invalidPollingInterval =>
      'Интервал опроса должен быть от 5 до 300 секунд';

  @override
  String couldNotOpenLink(String error) {
    return 'Не удалось открыть ссылку: $error';
  }

  @override
  String get wikiUrlHint =>
      'https://devops.higgscloud.com/Dev/demo/_wiki/wikis/CAB-Plan/1/README';

  @override
  String get marketUrlHint => 'https://devops.higgscloud.com/_static/market/';

  @override
  String get noGroupsAdded =>
      'Группы еще не добавлены. Добавьте имя группы выше.';

  @override
  String get donate => 'Пожертвовать';

  @override
  String get donateDescription => 'Поддержите разработку этого приложения';

  @override
  String get donateButton => 'Купите мне кофе';

  @override
  String get closePopup => 'Close';

  @override
  String get cultureFigure_ibni_sina =>
      'Ibn Sina (Avicenna) - Wrote the most important medical encyclopedia of the Middle Ages with his work \'El-Kanun fi\'t-Tıb\'. This great scientist, known as Avicenna, laid the foundations of modern medicine.';

  @override
  String get cultureFigure_ali_kuscu =>
      'Ali Kuşçu - Made groundbreaking work in mathematics and astronomy in the 15th century. Came to Istanbul at the invitation of Fatih Sultan Mehmet and taught in madrasas.';

  @override
  String get cultureFigure_ulug_bey =>
      'Uluğ Bey - Ruler of the Timurid Empire and a great astronomer. Prepared star catalogs at the observatory he established in Samarkand. His work \'Zic-i Uluğ Bey\' was used for centuries.';

  @override
  String get cultureFigure_farabi =>
      'Farabi - One of the founders of Islamic philosophy. Known as the \'Second Teacher\'. Made important works in music theory, logic and political philosophy.';

  @override
  String get cultureFigure_mimar_sinan =>
      'Mimar Sinan - Chief architect of the Ottoman Empire. Created more than 300 works. Created works that entered world architectural history such as Süleymaniye and Selimiye mosques.';

  @override
  String get cultureFigure_evliya_celebi =>
      'Evliya Çelebi - Great traveler of the 17th century. Recorded Ottoman geography and culture with his 10-volume work \'Seyahatname\'. One of the important names in world travel literature.';

  @override
  String get cultureFigure_katip_celebi =>
      'Katip Çelebi - Important Ottoman geographer and historian. Known for his geography work \'Cihannüma\' and bibliography work \'Keşfü\'z-Zünun\'.';

  @override
  String get cultureFigure_piri_reis =>
      'Piri Reis - Ottoman sailor and cartographer. The world map he drew in 1513 is considered one of the oldest maps of the American continent.';

  @override
  String get cultureFigure_cahit_arf =>
      'Cahit Arf - Turkish mathematician. Gained an important place in the mathematical world with \'Arf Constant\' and \'Arf Rings\' theory. His contributions to modern algebra and number theory are great.';

  @override
  String get cultureFigure_aziz_sancar =>
      'Aziz Sancar - 2015 Nobel Prize in Chemistry winner. Discovered DNA repair mechanisms. First scientist from Turkey to receive a Nobel Prize.';

  @override
  String get cultureHistoricalState_gokturk_kaganligi =>
      '🏹 Göktürk Khaganate (552-744) - The first Turkic state established in Central Asia. The first state to use the name Turk. Divided into Eastern and Western.';

  @override
  String get cultureHistoricalState_osmanli =>
      '🌙 Ottoman Empire (1299-1922) - Great empire spread across three continents. Ruled for more than 600 years. With the conquest of Istanbul, it closed the Middle Ages and opened the Modern Age.';

  @override
  String get cultureModernState_turkiye =>
      '🇹🇷 Republic of Turkey (1923-) - Modern Turkish state founded under the leadership of Mustafa Kemal Atatürk. Secular, democratic and social state of law. Member of NATO and EU.';

  @override
  String get cultureHistoricalPlace_ayasofya =>
      'Hagia Sophia - One of the world\'s most important architectural monuments. Built as a church in 537, converted to a mosque in 1453, and became a museum in 1935. It is now a mosque again.';

  @override
  String get cultureHistoricalPlace_cappadocia =>
      'Cappadocia - Unique region with fairy chimneys and underground cities. UNESCO World Heritage Site. Famous for hot air balloon tours.';

  @override
  String get cultureHistoricalPlace_pamukkale =>
      'Pamukkale - Natural wonder with white travertine terraces. Thermal springs and ancient city of Hierapolis. UNESCO World Heritage Site.';

  @override
  String get cultureGeographical_agri_dagi =>
      'Mount Ararat (Ağrı Dağı) - Turkey\'s highest peak at 5,137 meters. According to legend, Noah\'s Ark landed here. Located on the border with Iran and Armenia.';

  @override
  String get cultureGeographical_van_golu =>
      'Lake Van - Turkey\'s largest lake. Saline lake with an area of 3,755 km². Famous for its unique ecosystem and Akdamar Island.';

  @override
  String get cultureCultural_turkish_coffee =>
      'Turkish Coffee - Traditional coffee preparation method included in UNESCO\'s Intangible Cultural Heritage. Served with Turkish delight. An important part of Turkish culture.';

  @override
  String get cultureCultural_whirling_dervishes =>
      'Mevlevi Sema Ceremony - Whirling dervish ritual of the Mevlevi order. UNESCO Intangible Cultural Heritage. Represents spiritual journey and unity with God.';

  @override
  String get cultureGastronomy_kebab =>
      'Kebab - One of Turkey\'s most famous dishes. Various types including Adana kebab, Urfa kebab, and döner. Grilled meat dishes that are world-renowned.';

  @override
  String get cultureGastronomy_baklava =>
      'Baklava - Traditional Turkish dessert made with phyllo dough, nuts and syrup. Gaziantep baklava is particularly famous. UNESCO Intangible Cultural Heritage.';

  @override
  String get cultureGeology_cappadocia_volcanic =>
      'Cappadocia Volcanic Formations - Formed by volcanic eruptions millions of years ago. Erosion created unique fairy chimneys. One of the world\'s most unique geological formations.';

  @override
  String get cultureGeology_pamukkale_travertine =>
      'Pamukkale Travertines - White terraces formed by calcium carbonate deposits from thermal waters. Natural wonder formed over thousands of years.';

  @override
  String get cultureSea_mediterranean =>
      'Mediterranean Sea - Turkey\'s southern coast. Famous for its turquoise waters, beautiful beaches and historical sites. Popular tourist destination.';

  @override
  String get cultureSea_aegean =>
      'Aegean Sea - Turkey\'s western coast. Known for its clear waters, islands and ancient cities. Home to many important archaeological sites.';

  @override
  String get cultureMuseum_topkapi_museum =>
      'Topkapı Palace Museum - Former residence of Ottoman sultans. Houses important collections including the Prophet\'s relics. One of the world\'s most important palace museums.';

  @override
  String get cultureMuseum_archaeological_museum =>
      'Istanbul Archaeological Museum - Houses artifacts from various civilizations. One of the world\'s most important archaeological museums. Contains works from Anatolian, Greek, Roman and Ottoman periods.';

  @override
  String get cultureHoliday_antalya =>
      'Antalya - Turkey\'s most popular holiday destination. Beautiful beaches, historical sites and luxury resorts. Known as the Turkish Riviera.';

  @override
  String get cultureHoliday_cappadocia =>
      'Cappadocia - Unique holiday destination with fairy chimneys and cave hotels. Famous for hot air balloon tours. UNESCO World Heritage Site.';

  @override
  String get cultureHistoricalPlace_musul =>
      'Мосул - Исторический турецкий город на севере Ирака. Богат нефтяными ресурсами и культурным наследием. Дом древних ассирийских и османских памятников. Известен своей красивой архитектурой и историческим значением.';

  @override
  String get cultureHistoricalPlace_kerkuk =>
      'Киркук - Важный турецкий город на севере Ирака. Богат нефтяными запасами и культурным разнообразием. Дом туркменских, курдских и арабских общин. Известен своей исторической цитаделью и традиционной архитектурой.';

  @override
  String get cultureHistoricalPlace_karabag =>
      'Карабах - Исторический турецкий регион на Кавказе. Известен своими красивыми горами, лесами и культурным наследием. Богат историей и природной красотой. Важный регион для тюркской культуры.';

  @override
  String get cultureHistoricalPlace_selanik =>
      'Салоники - Исторический турецкий город на севере Греции. Родина Мустафы Кемаля Ататюрка. Богат османской архитектурой и культурным наследием. Известен своей красивой набережной и историческими памятниками.';

  @override
  String get cultureHistoricalPlace_kibris =>
      'Кипр - Красивый средиземноморский остров, часть турецкой истории. Известен своими потрясающими пляжами, древними руинами и культурным наследием. Северный Кипр - Турецкая Республика. Богат историей и природной красотой.';

  @override
  String get cultureHistoricalPlace_rodos =>
      'Родос - Красивый греческий остров с богатой турецкой историей. Известен своей средневековой архитектурой, красивыми пляжами и историческими памятниками. Дом османских мечетей и турецких бань. Важная часть турецкой морской истории.';

  @override
  String get cultureHistoricalPlace_girit =>
      'Крит - Самый большой греческий остров со значительным турецким наследием. Известен своими красивыми пейзажами, древней минойской цивилизацией и османской архитектурой. Богат историей и культурным разнообразием. Важный регион в турецкой морской истории.';

  @override
  String get turkeyGuideTitle => 'Путеводитель по Турции';

  @override
  String get turkeyGuideSubtitle =>
      'Откройте для себя природную красоту, культурное наследие, исторические места и фестивали Турции';

  @override
  String get turkeyGuideNatureTitle => 'Природа и География';

  @override
  String get turkeyGuideNatureDescription =>
      'Исследуйте уникальные природные чудеса и географические особенности Турции';

  @override
  String get turkeyGuideLycianWayTitle => 'Ликийская тропа';

  @override
  String get turkeyGuideLycianWayDescription =>
      'Ликийская тропа - одна из 10 лучших в мире длинных пешеходных троп, протяженностью 540 км вдоль средиземноморского побережья Турции. Она проходит через древние ликийские города, красивые пляжи и потрясающие горные пейзажи. Тропа предлагает захватывающие виды и соединяет исторические места от Фетхие до Антальи.';

  @override
  String get turkeyGuideFairyChimneysTitle => 'Дымоходы фей в Каппадокии';

  @override
  String get turkeyGuideFairyChimneysDescription =>
      'Дымоходы фей Каппадокии - уникальные скальные образования, созданные вулканическими извержениями миллионы лет назад. Эти конусообразные образования, некоторые достигающие 40 метров в высоту, создают волшебный пейзаж. Регион славится турами на воздушных шарах на рассвете, предлагая захватывающие виды этого объекта Всемирного наследия ЮНЕСКО.';

  @override
  String get turkeyGuideUndergroundCityTitle => 'Подземные города';

  @override
  String get turkeyGuideUndergroundCityDescription =>
      'Каппадокия является домом для замечательных подземных городов, некоторые из которых простираются на 8 уровней вглубь. Деринкую и Каймаклы являются самыми известными, с туннелями, комнатами, церквями и системами вентиляции. Эти города могли вмещать тысячи людей и использовались для защиты во время вторжений. Они демонстрируют невероятную древнюю инженерию.';

  @override
  String get turkeyGuideCultureTitle => 'Культура и Традиции';

  @override
  String get turkeyGuideCultureDescription =>
      'Откройте для себя богатое культурное наследие и традиционные обычаи Турции';

  @override
  String get turkeyGuideNasreddinHocaTitle => 'Насреддин Ходжа';

  @override
  String get turkeyGuideNasreddinHocaDescription =>
      'Насреддин Ходжа - легендарная фигура в турецком фольклоре, известная своей мудростью, юмором и умными историями. Родился в 1208 году в Сиврихисаре, жил в Акшехире. Его рассказы, наполненные юмором и мудростью, рассказываются по всему тюркскому миру. Международный фестиваль Насреддина Ходжи проводится ежегодно в Акшехире, празднуя этого любимого персонажа.';

  @override
  String get turkeyGuideCherryFestivalTitle => 'Фестиваль вишни';

  @override
  String get turkeyGuideCherryFestivalDescription =>
      'Фестиваль вишни в Акшехире - один из самых известных традиционных фестивалей Турции. Проводится ежегодно в июне, празднуя урожай вишни в регионе. Фестиваль включает культурные мероприятия, народные танцы, традиционную музыку и, конечно же, множество вкусной вишни. Привлекает тысячи посетителей и демонстрирует местные традиции.';

  @override
  String get turkeyGuideHistoryTitle => 'Исторические места';

  @override
  String get turkeyGuideHistoryDescription =>
      'Исследуйте богатое историческое наследие Турции, охватывающее тысячи лет';

  @override
  String get turkeyGuideHistoricalSitesTitle => 'Древние города и памятники';

  @override
  String get turkeyGuideHistoricalSitesDescription =>
      'Турция является домом для бесчисленных исторических мест, включая Эфес, Трою, Пергам и Иераполис. Эти древние города демонстрируют греческую, римскую и византийскую цивилизации. В стране есть 19 объектов Всемирного наследия ЮНЕСКО, включая Святую Софию, Каппадокию, Памуккале и Гебекли-Тепе, один из старейших храмов в мире, датируемый 12 000 лет назад.';

  @override
  String get turkeyGuideGastronomyTitle => 'Турецкая кухня';

  @override
  String get turkeyGuideGastronomyDescription =>
      'Насладитесь вкусами всемирно известной турецкой кухни';

  @override
  String get turkeyGuideTurkishCuisineTitle => 'Турецкое кулинарное наследие';

  @override
  String get turkeyGuideTurkishCuisineDescription =>
      'Турецкая кухня - одна из самых разнообразных и вкусных в мире. От кебабов и пахлавы до турецких сладостей и турецкого кофе, кухня отражает столетия культурного обмена. Уличная еда Стамбула, региональные специалитеты и традиционные блюда, такие как манты, долма и бёрек, предлагают незабываемое кулинарное путешествие. Турецкий кофе и чайная культура являются неотъемлемой частью повседневной жизни.';

  @override
  String get turkeyGuideFestivalsTitle => 'Фестивали и События';

  @override
  String get turkeyGuideFestivalsDescription =>
      'Испытайте яркие фестивали и культурные мероприятия Турции';

  @override
  String get turkeyGuideFestivalsListTitle => 'Основные фестивали';

  @override
  String get turkeyGuideFestivalsListDescription =>
      'Турция проводит множество фестивалей в течение года: Международный Стамбульский кинофестиваль, Анталийский кинофестиваль Золотой апельсин, Каппадокийский фестиваль воздушных шаров, Международный фестиваль Насреддина Ходжи, Фестиваль вишни в Акшехире, Фестиваль вращающихся дервишей Мевланы в Конье и множество региональных культурных празднований, демонстрирующих музыку, танцы и традиционные искусства.';

  @override
  String get turkeyGuideHistoricalPlacesTitle => 'Historical Places';

  @override
  String get turkeyGuideHistoricalPlacesDescription =>
      'Discover Turkey\'s rich historical heritage including ancient cities, monuments, and important Turkish lands';

  @override
  String get turkeyGuideHistoricalPlacesListTitle =>
      'Important Historical Places & Turkish Lands';

  @override
  String get turkeyGuideHistoricalPlacesListDescription =>
      'Turkey and Turkish lands are home to countless historical sites: Ephesus, Troy, Pergamon, Hierapolis, Hagia Sophia, Topkapı Palace, Süleymaniye Mosque, Selimiye Mosque, Göbekli Tepe (12,000 years old), Çatalhöyük, Hattuşa, Mount Nemrut, Sümela Monastery, Akdamar Church, Anıtkabir. Important Turkish lands include: Mosul (Musul) - Historic Turkish city in northern Iraq with rich oil resources and cultural heritage. Kirkuk (Kerkük) - Important Turkish city with historical citadel. Karabakh (Karabağ) - Historic Turkish region in the Caucasus with beautiful mountains and forests. Thessaloniki (Selanik) - Birthplace of Mustafa Kemal Atatürk, rich in Ottoman architecture. Cyprus (Kıbrıs) - Beautiful Mediterranean island, Northern Cyprus is a Turkish Republic. Rhodes (Rodos) - Island with rich Turkish history and Ottoman monuments. Crete (Girit) - Largest Greek island with significant Turkish heritage and Ottoman architecture.';

  @override
  String get turkeyGuideSeasTitle => 'Seas & Coastlines';

  @override
  String get turkeyGuideSeasDescription =>
      'Explore Turkey\'s beautiful seas, coastlines, and maritime heritage';

  @override
  String get turkeyGuideSeasListTitle => 'Turkish Seas & Bays';

  @override
  String get turkeyGuideSeasListDescription =>
      'Turkey is surrounded by four seas: Mediterranean Sea (Akdeniz) - Famous for turquoise waters, beautiful beaches, and historical sites. Known as the Turkish Riviera. Aegean Sea (Ege Denizi) - Known for clear waters, islands, and ancient cities. Black Sea (Karadeniz) - Rich in natural beauty and cultural heritage. Sea of Marmara (Marmara Denizi) - Connects the Black Sea and Aegean Sea. Bosphorus (Boğaziçi) - Iconic strait connecting Europe and Asia. Dardanelles (Çanakkale Boğazı) - Historic strait with rich maritime history. Beautiful bays include: Antalya Bay, İzmir Bay, Gökova Bay, Fethiye Bay, Kaş Bay, Kekova, Datça Peninsula, Bodrum Peninsula, and Çeşme Peninsula.';

  @override
  String get turkeyGuideMuseumsTitle => 'Museums';

  @override
  String get turkeyGuideMuseumsDescription =>
      'Discover Turkey\'s world-class museums and cultural collections';

  @override
  String get turkeyGuideMuseumsListTitle => 'Important Museums';

  @override
  String get turkeyGuideMuseumsListDescription =>
      'Turkey is home to world-renowned museums: Topkapı Palace Museum - Former residence of Ottoman sultans, houses Prophet\'s relics. Hagia Sophia Museum - One of the world\'s most important architectural monuments. Istanbul Archaeological Museum - Houses artifacts from various civilizations. Turkish and Islamic Arts Museum, Pera Museum, Sakıp Sabancı Museum, İstanbul Modern, Anıtkabir Atatürk Museum, Museum of Anatolian Civilizations, Göreme Open Air Museum, Zeugma Mosaic Museum, Antakya Mosaic Museum, Hierapolis Archaeological Museum, Ephesus Museum, Bodrum Underwater Archaeology Museum, Troy Museum, Gaziantep Zeugma Museum, Konya Mevlana Museum, Ankara Ethnography Museum, and Bursa Turkish and Islamic Arts Museum.';

  @override
  String get turkeyGuideGeologyTitle => 'Geological Features';

  @override
  String get turkeyGuideGeologyDescription =>
      'Explore Turkey\'s unique geological formations and natural wonders';

  @override
  String get turkeyGuideGeologyListTitle => 'Geological Wonders';

  @override
  String get turkeyGuideGeologyListDescription =>
      'Turkey\'s geological diversity is remarkable: Cappadocia Volcanic Formations - Unique fairy chimneys created by volcanic eruptions millions of years ago. Pamukkale Travertines - White terraces formed by calcium carbonate deposits from thermal waters. Mount Ararat (Ağrı Dağı) - Turkey\'s highest peak at 5,137 meters, legendary landing place of Noah\'s Ark. Erciyes Volcano, Nemrut Volcano, Hasandağ, Karapınar Volcanic Area, Kula Volcanic Park. Salt deposits at Lake Tuz (Tuz Gölü). Volcanic formations around Lake Van. Important deltas: Çukurova Delta, Bafra Delta, Kızılırmak Delta, Yeşilırmak Delta, Göksu Delta, Sakarya Delta. Major fault lines: Marmara Fault, North Anatolian Fault, East Anatolian Fault, and Tuz Gölü Fault.';

  @override
  String get turkeyGuideHolidayDestinationsTitle => 'Holiday Destinations';

  @override
  String get turkeyGuideHolidayDestinationsDescription =>
      'Discover Turkey\'s most beautiful holiday destinations and resorts';

  @override
  String get turkeyGuideHolidayDestinationsListTitle =>
      'Popular Holiday Destinations';

  @override
  String get turkeyGuideHolidayDestinationsListDescription =>
      'Turkey offers diverse holiday experiences: Mediterranean Coast - Antalya (Turkish Riviera), Bodrum, Marmaris, Fethiye, Kaş, Kalkan, Ölüdeniz, Datça. Aegean Coast - Çeşme, Alaçatı, Kuşadası, Didim. Natural Wonders - Pamukkale (white travertines), Cappadocia (fairy chimneys and cave hotels). Mountain Resorts - Uludağ, Palandöken, Kartalkaya, Erciyes (skiing). Cultural Destinations - Safranbolu (Ottoman architecture), Beypazarı (traditional houses), Amasra (Black Sea coast). Black Sea - Trabzon, Rize. Lakes - Sapanca, Abant. Each destination offers unique experiences from beach holidays to cultural tours, from winter sports to thermal springs.';

  @override
  String get turkeyGuideBeachesTitle => 'Beautiful Beaches & Coastlines';

  @override
  String get turkeyGuideBeachesDescription =>
      'Discover Turkey\'s stunning beaches and pristine coastlines';

  @override
  String get turkeyGuideBeachesListTitle => 'Famous Turkish Beaches';

  @override
  String get turkeyGuideBeachesListDescription =>
      'Turkey boasts some of the world\'s most beautiful beaches: Ölüdeniz (Blue Lagoon) - Famous for its turquoise waters and paragliding. Kaputaş Beach - Stunning beach between Kaş and Kalkan with crystal-clear waters. Patara Beach - 18 km long sandy beach, one of the longest in the Mediterranean. Iztuzu Beach - Protected nesting ground for Caretta caretta sea turtles. Butterfly Valley - Accessible only by boat, a hidden paradise. Cleopatra Beach (Alanya) - Legendary beach with golden sand. Çıralı Beach - Known for the eternal flames of the Chimaera. Kabak Bay - Secluded beach surrounded by nature. Each beach offers unique beauty and experiences.';

  @override
  String get turkeyGuideForestsTitle => 'Forests & Natural Parks';

  @override
  String get turkeyGuideForestsDescription =>
      'Explore Turkey\'s lush forests and protected natural areas';

  @override
  String get turkeyGuideForestsListTitle => 'Turkish Forests & National Parks';

  @override
  String get turkeyGuideForestsListDescription =>
      'Turkey is rich in forests and natural parks: Belgrad Forest (Istanbul) - Ancient forest with hiking trails and picnic areas. Yedigöller National Park (Seven Lakes) - Beautiful lakes surrounded by dense forests. Kazdağı National Park - Home to Mount Ida, rich in biodiversity. Köprülü Canyon National Park - Stunning canyon with ancient Roman bridge. Kaçkar Mountains National Park - Alpine meadows and pristine forests. Termessos National Park - Ancient city within a natural park. Dilek Peninsula-Büyük Menderes Delta National Park - Coastal forests and wetlands. Aladağlar National Park - Mountain forests and wildlife. These areas offer hiking, camping, and nature observation opportunities.';
}
