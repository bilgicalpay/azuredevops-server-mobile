// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kirghiz Kyrgyz (`ky`).
class AppLocalizationsKy extends AppLocalizations {
  AppLocalizationsKy([String locale = 'ky']) : super(locale);

  @override
  String get appTitle => 'Azure DevOps';

  @override
  String get settings => 'Жөндөөлөр';

  @override
  String get wikiSettings => 'Wiki Жөндөөлөрү';

  @override
  String get wikiSettingsDescription =>
      'Azure DevOps wiki файлынын URL дарегин киргизиңиз. Бул wiki мазмуну башкы бетте көрсөтүлөт.';

  @override
  String get wikiUrl => 'Wiki URL';

  @override
  String get save => 'Сактоо';

  @override
  String get marketSettings => 'Базар Жөндөөлөрү';

  @override
  String get marketSettingsDescription =>
      'IIS статикалык директориясынын URL дарегин киргизиңиз. APK жана IPA файлдары бул директориядан тизмеленет жана жүктөлөт.';

  @override
  String get marketUrl => 'Базар URL';

  @override
  String get notificationSettings => 'Эскертүүлөр Жөндөөлөрү';

  @override
  String get controlFrequency => 'Көзөмөлдөө Жыштыгы';

  @override
  String get pollingInterval => 'Суроо Аралыгы (секунд)';

  @override
  String get pollingIntervalHelper => '5-300 секунд арасы';

  @override
  String get fast => 'Тез (10s)';

  @override
  String get normal => 'Кадимки (15s)';

  @override
  String get slow => 'Жай (30s)';

  @override
  String get notificationTypes => 'Эскертүү Түрлөрү';

  @override
  String get notifyOnFirstAssignment => 'Биринчи Тайындоодо Эскертүү';

  @override
  String get notifyOnFirstAssignmentDescription =>
      'Мага биринчи жолу тайындалганда гана эскертүү жөнөтүңүз';

  @override
  String get notifyOnAllUpdates => 'Бардык Жаңылоолордо Эскертүү';

  @override
  String get notifyOnAllUpdatesDescription =>
      'Мага тайындалган жумуш элементтери жаңыланганда эскертүү жөнөтүңүз';

  @override
  String get notifyOnHotfixOnly => 'Жалгыз Hotfix';

  @override
  String get notifyOnHotfixOnlyDescription =>
      'Жалгыз Hotfix түрүндөгү жумуш элементтери үчүн эскертүү';

  @override
  String get notifyOnGroupAssignments => 'Топ Тайындоолорунда Эскертүү';

  @override
  String get notifyOnGroupAssignmentsDescription =>
      'Көрсөтүлгөн топторго тайындоо жасоодо эскертүү жөнөтүңүз';

  @override
  String get groupName => 'Топ Аты';

  @override
  String get groupNameHint => 'Мисалы: Өнүктүрүүчүлөр, QA Тобу';

  @override
  String get smartwatchNotifications => 'Акылдуу Саат Эскертүүлөрү';

  @override
  String get smartwatchNotificationsDescription =>
      'Акылдуу сааттарга эскертүү жөнөтүңүз (жалгыз биринчи тайындоодо)';

  @override
  String get onCallMode => 'Кызмат Режими';

  @override
  String get onCallModeDescription =>
      'Кызмат режиминде эскертүүлөр күчтүүрөөк болот жана окулбаган эскертүүлөр 3 жолу жаңыланат.';

  @override
  String get onCallModePhone => 'Телефон үчүн Кызмат Режими';

  @override
  String get onCallModePhoneDescription => 'Телефондо күчтүү эскертүүлөр';

  @override
  String get onCallModeWatch => 'Акылдуу Саат үчүн Кызмат Режими';

  @override
  String get onCallModeWatchDescription => 'Акылдуу саатта күчтүү эскертүүлөр';

  @override
  String get vacationMode => 'Эс Алуу Режими';

