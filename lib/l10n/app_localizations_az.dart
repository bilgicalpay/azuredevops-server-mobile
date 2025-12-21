// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Azerbaijani (`az`).
class AppLocalizationsAz extends AppLocalizations {
  AppLocalizationsAz([String locale = 'az']) : super(locale);

  @override
  String get appTitle => 'Azure DevOps';

  @override
  String get settings => 'Parametrlər';

  @override
  String get wikiSettings => 'Wiki Parametrləri';

  @override
  String get wikiSettingsDescription =>
      'Azure DevOps wiki faylının URL-ni daxil edin. Bu wiki məzmunu ana səhifədə göstəriləcək.';

  @override
  String get wikiUrl => 'Wiki URL';

  @override
  String get save => 'Saxla';

  @override
  String get marketSettings => 'Bazar Parametrləri';

  @override
  String get marketSettingsDescription =>
      'IIS statik qovluğunun URL-ni daxil edin. APK və IPA faylları bu qovluqdan siyahıya alınacaq və yüklənə biləcək.';

  @override
  String get marketUrl => 'Bazar URL';

  @override
  String get notificationSettings => 'Bildiriş Parametrləri';

  @override
  String get controlFrequency => 'Nəzarət Tezliyi';

  @override
  String get pollingInterval => 'Sorğu Aralığı (saniyə)';

  @override
  String get pollingIntervalHelper => '5-300 saniyə arası';

  @override
  String get fast => 'Sürətli (10s)';

  @override
  String get normal => 'Normal (15s)';

  @override
  String get slow => 'Yavaş (30s)';

  @override
  String get notificationTypes => 'Bildiriş Növləri';

  @override
  String get notifyOnFirstAssignment => 'İlk Təyinatda Bildiriş';

  @override
  String get notifyOnFirstAssignmentDescription =>
      'Yalnız mənə ilk dəfə təyin edildikdə bildiriş göndər';

  @override
  String get notifyOnAllUpdates => 'Bütün Yeniləmələrdə Bildiriş';

  @override
  String get notifyOnAllUpdatesDescription =>
      'Mənə təyin edilmiş iş elementləri yeniləndikdə bildiriş göndər';

  @override
  String get notifyOnHotfixOnly => 'Yalnız Hotfix';

  @override
  String get notifyOnHotfixOnlyDescription =>
      'Yalnız Hotfix tipindəki iş elementləri üçün bildiriş';

  @override
  String get notifyOnGroupAssignments => 'Qrup Təyinləmələrində Bildiriş';

  @override
  String get notifyOnGroupAssignmentsDescription =>
      'Göstərilən qruplara təyinat edildikdə bildiriş göndər';

  @override
  String get groupName => 'Qrup Adı';

  @override
  String get groupNameHint => 'Məsələn: İnkişafçılar, QA Komandası';

  @override
  String get smartwatchNotifications => 'Ağıllı Saat Bildirişləri';

  @override
  String get smartwatchNotificationsDescription =>
      'Ağıllı saatlərə bildiriş göndər (yalnız ilk təyinatda)';

  @override
  String get onCallMode => 'Növbə Rejimi';

  @override
  String get onCallModeDescription =>
      'Növbə rejimində bildirişlər daha aqressiv olur və oxunmamış bildirişlər 3 dəfə yenilənir.';

  @override
  String get onCallModePhone => 'Telefon üçün Növbə Rejimi';

  @override
  String get onCallModePhoneDescription => 'Telefonda aqressiv bildirişlər';

  @override
  String get onCallModeWatch => 'Ağıllı Saat üçün Növbə Rejimi';

  @override
  String get onCallModeWatchDescription => 'Ağıllı saatdə aqressiv bildirişlər';

  @override
  String get vacationMode => 'Tətil Rejimi';

  @override
  String get vacationModeDescription =>
      'Tətil rejimində heç bir bildiriş alınmır.';

  @override
  String get vacationModePhone => 'Telefon üçün Tətil Rejimi';

  @override
  String get vacationModePhoneDescription =>
      'Telefonda bildirişləri deaktiv et';

  @override
  String get vacationModeWatch => 'Ağıllı Saat üçün Tətil Rejimi';

  @override
  String get vacationModeWatchDescription =>
      'Ağıllı saatdə bildirişləri deaktiv et';

  @override
  String get serverUrl => 'Server URL';

  @override
  String get collection => 'Kolleksiya';

  @override
  String get language => 'Dil';

  @override
  String get selectLanguage => 'Dil Seçin';

  @override
  String get languageDescription =>
      'İstədiyiniz dili seçin. Tətbiq standart olaraq cihazınızın dilini istifadə edəcək.';

  @override
  String get close => 'Bağla';

  @override
  String get settingsSaved => 'Parametrlər saxlanıldı';

  @override
  String get invalidUrl => 'Zəhmət olmasa düzgün URL daxil edin';

  @override
  String get invalidMarketUrl =>
      'Zəhmət olmasa düzgün Bazar URL daxil edin (məs: https://devops.higgscloud.com/_static/market/)';

