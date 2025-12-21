// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Azure DevOps';

  @override
  String get settings => 'Settings';

  @override
  String get wikiSettings => 'Wiki Settings';

  @override
  String get wikiSettingsDescription =>
      'Enter the URL of the Azure DevOps wiki file. This wiki content will be displayed on the home page.';

  @override
  String get wikiUrl => 'Wiki URL';

  @override
  String get save => 'Save';

  @override
  String get marketSettings => 'Market Settings';

  @override
  String get marketSettingsDescription =>
      'Enter the IIS static directory URL. APK and IPA files will be listed and downloadable from this directory.';

  @override
  String get marketUrl => 'Market URL';

  @override
  String get notificationSettings => 'Notification Settings';

  @override
  String get controlFrequency => 'Control Frequency';

  @override
  String get pollingInterval => 'Polling Interval (seconds)';

  @override
  String get pollingIntervalHelper => 'Between 5-300 seconds';

  @override
  String get fast => 'Fast (10s)';

  @override
  String get normal => 'Normal (15s)';

  @override
  String get slow => 'Slow (30s)';

  @override
  String get notificationTypes => 'Notification Types';

  @override
  String get notifyOnFirstAssignment => 'Notification on First Assignment';

  @override
  String get notifyOnFirstAssignmentDescription =>
      'Send notification only when first assigned to me';

  @override
  String get notifyOnAllUpdates => 'Notification on All Updates';

  @override
  String get notifyOnAllUpdatesDescription =>
      'Send notification when work items assigned to me are updated';

  @override
  String get notifyOnHotfixOnly => 'Only Hotfix';

  @override
  String get notifyOnHotfixOnlyDescription =>
      'Notification for work items of Hotfix type only';

  @override
  String get notifyOnGroupAssignments => 'Notification on Group Assignments';

  @override
  String get notifyOnGroupAssignmentsDescription =>
      'Send notification when assignments are made to specified groups';

  @override
  String get groupName => 'Group Name';

  @override
  String get groupNameHint => 'E.g: Developers, QA Team';

  @override
  String get smartwatchNotifications => 'Smartwatch Notifications';

  @override
  String get smartwatchNotificationsDescription =>
      'Send notifications to smartwatches (only on first assignment)';

  @override
  String get onCallMode => 'On-Call Mode';

  @override
  String get onCallModeDescription =>
      'In on-call mode, notifications become more aggressive and unread notifications are refreshed 3 times.';

  @override
  String get onCallModePhone => 'On-Call Mode for Phone';

  @override
  String get onCallModePhoneDescription => 'Aggressive notifications on phone';

  @override
  String get onCallModeWatch => 'On-Call Mode for Smart Watch';

  @override
  String get onCallModeWatchDescription =>
      'Aggressive notifications on smartwatch';

  @override
  String get vacationMode => 'Vacation Mode';

  @override
  String get vacationModeDescription =>
      'No notifications are received in vacation mode.';

  @override
  String get vacationModePhone => 'Vacation Mode for Phone';

  @override
  String get vacationModePhoneDescription => 'Disable notifications on phone';

  @override
  String get vacationModeWatch => 'Vacation Mode for Smart Watch';

  @override
  String get vacationModeWatchDescription =>
      'Disable notifications on smartwatch';

  @override
  String get serverUrl => 'Server URL';

  @override
  String get collection => 'Collection';

  @override
  String get language => 'Language';

  @override
  String get selectLanguage => 'Select Language';

  @override
  String get languageDescription =>
      'Choose your preferred language. The app will use your device language by default.';

  @override
  String get close => 'Close';

  @override
  String get settingsSaved => 'Settings saved';

  @override
  String get invalidUrl => 'Please enter a valid URL';

  @override
  String get invalidMarketUrl =>
      'Please enter a valid Market URL (e.g: https://devops.higgscloud.com/_static/market/)';

  @override
  String get invalidPollingInterval =>
      'Polling interval must be between 5-300 seconds';

  @override
  String couldNotOpenLink(String error) {
    return 'Could not open link: $error';
  }

  @override
  String get wikiUrlHint =>
      'https://devops.higgscloud.com/Dev/demo/_wiki/wikis/CAB-Plan/1/README';

  @override
  String get marketUrlHint => 'https://devops.higgscloud.com/_static/market/';

  @override
  String get noGroupsAdded => 'No groups added yet. Add a group name above.';

  @override
  String get donate => 'Donate';

  @override
  String get donateDescription => 'Support the development of this app';

  @override
  String get donateButton => 'Buy Me a Coffee';

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
      'Mosul (Musul) - Historic Turkish city in northern Iraq. Rich in oil resources and cultural heritage. Home to ancient Assyrian and Ottoman monuments. Known for its beautiful architecture and historical significance.';

  @override
  String get cultureHistoricalPlace_kerkuk =>
      'Kirkuk (Kerkük) - Important Turkish city in northern Iraq. Rich in oil reserves and cultural diversity. Home to Turkmen, Kurdish, and Arab communities. Known for its historical citadel and traditional architecture.';

  @override
  String get cultureHistoricalPlace_karabag =>
      'Karabakh (Karabağ) - Historic Turkish region in the Caucasus. Known for its beautiful mountains, forests, and cultural heritage. Rich in history and natural beauty. Important region for Turkic culture.';

  @override
  String get cultureHistoricalPlace_selanik =>
      'Thessaloniki (Selanik) - Historic Turkish city in northern Greece. Birthplace of Mustafa Kemal Atatürk. Rich in Ottoman architecture and cultural heritage. Known for its beautiful waterfront and historical monuments.';

  @override
  String get cultureHistoricalPlace_kibris =>
      'Cyprus (Kıbrıs) - Beautiful Mediterranean island, part of Turkish history. Known for its stunning beaches, ancient ruins, and cultural heritage. Northern Cyprus is a Turkish Republic. Rich in history and natural beauty.';

  @override
  String get cultureHistoricalPlace_rodos =>
      'Rhodes (Rodos) - Beautiful Greek island with rich Turkish history. Known for its medieval architecture, beautiful beaches, and historical monuments. Home to Ottoman mosques and Turkish baths. Important part of Turkish maritime history.';

  @override
  String get cultureHistoricalPlace_girit =>
      'Crete (Girit) - Largest Greek island with significant Turkish heritage. Known for its beautiful landscapes, ancient Minoan civilization, and Ottoman architecture. Rich in history and cultural diversity. Important region in Turkish maritime history.';

  @override
  String get turkeyGuideTitle => 'Turkey Travel Guide';

  @override
  String get turkeyGuideSubtitle =>
      'Discover the natural beauty, cultural heritage, historical sites, and festivals of Turkey';

  @override
  String get turkeyGuideNatureTitle => 'Nature & Geography';

  @override
  String get turkeyGuideNatureDescription =>
      'Explore Turkey\'s unique natural wonders and geographical features';

  @override
  String get turkeyGuideLycianWayTitle => 'Lycian Way';

  @override
  String get turkeyGuideLycianWayDescription =>
      'The Lycian Way is one of the world\'s top 10 long-distance hiking trails, stretching 540 km along Turkey\'s Mediterranean coast. It passes through ancient Lycian cities, beautiful beaches, and stunning mountain landscapes. The trail offers breathtaking views and connects historical sites from Fethiye to Antalya.';

  @override
  String get turkeyGuideFairyChimneysTitle => 'Fairy Chimneys of Cappadocia';

  @override
  String get turkeyGuideFairyChimneysDescription =>
      'Cappadocia\'s fairy chimneys are unique rock formations created by volcanic eruptions millions of years ago. These cone-shaped formations, some reaching 40 meters in height, create a magical landscape. The region is famous for hot air balloon tours at sunrise, offering spectacular views of this UNESCO World Heritage Site.';

  @override
  String get turkeyGuideUndergroundCityTitle => 'Underground Cities';

  @override
  String get turkeyGuideUndergroundCityDescription =>
      'Cappadocia is home to remarkable underground cities, some extending 8 levels deep. Derinkuyu and Kaymaklı are the most famous, with tunnels, rooms, churches, and ventilation systems. These cities could house thousands of people and were used for protection during invasions. They showcase incredible ancient engineering.';

  @override
  String get turkeyGuideCultureTitle => 'Culture & Traditions';

  @override
  String get turkeyGuideCultureDescription =>
      'Discover Turkey\'s rich cultural heritage and traditional customs';

  @override
  String get turkeyGuideNasreddinHocaTitle => 'Nasreddin Hoca';

  @override
  String get turkeyGuideNasreddinHocaDescription =>
      'Nasreddin Hoca is a legendary figure in Turkish folklore, known for his wisdom, humor, and clever stories. Born in 1208 in Sivrihisar, he lived in Akşehir. His tales, filled with humor and wisdom, are told throughout the Turkic world. The International Nasreddin Hoca Festival is held annually in Akşehir, celebrating this beloved character.';

  @override
  String get turkeyGuideCherryFestivalTitle =>
      'Kiraz Festivali (Cherry Festival)';

  @override
  String get turkeyGuideCherryFestivalDescription =>
      'The Cherry Festival in Akşehir is one of Turkey\'s most famous traditional festivals. Held annually in June, it celebrates the region\'s cherry harvest. The festival features cultural events, folk dances, traditional music, and of course, plenty of delicious cherries. It attracts thousands of visitors and showcases local traditions.';

  @override
  String get turkeyGuideHistoryTitle => 'Historical Sites';

  @override
  String get turkeyGuideHistoryDescription =>
      'Explore Turkey\'s rich historical heritage spanning thousands of years';

  @override
  String get turkeyGuideHistoricalSitesTitle => 'Ancient Cities & Monuments';

  @override
  String get turkeyGuideHistoricalSitesDescription =>
      'Turkey is home to countless historical sites including Ephesus, Troy, Pergamon, and Hierapolis. These ancient cities showcase Greek, Roman, and Byzantine civilizations. The country has 19 UNESCO World Heritage Sites, including Hagia Sophia, Cappadocia, Pamukkale, and Göbekli Tepe, one of the world\'s oldest temples dating back 12,000 years.';

  @override
  String get turkeyGuideGastronomyTitle => 'Turkish Cuisine';

  @override
  String get turkeyGuideGastronomyDescription =>
      'Savor the flavors of world-renowned Turkish cuisine';

  @override
  String get turkeyGuideTurkishCuisineTitle => 'Turkish Culinary Heritage';

  @override
  String get turkeyGuideTurkishCuisineDescription =>
      'Turkish cuisine is one of the world\'s most diverse and delicious. From kebabs and baklava to Turkish delight and Turkish coffee, the cuisine reflects centuries of cultural exchange. Istanbul\'s street food, regional specialties, and traditional dishes like mantı, dolma, and börek offer an unforgettable culinary journey. Turkish coffee and tea culture are integral parts of daily life.';

  @override
  String get turkeyGuideFestivalsTitle => 'Festivals & Events';

  @override
  String get turkeyGuideFestivalsDescription =>
      'Experience Turkey\'s vibrant festivals and cultural events';

  @override
  String get turkeyGuideFestivalsListTitle => 'Major Festivals';

  @override
  String get turkeyGuideFestivalsListDescription =>
      'Turkey hosts numerous festivals throughout the year: International Istanbul Film Festival, Antalya Golden Orange Film Festival, Cappadocia Hot Air Balloon Festival, International Nasreddin Hoca Festival, Cherry Festival in Akşehir, Mevlana Whirling Dervishes Festival in Konya, and many regional cultural celebrations showcasing music, dance, and traditional arts.';

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