  @override
  String get vacationModeDescription =>
      'Эс алуу режиминде эч кандай эскертүү кабыл алынбайт.';

  @override
  String get vacationModePhone => 'Телефон үчүн Эс Алуу Режими';

  @override
  String get vacationModePhoneDescription => 'Телефондо эскертүүлөрдү өчүрүңүз';

  @override
  String get vacationModeWatch => 'Акылдуу Саат үчүн Эс Алуу Режими';

  @override
  String get vacationModeWatchDescription =>
      'Акылдуу саатта эскертүүлөрдү өчүрүңүз';

  @override
  String get serverUrl => 'Сервер URL';

  @override
  String get collection => 'Жыйнак';

  @override
  String get language => 'Тил';

  @override
  String get selectLanguage => 'Тилди Тандаңыз';

  @override
  String get languageDescription =>
      'Өзүңүздүн каалаган тилиңизди тандаңыз. Колдонмо ыңгайлаштырылган жобого ылайык түзүлүштүн тилин колдонот.';

  @override
  String get close => 'Жабуу';

  @override
  String get settingsSaved => 'Жөндөөлөр сакталды';

  @override
  String get invalidUrl => 'Сураныч, туура URL дарегин киргизиңиз';

  @override
  String get invalidMarketUrl =>
      'Сураныч, туура Базар URL дарегин киргизиңиз (мисалы: https://devops.higgscloud.com/_static/market/)';

  @override
  String get invalidPollingInterval =>
      'Суроо аралыгы 5-300 секунд арасында болушу керек';

  @override
  String couldNotOpenLink(String error) {
    return 'Шилтеме ачылган жок: $error';
  }

  @override
  String get wikiUrlHint =>
      'https://devops.higgscloud.com/Dev/demo/_wiki/wikis/CAB-Plan/1/README';

  @override
  String get marketUrlHint => 'https://devops.higgscloud.com/_static/market/';

  @override
  String get noGroupsAdded =>
      'Азырынча эч кандай топ кошулган жок. Жогорудан топ атын кошуңуз.';

  @override
  String get donate => 'Жардам Берүү';

  @override
  String get donateDescription => 'Бул колдонмонун өнүгүүсүн колдоңуз';

  @override
  String get donateButton => 'Мага Бир Кофе Сатып Бер';

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
      'Мосул - Ирактын түндүгүндөгү тарыхый түрк шаары. Нефть ресурстары жана маданий мураска бай. Байыркы ассириялык жана осман эстеликтеринин үйү. Анын сулуу архитектурасы жана тарыхый мааниси менен белгилүү.';

  @override
  String get cultureHistoricalPlace_kerkuk =>
      'Керкук - Ирактын түндүгүндөгү маанилүү түрк шаары. Нефть запастары жана маданий ар түрдүүлүгүнө бай. Түркмөн, күрд жана араб коомдорунун үйү. Анын тарыхый чеби жана салттуу архитектурасы менен белгилүү.';

  @override
  String get cultureHistoricalPlace_karabag =>
      'Карабаг - Кавказдагы тарыхый түрк региону. Анын сулуу тоолору, токойлору жана маданий мурасы менен белгилүү. Тарых жана табигый сулуулукка бай. Түрк маданияты үчүн маанилүү регион.';

  @override
  String get cultureHistoricalPlace_selanik =>
      'Салоники - Грециянын түндүгүндөгү тарыхый түрк шаары. Мустафа Кемал Ататүрктүн туулган жери. Осман архитектурасы жана маданий мураска бай. Анын сулуу деңиз жээги жана тарыхый эстеликтери менен белгилүү.';

  @override
  String get cultureHistoricalPlace_kibris =>
      'Кипр - Түрк тарыхынын бир бөлүгү болгон сулуу Жер Ортолук деңизи аралы. Анын таң калыштыргыч пляждары, байыркы калдыктары жана маданий мурасы менен белгилүү. Түндүк Кипр бир Түрк Республикасы. Тарых жана табигый сулуулукка бай.';