  @override
  String get invalidPollingInterval =>
      'Sorğu aralığı 5-300 saniyə arasında olmalıdır';

  @override
  String couldNotOpenLink(String error) {
    return 'Link açıla bilmədi: $error';
  }

  @override
  String get wikiUrlHint =>
      'https://devops.higgscloud.com/Dev/demo/_wiki/wikis/CAB-Plan/1/README';

  @override
  String get marketUrlHint => 'https://devops.higgscloud.com/_static/market/';

  @override
  String get noGroupsAdded =>
      'Hələ qrup əlavə edilməyib. Yuxarıdan qrup adı əlavə edin.';

  @override
  String get donate => 'İanə Et';

  @override
  String get donateDescription => 'Bu tətbiqin inkişafını dəstəkləyin';

  @override
  String get donateButton => 'Mənə Bir Qəhvə Al';

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
      'Musul - İraqın şimalında tarixi türk şəhəri. Neft ehtiyatları və mədəni irsə zəngindir. Qədim Assuriya və Osmanlı abidələrinin evidir. Gözəl memarlığı və tarixi əhəmiyyəti ilə tanınır.';

  @override
  String get cultureHistoricalPlace_kerkuk =>
      'Kərkük - İraqın şimalında mühüm türk şəhəri. Neft ehtiyatları və mədəni müxtəlifliyə zəngindir. Türkmən, kürd və ərəb icmalarının evidir. Tarixi qalası və ənənəvi memarlığı ilə məşhurdur.';

  @override
  String get cultureHistoricalPlace_karabag =>
      'Qarabağ - Qafqazda tarixi türk regionu. Gözəl dağları, meşələri və mədəni irsi ilə tanınır. Tarix və təbii gözəlliyə zəngindir. Türk mədəniyyəti üçün mühüm region.';

  @override
  String get cultureHistoricalPlace_selanik =>
      'Selanik - Yunanıstanın şimalında tarixi türk şəhəri. Mustafa Kamal Atatürkün doğum yeri. Osmanlı memarlığı və mədəni irsə zəngindir. Gözəl sahil xətti və tarixi abidələri ilə məşhurdur.';

  @override
  String get cultureHistoricalPlace_kibris =>
      'Kipr - Türk tarixinin bir hissəsi olan gözəl Aralıq dənizi adası. Təntənəli çimərlikləri, qədim xarabalıqları və mədəni irsi ilə tanınır. Şimali Kipr bir Türk Respublikasıdır. Tarix və təbii gözəlliyə zəngindir.';

  @override
  String get cultureHistoricalPlace_rodos =>
      'Rodos - Zəngin türk tarixinə malik gözəl yunan adası. Orta əsrlər memarlığı, gözəl çimərlikləri və tarixi abidələri ilə tanınır. Osmanlı məscidləri və türk hamamlarının evidir. Türk dənizçilik tarixinin mühüm hissəsi.';

  @override
  String get cultureHistoricalPlace_girit =>
      'Krit - Əhəmiyyətli türk irsinə malik ən böyük yunan adası. Gözəl mənzərələri, qədim Minos sivilizasiyası və Osmanlı memarlığı ilə tanınır. Tarix və mədəni müxtəlifliyə zəngindir. Türk dənizçilik tarixində mühüm region.';

  @override
  String get turkeyGuideTitle => 'Türkiyə Səyahət Bələdçisi';

  @override
  String get turkeyGuideSubtitle =>
      'Türkiyənin təbii gözəlliyini, mədəni irsini, tarixi yerlərini və festivallarını kəşf edin';

  @override
  String get turkeyGuideNatureTitle => 'Təbiət və Coğrafiya';

  @override
  String get turkeyGuideNatureDescription =>
      'Türkiyənin unikal təbii möcüzələrini və coğrafi xüsusiyyətlərini araşdırın';

  @override
  String get turkeyGuideLycianWayTitle => 'Likiya Yolu';

  @override
  String get turkeyGuideLycianWayDescription =>
      'Likiya Yolu dünyanın ən yaxşı 10 uzun məsafəli gəzinti yolundan biridir, Türkiyənin Aralıq dənizi sahilində 540 km uzanır. Qədim Likiya şəhərləri, gözəl çimərliklər və təntənəli dağ mənzərələrindən keçir. Yol nəfəs kəsən mənzərələr təklif edir və Fethiyədən Antalyaya qədər tarixi yerləri birləşdirir.';

  @override
  String get turkeyGuideFairyChimneysTitle => 'Kapadokiyanın Pəri Bacaları';

  @override
  String get turkeyGuideFairyChimneysDescription =>
      'Kapadokiyanın pəri bacaları milyonlarla il əvvəl vulkan püskürmələri ilə yaradılmış unikal qaya formasiyalarıdır. Bəziləri 40 metr hündürlüyə çatan bu konus formalı formasiyalar sehrli mənzərə yaradır. Region günəşin çıxmasında isti hava balonu turları ilə məşhurdur və bu UNESCO Dünya İrs Saytının təntənəli mənzərələrini təklif edir.';

  @override
  String get turkeyGuideUndergroundCityTitle => 'Yeraltı Şəhərlər';