  @override
  String get cultureHistoricalPlace_rodos =>
      'Родос - Бай түрк тарыхына ээ сулуу грек аралы. Анын орто кылымдар архитектурасы, сулуу пляждары жана тарыхый эстеликтери менен белгилүү. Осман мечиттери жана түрк бассейндеринин үйү. Түрк деңиз тарыхынын маанилүү бөлүгү.';

  @override
  String get cultureHistoricalPlace_girit =>
      'Крит - Маанилүү түрк мурасына ээ эң чоң грек аралы. Анын сулуу ландшафттары, байыркы миной цивилизациясы жана осман архитектурасы менен белгилүү. Тарых жана маданий ар түрдүүлүккө бай. Түрк деңиз тарыхындагы маанилүү регион.';

  @override
  String get turkeyGuideTitle => 'Түркия Саякат Булдургучусу';

  @override
  String get turkeyGuideSubtitle =>
      'Түркиянын табигый сулуулугун, маданий мурасын, тарыхый жерлерин жана майрамдарын ачыңыз';

  @override
  String get turkeyGuideNatureTitle => 'Табият жана География';

  @override
  String get turkeyGuideNatureDescription =>
      'Түркиянын уникалдуу табигый кереметтерин жана географиялык өзгөчөлүктөрүн изилдеңиз';

  @override
  String get turkeyGuideLycianWayTitle => 'Ликия Жолу';

  @override
  String get turkeyGuideLycianWayDescription =>
      'Ликия Жолу дүйнөдөгү эң жакшы 10 узун аралыктык эңсөө жолдорунун бири болуп, Түркиянын Ортоңку деңиз жээги боюнча 540 кмге созулат. Ал байыркы ликия шаарларынан, сулуу пляждардан жана таң калыштыргыч тоо ландшафттарынан өтөт. Жол таң калыштыргыч көрүнүштөрдү сунуштайт жана Фетхиеден Антальяга чейин тарыхый жерлерди байланыштырат.';

  @override
  String get turkeyGuideFairyChimneysTitle => 'Каппадокиянын Пери Бакалары';

  @override
  String get turkeyGuideFairyChimneysDescription =>
      'Каппадокиянын пери бакалары миллиондогон жылдар мурун вулкан атылуулары менен түзүлгөн уникалдуу тоо формациялары. Кээ бирлери 40 метр бийиктикке жеткен бул конус түрүндөгү формациялар сырдуу ландшафтты түзөт. Регион күн чыгышында ысык аба шары менен саякаттар менен белгилүү болуп, бул ЮНЕСКО Дүйнөлүк Мурас Сайтынын таң калыштыргыч көрүнүштөрүн сунуштайт.';

  @override
  String get turkeyGuideUndergroundCityTitle => 'Жер асты шаарлары';

  @override
  String get turkeyGuideUndergroundCityDescription =>
      'Каппадокия кээ бирлери 8 деңгээл тереңдикке чейин созулган кереметтүү жер асты шаарларынын үйү. Деринкую жана Каймаклы эң белгилүүлөрү болуп, тунелдер, бөлмөлөр, чиркөөлөр жана желдетүү системалары менен. Бул шаарлар миңдеген адамдарды жайгаштыра алышкан жана басып кирүүлөр учурунда коргоо үчүн колдонулган. Алар ишенимсиз байыркы инженерияны көрсөтүшөт.';

  @override
  String get turkeyGuideCultureTitle => 'Маданият жана Салттар';

  @override
  String get turkeyGuideCultureDescription =>
      'Түркиянын бай маданий мурасын жана салттуу жөрөлгөлөрүн ачыңыз';

  @override
  String get turkeyGuideNasreddinHocaTitle => 'Насреддин Ходжа';

  @override
  String get turkeyGuideNasreddinHocaDescription =>
      'Насреддин Ходжа түрк фольклорундагы акылмандыгы, юмору жана акылдуу окуялары менен белгилүү уламыштык жеке. 1208-жылы Сиврихисарда туулган, ал Акшехирде жашаган. Юмор жана акылмандык менен толгон анын окуялары бүт түрк дүйнөсүндө айтылат. Эл аралык Насреддин Ходжа Фестивалы ар жылы Акшехирде өткөрүлүп, бул сүйүктүү каарманды майрамдайт.';

  @override
  String get turkeyGuideCherryFestivalTitle => 'Алча Майрамы';

  @override
  String get turkeyGuideCherryFestivalDescription =>
      'Акшехирдеги Алча Майрамы Түркиянын эң белгилүү салттуу майрамдарынын бири. Ар жылы июнь айында өткөрүлүп, региондун алча түшүмүн майрамдайт. Майрам маданий окуяларды, эл бийлерин, салттуу музыканы жана, албетте, көптөгөн даамдуу алчаларды камтыйт. Ал миңдеген келип-баруучуларды тартат жана жергиликтүү салттарды көрсөтөт.';

  @override
  String get turkeyGuideHistoryTitle => 'Тарыхый Жерлер';

  @override
  String get turkeyGuideHistoryDescription =>
      'Миңдеген жылдарга созулган Түркиянын бай тарыхый мурасын изилдеңиз';

  @override
  String get turkeyGuideHistoricalSitesTitle =>
      'Байыркы Шаарлар жана Эстеликтер';

  @override
  String get turkeyGuideHistoricalSitesDescription =>
      'Түркия Эфес, Троя, Пергамон жана Иераполис кирген саныз тарыхый жерлердин үйү. Бул байыркы шаарлар грек, рим жана византия цивилизацияларын көрсөтөт. Өлкөдө 19 ЮНЕСКО Дүйнөлүк Мурас Сайты бар, анын ичинде Айя София, Каппадокия, Памуккале жана 12,000 жыл мурунку дүйнөдөгү эң байыркы храмдардын бири болгон Гөбекли Тепе.';

  @override
  String get turkeyGuideGastronomyTitle => 'Түрк Тамагы';

  @override
  String get turkeyGuideGastronomyDescription =>
      'Дүйнөлүк белгилүү түрк тамагынын даамдарынан татыңыз';

  @override
  String get turkeyGuideTurkishCuisineTitle => 'Түрк Тамак Мурасы';

  @override
  String get turkeyGuideTurkishCuisineDescription =>
      'Түрк тамагы дүйнөдөгү эң ар түрдүү жана даамдуу тамактардын бири. Кебап жана баклавадан түрк таттууларына жана түрк кофесине чейин, тамак кылымдар бою маданий алмашууну чагылдырат. Стамбулдун көчө тамактары, региондук атайын тамактар жана манты, долма жана бөрек сыяктуу салттуу тамактар унутулгус тамак саякатын сунуштайт. Түрк кофеси жана чай маданияты күнүмдүк жашоонун ажырагыс бөлүгү.';

  @override
  String get turkeyGuideFestivalsTitle => 'Майрамдар жана Окуялар';

  @override
  String get turkeyGuideFestivalsDescription =>
      'Түркиянын жандуу майрамдарын жана маданий окуяларын тажрыйбалаңыз';

  @override
  String get turkeyGuideFestivalsListTitle => 'Негизги Майрамдар';

  @override
  String get turkeyGuideFestivalsListDescription =>
      'Түркия жыл бою көптөгөн майрамдарды уюштурат: Эл аралык Стамбул Кино Майрамы, Анталья Алтын Апельсин Кино Майрамы, Каппадокия Ысык Аба Шары Майрамы, Эл аралык Насреддин Ходжа Майрамы, Акшехирдеги Алча Майрамы, Коньядагы Мевлана Айлануучу Дервиш Майрамы жана музыка, бий жана салттуу искусствону көрсөткөн көптөгөн региондук маданий майрамдаштар.';

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