  @override
  String get turkeyGuideUndergroundCityDescription =>
      'Kapadokiya bəziləri 8 səviyyə dərinliyə qədər uzanan əlamətdar yeraltı şəhərlərin evidir. Derinkuyu və Kaymaklı ən məşhurlarıdır, tunellər, otaqlar, kilsələr və ventilyasiya sistemləri ilə. Bu şəhərlər minlərlə insanı yerləşdirə bilərdi və işğallar zamanı qorunmaq üçün istifadə olunurdu. Onlar inanılmaz qədim mühəndisliyi nümayiş etdirir.';

  @override
  String get turkeyGuideCultureTitle => 'Mədəniyyət və Ənənələr';

  @override
  String get turkeyGuideCultureDescription =>
      'Türkiyənin zəngin mədəni irsini və ənənəvi adətlərini kəşf edin';

  @override
  String get turkeyGuideNasreddinHocaTitle => 'Nəsrəddin Xoca';

  @override
  String get turkeyGuideNasreddinHocaDescription =>
      'Nəsrəddin Xoca türk folklorunda müdrikliyi, yumoru və ağıllı hekayələri ilə tanınan əfsanəvi bir şəxsdir. 1208-ci ildə Sivrihisarda doğulmuş, Akşehirdə yaşamışdır. Yumor və müdrikliklə dolu hekayələri bütün türk dünyasında danışılır. Beynəlxalq Nəsrəddin Xoca Festivalı hər il Akşehirdə keçirilir və bu sevimli personajı qeyd edir.';

  @override
  String get turkeyGuideCherryFestivalTitle => 'Albalı Festivalı';

  @override
  String get turkeyGuideCherryFestivalDescription =>
      'Akşehirdəki Albalı Festivalı Türkiyənin ən məşhur ənənəvi festivallarından biridir. Hər il iyun ayında keçirilir və regionun albalı məhsulunu qeyd edir. Festival mədəni tədbirlər, xalq rəqsləri, ənənəvi musiqi və əlbəttə, çoxlu dadlı albalıları əhatə edir. Minlərlə ziyarətçini cəlb edir və yerli ənənələri nümayiş etdirir.';

  @override
  String get turkeyGuideHistoryTitle => 'Tarixi Yerlər';

  @override
  String get turkeyGuideHistoryDescription =>
      'Minlərlə ilə yayılan Türkiyənin zəngin tarixi irsini araşdırın';

  @override
  String get turkeyGuideHistoricalSitesTitle => 'Qədim Şəhərlər və Abidələr';

  @override
  String get turkeyGuideHistoricalSitesDescription =>
      'Türkiyə Efes, Troya, Perqamon və Hierapolis daxil olmaqla saysız tarixi yerlərin evidir. Bu qədim şəhərlər Yunan, Roma və Bizans sivilizasiyalarını nümayiş etdirir. Ölkənin 19 UNESCO Dünya İrs Saytı var, o cümlədən Aya Sofya, Kapadokiya, Pamukkale və 12,000 il əvvələ aid dünyanın ən qədim məbədlərindən biri olan Göbəkli Təpə.';

  @override
  String get turkeyGuideGastronomyTitle => 'Türk Mətbəxi';

  @override
  String get turkeyGuideGastronomyDescription =>
      'Dünya şöhrətli türk mətbəxinin dadlarını dadın';

  @override
  String get turkeyGuideTurkishCuisineTitle => 'Türk Mətbəx İrsi';

  @override
  String get turkeyGuideTurkishCuisineDescription =>
      'Türk mətbəxi dünyanın ən müxtəlif və dadlı mətbəxlərindən biridir. Kebab və baklavadan türk şirniyyatına və türk qəhvəsinə qədər, mətbəx əsrlər boyu mədəni mübadiləni əks etdirir. İstanbulun küçə yeməkləri, regional xüsusiyyətlər və məntı, dolma və börek kimi ənənəvi yeməklər unudulmaz kulinariya səyahəti təklif edir. Türk qəhvəsi və çay mədəniyyəti gündəlik həyatın ayrılmaz hissəsidir.';

  @override
  String get turkeyGuideFestivalsTitle => 'Festivallar və Tədbirlər';

  @override
  String get turkeyGuideFestivalsDescription =>
      'Türkiyənin canlı festivallarını və mədəni tədbirlərini təcrübə edin';

  @override
  String get turkeyGuideFestivalsListTitle => 'Əsas Festivallar';

  @override
  String get turkeyGuideFestivalsListDescription =>
      'Türkiyə il boyu çoxlu festivallar təşkil edir: Beynəlxalq İstanbul Film Festivalı, Antalya Qızıl Portağal Film Festivalı, Kapadokiya İsti Hava Balonu Festivalı, Beynəlxalq Nəsrəddin Xoca Festivalı, Akşehirdə Albalı Festivalı, Konyada Məvlana Fırlanan Dərviş Festivalı və musiqi, rəqs və ənənəvi incəsənəti nümayiş etdirən bir çox regional mədəni qeydlər.';

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
